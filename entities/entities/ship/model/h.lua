local translate = Vector(-1024, 0, 0)
local floor = {
    translate = translate,
    {
        levels = 2,
        size = Vector(256, 384, 6),
        pos = Vector(-128, 192, 128),
    },
    {
        levels = 2,
        size = Vector(256, 384, 6),
        pos = Vector(-128, -192, 128),
    },
    {
        levels = 2,
        size = Vector(272, 360, 6),
        pos = Vector(-392, 180, 128),
    },
    {
        levels = 2,
        size = Vector(272, 360, 6),
        pos = Vector(-392, -180, 128),
    },
    {
        levels = 2,
        size = Vector(272, 312, 6),
        pos = Vector(-664, 156, 128),
    },
    {
        levels = 2,
        size = Vector(272, 312, 6),
        pos = Vector(-664, -156, 128),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(24, 272, 6),
        pos = Vector(-392, 372, 128),
        ang = Angle(180, 90, 180),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(24, 272, 6),
        pos = Vector(-392, -372, 128),
        ang = Angle(0, 90, 180),
    },
    {
        type = "triangle",
        size = Vector(48, 272, 6),
        pos = Vector(-664, 336, 128),
        ang = Angle(180, 90, 180),
    },
    {
        type = "triangle",
        size = Vector(48, 272, 6),
        pos = Vector(-664, -336, 128),
        ang = Angle(0, 90, 180),
    },
}

local wall = {
    translate = translate,
    mat_index = 2,
    -- LEFT
    {
        size = Vector(277.5, 128, 8),
        pos = Vector(-663.589294, 338.902618, 95.878235),
        ang = Angle(-0, 10, 90)
    },
    {
        size = Vector(277.5, 128, 8),
        pos = Vector(-389.484070, 375.121368, 95.878235),
        ang = Angle(0, 5, 90)
    },
    {
        size = Vector(256, 128, 8),
        pos = Vector(-128, 386.788971, 95.878235),
        ang = Angle(0, 0, 90)
    },
    {
        type = "triangle",
        size = Vector(200, 128, 8),
        pos = Vector(100, 386.788971, 95.878235),
        ang = Angle(180, 0, 90)
    },
    {
        type = "triangle",
        size = Vector(200, 128, 8),
        pos = Vector(100, 251, 95.878235),
        ang = Angle(180, 0, 90)
    },
    {
        levels = 0,
        size = Vector(103, 28.878235, 8),
        pos = Vector(51.5, 251, 17.4391175),
        ang = Angle(180, 0, 90)
    },
    {
        levels = 0,
        size = Vector(103, 28.878235, 8),
        pos = Vector(154.5, 251, 17.4391175),
        ang = Angle(180, 0, 90)
    },
    -- RIGHT
    {
        size = Vector(277.5, 128, 8),
        pos = Vector(-663.589294, -338.902618, 95.878235),
        ang = Angle(-0, -10, -90)
    },
    {
        size = Vector(277.5, 128, 8),
        pos = Vector(-389.484070, -375.121368, 95.878235),
        ang = Angle(0, -5, -90)
    },
    {
        size = Vector(256, 128, 8),
        pos = Vector(-128, -386.788971, 95.878235),
        ang = Angle(0, 0, -90)
    },
    {
        type = "triangle",
        size = Vector(200, 128, 8),
        pos = Vector(100, -386.788971, 95.878235),
        ang = Angle(180, 0, 90)
    },
    {
        type = "triangle",
        size = Vector(200, 128, 8),
        pos = Vector(100, -251, 95.878235),
        ang = Angle(180, 0, 90)
    },
    {
        levels = 0,
        size = Vector(103, 28.878235, 8),
        pos = Vector(51.5, -251, 17.4391175),
        ang = Angle(-180, 0, -90)
    },
    {
        levels = 0,
        size = Vector(103, 28.878235, 8),
        pos = Vector(154.5, -251, 17.4391175),
        ang = Angle(-180, 0, -90)
    },
    -- FRONT
    {
        size = Vector(191, 156.878235, 8),
        pos = Vector(4, 151.5, 81.4391175),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(191, 156.878235, 8),
        pos = Vector(4, -151.5, 81.4391175),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(112, 40.88, 8),
        pos = Vector(4, 0, 139.44),
        ang = Angle(0, 90, 90)
    },
    -- BACK
    {
        size = Vector(319, 128, 8),
        pos = Vector(-797, 159.5, 95.878235),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(319, 128, 8),
        pos = Vector(-797, -159.5, 95.878235),
        ang = Angle(-0, 90, 90)
    },
}

local border = {
    translate = translate,
    mat_index = 3,
    levels = 0,
    -- LEFT
    -- a
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(-663.589294, 338.902618, 161.878235),
        ang = Angle(-0, 10, 90)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(-663.589294, 338.902618, 169.878235),
        ang = Angle(-0, 10, 90)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(-389.484070, 375.121368, 161.878235),
        ang = Angle(0, 5, 90)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(-389.484070, 375.121368, 169.878235),
        ang = Angle(0, 5, 90)
    },
    {
        size = Vector(258.6, 4, 8),
        pos = Vector(-126.7, 386.788971, 161.878235),
        ang = Angle(0, 0, 90)
    },
    {
        size = Vector(263.75, 4, 8),
        pos = Vector(-124.125, 386.788971, 169.878235),
        ang = Angle(0, 0, 90)
    },
    {
        size = Vector(219.453153274, 8, 4.74906306548),
        pos = Vector(93.699554, 386.788971, 102.729721),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(234.203153274, 8, 4.74906306548),
        pos = Vector(104.926025, 386.788971, 106.821579),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(219.453153274, 8, 4.74906306548),
        pos = Vector(93.699554, 251, 102.729721),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(234.203153274, 8, 4.74906306548),
        pos = Vector(104.926025, 251, 106.821579),
        ang = Angle(32.6192431, 0, 0)
    },
    --
    {
        size = Vector(8, 4, 5),
        pos = Vector(-796.292114, 315.503540, 165.878235),
        ang = Angle(-0, 10, 90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-663.589294, 338.902618, 165.878235),
        ang = Angle(-0, 10, 90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-527.640808, 362.532776, 165.878235),
        ang = Angle(0, 7.5, 90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-389.484070, 375.121368, 165.878235),
        ang = Angle(0, 5, 90)
    },
    {
        size = Vector(32, 16, 9),
        pos = Vector(-252, 386.788971, 167.878235),
        ang = Angle(0, 2.5, 90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-128, 386.788971, 165.878235),
        ang = Angle(0, 0, 90)
    },
    {
        size = Vector(16, 8, 5),
        pos = Vector(0, 386.788971, 163.878235),
        ang = Angle(0, 0, 90)
    },
    {
        size = Vector(16, 5, 4.74906306548),
        pos = Vector(64.345360, 386.788971, 127.154808),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(16, 5, 4.74906306548),
        pos = Vector(138.281006, 386.788971, 79.835991),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(16, 5, 4.74906306548),
        pos = Vector(64.345360, 251, 127.154808),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(16, 5, 4.74906306548),
        pos = Vector(138.281006, 251, 79.835991),
        ang = Angle(32.6192431, 0, 0)
    },
    -- b
    {
        size = Vector(278, 16, 10),
        pos = Vector(-663.680099, 339.417603, 37.8554),
        ang = Angle(0, 10, 90)
    },
    {
        size = Vector(278, 16, 10),
        pos =  Vector(-389.529648, 375.642303, 37.8554),
        ang = Angle(0, 5, 90)
    },
    {
        size = Vector(256.5, 16, 10),
        pos = Vector(-128, 387.312378, 37.855419),
        ang = Angle(0, 0, 90),
    },
    {
        size = Vector(206.5, 16, 10),
        pos = Vector(103, 387.312378, 37.855419),
        ang = Angle(0, 0, 90),
    },
    {
        size = Vector(206, 16, 9),
        pos = Vector(103.25, 251, 37.855419),
        ang = Angle(0, 0, 90),
    },
    -- RIGHT
    -- a
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(-663.589294, -338.902618, 161.878235),
        ang = Angle(-0, -10, -90)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(-663.589294, -338.902618, 169.878235),
        ang = Angle(-0, -10, -90)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(-389.484070, -375.121368, 161.878235),
        ang = Angle(0, -5, -90)
    },
    {
        size = Vector(277.5, 4, 8),
        pos = Vector(-389.484070, -375.121368, 169.878235),
        ang = Angle(0, -5, -90)
    },
    {
        size = Vector(258.6, 4, 8),
        pos = Vector(-126.7, -386.788971, 161.878235),
        ang = Angle(0, 0, -90)
    },
    {
        size = Vector(263.75, 4, 8),
        pos = Vector(-124.125, -386.788971, 169.878235),
        ang = Angle(0, 0, -90)
    },
    {
        size = Vector(219.453153274, 8, 4.74906306548),
        pos = Vector(93.699554, -386.788971, 102.729721),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(234.203153274, 8, 4.74906306548),
        pos = Vector(104.926025, -386.788971, 106.821579),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(219.453153274, 8, 4.74906306548),
        pos = Vector(93.699554, -251, 102.729721),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(234.203153274, 8, 4.74906306548),
        pos = Vector(104.926025, -251, 106.821579),
        ang = Angle(32.6192431, 0, 0)
    },
    --
    {
        size = Vector(8, 4, 5),
        pos = Vector(-796.292114, -315.503540, 165.878235),
        ang = Angle(-0, -10, -90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-663.589294, -338.902618, 165.878235),
        ang = Angle(-0, -10, -90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-527.640808, -362.532776, 165.878235),
        ang = Angle(0, -7.5, -90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-389.484070, -375.121368, 165.878235),
        ang = Angle(0, -5, -90)
    },
    {
        size = Vector(32, 16, 9),
        pos = Vector(-252, -386.788971, 167.878235),
        ang = Angle(0, -2.5, -90)
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-128, -386.788971, 165.878235),
        ang = Angle(0, 0, -90)
    },
    {
        size = Vector(16, 8, 5),
        pos = Vector(0, -386.788971, 163.878235),
        ang = Angle(0, 0, -90)
    },
    {
        size = Vector(16, 5, 4.74906306548),
        pos = Vector(64.345360, -386.788971, 127.154808),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(16, 5, 4.74906306548),
        pos = Vector(138.281006, -386.788971, 79.835991),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(16, 5, 4.74906306548),
        pos = Vector(64.345360, -251, 127.154808),
        ang = Angle(32.6192431, 0, 0)
    },
    {
        size = Vector(16, 5, 4.74906306548),
        pos = Vector(138.281006, -251, 79.835991),
        ang = Angle(32.6192431, 0, 0)
    },
    -- b
    {
        size = Vector(278, 16, 10),
        pos = Vector(-663.680099, -339.417603, 37.8554),
        ang = Angle(0, -10, -90)
    },
    {
        size = Vector(278, 16, 10),
        pos =  Vector(-389.529648, -375.642303, 37.8554),
        ang = Angle(0, -5, -90)
    },
    {
        size = Vector(256.5, 16, 10),
        pos = Vector(-128, -387.312378, 37.855419),
        ang = Angle(0, 0, -90),
    },
    {
        size = Vector(206.5, 16, 10),
        pos = Vector(103, -387.312378, 37.855419),
        ang = Angle(0, 0, -90),
    },
    {
        size = Vector(206, 16, 9),
        pos = Vector(103.25, -251, 37.855419),
        ang = Angle(0, 0, -90),
    },
    -- FRONT
    {
        size = Vector(510, 4, 8),
        pos = Vector(4, 0, 161.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(510, 4, 8),
        pos = Vector(4, 0, 169.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(4, 245, 165.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(4, 128, 165.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(4, 0, 165.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(4, -128, 165.88),
        ang = Angle(0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(4, -245, 165.88),
        ang = Angle(0, 90, 90)
    },
    -- BACK
    {
        size = Vector(319, 4, 8),
        pos = Vector(-797, 159.5, 161.88),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(319, 4, 8),
        pos = Vector(-797, -159.5, 161.88),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(319, 4, 8),
        pos = Vector(-797, 159.5, 169.88),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(319, 4, 8),
        pos = Vector(-797, -159.5, 169.88),
        ang = Angle(-0, 90, 90)
    },
    --
    {
        size = Vector(16, 4, 4),
        pos = Vector(-797, -224, 165.88),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(-797, -112, 165.88),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(-797, 0, 165.88),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(-797, 112, 165.88),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(-797, 224, 165.88),
        ang = Angle(-0, 90, 90)
    },
    --
    {
        size = Vector(10, 320, 16),
        pos = Vector(-797, 160, 38),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(10, 320, 16),
        pos = Vector(-797, -160, 38),
        ang = Angle(0, 0, 0),
    },
    -- DOOR FRAME
    {
        size = Vector(112, 8, 8),
        pos = Vector(4, 0, 115),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(8, 108, 8),
        pos = Vector(4, 52, 57),
        ang = Angle(-0, 90, 90)
    },
    {
        size = Vector(8, 108, 8),
        pos = Vector(4, -52, 57),
        ang = Angle(-0, 90, 90)
    },
}

local stairs = {
    translate = translate,
    levels = 0,
    mat_index = 4,
    -- LEFT
    -- frame
    {
        levels = 1,
        mat_index = 3,
        size = Vector(128, 128, 12),
        pos = Vector(6, 319, 67),
        ang = Angle(90, 0, 0),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(108, 258, 67),
        ang = Angle(90, 180, 90),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(108, 380, 67),
        ang = Angle(90, 180, 90),
    },
    -- steps
    {
        size = Vector(20, 122, 6),
        pos = Vector(108, 319, 67),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(91.359, 319, 78.094),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(74.718, 319, 89.188),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(58.077, 319, 100.282),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(41.436, 319, 111.376),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(24.795, 319, 122.47),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(124.641, 319, 55.906),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(141.282, 319, 44.812),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(157.923, 319, 33.718),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(174.564, 319, 22.624),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(191.205, 319, 11.53),
    },
    -- RIGHT
    -- frame
    {
        levels = 1,
        mat_index = 3,
        size = Vector(128, 128, 12),
        pos = Vector(6, -319, 67),
        ang = Angle(90, 0, 0),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(108, -258, 67),
        ang = Angle(90, 180, 90),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(108, -380, 67),
        ang = Angle(90, 180, 90),
    },
    -- steps
    {
        size = Vector(20, 122, 6),
        pos = Vector(108, -319, 67),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(91.359, -319, 78.094),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(74.718, -319, 89.188),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(58.077, -319, 100.282),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(41.436, -319, 111.376),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(24.795, -319, 122.47),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(124.641, -319, 55.906),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(141.282, -319, 44.812),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(157.923, -319, 33.718),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(174.564, -319, 22.624),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(191.205, -319, 11.53),
    },
}

table.insert(ENT.model.hulls, floor)
table.insert(ENT.model.hulls, wall)
table.insert(ENT.model.hulls, border)
table.insert(ENT.model.hulls, stairs)