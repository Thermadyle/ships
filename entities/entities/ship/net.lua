if SERVER then
    util.AddNetworkString("ship_hull")
    util.AddNetworkString("ship_download")
    function ENT:NetworkHull(index, ply)
        net.Start("ship_hull")
        net.WriteEntity(self)
        net.WriteUInt(index, 8)
        net.WriteUInt(#self.hulls[index].meshes, 10)
        for i, mesh in ipairs(self.hulls[index].meshes) do
            if i > #self.model.hulls[index] then
                net.WriteUInt(mesh.parent.index, 10)
            end
            net.WriteBool(mesh.alive)
        end
        if ply then
            net.Send(ply)
        else
            net.Broadcast()
        end
    end
    net.Receive("ship_download", function(_, ply)
        local ship = net.ReadEntity()
        if IsValid(ship) and ship:GetClass() == "ship" then
            for i = 1, #ship.hulls do
                ship:NetworkHull(i, ply)
            end
        end
    end)
else
    net.Receive("ship_hull", function()
        local ship = net.ReadEntity()
        local index = net.ReadUInt(8)
        local hull = ship.hulls[index]
        for i = 1, net.ReadUInt(10) do
            if i > #ship.model.hulls[index] then
                local parent_index = net.ReadUInt(10)
                if (not hull.meshes[i]) then
                    local parent_mesh = hull.meshes[parent_index]
                    for _, mesh in ipairs{parent_mesh:Subdivide()} do
                        mesh.mat_index = parent_mesh.mat_index
                        mesh.index = table.insert(hull.meshes, mesh)
                    end
                end
            end
            hull.meshes[i].alive = net.ReadBool()
        end
        if hook.Run("ShouldShipUpdateHull", ship, hull) then
            hull:Update()
            ship:UpdateHullGraphics(index)
            ship.stations[index]:PhysicsInitHull()
            hook.Run("OnShipHullUpdated", ship, hull)
        end
    end)
end
