AddCSLuaFile()
ENT.Base = "base_anim"

function ENT:Think()
    local divide = ents.FindByClass("ships_area_divide")[1]
    if SERVER then
        -- remove if below area divider
        if IsValid(divide) and (divide:GetPos().z + self:BoundingRadius()) >= self:GetPos().z then
            self:Remove()
        end
        -- remove if deep into the water
        if IsValid(self.ship) then
            if self.ship:GetEntityWaterLevel(self) >= 3 then
                self:Remove()
            end
        end
    end
end
