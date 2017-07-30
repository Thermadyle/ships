local ship_mesh = {}
ship_mesh.__index = ship_mesh
ship_mesh.pos = Vector()
ship_mesh.ang = Angle()
ship_mesh.type = "quad"
ship_mesh.size = Vector(16, 16, 16)

function ship_mesh:Init()
    self:UpdateVertices()
    self:UpdateTriangles()
    self.aabb_min = self.vertices[1] * 1
    self.aabb_max = self.vertices[1] * 1
    for _, vertex in ipairs(self.vertices) do
        self.aabb_min.x = math.min(self.aabb_min.x, vertex.x)
        self.aabb_min.y = math.min(self.aabb_min.y, vertex.y)
        self.aabb_min.z = math.min(self.aabb_min.z, vertex.z)
        self.aabb_max.x = math.max(self.aabb_max.x, vertex.x)
        self.aabb_max.y = math.max(self.aabb_max.y, vertex.y)
        self.aabb_max.z = math.max(self.aabb_max.z, vertex.z)
    end
    self.min = self.size * -0.5
    self.max = self.size * 0.5
    self.mass = self.size:Length()
    if self.type == "triangle" then
        self.mass = self.mass * 0.5
    end
end

function ship_mesh:UpdateVertices()
    local forward_len = self.ang:Forward() * self.size.x * 0.5
    local right_len = self.ang:Right() * self.size.y * 0.5
    local up_len = self.ang:Up() * self.size.z * 0.5
    if self.type == "quad" then
        self.vertices = {
            -- upper
            self.pos - forward_len - right_len + up_len,
            self.pos + forward_len - right_len + up_len,
            self.pos + forward_len + right_len + up_len,
            self.pos - forward_len + right_len + up_len,
            -- lower
            self.pos - forward_len - right_len - up_len,
            self.pos + forward_len - right_len - up_len,
            self.pos + forward_len + right_len - up_len,
            self.pos - forward_len + right_len - up_len
        }
    elseif self.type == "triangle" then
        if self.mirror then
            self.vertices = {
                -- upper
                self.pos + forward_len + right_len + up_len,
                self.pos - forward_len + right_len + up_len,
                self.pos - forward_len - right_len + up_len,
                -- lower
                self.pos + forward_len + right_len - up_len,
                self.pos - forward_len + right_len - up_len,
                self.pos - forward_len - right_len - up_len
            }
        else
            self.vertices = {
                -- upper
                self.pos - forward_len - right_len + up_len,
                self.pos + forward_len - right_len + up_len,
                self.pos + forward_len + right_len + up_len,
                -- lower
                self.pos - forward_len - right_len - up_len,
                self.pos + forward_len - right_len - up_len,
                self.pos + forward_len + right_len - up_len
            }
        end
    end
    return self.vertices
end

function ship_mesh:UpdateTriangles()
    local forward = self.ang:Forward()
    local right = self.ang:Right()
    local up = self.ang:Up()
    if self.type == "quad" then
        self.triangles = {
            -- top
            {pos = self.vertices[1], normal = up, u = 0, v = 0},
            {pos = self.vertices[2], normal = up, u = 1, v = 0},
            {pos = self.vertices[3], normal = up, u = 1, v = 1},
            {pos = self.vertices[3], normal = up, u = 1, v = 1},
            {pos = self.vertices[4], normal = up, u = 0, v = 1},
            {pos = self.vertices[1], normal = up, u = 0, v = 0},
            -- bottom
            {pos = self.vertices[8], normal = -up, u = 0, v = 0},
            {pos = self.vertices[7], normal = -up, u = 1, v = 0},
            {pos = self.vertices[6], normal = -up, u = 1, v = 1},
            {pos = self.vertices[6], normal = -up, u = 1, v = 1},
            {pos = self.vertices[5], normal = -up, u = 0, v = 1},
            {pos = self.vertices[8], normal = -up, u = 0, v = 0},
            -- front
            {pos = self.vertices[3], normal = forward, u = 0, v = 0},
            {pos = self.vertices[2], normal = forward, u = 1, v = 0},
            {pos = self.vertices[6], normal = forward, u = 1, v = 1},
            {pos = self.vertices[6], normal = forward, u = 1, v = 1},
            {pos = self.vertices[7], normal = forward, u = 0, v = 1},
            {pos = self.vertices[3], normal = forward, u = 0, v = 0},
            -- back
            {pos = self.vertices[1], normal = -forward, u = 0, v = 0},
            {pos = self.vertices[4], normal = -forward, u = 1, v = 0},
            {pos = self.vertices[8], normal = -forward, u = 1, v = 1},
            {pos = self.vertices[8], normal = -forward, u = 1, v = 1},
            {pos = self.vertices[5], normal = -forward, u = 0, v = 1},
            {pos = self.vertices[1], normal = -forward, u = 0, v = 0},
            -- right
            {pos = self.vertices[4], normal = right, u = 0, v = 0},
            {pos = self.vertices[3], normal = right, u = 1, v = 0},
            {pos = self.vertices[7], normal = right, u = 1, v = 1},
            {pos = self.vertices[7], normal = right, u = 1, v = 1},
            {pos = self.vertices[8], normal = right, u = 0, v = 1},
            {pos = self.vertices[4], normal = right, u = 0, v = 0},
            -- left
            {pos = self.vertices[2], normal = -right, u = 0, v = 0},
            {pos = self.vertices[1], normal = -right, u = 1, v = 0},
            {pos = self.vertices[5], normal = -right, u = 1, v = 1},
            {pos = self.vertices[5], normal = -right, u = 1, v = 1},
            {pos = self.vertices[6], normal = -right, u = 0, v = 1},
            {pos = self.vertices[2], normal = -right, u = 0, v = 0},
        }
    elseif self.type == "triangle" then
        local diagonal_normal = (right - forward):GetNormal() -- fix fix
        self.triangles = {
            -- top
            {pos = self.vertices[1], normal = up, u = 0, v = 0},
            {pos = self.vertices[2], normal = up, u = 1, v = 0},
            {pos = self.vertices[3], normal = up, u = 1, v = 1},
            -- bottom
            {pos = self.vertices[6], normal = -up, u = 0, v = 0},
            {pos = self.vertices[5], normal = -up, u = 1, v = 0},
            {pos = self.vertices[4], normal = -up, u = 1, v = 1},
            -- forward
            {pos = self.vertices[3], normal = forward, u = 0, v = 0},
            {pos = self.vertices[2], normal = forward, u = 1, v = 0},
            {pos = self.vertices[5], normal = forward, u = 1, v = 1},
            {pos = self.vertices[5], normal = forward, u = 1, v = 1},
            {pos = self.vertices[6], normal = forward, u = 0, v = 1},
            {pos = self.vertices[3], normal = forward, u = 0, v = 0},
            -- right
            {pos = self.vertices[1], normal = diagonal_normal, u = 0, v = 0},
            {pos = self.vertices[3], normal = diagonal_normal, u = 1, v = 0},
            {pos = self.vertices[6], normal = diagonal_normal, u = 1, v = 1},
            {pos = self.vertices[6], normal = diagonal_normal, u = 1, v = 1},
            {pos = self.vertices[4], normal = diagonal_normal, u = 0, v = 1},
            {pos = self.vertices[1], normal = diagonal_normal, u = 0, v = 0},
            -- left
            {pos = self.vertices[2], normal = -right, u = 0, v = 0},
            {pos = self.vertices[1], normal = -right, u = 1, v = 0},
            {pos = self.vertices[4], normal = -right, u = 1, v = 1},
            {pos = self.vertices[4], normal = -right, u = 1, v = 1},
            {pos = self.vertices[5], normal = -right, u = 0, v = 1},
            {pos = self.vertices[2], normal = -right, u = 0, v = 0}
        }
    end
    return self.triangles
end

function ship_mesh:Subdivide()
    local sub_positions = {}
    local forward_len = self.ang:Forward() * self.size.x * 0.25
    local right_len = self.ang:Right() * self.size.y * 0.25
    if self.type == "quad" then
        sub_positions = {
            {self.pos - forward_len - right_len, self.ang},
            {self.pos + forward_len - right_len, self.ang},
            {self.pos + forward_len + right_len, self.ang},
            {self.pos - forward_len + right_len, self.ang}
        }
    elseif self.type == "triangle" then
        local ang_rotated = self.ang * 1
        ang_rotated:RotateAroundAxis(self.ang:Up(), 180)
        sub_positions = {
            {self.pos - forward_len - right_len, self.ang},
            {self.pos + forward_len - right_len, self.ang},
            {self.pos + forward_len + right_len, self.ang},
            {self.pos + forward_len - right_len, ang_rotated}
        }
    end
    local sub_meshes = {}
    for i, position in ipairs(sub_positions) do
        local mesh = setmetatable({}, ship_mesh)
        mesh.pos, mesh.ang = unpack(position)
        mesh.type = self.type
        mesh.size = self.size * 0.5
        mesh.size.z = self.size.z
        mesh:Init()
        table.insert(sub_meshes, mesh)
    end
    return unpack(sub_meshes)
end

return ship_mesh