local meta = FindMetaTable("Player")

function meta:IsCaptain()
    return self:GetNWBool("captain")
end

function meta:GetDeadTime()
    return CurTime() - self:GetNWFloat("die_time")
end

function meta:GetPlayTime()
    return CurTime() - self:GetCreationTime()
end

function meta:GetCannonBallCount()
    local count = 0
    for _, ent in ipairs(ents.FindByClass("cannon_ball")) do
        if ent:GetOwner() == self then
            count = count + 1
        end
    end
    return count
end

if SERVER then
    function meta:SetCaptain(b_captain)
        return self:SetNWBool("captain", b_captain)
    end
    
    function meta:MoveToStation(ship)
        local pos = self:GetPos()
        local ang = self:EyeAngles()
        pos, ang = ship:ShipToStation(pos, ang)
        ang.r = 0
        --self:SetPos(pos + vector_up * 6)
        --self:DropToFloor()
        self:SetPos(pos)
        self:SetEyeAngles(ang)
        local vel = self:GetVelocity()
        vel = ship:WorldToLocalAngles(vel:Angle()):Forward() * vel:Length()
        self:SetVelocity(vel - self:GetVelocity())
    end
    
    function meta:MoveToShip(ship)
        local pos = self:GetPos()
        local ang = self:EyeAngles()
        pos, ang = ship:StationToShip(pos, ang)
        ang.r = 0
        self:SetPos(pos)
        self:SetEyeAngles(ang)
        local vel = self:GetVelocity()
        vel = ship:LocalToWorldAngles(vel:Angle()):Forward() * vel:Length()
        self:SetVelocity(vel - self:GetVelocity())
    end
end