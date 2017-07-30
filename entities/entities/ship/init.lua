AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("meta/ship_hull.lua")
AddCSLuaFile("meta/ship_mesh.lua")
AddCSLuaFile("model.lua")
AddCSLuaFile("net.lua")

include("shared.lua")

function ENT:Initialize()
    self.team = self:GetTeam()
    self.stations = {}
    self.phys = {}
    local mass = 0
    local min = Vector()
    local max = Vector()
    self:InitHull()
    for i, hull in ipairs(self.hulls) do
        -- gain weight
        mass = mass + hull.mass
        -- figure out bounds
        min.x = math.min(min.x, hull.min.x)
        min.y = math.min(min.y, hull.min.y)
        min.z = math.min(min.z, hull.min.z)
        max.x = math.max(max.x, hull.max.x)
        max.y = math.max(max.y, hull.max.y)
        max.z = math.max(max.z, hull.max.z)
        -- the stationary entity where entities rest
        local station = ents.Create("ship_station")
        station:SetPos(self:GetPos() + vector_up * 4096)
        station:SetAngles(angle_zero)
        station:SetShip(self)
        station:SetIndex(i) -- hull index
        station:Spawn()
        -- in the world colliding with stuff
        self:SpawnPhys(i)
    end
    -- create spawn points
    self.spawns = {}
    for _, pos in ipairs(self.model.spawns or {}) do
        local spawn = ents.Create("ship_player_spawn")
        spawn:SetPos(self.stations[1]:LocalToWorld(pos))
        spawn.team = self.team
        spawn.ship = self
        table.insert(self.spawns, spawn)
    end
    --
    self:PhysicsInitBox(min, max)
    self:SetCollisionBounds(min, max)
    self:GetPhysicsObject():SetMass(mass)
    self:GetPhysicsObject():SetDamping(-10, 0)
    self:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:DrawShadow(false)
    --self:GetPhysicsObject():EnableMotion(false)
    -- spawn entities
    for _, data in ipairs(self.model.entities or {}) do
        local ent = ents.Create(data.class)
        ent:SetPos(self.stations[1]:LocalToWorld(data.pos))
        ent:SetAngles(data.ang)
        ent.team = self.team
        ent.ship = self
        ent:Spawn()
    end
    -- create ropes
    for _, positions in ipairs(self.model.ropes or {}) do
        local pos1, pos2 = unpack(positions)
        local len = (pos2 - pos1):Length()
        constraint.CreateKeyframeRope(self:GetPos(), 6, "cable/rope", self, self, pos1, 0, self, pos2, 0, {Length = len, Collide = 0})
    end
end

function ENT:SpawnPhys(index)
    if IsValid(self.phys[index]) then
        self.phys[index]:Remove()
    end
    self.phys[index] = ents.Create("ship_phys")
    self.phys[index]:SetPos(self:GetPos())
    self.phys[index]:SetAngles(self:GetAngles())
    self.phys[index]:SetShip(self)
    self.phys[index]:SetIndex(index)
    self.phys[index]:Spawn()
end

function ENT:DoBlastDamage(pos, radius)
    pos = self:WorldToLocal(pos)
    local min = pos - Vector(0.5, 0.5, 0.5) * radius
    local max = pos + Vector(0.5, 0.5, 0.5) * radius
    for i, hull in ipairs(self.hulls) do
        if util.AABBIntersect(min, max, hull.min, hull.max) then
            if hull:DoBlastDamage(pos, radius) then
                local name = string.format("ship_hull_update_%d_%d", self:EntIndex(), i)
                timer.Create(name, 0, 1, function()
                    hull:Update()
                    self.stations[hull.index]:PhysicsInitHull()
                    self:NetworkHull(i)
                    self:SpawnPhys(i)
                end)
            end
        end
    end
end

function ENT:Think()
    -- thrust
    local driver = self:GetDriver()
    if IsValid(driver) then
        local turn_value = 0
        for _, ent in ipairs(ents.FindByClass("ship_steer")) do
            if ent.ship == self then
                turn_value = ent.turn_value
            end
        end
        local phys = self:GetPhysicsObject()
        for in_key, thrusters in pairs(self.model.thrusters) do
            if (not driver:KeyDown(in_key)) then
                continue
            end
            for _, thrust in pairs(thrusters) do
                local force = thrust.GetForce(self, phys, turn_value)
                phys:ApplyForceOffset(force, self:LocalToWorld(thrust.pos))
            end
        end
    end
    -- push ships away from eachother
    --local min1, max1 = self:WorldSpaceAABB()
    --for _, ship in ipairs(ents.FindByClass("ship")) do
    --    if ship == self then
    --        continue
    --    end
    --    local min2, max2 = ship:WorldSpaceAABB()
    --    if util.AABBIntersect(min1, max1, min2, max2) then
    --        local force = (self:GetPos() - ship:GetPos()) * 32
    --        self:GetPhysicsObject():ApplyForceCenter(force)
    --    end
    --end
    self:NextThink(CurTime() + 0.0625)
    return true
end