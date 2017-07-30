AddCSLuaFile()
ENT.Base = "base_anim"
ENT.Model = Model("models/freeman/ship/captains_hat.mdl")

function ENT:Initialize()
    self:SetModel(self.Model)
    self:AddEffects(EF_BONEMERGE)
end

function ENT:Draw()
    local parent = self:GetParent()
    if IsValid(parent) and parent:IsPlayer() and (not parent:Alive()) then
        return
    end
    local col = self:GetColor()
    render.SetColorModulation(col.r/255, col.g/255, col.b/255)
    self:DrawModel()
    render.SetColorModulation(1, 1, 1)
end 