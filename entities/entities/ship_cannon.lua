AddCSLuaFile()
ENT.Base = "ship_entity"
ENT.Model = Model("models/freeman/ship/cannon_base.mdl")

function ENT:Initialize()
    self:SetModel(self.Model)
    if SERVER then
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(SOLID_VPHYSICS)
        self:SetUseType(SIMPLE_USE)
        self:DrawShadow(false)

        self:GetPhysicsObject():SetMass(1000)
        self:GetPhysicsObject():SetDamping(2, 2)
        
        self.gun = ents.Create("ship_cannon_gun")
        self.gun:SetPos(self:GetPos())
        self.gun:SetAngles(self:GetAngles())
        self.gun:SetCannon(self)
        self.gun:Spawn()
        constraint.NoCollide(self, self.gun, false)
        self:PhysWake()
        self:StartMotionController()
    end
end

function ENT:PhysicsSimulate()
    if IsValid(self.gun) then
        self.gun:PhysWake()
    end
end

function ENT:OnRemove()
    if IsValid(self.gun) then
        self.gun:Remove()
    end
end