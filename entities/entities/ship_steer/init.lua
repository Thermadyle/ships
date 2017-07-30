AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:KickDriver()
    local driver = self.ship:GetDriver()
    driver:SetWalkSpeed(self.walk_speed)
    driver:SetRunSpeed(self.run_speed)
    self.ship:SetDriver(nil)
end

function ENT:Use(ply)
    local driver = self.ship:GetDriver()
    if driver == ply then
        self:KickDriver()
    elseif (not IsValid(driver)) then
        self.ship:SetDriver(ply)
        self.walk_speed = ply:GetWalkSpeed()
        self.run_speed = ply:GetRunSpeed()
        ply:SetWalkSpeed(0.00001525878)
        ply:SetRunSpeed(0.00001525878)
    end
end