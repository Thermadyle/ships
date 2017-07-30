ENT.Base = "base_anim"

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 0, "Ship")
    self:NetworkVar("Int", 0, "Index")
end

function ENT:Initialize()
    self.ship = self:GetShip()
    self.index = self:GetIndex()
    self.team = self.ship:GetTeam()
    self.hull = self.ship.hulls[self.index]
    self:EnableCustomCollisions(true)
    self:SetCustomCollisionCheck(true)
    self:PhysicsInitHull()
    table.insert(self.ship.stations, self)
end

function ENT:PhysicsInitHull()
    self:PhysicsInitMultiConvex(self.hull.multi_convex)
    self:GetPhysicsObject():SetMass(self.hull.mass)
    self:GetPhysicsObject():EnableMotion(false)
    self:SetMoveType(MOVETYPE_NONE)
    self:SetSolid(SOLID_VPHYSICS)
end

function ENT:TranslateToShip(pos, ang)
    local lpos = self:WorldToLocal(pos)
    local lang = self:WorldToLocalAngles(ang)
    return self.ship:LocalToWorld(lpos),
        self.ship:LocalToWorldAngles(lang)
end