include("shared.lua")
ENT.ModelWheel = Model("models/freeman/ship/steering_wheel.mdl")

local wheel
local wheel_pos = Vector(-7.5, 0, 20)
local wheel_ang = Angle()
function ENT:Draw()
    self:DrawModel()
    if (not IsValid(self.wheel)) then
        self.wheel = ents.CreateClientProp()
        self.wheel:SetModel(self.ModelWheel)
        self.wheel:SetPos(self:GetPos())
        self.wheel:SetNoDraw(true)
    end
    wheel_ang.r = self.turn_value * 360
    local pos = self:LocalToWorld(wheel_pos)
    local ang = self:LocalToWorldAngles(wheel_ang)
    self.wheel:SetRenderOrigin(pos)
    self.wheel:SetRenderAngles(ang)
    self.wheel:DrawModel()
end