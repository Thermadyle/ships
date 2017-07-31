ENT.Base = "base_anim"
ENT.Model = Model("models/freeman/ship/steering_wheel_stand.mdl")

function ENT:SetupDataTables()
    self:NetworkVar("Int", 0, "TurnDirection")
end

function ENT:Initialize()
    self.turn_value = 0
    self:SetModel(self.Model)
    if SERVER then
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(SOLID_VPHYSICS)
        self:SetUseType(SIMPLE_USE)
        self:GetPhysicsObject():EnableMotion(false)
        self:DrawShadow(false)
        local min = Vector(-1, -1, -1) * 256
        local max = Vector(1, 1, 1) * 256
        self:SetCollisionBounds(min, max)
    end
end

function ENT:Think()
    if SERVER then
        local turn_dir = 0
        local driver = self.ship:GetDriver()
        if IsValid(driver) then
            local time = (self.driver_start and CurTime() - self.driver_start) or 0
            if (not driver:Alive()) or 
                (time > 0.5 and driver:KeyDownLast(IN_USE)) or
                (driver:GetPos() - self:GetPos()):LengthSqr() > 9216 then
                
                self:KickDriver()
            else
                if driver:KeyDown(IN_MOVERIGHT) then
                    turn_dir = 1
                elseif driver:KeyDown(IN_MOVELEFT) then
                    turn_dir = -1
                end
            end
        end
        if self:GetTurnDirection() ~= turn_dir then
            self:SetTurnDirection(turn_dir)
        end
    end
    local dir = self:GetTurnDirection() 
    local dt = (self.last_think and (CurTime() - self.last_think)) or 0
    self.turn_value = math.Approach(self.turn_value, dir, dt * 0.375)
    self.last_think = CurTime()
end
