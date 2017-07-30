local col_title = Color(220, 220, 220)
local col_text = Color(64, 64, 64)
local col_text_shadow = Color(0, 0, 0, 200)

local mat_paper = Material("ships/scoreboard_paper.png")
local mat_paper_help = Material("ships/scoreboard_paper_help.png")

surface.CreateFont( "ScoreboardDefaultDead", {
    font    = "Helvetica",
    size    = 22,
    weight  = 800,
    blursize   = 2,
    rotary  = true
})

local max_players = GetConVarNumber("maxplayers")
local max_players_sqr = math.pow(max_players, 2)
local function GetTeamZPos(team)
    local zpos = team * max_players_sqr
    if team == 0 then
        -- spectators at bottom
        zpos = zpos + 20480
    end
    return zpos
end

local function GetPlayerZPos(ply)
    local team_index = ply:Team()
    local zpos = GetTeamZPos(team_index) + 1 
    zpos = zpos + ply:EntIndex()
    for _, ply2 in ipairs(team.GetPlayers(team_index)) do
        if ply2 ~= ply and ply2:Frags() > ply:Frags() then
            zpos = zpos + max_players
        end
    end
    return zpos
end

--
--
local player_entry = {}

function player_entry:Init()
    self.AvatarButton = self:Add( "DButton" )
    self.AvatarButton:Dock( LEFT )
    self.AvatarButton:SetSize( 32, 32 )
    self.AvatarButton.DoClick = function() 
        self.Player:ShowProfile() 
    end
    
    self.Avatar = vgui.Create( "AvatarImage", self.AvatarButton )
    self.Avatar:SetSize( 32, 32 )
    self.Avatar:SetMouseInputEnabled( false )

    self.Name = self:Add( "DLabel" )
    self.Name:Dock( FILL )
    self.Name:SetFont( "ScoreboardDefault" )
    self.Name:SetTextColor( col_text )
    self.Name:DockMargin( 8, 0, 0, 0 )

    self.Mute = self:Add( "DImageButton" )
    self.Mute:SetSize( 32, 32 )
    self.Mute:Dock( RIGHT )
    self.Mute:SetImage( "icon32/unmuted.png" )
    self.Mute.DoClick = function()
        self.Player:SetMuted(not self.Player:IsMuted())
    end

    self.Ping = self:Add( "DLabel" )
    self.Ping:Dock( RIGHT )
    self.Ping:SetWidth( 50 )
    self.Ping:SetFont( "ScoreboardDefault" )
    self.Ping:SetTextColor( col_text )

    self.Deaths = self:Add( "DLabel" )
    self.Deaths:Dock( RIGHT )
    self.Deaths:SetWidth( 50 )
    self.Deaths:SetFont( "ScoreboardDefault" )
    self.Deaths:SetTextColor( col_text )

    self.Kills = self:Add( "DLabel" )
    self.Kills:Dock( RIGHT )
    self.Kills:SetWidth( 50 )
    self.Kills:SetFont( "ScoreboardDefault" )
    self.Kills:SetTextColor( col_text )

    self:Dock( TOP )
    self:DockPadding( 3, 3, 3, 3 )
    self:SetHeight( 32 + 3 * 2 )
    self:DockMargin( 2, 0, 2, 2 )
end

function player_entry:Think()
    if (not IsValid(self.Player)) then
        self:Remove()
        return
    end
    if self.Player:Team() ~= 0 then
        if self.Player:Alive() then
            if self.Name:GetFont() == "ScoreboardDefaultDead" then
                self.Name:SetFont("ScoreboardDefault")
            end
        elseif self.Name:GetFont() == "ScoreboardDefault" then
            self.Name:SetFont("ScoreboardDefaultDead")
        end
    end
    if ( self.PName == nil || self.PName != self.Player:Nick() ) then
        self.PName = self.Player:Nick()
        self.Name:SetText( self.PName )
    end
    local frags = self.Player:Frags() + self.Player:Deaths()
    if ( self.NumKills == nil || self.NumKills != frags ) then
        self.NumKills = frags
        self.Kills:SetText( self.NumKills )
    end
    if ( self.NumDeaths == nil || self.NumDeaths != self.Player:Deaths() ) then
        self.NumDeaths = self.Player:Deaths()
        self.Deaths:SetText( self.NumDeaths )
    end
    if ( self.NumPing == nil || self.NumPing != self.Player:Ping() ) then
        self.NumPing = self.Player:Ping()
        self.Ping:SetText( self.NumPing )
    end
    if ( self.Muted == nil || self.Muted != self.Player:IsMuted() ) then
        self.Muted = self.Player:IsMuted()
        if ( self.Muted ) then
            self.Mute:SetImage( "icon32/muted.png" )
        else
            self.Mute:SetImage( "icon32/unmuted.png" )
        end
    end
    self:SetZPos(GetPlayerZPos(self.Player))
end

function player_entry:Setup(ply)
    self.Player = ply
    self.Avatar:SetPlayer(ply)
end

function player_entry:Paint(w, h)
    local col = team.GetColor(self.Player:Team())
    local hue, s, v = ColorToHSV(col)
    surface.SetDrawColor(HSVToColor(hue, s * 0.375, v))
    surface.DrawRect(0, 0, w, h)
end

player_entry = vgui.RegisterTable(player_entry, "DPanel")

--
--
local team_header = {}

function team_header:Setup(team_index)
    self.team = team_index
    self.color = team.GetColor(team_index)
    self.Name:SetText(team.GetName(team_index))
    self.Name:SizeToContents()
end

function team_header:Init()
    self.Name = self:Add( "DLabel" )
    self.Name:SetFont( "ScoreboardDefault" )
    self.Name:SetTextColor( col_title )
    self.Name:SetExpensiveShadow( 1, col_text_shadow )
    self.Name:Dock( LEFT )
    self.Name:DockMargin(6, 0, 0, 0)
end

function team_header:Paint(w, h)
    surface.SetDrawColor(self.color)
    surface.DrawRect(0, 0, w, h)
end

function team_header:Think()
    if team.NumPlayers(self.team) == 0 then
        self:Remove()
    end
end

team_header = vgui.RegisterTable(team_header, "DPanel")

--
--
local scoreboard = {}

function scoreboard:Init()
    self.team_headers = {}
    self.canvas = self:Add("Panel")
    self.canvas:Dock(FILL)

    local help = self.canvas:Add("DLabel")
    help:SetFont("ScoreboardDefault")
    help:SetText("Click for help")
    help:SizeToContents()
    help:Dock(BOTTOM)
    help:DockMargin(0, 6, 0, 0)
    help:SetTextColor(col_text)
    help:SetMouseInputEnabled(true)
    help.DoClick = function()
        self.canvas:SetVisible(false)
        self.image = mat_paper_help
    end

    self.Header = self.canvas:Add( "Panel" )
    self.Header:Dock( TOP )
    self.Header:SetHeight( 50 )

    self.Name = self.Header:Add( "DLabel" )
    self.Name:SetFont( "ScoreboardDefaultTitle" )
    self.Name:SetTextColor(col_title)
    self.Name:Dock( TOP )
    self.Name:SetContentAlignment( 5 )
    self.Name:SetExpensiveShadow( 2, col_text_shadow )

    self.Scores = self.canvas:Add( "DScrollPanel" )
    self.Scores:Dock(FILL)
end

function scoreboard:PerformLayout()
    local size = ScreenScale(450)
    self:SetWide(size)
    self:SetTall(size)
    self:Center()
    local mx = ScreenScale(40)
    local my = ScreenScale(80)
    self.canvas:DockMargin(mx, my, mx, my)
end

function scoreboard:Think()
    self.Name:SetText( GetHostName() )
    self.Name:SizeToContents()
    for _, ply in ipairs( player.GetAll() ) do
        if IsValid(ply.ScoreEntry) then 
            continue 
        end
        ply.ScoreEntry = vgui.CreateFromTable( player_entry )
        ply.ScoreEntry:Setup( ply )
        self.Scores:AddItem( ply.ScoreEntry )
    end
    for i = 0, 4 do
        if team.NumPlayers(i) > 0 and (not IsValid(self.team_headers[i])) then
            local header = vgui.CreateFromTable(team_header)
            header:SetTall(40)
            header:Dock(TOP)
            header:Setup(i)
            header:SetZPos(GetTeamZPos(i))
            self.Scores:AddItem(header)
            self.team_headers[i] = header
        end
    end
end

function scoreboard:Paint(w, h)
    surface.SetDrawColor(color_white)
    surface.SetMaterial(self.image)
    surface.DrawTexturedRect(0, 0, w, h)
end

scoreboard = vgui.RegisterTable(scoreboard, "DPanel")

--
--
function GM:ScoreboardShow()
    if (not IsValid(g_Scoreboard)) then
        g_Scoreboard = vgui.CreateFromTable(scoreboard)
    end
    g_Scoreboard.image = mat_paper
    g_Scoreboard.canvas:SetVisible(true)

    g_Scoreboard:Show()
    g_Scoreboard:MakePopup()
    g_Scoreboard:SetKeyboardInputEnabled(false)
end

function GM:ScoreboardHide()
    g_Scoreboard:Hide()
end