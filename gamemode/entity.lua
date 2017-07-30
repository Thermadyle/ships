local meta = FindMetaTable("Entity")

function meta:FindStation()
    local ent = self:GetGroundEntity()
    if IsValid(ent) and ent:GetClass() == "ship_station" then
        return ent
    end
    local min1, max1 = self:WorldSpaceAABB()
    for _, ship in ipairs(ents.FindByClass("ship")) do
        if (not ship.GetStationBoundsWS) then
            continue
        end
        if util.AABBIntersect(min1, max1, ship:GetStationBoundsWS()) then
            for _, station in ipairs(ship.stations) do
                if util.AABBIntersect(min1, max1, station:WorldSpaceAABB()) then
                    return station
                end
            end
        end
    end
end

function meta:FindShip()
    local ent = self:GetGroundEntity()
    if IsValid(ent) and ent:GetClass() == "ship_station" then
        return ent.ship
    end
    local station = self:FindStation()
    if station then
        return station.ship
    end
end