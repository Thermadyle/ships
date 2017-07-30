AddCSLuaFile()
ENT.Type = "point"

function ENT:UpdateTransmitState()
    return TRANSMIT_ALWAYS
end

function ENT:Initialize()
    local tr = util.TraceLine{
        start = self:GetPos(),
        endpos = self:GetPos() - vector_up * 32768,
        mask = MASK_WATER
    }
    if tr.Hit then
        SetGlobalBool("water", true)
        SetGlobalInt("water_level", tr.HitPos.z)
    end
end