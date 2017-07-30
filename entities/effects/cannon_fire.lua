AddCSLuaFile()
EFFECT.sound = Sound("ambient/explosions/explode_9.wav")
EFFECT.sprites = {
    "particle/smokesprites_0002",
    "particle/smokesprites_0005",
    "particle/smokesprites_0008",
    "particle/smokesprites_0011",
    "particle/smokesprites_0014"
}

function EFFECT:Init(data)
    self.start_time = CurTime()
    self.emitter = ParticleEmitter(self:GetPos())
    self.emitter:SetNoDraw(true)
    local normal = data:GetNormal()
    
    local fire = self.emitter:Add("effects/fire_cloud1", self:GetPos())
    fire:SetDieTime(0.25)
    fire:SetStartAlpha(255)
    fire:SetEndAlpha(0)
    fire:SetStartSize(32)
    fire:SetEndSize(40)
    fire:SetRoll(math.random(360))
    fire:SetRollDelta(1)
    
    local count = 12
    for i = 1, count do
        local frac = (i / count)
        local sprite = self.sprites[math.random(#self.sprites)]
        local smoke = self.emitter:Add(sprite, self:GetPos())
        local val = math.random(48, 64)
        smoke:SetColor(val, val, val)
        smoke:SetDieTime(4 - 1.5 * frac)
        smoke:SetStartAlpha(96)
        smoke:SetEndAlpha(0)
        smoke:SetStartSize(48)
        smoke:SetEndSize(96 + 128 * frac)
        smoke:SetRoll(math.random(360))
        smoke:SetRollDelta(0.25)
        smoke:SetVelocity(normal * (i * 32))
        smoke:SetAirResistance(50)
    end
    
    count = 4
    for i = 1, count do
        local sprite = self.sprites[math.random(#self.sprites)]
        local smoke = self.emitter:Add(sprite, self:GetPos())
        local val = math.random(48, 64)
        smoke:SetColor(val, val, val)
        smoke:SetDieTime(1)
        smoke:SetStartAlpha(128)
        smoke:SetEndAlpha(0)
        smoke:SetStartSize(24)
        smoke:SetEndSize(64)
        smoke:SetRoll(math.random(360))
        smoke:SetRollDelta(0.5)
        smoke:SetVelocity(normal * (i * -24 - 48))
        smoke:SetAirResistance(50)
    end
    
    self:EmitSound(self.sound)
end

function EFFECT:Render()
    self.emitter:Draw()
end

function EFFECT:Think()
    if (not self.start_time) or (self.start_time - CurTime()) < 4 then
        return true
    end
end