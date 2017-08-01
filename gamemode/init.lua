AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("util.lua")
AddCSLuaFile("entity.lua")
AddCSLuaFile("player.lua")
AddCSLuaFile("cl_hud.lua")
AddCSLuaFile("cl_scoreboard.lua")
AddCSLuaFile("cvars.lua")
include("shared.lua")

resource.AddFile("materials/ships/hud.png")
resource.AddFile("materials/ships/hud_victory.png")
resource.AddFile("materials/ships/scoreboard_paper.png")
resource.AddFile("materials/ships/scoreboard_paper_help.png")

resource.AddFile("materials/models/freeman/cannon.vmt")
resource.AddFile("materials/models/freeman/cannon.vtf")
resource.AddFile("materials/models/freeman/cannonball.vmt")
resource.AddFile("materials/models/freeman/cannonball.vtf")
resource.AddFile("materials/models/freeman/cannonbase.vmt")
resource.AddFile("materials/models/freeman/cannonbase.vtf")
resource.AddFile("materials/models/freeman/cannoncrate.vmt")
resource.AddFile("materials/models/freeman/cannoncrate.vtf")
resource.AddFile("materials/models/freeman/cannoncrate_diffuse.vtf")
resource.AddFile("materials/models/freeman/captainshat.vmt")
resource.AddFile("materials/models/freeman/captain_hat_diffuse.vtf")
resource.AddFile("materials/models/freeman/shipwheel.vmt")
resource.AddFile("materials/models/freeman/shipwheel_diffuse.vtf")

resource.AddFile("models/freeman/ship/cannon_base.mdl")
resource.AddFile("models/freeman/ship/cannon_gun.mdl")
resource.AddFile("models/freeman/ship/cannon_gun.mdl")
resource.AddFile("models/freeman/ship/cannon_ball.mdl")
resource.AddFile("models/freeman/ship/cannonball_crate_open.mdl")
resource.AddFile("models/freeman/ship/cannonball_crate_closed.mdl")
resource.AddFile("models/freeman/ship/captains_hat.mdl")
resource.AddFile("models/freeman/ship/steering_wheel_stand.mdl")
resource.AddFile("models/freeman/ship/steering_wheel.mdl")

resource.AddFile("sound/ships/win.mp3")
resource.AddFile("sound/ships/loss.mp3")
resource.AddFile("sound/ships/captdead.mp3")

util.AddNetworkString("ships_jingle")

GM.dead_persist = {} -- for people who attempt to reconnect to spawn again

function GM:PlayerInitialSpawn(ply)
    -- jump into the round if started
    local dead_persist =  self.dead_persist[ply:SteamID()] and #player.GetAll() ~= 1
    if GetGlobalBool("round_started") and (not dead_persist) then
        local team_index = 1
        for i = 2, self:GetTeamCount() do
            local count = team.NumPlayers(team_index)
            if team.NumPlayers(i) < count and util.TeamHasShip(i) then
                team_index = i
            end
        end
        ply:SetTeam(team_index)
        ply:Spawn()
        return
    end
    -- otherwise spawn as spectator (or ocean wind...)
    ply:SetTeam(0)
    timer.Simple(0, function()
        ply:KillSilent()
        ply:Spectate(OBS_MODE_ROAMING)
    end)
end

function GM:PlayerSpawn(ply)
    -- select player class
    local class = hook.Run("PlayerSelectClass", ply)
    player_manager.SetPlayerClass(ply, class)
    ply:StripWeapons()
    self.BaseClass.PlayerSpawn(self, ply)
    -- assign color and give captains hats
    local col = team.GetColor(ply:Team())
    if ply:IsCaptain() then
        local hat = ents.Create("captain_hat")
        hat:SetPos(ply:GetPos())
        hat:SetParent(ply)
        hat:SetColor(col)
        hat:Spawn()
        ply:SetNWEntity("captain_hat", hat)
    end
    col = Vector(col.r/255, col.g/255, col.b/255)
    ply:SetPlayerColor(col)
end

function GM:PlayerSelectSpawn(ply)
    -- spectators use the default spawn
    if ply:Team() == 0 then
        return self.BaseClass:PlayerSelectSpawn(ply)
    end

    local spawns = {}
    for _, spawn in ipairs(ents.FindByClass("ship_player_spawn")) do
        if spawn.team ~= ply:Team() then 
            continue
        end
        if spawn.ship:GetEntityWaterLevel(spawn) > 1 then
            continue
        end
        local tr = util.TraceLine{
            start = spawn:GetPos(),
            endpos = spawn:GetPos() - vector_up * 16,
            filter = table.Add(player.GetAll(), {spawn})
        }
        if tr.Hit then
            table.insert(spawns, spawn)
        end
    end
    return spawns[math.random(#spawns)]
end

function GM:PlayerSelectClass(ply)
    if ply:IsCaptain() then
        return "ship_captain"
    end
    return "ship_player"
end

function GM:PlayerDeathThink(ply)
    if GetGlobalBool("round_started") and ply:GetDeadTime() >= cvar_respawntime:GetInt() then
         if (ply:Team() ~= 0 and util.IsCaptainAlive(ply:Team())) or #player.GetAll() == 1 then
            if IsValid(hook.Run("PlayerSelectSpawn", ply)) then
                ply:Spawn()
            end
        elseif ply:GetObserverMode() ~= OBS_MODE_ROAMING then
            ply:Spectate(OBS_MODE_ROAMING)
        end
    end
end

function GM:PostPlayerDeath(ply)
    if ply:IsCaptain() and GetGlobalBool("round_started") then
        local name = ply:GetName()
        local team_name = team.GetName(ply:Team())
        local msg = string.format("Captain %s of the %s has died!", name, team_name)
        PrintMessage(HUD_PRINTCENTER, msg)
        timer.Simple(0, function()
            if GetGlobalBool("round_started") then
                net.Start("ships_jingle")
                net.WriteBool(true)
                net.Broadcast()
            end
        end)
    end
    ply:SetNWFloat("die_time", CurTime())
    if (not util.IsCaptainAlive(ply:Team())) then
        self.dead_persist[ply:SteamID()] = true
    end
end

function GM:ShipSelectSpawn(ship)
    local spawns = {}
    for _, spawn in ipairs(ents.FindByClass("ship_spawn")) do
        if spawn.team == -1 or spawn.team == ship.team then
            table.insert(spawns, spawn)
        end
    end
    return spawns[math.random(#spawns)]
end

function GM:PlayerChangedShip(ply, ship_to, ship_from)
    if (not IsValid(ship_to)) and IsValid(ship_from) then
        ply:MoveToShip(ship_from)
    end
end

function GM:StartRound(time)
    game.CleanUpMap()
    SetGlobalBool("round_started", false)
    SetGlobalBool("round_starting", true)
    local teams = self:GetTeamCount()
    for i = 1, teams do
        local ship = ents.Create("ship")
        ship:SetTeam(i)
        ship.team = i
        local spawn = hook.Run("ShipSelectSpawn", ship)
        if IsValid(spawn) then
            ship:SetPos(spawn:GetPos())
            ship:SetAngles(spawn:GetAngles())
            ship:Spawn()
        else
            ship:Remove()
            print("no ship spawn for team "..i)
        end
    end
    for _, ply in ipairs(player.GetAll()) do
        ply:KillSilent()
    end
    timer.Simple(1, function()
        local players = player.GetAll()
        local players_shuffled = {}
        for i = 1, #players do
            local index = math.random(#players)
            table.insert(players_shuffled, players[index])
            table.remove(players, index)
        end
        for i, ply in ipairs(players_shuffled) do
            ply:SetTeam(1 + (i - 1) % teams)
            ply:SetCaptain(i <= teams)
            ply:Spawn()
        end
        SetGlobalBool("round_started", true)
        SetGlobalBool("round_starting", false)
        SetGlobalFloat("round_start", CurTime())
        SetGlobalInt("round_time", cvar_roundtime:GetInt())
        SetGlobalInt("round_respawn_time", cvar_respawntime:GetInt())
        SetGlobalInt("teams", teams)
        SetGlobalInt("victory_team", 0)
        hook.Run("RoundStart")
    end)
end

function GM:FinishRound(team)
    SetGlobalBool("round_started", false)
    SetGlobalInt("victory_team", team or 0)
    hook.Run("RoundFinish", team)
    for _, ply in ipairs(player.GetAll()) do
        net.Start("ships_jingle")
        net.WriteBool(false)
        net.WriteBool(ply:Team() == team)
        net.Send(ply)
    end
end

function GM:PlayerShouldTakeDamage(ply, attacker)
    if ply:IsPlayer() and attacker:IsPlayer() and
        ply:Team() == attacker:Team() then

        return false
    end
    return true
end

function GM:PlayerSwitchFlashlight(ply, enabled)
    return (not enabled)
end

function GM:Think()
    for _, ply in ipairs(player.GetAll()) do
        local ship = ply:FindShip()
        if ply.last_ship ~= ship then
            hook.Run("PlayerChangedShip", ply, ship, ply.last_ship)
            ply.last_ship = ship
        end
        -- water damage
        if (not ply.last_water_damage) or (CurTime() - ply.last_water_damage) >= cvar_waterdamageinterval:GetInt() then
            ply.last_water_damage = CurTime()
            if ply:WaterLevel() ~= 0 or (ship and ship:GetEntityWaterLevel(ply) >= 2.5) then
                ply:TakeDamage(cvar_waterdamage:GetInt())
            end
        end
        -- ship water gravity
        local gravity = 0
        if ship and ship:GetEntityWaterLevel(ply) > 2 then
            gravity = 1 - ship:GetEntityWaterLevel(ply) / 5
        end
        if ply:GetGravity() ~= gravity then
            ply:SetGravity(gravity)
        end
    end
    -- round logic
    if GetGlobalBool("round_started") then
        if self:GetRoundTime() <= 0 then
            self:FinishRound()
        elseif #player.GetAll() > 1 then
            local alive_count = 0
            for _, ply in ipairs(player.GetAll()) do
                if ply:Alive() then
                    alive_count = alive_count + 1
                end
            end
            for i = 1, self:GetTeamCount() do
                local team_alive_count = 0
                for _, ply in ipairs(team.GetPlayers(i)) do
                    if ply:Alive() then
                        team_alive_count = team_alive_count + 1
                    end
                end
                if team_alive_count == alive_count then
                    self:FinishRound(i)
                    return
                end
            end
        end
    elseif (not GetGlobalBool("round_starting")) then
        local time = cvar_roundstarttime:GetInt()
        local msg = string.format("Starting round in %d seconds", time)
        PrintMessage(HUD_PRINTCENTER, msg)
        SetGlobalBool("round_starting", true)
        timer.Simple(time, function()
            self:StartRound()
        end)
    end
end

function GM:EntityFireBullets(ent, data)
    if ent.firing_bullet then
        return
    end
    data.Tracer = 0
    ent.firing_bullet = true
    ent:FireBullets(data)
    ent.firing_bullet = nil
    local ship = ent:FindShip()
    local src = data.Src
    local ang = data.Dir:Angle()
    if ship then
        src, ang = ship:StationToShip(src, ang)
        data.Src = src
        data.Dir = ang:Forward()
        ent.firing_bullet = true
        ent:FireBullets(data)
        ent.firing_bullet = nil
    end
    for _, ship2 in ipairs(ents.FindByClass("ship")) do
        if ship2 == ship then
            continue
        end
        local dir = (ang:Forward() + data.Spread) * data.Distance
        local pos = util.IntersectRayWithOBB(src, dir, ship2:GetPos(), 
            ship2:GetAngles(), ship2:GetCollisionBounds())

        if pos then
            local pos, ang = ship2:ShipToStation(pos, ang)
            data.Src = pos
            data.Dir = ang:Forward() + data.Spread
            ent.firing_bullet = true
            ent:FireBullets(data)
            ent.firing_bullet = nil
        end
    end
    return false
end

function GM:PlayerSay(ply, text)
    if text:lower() == "!kill" and ply:Alive() then
        ply:Kill()
    end
    return true
end

-- damage sound
local male_sounds = {
    Sound("vo/npc/male01/pain01.wav"),
    Sound("vo/npc/male01/pain02.wav"),
    Sound("vo/npc/male01/pain03.wav"),
    Sound("vo/npc/male01/pain04.wav"),
    Sound("vo/npc/male01/pain05.wav"),
    Sound("vo/npc/male01/pain06.wav"),
    Sound("vo/npc/male01/pain07.wav"),
    Sound("vo/npc/male01/pain08.wav"),
    Sound("vo/npc/male01/pain09.wav")
}
local female_sounds = {
    Sound("vo/npc/female01/pain01.wav"),
    Sound("vo/npc/female01/pain02.wav"),
    Sound("vo/npc/female01/pain03.wav"),
    Sound("vo/npc/female01/pain04.wav"),
    Sound("vo/npc/female01/pain05.wav"),
    Sound("vo/npc/female01/pain06.wav"),
    Sound("vo/npc/female01/pain07.wav"),
    Sound("vo/npc/female01/pain08.wav"),
    Sound("vo/npc/female01/pain09.wav")
}
local females = {
    ["models/player/alyx.mdl"] = true,
    ["models/player/mossman.mdl"] = true,
    ["models/player/mossman_arctic.mdl"] = true,
    ["models/player/p2_chell.mdl"] = true,
    ["models/player/group01/female_01.mdl"] = true,
    ["models/player/group01/female_02.mdl"] = true,
    ["models/player/group01/female_03.mdl"] = true,
    ["models/player/group01/female_04.mdl"] = true,
    ["models/player/group01/female_05.mdl"] = true,
    ["models/player/group01/female_06.mdl"] = true,
    ["models/player/group03/female_01.mdl"] = true,
    ["models/player/group03/female_02.mdl"] = true,
    ["models/player/group03/female_03.mdl"] = true,
    ["models/player/group03/female_04.mdl"] = true,
    ["models/player/group03/female_05.mdl"] = true,
    ["models/player/group03/female_06.mdl"] = true
}
function GM:EntityTakeDamage(ent, dmg)
    if ent:IsPlayer() and ent:Alive() then
        if hook.Run("PlayerShouldTakeDamage", ent, dmg:GetAttacker()) then
            if females[ent:GetModel():lower()] then
                ent:EmitSound(female_sounds[math.random(#female_sounds)])
            else
                ent:EmitSound(male_sounds[math.random(#male_sounds)])
            end
        end
    end
end
