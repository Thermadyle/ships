include("shared.lua")
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.fuse_pos = Vector()
ENT.clip_normal = Vector(0, 0, 1)
ENT.clip_len = 0
ENT.mat_fire1 = Material("effects/fire_cloud1")
ENT.mat_fire2 = Material("effects/fire_cloud2")
ENT.sprites = {
    "particles/flamelet1",
    "particles/flamelet2",
    "particles/flamelet3",
    "particles/flamelet4",
    "particles/flamelet5"
}
ENT.colors = {
    Color(255, 64, 64),
    Color(255, 128, 64),
    Color(255, 191, 64),
    Color(255, 255, 255)
}

net.Receive("cannon_light_fuse", function()
    local ent = net.ReadEntity()
    local time = net.ReadFloat()
    if IsValid(ent) then
        ent:LightFuse(time)
    end
end)

function ENT:Draw()
    if self:IsFuseBurning() then
        local i = math.floor(SysTime() * 12) % 2
        render.SetMaterial((i == 0 and self.mat_fire1) or self.mat_fire2)
        render.DrawQuadEasy(self.fuse_pos, -self.clip_normal, 4, 4, color_white, math.random(8) * 45)
        render.DrawQuadEasy(self.fuse_pos, self.clip_normal, 4, 4, color_white, math.random(8) * 45)
    end
    if self:IsFuseBurning() or (not self:GetLoaded()) then
        render.PushCustomClipPlane(self.clip_normal, self.clip_len)
        self:DrawModel()
        render.PopCustomClipPlane()
        return
    end
    self:DrawModel()
end

function ENT:DrawTranslucent()
    if self.emitter and self:IsFuseBurning() then
        self.emitter:Draw()
    end
end

local lpos = Vector(64.5, 0, 0)
local lang = Angle(0, -25, 0)
function ENT:Think()
    local pos =  self:LocalToWorld(lpos)
    if self:IsFuseBurning() and self.emitter then
        local sprite = self.sprites[math.random(#self.sprites)]
        local col = self.colors[math.random(#self.colors)]

        local frac = self:GetFuseFraction()
        frac = math.min(1, frac * 1.375) -- make fuse burn in barrel
        local frac_sqr = math.pow(frac, 2)
        local frac_sqr_inv = (1 - frac_sqr)

        lang.r = -57.75 * (1 - frac_sqr)
        local ang = self:LocalToWorldAngles(lang)
        self.clip_normal = ang:Up() * -1
        self.clip_len = self.clip_normal:Dot(pos) - 20.5
        self.fuse_pos = pos - (self.clip_normal * 20.5) +
            ang:Right() * (23 * frac_sqr_inv + frac)

        local base = self.emitter:Add(sprite, self.fuse_pos + VectorRand())
        if base then
            base:SetColor(col.r, col.g, col.b)
            base:SetDieTime(0.1)
            base:SetStartAlpha(127)
            base:SetEndAlpha(0)
            base:SetStartSize(1.5)
            base:SetEndSize(1)
            base:SetRoll(math.random(360))
            base:SetRollDelta(1)
        end

        pos = self.fuse_pos + self.clip_normal * 2
        pos = pos + VectorRand() * (1 - frac_sqr)
        local flame = self.emitter:Add(sprite, pos)
        if flame then
            flame:SetColor(col.r, col.g, col.b)
            flame:SetDieTime(0.2)
            flame:SetStartAlpha(192)
            flame:SetEndAlpha(0)
            flame:SetStartSize(1.5)
            flame:SetEndSize(1)
            flame:SetStartLength(8 - frac * 2)
            flame:SetEndLength(8 - frac * 2)
            flame:SetRoll(math.random(360))
            flame:SetVelocity(VectorRand() * (frac_sqr * 8) +
                self.clip_normal * -(32 + 48 * frac_sqr_inv))
        end

        pos = self.fuse_pos + VectorRand()
        local spark = self.emitter:Add("particles/fire_glow", pos)
        if spark then
            spark:SetDieTime(0.1)
            spark:SetStartSize(1)
            spark:SetEndSize(0)
            spark:SetStartAlpha(127)
            spark:SetEndAlpha(64)
            spark:SetColor(col.r, col.g, col.b)
            spark:SetRoll(math.random(360))
            spark:SetVelocity(self.clip_normal * math.random(-192, -256) + 
                VectorRand() * (64 + 32 * frac_sqr))
        end
    else
        if self.emitter then
            self.emitter:Finish()
            self.emitter = nil
        end
        if (not self:GetLoaded()) then
            self.clip_normal = self:GetUp() * -1
            self.clip_len = self.clip_normal:Dot(pos) - 20.5
        end
    end
end