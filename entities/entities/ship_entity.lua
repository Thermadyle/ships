AddCSLuaFile()
ENT.Base = "base_anim"

function ENT:Think()
    local divide = ents.FindByClass("ships_area_divide")[1]
    if SERVER and IsValid(divide) then
        if (divide:GetPos().z + self:BoundingRadius()) >= self:GetPos().z then
            self:Remove()
        end
    end
end