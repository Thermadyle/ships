ENT.Type = "point"

function ENT:KeyValue(key, value)
    if key == "teamnum" then
        self.team = tonumber(value)
    end
end