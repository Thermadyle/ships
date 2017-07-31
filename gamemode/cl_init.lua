include("shared.lua")
include("cl_hud.lua")
include("cl_scoreboard.lua")

local view = {}
local last_ship
function GM:CalcView(ply, pos, ang)
    local ship = ply:FindShip()
    local divide = ents.FindByClass("ships_area_divide")[1]
    if IsValid(divide) and ply:GetPos().z > divide:GetPos().z then
        ship = ship or last_ship
    end
    if IsValid(ship) then
        if ship:GetDriver() == ply then
            pos = pos - ang:Forward() * 2048
        end
        pos, ang = ship:StationToShip(pos, ang)
        view.origin = pos
        view.angles = ang
        last_ship = ship
        return view
    end
end

function GM:CalcViewModelView(wep, _, _, _, pos, ang)
    local ship = LocalPlayer():FindShip()
    local divide = ents.FindByClass("ships_area_divide")[1]
    if IsValid(divide) and LocalPlayer():GetPos().z > divide:GetPos().z then
        ship = ship or last_ship
    end
    if IsValid(ship) then
        return ship:StationToShip(pos, ang)
    end
end

function GM:ShouldDrawLocalPlayer(ply)
    local ship = ply:FindShip()
    return IsValid(ship) and ship:GetDriver() == ply
end

local tab = {
    ["$pp_colour_addr"] = 0,
    ["$pp_colour_addg"] = 0,
    ["$pp_colour_addb"] = 0,
    ["$pp_colour_brightness"] = 0,
    ["$pp_colour_contrast"] = 1,
    ["$pp_colour_colour"] = 1.125,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}
function GM:RenderScreenspaceEffects()
    if cvar_saturate:GetBool() then
        DrawColorModify(tab)
    end
end

function GM:PreDrawOpaqueRenderables()
    local ent_divide = ents.FindByClass("ships_area_divide")[1]
    if IsValid(ent_divide) then
        local normal = ent_divide:GetAngles():Forward()
        local len = normal:Dot(ent_divide:GetPos())
        render.EnableClipping(true)
        render.PushCustomClipPlane(normal, len)
        DIVIDE_CLIP = {normal, len}
    end
end

function GM:PostDrawTranslucentRenderables()
    if DIVIDE_CLIP then
        render.PopCustomClipPlane()
        render.EnableClipping(false)
        DIVIDE_CLIP= nil
    end
end

function GM:OnEntityCreated(ent)
    if ent:GetClass() == "ship" and self:GetRoundTime() > 5 then
        net.Start("ship_download")
        net.WriteEntity(ent)
        net.SendToServer()
    end
end

local nodraw = {
    ["gmod_anchor"] = true,
    ["ship"] = true,
    ["ship_station"] = true,
    ["viewmodel"] = true,
}
function GM:ShouldShipDrawEntity(ship, ent)
    if ent:IsWeapon() or nodraw[ent:GetClass()] then
        return false
    end
    return true
end

function GM:ShouldShipUpdateHull(ship, hull)
    return true
end

function GM:OnShipHullUpdated(ship, hull)
end

net.Receive("ships_jingle", function()
    if net.ReadBool() then
        surface.PlaySound("ships/captdead.mp3")
    elseif net.ReadBool() then
        surface.PlaySound("ships/win.mp3")
    else
        surface.PlaySound("ships/loss.mp3")
    end
end)
