AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")
util.AddNetworkString("cannon_light_fuse")

function ENT:Initialize()
    self:SetModel(self.Model)
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(SOLID_VPHYSICS)
    self:GetPhysicsObject():SetMass(1000)
    self:StartMotionController()
    self:SetUseType(SIMPLE_USE)
    self:DrawShadow(false)
    self:PhysWake()
end

local shadow = {}
shadow.secondstoarrive = 1/33
shadow.maxangular = 1000
shadow.maxspeed = 1000
shadow.maxangulardamp = 1000
shadow.maxspeeddamp = 1000
shadow.dampfactor = 0.25
shadow.teleportdistance = 96

function ENT:PhysicsSimulate(phys, dt)
    local cannon = self:GetCannon()
    if IsValid(cannon) then
        shadow.pos = cannon:GetPos() - cannon:GetForward() * 48
        shadow.angle = cannon:GetAngles()
        shadow.deltatime = dt
        phys:ComputeShadowControl(shadow)
    end
end

function ENT:Use()
    local ship = self:FindShip()
    if (not ship) or ship:GetEntityWaterLevel(self) > 0 then
        return
    end
    if self:GetLoaded() then
        self:LightFuse(4)
        self:SetLoaded(false)
    end
end

function ENT:FireCannonBall()
    local cannon = self:GetCannon()
    local pos = self:GetPos()
    local ang = self:GetAngles()

    local ball_station = ents.Create("cannon_ball")
    ball_station:SetPos(pos)
    ball_station:SetAngles(ang)
    ball_station.from_station = true -- see cannon_ball.lua
    ball_station:Spawn()
    constraint.NoCollide(ball_station, self, 0, 0)

    local ball_ship
    local ship = self:FindShip()
    if IsValid(cannon) then
        if (not ship) then
            ship = cannon:FindShip()
        end 
        local phys = cannon:GetPhysicsObject()
        phys:SetVelocity(cannon:GetForward() * phys:GetMass() * 0.25)
        self:PhysWake()
    end
    if ship then
        pos, ang = ship:StationToShip(pos, ang)
        ball_ship = ents.Create("cannon_ball")
        ball_ship:SetPos(pos)
        ball_ship:SetAngles(ang)
        ball_ship:Spawn()
        ball_ship.partner = ball_station
        ball_station.partner = ball_ship
    end
    
    local effect = EffectData()
    effect:SetOrigin(pos - ang:Forward() * 96)
    effect:SetNormal(ang:Forward() * -1)
    util.Effect("cannon_fire", effect)

    for _, ball in ipairs{ball_station, ball_ship} do
        local phys = ball:GetPhysicsObject()
        phys:SetVelocity(ball:GetAngles():Forward() * -65535)
        phys:SetDragCoefficient(0)
        phys:SetDamping(-50, 0)
    end

    timer.Simple(4, function()
        if IsValid(ball_station) then
            ball_station:Remove()
        end
        if IsValid(ball_ship) then
            ball_ship:Remove()
        end
    end)
end