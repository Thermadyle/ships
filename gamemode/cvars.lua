if SERVER then
    cvar_respawntime = CreateConVar("ships_respawn_time", "10", FCVAR_ARCHIVE + FCVAR_NOTIFY)
    cvar_roundtime = CreateConVar("ships_round_time", "900", FCVAR_ARCHIVE + FCVAR_NOTIFY)
    cvar_roundstarttime = CreateConVar("ships_round_starttime", "10", FCVAR_ARCHIVE + FCVAR_NOTIFY)
    cvar_playermaxballs = CreateConVar("ships_player_maxballs", "3", FCVAR_ARCHIVE + FCVAR_NOTIFY)
    cvar_lifetimeball= CreateConVar("ships_player_balllifetime", "15", FCVAR_ARCHIVE + FCVAR_NOTIFY)
    cvar_waterdamage = CreateConVar("ships_water_damage", "5", FCVAR_ARCHIVE + FCVAR_NOTIFY)
    cvar_waterdamageinterval = CreateConVar("ships_water_damagetime", "1", FCVAR_ARCHIVE + FCVAR_NOTIFY)
    cvar_teams = CreateConVar("ships_teams", "2", FCVAR_ARCHIVE + FCVAR_NOTIFY)
else
    cvar_saturate = CreateConVar("ships_saturate", "1", FCVAR_ARCHIVE)
end