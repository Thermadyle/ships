local translate = Vector(1024, 0, 0)
local floor = {
    translate = translate,
    {
        size = Vector(272, 312, 6),
        pos = Vector(152, 156, 128),
    },
    {
        size = Vector(272, 312, 6),
        pos = Vector(152, -156, 128),
    },
    {
        type = "triangle",
        size = Vector(48, 272, 6),
        pos = Vector(152, 336, 128),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(48, 272, 6),
        pos = Vector(152, -336, 128),
        ang = Angle(0, 90, 0),
    },
    {
        size = Vector(271, 240, 6),
        pos = Vector(423.5, 120, 128),
    },
    {
        size = Vector(271, 240, 6),
        pos = Vector(423.5, -120, 128),
    },
    {
        type = "triangle",
        size = Vector(72, 271, 6),
        pos = Vector(423.5, 276, 128),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(72, 271, 6),
        pos = Vector(423.5, -276, 128),
        ang = Angle(0, 90, 0),
    },
    {
        size = Vector(270, 286, 6),
        pos = Vector(694, 0, 128),
    },
    {
        type = "triangle",
        size = Vector(97, 270, 6),
        pos = Vector(694, 191.5, 128),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(97, 270, 6),
        pos = Vector(694, -191.5, 128),
        ang = Angle(0, 90, 0),
    },
}

local wall = {
    translate = translate,
    mat_index = 2,
    -- LEFT
    {
        type = "triangle",
        size = Vector(277.5, 128, 8),
        pos = Vector(-122.515930, 375.121368, 95.878235),
        ang = Angle(180, 175, 90),
    },
    {
        size = Vector(277.5, 128, 8),
        pos = Vector(151.589294, 338.902618, 95.878235),
        ang = Angle(-0, -10, 90)
    },
    {
        size = Vector(282.5, 128, 8),
        pos = Vector(423.939819, 278.456940, 95.878235),
        ang = Angle(0, -15, 90),
    },
    {
        size = Vector(288.5, 128, 8),
        pos = Vector(695.21991, 192.831787, 95.878235),
        ang = Angle(0, -20, 90),
    },
    -- RIGHT
    {
        type = "triangle",
        size = Vector(277.5, 128, 8),
        pos = Vector(-122.515930, -375.121368, 95.878235),
        ang = Angle(180, -175, 90),
    },
    {
        size = Vector(277.5, 128, 8),
        pos = Vector(151.589294, -338.902618, 95.878235),
        ang = Angle(-0, 10, -90)
    },
    {
        size = Vector(282.5, 128, 8),
        pos = Vector(423.939819, -278.456940, 95.878235),
        ang = Angle(0, 15, -90),
    },
    {
        size = Vector(288.5, 128, 8),
        pos = Vector(695.21991, -192.831787, 95.878235),
        ang = Angle(0, 20, -90),
    },
    -- BACK
    {
        size = Vector(60, 156.878235, 8),
        pos = Vector(12, 330, 81.4391175),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(60, 156.878235, 8),
        pos = Vector(12, 158, 81.4391175),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(112, 40.878235, 8),
        pos = Vector(12, 244, 139.4391175),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(360, 156.878235, 8),
        pos = Vector(12, -180, 81.4391175),
        ang = Angle(-0, 90, 90)
    },
    -- FRONT
    --{
    --    size = Vector(294.5, 128, 8),
    --    pos = Vector(828.12, 0, 95.878235),
    --    ang = Angle(0, 90, 90)
    --},

    --{
    --    size = Vector(294.5, 40.878235, 8),
    --    pos = Vector(828.12, 0, 139.4391175),
    --    ang = Angle(0, 90, 90)
    --},
    {
        levels = 0,
        size = Vector(91.25, 40.878235, 8),
        pos = Vector(828.12, 101.62, 139.4391175),
        ang = Angle(0, 90, 90)
    },
    {
        levels = 0,
        size = Vector(112, 40.878235, 8),
        pos = Vector(828.12, 0, 139.4391175),
        ang = Angle(0, 90, 90)
    },
    {
        levels = 0,
        size = Vector(91.25, 40.878235, 8),
        pos = Vector(828.12, -101.62, 139.4391175),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(88.25, 116, 8),
        pos = Vector(828.12, 100.12, 61),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(88.25, 116, 8),
        pos = Vector(828.12, -100.12, 61),
        ang = Angle(0, 90, 90)
    },
}

local border = {
    translate = translate,
    levels = 0,
    mat_index = 3,
    -- LEFT
    -- a
    {
        size = Vector(283.598183895, 8, 4.40501886696),
        pos = Vector(-113.484344, 374.331207, 102.485596),
        ang = Angle(24.7620459, 175, 0)
    },
    {
        size = Vector(301.598183895, 8, 4.40501886696),
        pos = Vector(-125.301796, 375.365112, 106.715935),
        ang = Angle(24.7620459, 175, 0)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(151.589294, 338.902618, 161.878235),
        ang = Angle(-0, -10, -90)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(151.589294, 338.902618, 169.878235),
        ang = Angle(-0, -10, -90)
    },
    {
        size = Vector(282.5, 4, 8),
        pos = Vector(423.939819, 278.456940, 161.878235),
        ang = Angle(0, -15, 90),
    },
    {
        size = Vector(282.5, 4, 8),
        pos = Vector(423.939819, 278.456940, 169.878235),
        ang = Angle(0, -15, 90),
    },
    {
        size = Vector(288.5, 4, 8),
        pos = Vector(695.21991, 192.831787, 161.878235),
        ang = Angle(0, -20, 90),
    },
    {
        size = Vector(288.5, 4, 8),
        pos = Vector(695.21991, 192.831787, 169.878235),
        ang = Angle(0, -20, 90),
    },
    -- 
    {
        size = Vector(16, 4, 4.40501886696),
        pos = Vector(-167.789154, 379.082275, 82.192261),
        ang = Angle(24.7620459, 175, 0)
    },
    {
        size = Vector(16, 4, 4.40501886696),
        pos = Vector(-73.710785, 370.851471, 125.752724),
        ang = Angle(24.7620459, 175, 0)
    },
    {
        size = Vector(16, 8, 5),
        pos = Vector(14.947220, 362.996307, 163.878235),
        ang = Angle(-0, -5, -90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(151.589294, 338.902618, 165.878235),
        ang = Angle(-0, -10, -90)
    },
    {
        size = Vector(32, 16, 8.5),
        pos = Vector(288.231354, 314.375, 167.878235),
        ang = Angle(-0, -12.5, -90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(423.939819, 278.456940, 165.878235),
        ang = Angle(0, -15, 90),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(560.376831, 241.898743, 165.878235),
        ang = Angle(0, -17.5, 90),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(695.21991, 192.831787, 165.878235),
        ang = Angle(0, -20, 90),
    },
    {
        size = Vector(16 + 6, 4, 5),
        pos = Vector(819.729187, 147.514130, 165.878235),
        ang = Angle(0, -20, 90),
    },
    -- b
    {
        size = Vector(281, 16, 10),
        pos = Vector(-123.995293, 375.425751, 37.855419),
        ang = Angle(0, -5, 90),
    },
    {
        size = Vector(278, 16, 10),
        pos = Vector(151.62, 339.075, 37.855419),
        ang = Angle(0, -10, 90),
    },
    {
        size = Vector(283, 16, 10),
        pos = Vector(423.93988, 278.457642, 37.878212),
        ang = Angle(0, -15, 90),
    },
    {
        size = Vector(289, 16, 10),
        pos = Vector(695.220398, 192.831192, 37.878212),
        ang = Angle(0, -20, 90),
    },
    -- RIGHT
    -- a
    {
        size = Vector(283.598183895, 8, 4.40501886696),
        pos = Vector(-113.484344, -374.331207, 102.485596),
        ang = Angle(24.7620459, -175, 0)
    },
    {
        size = Vector(301.598183895, 8, 4.40501886696),
        pos = Vector(-125.301796, -375.365112, 106.715935),
        ang = Angle(24.7620459, -175, 0)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(151.589294, -338.902618, 161.878235),
        ang = Angle(-0, 10, 90)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(151.589294, -338.902618, 169.878235),
        ang = Angle(-0, 10, 90)
    },
    {
        size = Vector(282.5, 4, 8),
        pos = Vector(423.939819, -278.456940, 161.878235),
        ang = Angle(0, 15, -90),
    },
    {
        size = Vector(282.5, 4, 8),
        pos = Vector(423.939819, -278.456940, 169.878235),
        ang = Angle(0, 15, -90),
    },
    {
        size = Vector(288.5, 4, 8),
        pos = Vector(695.21991, -192.831787, 161.878235),
        ang = Angle(0, 20, -90),
    },
    {
        size = Vector(288.5, 4, 8),
        pos = Vector(695.21991, -192.831787, 169.878235),
        ang = Angle(0, 20, -90),
    },
    -- 
    {
        size = Vector(16, 4, 4.40501886696),
        pos = Vector(-167.789154, -379.082275, 82.192261),
        ang = Angle(24.7620459, -175, 0)
    },
    {
        size = Vector(16, 4, 4.40501886696),
        pos = Vector(-73.710785, -370.851471, 125.752724),
        ang = Angle(24.7620459, -175, 0)
    },
    {
        size = Vector(16, 8, 5),
        pos = Vector(14.947220, -362.996307, 163.878235),
        ang = Angle(-0, 5, 90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(151.589294, -338.902618, 165.878235),
        ang = Angle(-0, 10, 90)
    },
    {
        size = Vector(34, 16, 8.75),
        pos = Vector(288.231354, -314.375, 167.878235),
        ang = Angle(-0, 12.5, 90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(423.939819, -278.456940, 165.878235),
        ang = Angle(0, 15, -90),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(560.376831, -241.898743, 165.878235),
        ang = Angle(0, 17.5, -90),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(695.21991, -192.831787, 165.878235),
        ang = Angle(0, 20, -90),
    },
    {
        size = Vector(22, 4, 5),
        pos = Vector(819.729187, -147.514130, 165.878235),
        ang = Angle(0, 20, -90),
    },
    -- b
    {
        size = Vector(281, 16, 10),
        pos = Vector(-123.995293, -375.425751, 37.855419),
        ang = Angle(0, 5, -90),
    },
    {
        size = Vector(278, 16, 10),
        pos = Vector(151.62, -339.075, 37.855419),
        ang = Angle(0, 10, -90),
    },
    {
        size = Vector(283, 16, 10),
        pos = Vector(423.93988, -278.457642, 37.878212),
        ang = Angle(0, 15, -90),
    },
    {
        size = Vector(289, 16, 10),
        pos = Vector(695.220398, -192.831192, 37.878212),
        ang = Angle(0, 20, -90),
    },
    -- BACK
    {
        size = Vector(183.4677735, 4, 8),
        pos = Vector(12, -275.20166025, 161.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(183.4677735, 4, 8),
        pos = Vector(12, -275.20166025, 169.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(183.4677735, 4, 8),
        pos = Vector(12, -91.73388675, 161.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(183.4677735, 4, 8),
        pos = Vector(12, -91.73388675, 169.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(238.935547, 4, 8),
        pos = Vector(12, 247.4677735, 161.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(238.935547, 4, 8),
        pos = Vector(12, 247.4677735, 169.878235),
        ang = Angle(-0, 90, 90)
    },
    --
    {
        size = Vector(16, 4, 4),
        pos = Vector(12, -247.681494225, 165.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(12, -119.254052775, 165.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(6, 4, 6),
        pos = Vector(12, -4, 165.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(6, 4, 6),
        pos = Vector(12, 132, 165.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(12, 247.4677735, 165.878235),
        ang = Angle(-0, 90, 90)
    },
    -- DOOR FRAME
    {
        size = Vector(112, 8, 8),
        pos = Vector(12, 244, 115),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(8, 108, 8),
        pos = Vector(12, 296, 57),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(8, 108, 8),
        pos = Vector(12, 192, 57),
        ang = Angle(-0, 90, 90)
    },
    -- DOOR FRAME FRONT
    {
        size = Vector(112, 8, 8),
        pos = Vector(828.12, 0, 115),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(8, 108, 8),
        pos = Vector(828.12, 52, 57),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(8, 108, 8),
        pos = Vector(828.12, -52, 57),
        ang = Angle(-0, 90, 90)
    },
    -- FRONT RAIL
    {
        size = Vector(147.25, 4, 8),
        pos = Vector(828.12, 73.62, 161.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(147.25, 4, 8),
        pos = Vector(828.12, -73.62, 161.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(147.25, 4, 8),
        pos = Vector(828.12, 73.62, 169.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(147.25, 4, 8),
        pos = Vector(828.12, -73.62, 169.88),
        ang = Angle(0, 90, 90)
    },
    -- steps
    {
        size = Vector(16, 4, 4),
        pos = Vector(828.12, 58, 165.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(828.12, -58, 165.88),
        ang = Angle(0, 90, 90)
    },
}


table.insert(ENT.model.hulls, floor)
table.insert(ENT.model.hulls, wall)
table.insert(ENT.model.hulls, border)