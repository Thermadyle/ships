ENT.Base = "base_anim"
AccessorFunc(ENT, "ship", "Ship")
AccessorFunc(ENT, "index", "Index")

function ENT:UpdateTransmitState()
    return TRANSMIT_NEVER
end

function ENT:Initialize()
    self.team = self.ship.team
    self.hull = self.ship.hulls[self.index]
    self:PhysicsInitMultiConvex(self.hull.multi_convex)
    self:GetPhysicsObject():SetMass(self.hull.mass)
    self:GetPhysicsObject():SetDamping(-5, 0)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:StartMotionController()
    self:EnableCustomCollisions(true)
    self:SetCustomCollisionCheck(true)

    local mass_frac = self.hull.mass / self.hull.init_mass
    local buoyancy = math.pow(mass_frac, 2) * 4 - 2.5
    self:GetPhysicsObject():SetBuoyancyRatio(buoyancy)
    
    timer.Simple(0, function()
        self:SetPos(self.ship:GetPos())
        self:SetAngles(self.ship:GetAngles())
        constraint.Weld(self, self.ship, 0, 0, 0, false, true)
    end)
end

function ENT:OnTakeDamage(dmg)
    if dmg:IsExplosionDamage() then
        local pos = dmg:GetDamagePosition()
        self.ship:DoBlastDamage(pos, 64)
    end
end

local shadow = {}
shadow.secondstoarrive = 1/33
shadow.maxangular = 100
shadow.maxspeed = 100
shadow.maxangulardamp = 100
shadow.maxspeeddamp = 100
shadow.dampfactor = 0.125
shadow.teleportdistance = 256

function ENT:PhysicsSimulate(phys, dt)
    local ang = self.ship:GetAngles()
    local down = vector_up * self.hull.mass * 0.0000175
    shadow.pos = self.ship:GetPos() - down
    ang.p = 0
    ang.r = 0
    shadow.angle = ang
    shadow.deltatime = dt
    phys:ComputeShadowControl(shadow)
end

function ENT:PhysicsCollide(data, phys)
    local ent = data.HitEntity
    if ent:IsPlayer() and ent:GetGroundEntity() == self then
        timer.Simple(0, function()
            ent:MoveToStation(self.ship)
        end)
    elseif ent:GetClass() == "ship_phys" then
        local dir = (self:GetPos() - ent:GetPos()):GetNormal()
        phys:SetVelocity(phys:GetVelocity() + dir * 256)
    end
    --if ent:GetClass() == "ship_phys" and data.Speed > 256 and data.DeltaTime > 0.5 then
    --    ent.ship:DoBlastDamage(data.HitPos, 128)
    --end
end