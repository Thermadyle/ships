include("shared.lua")

ENT.texture = GetRenderTarget("ship_texture", 8, 8)
ENT.material = CreateMaterial("ship_material", "VertexLitGeneric", {
    ["$basetexture"] = "ship_texture",
    ["$alphatest"] = 1
})

function ENT:RenderTextures()
    for i, tex in ipairs(self.textures) do
        local col = self.colors[i]
        render.PushRenderTarget(tex)
        cam.Start2D()
        surface.SetDrawColor(col)
        surface.DrawRect(0, 0, tex:Width(), tex:Height())
        cam.End2D()
        render.PopRenderTarget()
    end
end

function ENT:Initialize()
    self.team = self:GetTeam()
    self.hull_graphics = {}
    self.stations = {}
    self:InitHull()
    self:SetRenderBounds(self:GetCollisionBounds())
    -- ship color
    local h, s, v = ColorToHSV(team.GetColor(self.team))
    self.colors = {
        Color(128, 96, 64), -- floor
        HSVToColor(h, s * 0.45, v * 0.8), -- wood
        HSVToColor(h, s * 0.45, v * 0.55), -- border
        Color(108, 76, 51), -- stair steps
        Color(240, 240, 240) -- sail
    }
    self.textures = {}
    self.materials = {}
    for i, col in ipairs(self.colors) do
        local name = string.format("ship_%d_%d", self:EntIndex(), i)
        self.textures[i] = GetRenderTarget(name, 8, 8)
        self.materials[i] = CreateMaterial(name, "VertexLitGeneric", {
            ["$basetexture"] = name,
            ["$alphatest"] = 1
        })
    end
    self:RenderTextures()
    self:UpdateHullGraphics()
    -- safety first
    local name = "ship_render_"..self:EntIndex()
    timer.Create(name, 2, 0, function()
        if IsValid(self) then
            self:RenderTextures()
        else
            timer.Remove(name)
        end
    end)
end

function ENT:UpdateHullGraphics(index)
    if (not index) then
        for i = 1, #self.model.hulls do
            self:UpdateHullGraphics(i)
        end
        return
    end
    if self.hull_graphics[index] then
        for _, mesh in ipairs(self.hull_graphics[index]) do
            mesh:Destroy()
        end
    end
    self.hull_graphics[index] = {}
    for mat_index = 1, #self.materials do
        self.hull_graphics[index][mat_index] = Mesh()
        self.hull_graphics[index][mat_index]:BuildFromTriangles(
            self.hulls[index]:GetTriangles(mat_index))
    end
end

local matrix = Matrix()
function ENT:DrawHullGraphics()
    matrix:SetTranslation(self:GetPos())
    matrix:SetAngles(self:GetAngles())
    cam.PushModelMatrix(matrix)
    for _, hull_graphics in ipairs(self.hull_graphics) do
        for mat_index, mesh in ipairs(hull_graphics) do
            render.SetMaterial(self.materials[mat_index])
            mesh:Draw()
        end
    end
    cam.PopModelMatrix()
end

function ENT:GetEntities()
    local min, max = self:GetCollisionBounds()
    min = min + self.stations[1]:GetPos()
    max = max + self.stations[1]:GetPos()
    local entities = {}
    for _, ent in ipairs(ents.FindInBox(min, max)) do
        if ent == self or ent:GetClass() == "ship_station" then
            continue
        end
        table.insert(entities, ent)
    end
    return entities
end

function ENT:Draw()
    if DIVIDE_CLIP then
        render.PopCustomClipPlane()
    end
    render.PushRenderTarget(render.GetSmallTex0())
    self:DrawModel()
    render.PopRenderTarget()
    self:DrawHullGraphics()
    cam.Start3D(self:ShipToStation(EyePos(), RenderAngles()))
    for _, ent in ipairs(self:GetEntities()) do
        if hook.Run("ShouldShipDrawEntity", self, ent, false) then
            local col = ent:GetColor()
            render.SetColorModulation(col.r/255, col.g/255, col.b/255)
            if ent:IsPlayer() or ent:IsNPC() then
                local wep = ent:GetActiveWeapon()
                if IsValid(wep) then
                    wep:DrawModel()
                end
                local hat = ent:GetNWEntity("captain_hat")
                if IsValid(hat) then
                    hat:DrawModel()
                end
                if (not ent:IsPlayer()) or ent:Alive() then
                    ent:DrawModel()
                end
            else
                ent:DrawModel()
            end
            render.SetColorModulation(1, 1, 1)
        end
    end
    cam.End3D()
    if DIVIDE_CLIP then
        local normal, len = unpack(DIVIDE_CLIP)
        render.PushCustomClipPlane(normal, len)
    end
end

function ENT:DrawTranslucent()
    if DIVIDE_CLIP then
        render.PopCustomClipPlane()
    end
    cam.Start3D(self:ShipToStation(EyePos(), RenderAngles()))
    for _, ent in ipairs(self:GetEntities()) do
        if (ent:GetRenderGroup() == RENDERGROUP_BOTH or 
            ent:GetRenderGroup() == RENDERGROUP_TRANSLUCENT) and
            hook.Run("ShouldShipDrawEntity", self, ent, true) then
            
            local col = ent:GetColor()
            render.SetColorModulation(col.r/255, col.g/255, col.b/255)
            if scripted_ents.IsBasedOn(ent:GetClass(), "base_anim") then
                ent:DrawTranslucent()
            elseif (not ent:IsPlayer()) then
                ent:DrawModel()
            end
            render.SetColorModulation(1, 1, 1)
        end
    end
    cam.End3D()
    if DIVIDE_CLIP then
        local normal, len = unpack(DIVIDE_CLIP)
        render.PushCustomClipPlane(normal, len)
    end
end