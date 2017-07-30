SWEP.ViewModel = Model("models/weapons/c_crowbar.mdl")
SWEP.WorldModel = Model("models/weapons/c_crowbar.mdl")
SWEP.PrintName = "Crowbar"
SWEP.DrawWeaponInfoBox = false
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = false
SWEP.UseHands= true
SWEP.Slot = 1
SWEP.sound_swing = {
    Sound("weapons/iceaxe/iceaxe_swing1.wav")
}
SWEP.sound_hitplayer = {
    Sound("weapons/crossbow/hitbod1.wav"),
    Sound("weapons/crossbow/hitbod2.wav")
}
SWEP.sound_hit = {
    Sound("physics/body/body_medium_impact_hard1.wav"),
    Sound("physics/body/body_medium_impact_hard2.wav"),
    Sound("physics/body/body_medium_impact_hard3.wav"),
    --Sound("weapons/crowbar/crowbar_impact1.wav"),
    --Sound("weapons/crowbar/crowbar_impact2.wav")
}
SWEP.range = 70
SWEP.interval = 0.2
SWEP.damage = 30

SWEP.Primary.Automatic = true
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Ammo = ""

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Ammo = ""

function SWEP:Initialize()
    self:SetHoldType("melee")
end

function SWEP:PrimaryAttack()
    if ((CurTime() - self:GetNextPrimaryFire()) < self.interval) or (not IsFirstTimePredicted()) then
        return
    end
    self.Owner:SetAnimation(PLAYER_ATTACK1)
    self:SendWeaponAnim(ACT_VM_MISSCENTER) 
    self:SetNextPrimaryFire(CurTime() + self.interval)
    local pos = self.Owner:GetShootPos()
    local ang = self.Owner:GetAimVector():Angle()
    local ship = self.Owner:FindShip()
    local positions = {{pos, ang}}
    if ship then
        pos, ang = ship:StationToShip(pos, ang)
        table.insert(positions, {pos, ang})
    end
    for _, ship2 in ipairs(ents.FindByClass("ship")) do
        if ship2 == ship then
            continue
        end
        local dir_len = ang:Forward() * self.range
        local pos = util.IntersectRayWithOBB(pos, dir_len, ship2:GetPos(), 
            ship2:GetAngles(), ship2:GetCollisionBounds())

        if pos then
            local pos, ang = ship2:ShipToStation(pos, ang)
            table.insert(positions, {pos, ang})
        end
    end
    local hit_entity = false
    self.Owner:LagCompensation(true)
    for _, position in ipairs(positions) do
        local pos, ang = unpack(position)
        local trace = {
            start = pos,
            endpos = pos + ang:Forward() * self.range,
            filter = self.Owner,
            mins = Vector(-8, -8, -12),
            maxs = Vector(8, 8, 12),
        }
        local ent = util.TraceHull(trace).Entity
        if IsValid(ent) then
            self:SendWeaponAnim(ACT_VM_HITCENTER)
            if SERVER then
                hit_entity = ent
                local dmg = DamageInfo()
                dmg:SetDamage(self.damage)
                dmg:SetAttacker(self.Owner)
                dmg:SetDamageType(DMG_CLUB)
                ent:TakeDamageInfo(dmg)
                --ent:TakeDamage(10, self.Owner, self)
                if ent:IsPlayer() or ent:IsNPC() then
                    util.Decal("blood", trace.start, trace.endpos, trace.filter)
                end
            end
            break
        end
    end
    self.Owner:LagCompensation(false)
    if SERVER then
        local snd = self.sound_swing[math.random(#self.sound_swing)]
        if IsValid(hit_entity) then
            if hit_entity:IsPlayer() or hit_entity:IsNPC() then
                snd = self.sound_hitplayer[math.random(#self.sound_hitplayer)]
            else
                snd = self.sound_hit[math.random(#self.sound_hit)]
            end
        end
        self.Owner:EmitSound(snd)
    end
end

function SWEP:SecondaryAttack()
end