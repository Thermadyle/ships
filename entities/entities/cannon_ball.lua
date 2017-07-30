AddCSLuaFile()
ENT.Base = "ship_entity"
ENT.Model = Model("models/freeman/ship/cannon_ball.mdl")

function ENT:Initialize()
    self:SetModel(self.Model)
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(SOLID_VPHYSICS)
    self:GetPhysicsObject():SetMass(10)
    self:GetPhysicsObject():SetDamping(1, 1)
end

function ENT:PhysicsCollide(data)
    local ent = data.HitEntity
    if ent:GetClass() == "ship_phys" then
        ent.ship:DoBlastDamage(data.HitPos, 160)
        local exp_ship = ents.Create("env_explosion")
        exp_ship:SetPos(data.HitPos)
        exp_ship:Spawn()
        exp_ship:SetKeyValue("iMagnitude", "100")
        exp_ship:Fire("Explode", 0, 0)
        local exp_station = ents.Create("env_explosion")
        exp_station:SetPos(ent.ship:ShipToStation(data.HitPos, angle_zero))
        exp_station:Spawn()
        exp_station:SetKeyValue("iMagnitude", "100")
        exp_station:Fire("Explode", 0, 0)
    elseif ent:GetClass() == "ship_cannon_gun" and 
        (not ent:GetLoaded()) and (not ent:IsFuseBurning()) then
        
        ent:SetLoaded(true)
    else
        return
    end
    timer.Simple(0, function()
        if IsValid(self.partner) then
            self.partner:Remove()
        end
        if IsValid(self) then
            self:Remove()
        end
    end)
end

function ENT:Think()
    if self.from_station then
        self.BaseClass.Think(self)
    end
end