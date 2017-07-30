include("util.lua")
include("entity.lua")
include("player.lua")
include("cvars.lua")
include("player_class/ship_player.lua")
include("player_class/ship_captain.lua")

GM.Name = "Ships"

team.SetUp(0, "Ocean winds", Color(172, 172, 191), false)
team.SetUp(1, "Roundheads", Color(192, 48, 0), true)
team.SetUp(2, "Squareheads", Color(0, 48, 192), true)
team.SetUp(3, "Triangleheads", Color(48, 192, 0), false)
team.SetUp(4, "Cylinderheads", Color(160, 48, 192), false)

function GM:ShouldCollide(ent1, ent2)
    if ent1:GetClass() == "ship_phys" and ent2:GetClass() == "ship_phys" then
        return ent1.team ~= ent2.team
    end
    if (ent1:GetClass() == "ship_phys" and ent2:GetClass() == "ship_station") or
        (ent2:GetClass() == "ship_phys" and ent1:GetClass() == "ship_station") then
        
        return false
    end
    if (ent1:GetClass() == "ship_phys" and ent2:FindShip() == ent1.ship) or
        (ent2:GetClass() == "ship_phys" and ent1:FindShip() == ent2.ship) then
    
        return false
    end
    return true
end

function GM:GetRoundTime()
    if GetGlobalBool("round_started") then
        local dt = CurTime() - GetGlobalFloat("round_start")
        return GetGlobalInt("round_time") - dt
    end
    return 0
end

function GM:GetTeamCount()
    local teams = (SERVER and cvar_teams:GetInt()) or GetGlobalInt("teams")
    return math.Clamp(teams, 1, 4)
end
