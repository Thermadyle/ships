AddCSLuaFile("model/a.lua")
AddCSLuaFile("model/b.lua")
AddCSLuaFile("model/c.lua")
AddCSLuaFile("model/d.lua")
AddCSLuaFile("model/e.lua")
AddCSLuaFile("model/f.lua")
AddCSLuaFile("model/g.lua")
AddCSLuaFile("model/h.lua")
AddCSLuaFile("model/i.lua")
AddCSLuaFile("model/j.lua")
AddCSLuaFile("model/mast1.lua")
AddCSLuaFile("model/mast2.lua")
AddCSLuaFile("model/mast3.lua")

ENT.model = {}
ENT.model.hulls = {}

include("model/a.lua")
include("model/b.lua")
include("model/c.lua")
include("model/d.lua")
include("model/e.lua")
include("model/f.lua")
include("model/g.lua")
include("model/h.lua")
include("model/i.lua")
include("model/j.lua")
include("model/mast1.lua")
include("model/mast2.lua")
include("model/mast3.lua")

ENT.model.spawns = {
    Vector(-768, 128, 3),
    Vector(-768, -128, 3),
    Vector(-576, 0, 3),
    Vector(-512, 256, 3),
    Vector(-512, -256, 3),
    Vector(-256, 256, 3),
    Vector(-256, -256, 3),
    Vector(0, 256, 3),
    Vector(0, -256, 3),
    Vector(256, 256, 3),
    Vector(256, -256, 3),
    Vector(512, 256, 3),
    Vector(512, -256, 3),
    Vector(512, 0, 3),
    Vector(256, 0, 3),
    Vector(768, 128, 3),
    Vector(768, -128, 3),
}

ENT.model.entities = {
    -- steer
    {
        class = "ship_steer",
        pos = Vector(-1152, 0, 160),
        ang = Angle(0, 0, 0)
    },
    -- back
    {
        class = "ship_cannon",
        pos = Vector(-1784, 112, -67),
        ang = Angle(0, 0, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(-1784, -112, -67),
        ang = Angle(0, 0, 0)
    },
    -- left front top
    {
        class = "ship_cannon",
        pos = Vector(352 + 32, 328, -67),
        ang = Angle(0, 270, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(672 - 32, 328, -67),
        ang = Angle(0, 270, 0)
    },
    -- left back top
    {
        class = "ship_cannon",
        pos = Vector(-352 - 32, 328, -67),
        ang = Angle(0, 270, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(-672 + 32, 328, -67),
        ang = Angle(0, 270, 0)
    },
    -- top front top
    {
        class = "ship_cannon",
        pos = Vector(352 + 32, -328, -67),
        ang = Angle(0, 90, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(672 - 32, -328, -67),
        ang = Angle(0, 90, 0)
    },
     -- right back top
    {
        class = "ship_cannon",
        pos = Vector(-352 - 32, -328, -67),
        ang = Angle(0, 90, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(-672 + 32, -328, -67),
        ang = Angle(0, 90, 0)
    },
    -- left front bottom
    {
        class = "ship_cannon",
        pos = Vector(352 + 32, 244, -195),
        ang = Angle(0, 270, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(128, 244, -195),
        ang = Angle(0, 270, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(672 - 32, 244, -195),
        ang = Angle(0, 270, 0)
    },
    -- left back bottom
    {
        class = "ship_cannon",
        pos = Vector(-352 - 32, 244, -195),
        ang = Angle(0, 270, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(-128, 244, -195),
        ang = Angle(0, 270, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(-672 + 32, 244, -195),
        ang = Angle(0, 270, 0)
    },
    -- right front bottom
    {
        class = "ship_cannon",
        pos = Vector(352 + 32, -244, -195),
        ang = Angle(0, 90, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(128, -244, -195),
        ang = Angle(0, 90, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(672 - 32, -244, -195),
        ang = Angle(0, 90, 0)
    },
    -- right back bottom
    {
        class = "ship_cannon",
        pos = Vector(-352 - 32, -244, -195),
        ang = Angle(0, 90, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(-128, -244, -195),
        ang = Angle(0, 90, 0)
    },
    {
        class = "ship_cannon",
        pos = Vector(-672 + 32, -244, -195),
        ang = Angle(0, 90, 0)
    },
    -- cannon crates
    {
        class = "ship_cannon_crate",
        pos = Vector(-1697.518555, 183.827148, -235.496582),
        ang = Angle(0, -78.614, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(-1761.568359, 121.538086, -235.497070),
        ang = Angle(0, -4.605, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(-1739.043457, -132.798828, -235.497070),
        ang = Angle(0, 49.911, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(-1686.972168, -182.779297, -235.496582),
        ang = Angle(0, 92.994, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(-1610.335938, 210.505859, -235.496582),
        ang = Angle(0, -79.375, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(-1292.641602, -244.072266, -235.497070),
        ang = Angle(0, 89.499, -0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(-1383.378418, 118.969727, -235.497070),
        ang = Angle(0, -50.435, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(-1384.560547, 56.134766, -235.497070),
        ang = Angle(0, -67.701, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(1689.851074, 21.905273, -235.497070),
        ang = Angle(0, -141.969, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(1661.780762, -31.124023, -235.497070),
        ang = Angle(0, 178.142, 0)
    },
    {
        class = "ship_cannon_crate",
        pos = Vector(25.735840, 310.170898, -106),
        ang = Angle(0, -87.851, 0)
    }
}

ENT.model.thrusters = {
    [IN_FORWARD] = {
        {
            pos = Vector(-1856, -384, -256),
            GetForce = function(ent, phys, turn_value)
                return ent:GetForward() * phys:GetMass() * 128
            end
        },
        {
            pos = Vector(-1856, 384, -256),
            GetForce = function(ent, phys, turn_value)
                return ent:GetForward() * phys:GetMass() * 128
            end
        },
        {
            pos = Vector(-1856, 0, -256),
            GetForce = function(ent, phys, turn_value)
                return ent:GetRight() * (phys:GetMass() * 0.015625) *
                    (phys:GetVelocity():Length() * turn_value * -4)
            end
        }
    },
    [IN_BACK] = {
        {
            pos = Vector(-1856, 0, -256),
            GetForce = function(ent, phys, turn_value)
                return ent:GetForward() * phys:GetMass() * -24
            end
        },
    },
    [IN_MOVERIGHT] = {
        {
            pos = Vector(-1856, 0, -256),
            GetForce = function(ent, phys, turn_value)
                return ent:GetRight() * phys:GetMass() * turn_value * -48
            end
        }
    },
    [IN_MOVELEFT] = {
        {
            pos = Vector(-1856, 0, -256),
            GetForce = function(ent, phys, turn_value)
                 return ent:GetRight() * phys:GetMass() * turn_value * -48
            end
        }
    }
}

ENT.model.ropes = {
    {Vector(416, 0, 1766), Vector(1306, 0, 912)},
    {Vector(422, 0, 256), Vector(1306, 0, 912)},
    {Vector(442, 0, 1110), Vector(1286, 0, 326)},
    {Vector(1306, 0, 912), Vector(2793.55, 0, 14.828835)},
    {Vector(1306, 0, 912), Vector(2348, 0, -32)},
    {Vector(-582, 0, 1110), Vector(422, 0, 256)},
    {Vector(-601, 0, 256), Vector(442, 0, 1110)},
    {Vector(-582, 0, 1110), Vector(416, 0, 1766)},
    {Vector(-582, 0, 1110), Vector(-1276, 386.788971, 165.878235)},
    {Vector(-582, 0, 1110), Vector(-1276, -386.788971, 165.878235)},
    {Vector(-582, 302, 1110), Vector(-512, 387.312, 37.8554)},
    {Vector(-582, -302, 1110), Vector(-512, -387.312, 37.8554)}, 
    {Vector(442, 302, 1110), Vector(512, 387.312, 37.8554)},
    {Vector(442, -302, 1110), Vector(512, -387.312, 37.8554)},
    {Vector(1306, 304, 912), Vector(1312.23, 314.808960, 165.878235)},
    {Vector(1306, -304, 912), Vector(1312.23, -314.808960, 165.878235)}
}