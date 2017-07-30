AddCSLuaFile()
ENT.Base = "ship_entity"
ENT.Models = {
    Model("models/freeman/ship/cannonball_crate_open.mdl"),
    Model("models/freeman/ship/cannonball_crate_closed.mdl")
}

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Models[math.random(#self.Models)])
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(SOLID_VPHYSICS)
        self:GetPhysicsObject():SetMass(800)
        self:PhysWake()
        self:SetUseType(SIMPLE_USE)
    end
end

function ENT:Use(ply)
    local wep = ply:GetActiveWeapon()
    if IsValid(wep) and wep:GetClass() == "weapon_physcannon" and (not ply:IsPlayerHolding()) then
        local max_balls = cvar_playermaxballs:GetInt()
        if ply:GetCannonBallCount() >= max_balls then
            ply:EmitSound("buttons/button16.wav")
            ply:ChatPrint(string.format("You can only have %d ball(s) at a time", max_balls))
            return
        end
        local ball = ents.Create("cannon_ball")
        ball:SetPos(self:GetPos())
        ball:Spawn()
        ball:PhysWake()
        ball:SetOwner(ply)
        ball:SetCollisionGroup(COLLISION_GROUP_WEAPON)
        ply:PickupObject(ball)
        ply:ConCommand("+attack2")
        timer.Simple(0.1, function()
            ply:ConCommand("-attack2")
        end)
        timer.Simple(cvar_lifetimeball:GetInt(), function()
            if IsValid(ball) then
                ball:Remove()
            end
        end)
    end
end