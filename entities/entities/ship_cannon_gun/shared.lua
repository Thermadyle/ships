ENT.Base = "ship_entity"
ENT.Model = Model("models/freeman/ship/cannon_gun.mdl")
ENT.fuse_duration = 2

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 0, "Cannon")
    self:NetworkVar("Bool", 0, "Loaded")
end

function ENT:LightFuse(time)
    self.fuse_start = CurTime()
    self.fuse_duration = (time or 2)
    if SERVER then
        local name = "cannon_fire_"..self:EntIndex()
        timer.Create(name, self.fuse_duration, 1, function()
            if IsValid(self) then
                self:FireCannonBall()
            end
        end)
        net.Start("cannon_light_fuse")
        net.WriteEntity(self)
        net.WriteFloat(self.fuse_duration)
        net.Broadcast()
    else
        if self.emitter then
            self.emitter:Finish()
        end
        self.emitter = ParticleEmitter(self:GetPos())
        self.emitter:SetNoDraw(true)
        self:EmitSound("ambient/gas/cannister_loop.wav")
    end
end

function ENT:GetFuseTime()
    if (not self.fuse_start) then
        return 0
    end
    return CurTime() - self.fuse_start
end

function ENT:GetFuseFraction()
    return math.min(1, self:GetFuseTime() / self.fuse_duration)
end

function ENT:IsFuseBurning()
    return self:GetFuseFraction() ~= 0 and
        self:GetFuseFraction() ~= 1
end