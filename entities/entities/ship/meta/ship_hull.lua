local meta_mesh = include("ship_mesh.lua")
local ship_hull = {}
ship_hull.__index = ship_hull
ship_hull.translate = Vector()
ship_hull.mat_index = 1
ship_hull.levels = 1
ship_hull.min = Vector(-1, -1, -1)
ship_hull.max = Vector(1, 1, 1)

function ship_hull:Init(data)
    self.translate = data.translate
    self.mat_index = data.mat_index
    self.levels = data.levels
    self.meshes = {}
    for i, data in ipairs(data) do
        local mesh = setmetatable({}, meta_mesh)
        -- initial values for the mesh
        mesh.pos = data.pos + self.translate
        mesh.ang = data.ang
        mesh.type = data.type
        mesh.size = data.size
        mesh.mirror = data.mirror
        mesh:Init()
        -- values used without the mesh knowing
        mesh.mat_index = data.mat_index or self.mat_index
        mesh.levels = data.levels or self.levels
        mesh.level = 0
        mesh.alive = true
        mesh.index = table.insert(self.meshes, mesh)
    end
    self.init_mesh_count = #self.meshes
    self:Update()
    self.init_mass = self.mass
end

function ship_hull:DoBlastDamage(pos, radius, start_index)
    local min = pos - Vector(0.5, 0.5, 0.5) * radius
    local max = pos + Vector(0.5, 0.5, 0.5) * radius
    local targets = {}
    for i = (start_index or 1), #self.meshes do
        local mesh = self.meshes[i]
        if mesh and mesh.alive and 
            util.AABBIntersect(min, max, mesh.aabb_min, mesh.aabb_max) then
            
            table.insert(targets, mesh)
        end
    end
    for _, target in ipairs(targets) do
        target.alive = false
        if target.level < target.levels then
            for _, mesh in ipairs{target:Subdivide()} do
                mesh.mat_index = target.mat_index
                mesh.levels = target.levels
                mesh.level = target.level + 1
                mesh.parent = target
                mesh.alive = true
                mesh.index = table.insert(self.meshes, mesh)
            end
            self:DoBlastDamage(pos, radius, #self - 4)
        end
    end
    return #targets ~= 0
end

function ship_hull:GetTriangles(mat_index)
    local triangles = {}
    for i, mesh in ipairs(self.meshes) do
        if mesh.alive and ((not mat_index) or mesh.mat_index == mat_index) then
            table.Add(triangles, mesh.triangles)
        end
    end
    return triangles
end

function ship_hull:Update()
    self.mass = 0
    self.multi_convex = {}
    self.triangles = {}
    for i, mesh in ipairs(self.meshes) do
        if mesh.alive then
            if i <= self.init_mesh_count then
                self.mass = self.mass + mesh.mass
            end
            table.insert(self.multi_convex, mesh.vertices)
            table.Add(self.triangles, mesh.triangles)
        end
    end
    if #self.multi_convex > 0 then
        self.min = self.multi_convex[1][1] * 1
        self.max = self.multi_convex[1][1] * 1
        for _, vertices in ipairs(self.multi_convex) do
            for _, vertex in ipairs(vertices) do
                self.min.x = math.min(self.min.x, vertex.x)
                self.min.y = math.min(self.min.y, vertex.y)
                self.min.z = math.min(self.min.z, vertex.z)
                self.max.x = math.max(self.max.x, vertex.x)
                self.max.y = math.max(self.max.y, vertex.y)
                self.max.z = math.max(self.max.z, vertex.z)
            end
        end
    end
end

return ship_hull