-- http://www.miguelcasillas.com/?p=30
function util.AABBIntersect(min1, max1, min2, max2)
    return max1.x > min2.x and
        min1.x < max2.x and
        max1.y > min2.y and
        min1.y < max2.y and
        max1.z > min2.z and
        min1.z < max2.z
end

function util.GetCaptain(team_index)
    for _, ply in ipairs(team.GetPlayers(team_index)) do
        if ply:IsCaptain() then
            return ply
        end
    end
end

function util.IsCaptainAlive(team_index)
    for _, ply in ipairs(team.GetPlayers(team_index)) do
        if ply:IsCaptain() and ply:Alive() then
            return true
        end
    end
    return false
end

function util.TeamHasShip(team_index)
    for _, ship in ipairs(ents.FindByClass("ship")) do
        if ship.team == team_index then
            return true
        end
    end
end