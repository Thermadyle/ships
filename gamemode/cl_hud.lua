local hud = Material("ships/hud.png", "unlitgeneric noclamp")
local hud_victory = Material("ships/hud_victory.png", "unlitgeneric noclamp")

surface.CreateFont("VictoryText", {
    font    = "Helvetica",
    size    = 64,
    weight  = 800
})

local char_coords = {
    ["0"] = {0.000000, 0, 0.062500, 0.25},
    ["1"] = {0.062500, 0, 0.125000, 0.25},
    ["2"] = {0.125000, 0, 0.187500, 0.25},
    ["3"] = {0.187500, 0, 0.250000, 0.25},
    ["4"] = {0.250000, 0, 0.312500, 0.25},
    ["5"] = {0.312500, 0, 0.375000, 0.25},
    ["6"] = {0.375000, 0, 0.437500, 0.25},
    ["7"] = {0.437500, 0, 0.500000, 0.25},
    ["8"] = {0.500000, 0, 0.562500, 0.25},
    ["9"] = {0.562500, 0, 0.625000, 0.25},
    [":"] = {0.625000, 0, 0.687500, 0.25},
}

local function DrawChar(char, x, y, w, h)
    local coords = char_coords[char]
    if (not coords) then
        return
    end
    surface.SetMaterial(hud)
    surface.DrawTexturedRectUV(x, y, w, h, unpack(coords))
end

local function DrawText(text, x, y, scale, h_align, v_align)
    local w = 32 * scale
    local h = 64 * scale
    if v_align == TEXT_ALIGN_TOP then
        y = y - h
    elseif v_align == TEXT_ALIGN_CENTER then
        y = y - h * 0.5
    end
    local len = text:len()
    for i = 1, len do
        local x = x + (i - 1) * w * 0.9375
        if h_align == TEXT_ALIGN_LEFT then
            x = x - w * len
        elseif h_align == TEXT_ALIGN_CENTER then
            x = x - w * len * 0.5
        end
        local char = text[i]
        DrawChar(char, x, y, w, h)
    end
end

function GM:HUDPaint()
    local scale = ScreenScale(0.25)
    -- background
    local w = 512 * scale
    local h = 128 * scale
    local x = 10
    local y = ScrH() - h - x
    surface.SetMaterial(hud)
    surface.SetDrawColor(color_white)
    surface.DrawTexturedRectUV(x, y, w, h, 0, 0.5, 1, 1)
    --
    local text_y = y + h * 0.5125
    local ss = ScreenScale(0.4) -- shadow scale
    -- health
    local ply = LocalPlayer()
    if ply:Alive() then
        local hp = tostring(ply:Health())
        local text_x = x + ScreenScale(8)
        surface.SetDrawColor(color_black)
        DrawText(hp, text_x + 4 * ss, text_y + 2 * ss, scale, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
        surface.SetDrawColor(color_white)
        DrawText(hp, text_x, text_y, scale, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
    else
        local size = ScreenScale(28)
        local x = x + ScreenScale(5)
        local y = y + h* 0.5 - size * 0.5 + ScreenScale(1)
        surface.DrawTexturedRectUV(x, y, size, size, 0, 0.25, 0.125, 0.5)
        if GetGlobalBool("round_started") and (util.IsCaptainAlive(ply:Team()) or #player.GetAll() == 1) then
            local text_x = x + ScreenScale(28)
            local time = GetGlobalInt("round_respawn_time") - ply:GetDeadTime()
            time = tostring(math.max(1, math.floor(time)))
            surface.SetDrawColor(color_black)
            DrawText(time, text_x + 4 * ss, text_y + 2 * ss, scale, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
            surface.SetDrawColor(color_white)
            DrawText(time, text_x, text_y, scale, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
        end
    end
    -- timer
    if GetGlobalBool("round_started") then
        local time = self:GetRoundTime()
        local text = string.ToMinutesSeconds(time)
        local text_x = x + ScreenScale(122)
        surface.SetDrawColor(color_black)
        DrawText(text, text_x + 4 * ss, text_y + 2 * ss, scale, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
        surface.SetDrawColor(color_white)
        DrawText(text, text_x, text_y, scale, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
    end
    -- winner
    local team_index = GetGlobalInt("victory_team")
    if team_index ~= 0 then
        local w = ScreenScale(192)
        local h = ScreenScale(96)
        local x = ScrW() * 0.5 - w * 0.5
        local y = ScrH() * 0.25 - h * 0.5
        surface.SetDrawColor(color_white)
        surface.SetMaterial(hud_victory)
        surface.DrawTexturedRect(x, y, w, h)
        local name = team.GetName(team_index)
        local col = team.GetColor(team_index)
        y = y + h * 0.55 - draw.GetFontHeight("VictoryText") * 0.5
        draw.DrawText(name, "VictoryText", x + w * 0.5 + ss * 2, y + ss * 2, color_black, TEXT_ALIGN_CENTER)
        draw.DrawText(name, "VictoryText", x + w * 0.5, y, col, TEXT_ALIGN_CENTER)
    end
    -- target id
    hook.Run("HUDDrawTargetID")
end

function GM:HUDShouldDraw(name)
    if name == "CHudHealth" then
        return false
    end
    return self.BaseClass.HUDShouldDraw(self, name)
end
