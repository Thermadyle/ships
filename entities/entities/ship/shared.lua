include("model.lua")
include("net.lua")
ENT.Base = "base_anim"
ENT.RenderGroup = RENDERGROUP_BOTH

function ENT:SetupDataTables()
    self:NetworkVar("Int", 0, "Team")
    self:NetworkVar("Entity", 0, "Driver")
end

local meta_hull = include("meta/ship_hull.lua")
function ENT:InitHull()
    self.hulls = {}
    for _, data in ipairs(self.model.hulls) do
        local hull = setmetatable({}, meta_hull)
        hull.index = table.insert(self.hulls, hull)
        hull.ship = self
        hull:Init(data)
    end
end

function ENT:ShipToStation(pos, ang)
    local lpos = self:WorldToLocal(pos)
    local lang = self:WorldToLocalAngles(ang)
    return self.stations[1]:LocalToWorld(lpos), 
        self.stations[1]:LocalToWorldAngles(lang)
end

function ENT:StationToShip(pos, ang)
    local lpos = self.stations[1]:WorldToLocal(pos)
    local lang = self.stations[1]:WorldToLocalAngles(ang)
    return self:LocalToWorld(lpos), 
        self:LocalToWorldAngles(lang)
end

function ENT:GetStationBoundsWS()
    local pos = self.stations[1]:GetPos()
    local min, max = self:GetCollisionBounds()
    return pos + min, pos + max
end

function ENT:GetEntityWaterLevel(ent)
    local water = GetGlobalBool("water")
    local level = GetGlobalInt("water_level")
    if (not water) then
        return 0
    end
    local height = ent:OBBMaxs().z + ent:OBBMins().z
    height = (height ~= 0 and height) or 16
    local pos = self:StationToShip(ent:GetPos(), angle_zero)
    return math.min(3, math.max(0, level - pos.z) / height * 3)
end