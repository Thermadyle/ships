local translate = Vector(-1536, 0, 0)
local floor = {
    translate = translate,
    -- TOP
    {
        levels = 2,
        size = Vector(272, 360, 6),
        pos = Vector(120, 180, 0),
    },
    {
        levels = 2,
        size = Vector(272, 360, 6),
        pos = Vector(120, -180, 0),
    },
    {
        levels = 2,
        size = Vector(272, 312, 6),
        pos = Vector(-152, 156, 0),
    },
    {
        levels = 2,
        size = Vector(272, 312, 6),
        pos = Vector(-152, -156, 0),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(24, 272, 6),
        pos = Vector(120, 372, 0),
        ang = Angle(180, 90, 180),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(24, 272, 6),
        pos = Vector(120, -372, 0),
        ang = Angle(0, 90, 180),
    },
    {
        type = "triangle",
        size = Vector(48, 272, 6),
        pos = Vector(-152, 336, 0),
        ang = Angle(180, 90, 180),
    },
    {
        type = "triangle",
        size = Vector(48, 272, 6),
        pos = Vector(-152, -336, 0),
        ang = Angle(0, 90, 180),
    },
    -- MIDDLE
    {
        levels = 2,
        size = Vector(268, 331, 6),
        pos = Vector(122, 165.5, -128),
    },
    {
        levels = 2,
        size = Vector(268, 331, 6),
        pos = Vector(122, -165.5, -128),
    },
    {
        levels = 2,
        size = Vector(270, 284, 6),
        pos = Vector(-147, 142, -128),
    },
    {
        levels = 2,
        size = Vector(270, 284, 6),
        pos = Vector(-147, -142, -128),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(25, 268, 6),
        pos = Vector(122, 343.5, -128),
        ang = Angle(180, 90, 180),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(25, 268, 6),
        pos = Vector(122, -343.5, -128),
        ang = Angle(0, 90, 180),
    },
    {
        type = "triangle",
        size = Vector(47, 270, 6),
        pos = Vector(-147, 307.5, -128),
        ang = Angle(180, 90, 180),
    },
    {
        type = "triangle",
        size = Vector(47, 270, 6),
        pos = Vector(-147, -307.5, -128),
        ang = Angle(0, 90, 180),
    },
    -- BOTTOM
    {
        levels = 2,
        size = Vector(261, 245, 6),
        pos = Vector(125.5, 122.5, -256),
    },
    {
        levels = 2,
        size = Vector(261, 245, 6),
        pos = Vector(125.5, -122.5, -256),
    },
    {
        levels = 2,
        size = Vector(262, 199, 6),
        pos = Vector(-136, 99.5, -256),
    },
    {
        levels = 2,
        size = Vector(262, 199, 6),
        pos = Vector(-136, -99.5, -256),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(23, 261, 6),
        pos = Vector(125.5, 256.5, -256),
        ang = Angle(180, 90, 180),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(23, 261, 6),
        pos = Vector(125.5, -256.5, -256),
        ang = Angle(0, 90, 180),
    },
    {
        type = "triangle",
        size = Vector(46, 262, 6),
        pos = Vector(-136, 222, -256),
        ang = Angle(180, 90, 180),
    },
    {
        type = "triangle",
        size = Vector(46, 262, 6),
        pos = Vector(-136, -222, -256),
        ang = Angle(0, 90, 180),
    },
    -- BALKS
    -- upper
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 322, 8),
        pos = Vector(-224, 161, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 322, 8),
        pos = Vector(-224, -161, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 114),
        pos = Vector(-224, 240, -68),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 114),
        pos = Vector(-224, -240, -68),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(236, 24, 8),
        pos = Vector(-118, 240, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(300, 24, 8),
        pos = Vector(150, 240, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(236, 24, 8),
        pos = Vector(-118, -240, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(300, 24, 8),
        pos = Vector(150, -240, -7),
        ang = Angle(0, 0, 0),
    },
    -- lower
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 289.5, 8),
        pos = Vector(-224, 144.75, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 289.5, 8),
        pos = Vector(-224, -144.75, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 114),
        pos = Vector(-224, 180, -196),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 114),
        pos = Vector(-224, -180, -196),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(268, 24, 8),
        pos = Vector(165.089264, -225.596405, -135),
        ang = Angle(0, -6.68386411, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(268, 24, 8),
        pos = Vector(-101.089264, -194.403595, -135),
        ang = Angle(0, -6.68386411, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(268, 24, 8),
        pos = Vector(165.089264, 225.596405, -135),
        ang = Angle(0, 6.68386411, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(268, 24, 8),
        pos = Vector(-101.089264, 194.403595, -135),
        ang = Angle(0, 6.68386411, 0),
    },
}

local wall = {
    translate = translate,
    mat_index = 2,
    -- LEFT
    {
        size = Vector(277.5, 64, 8),
        pos = Vector(122.759, 372.343, 0),
        ang = Angle(-0, 5, 85),
    },
    {
        size = Vector(276, 96, 8),
        pos = Vector(123.506, 357.196, -78.2427),
        ang = Angle(-0, 5, 75),
    },
    {
        size = Vector(272, 128, 8),
        pos = Vector(125.498, 312.947, -180.033),
        ang = Angle(-0, 5, 60),
    },
    {
        size = Vector(264, 160, 8),
        pos = Vector(129.483, 220.012, -286.881),
        ang = Angle(-0, 5, 40),
    },
    {
        size = Vector(256, 128, 8),
        pos = Vector(133.468, 127.077, -393.73),
        ang = Angle(-0, 5, 60),
    },
    {
        size = Vector(277.5, 64, 8),
        pos = Vector(-151.105, 336.156, 0),
        ang = Angle(-0, 10, 85),
    },
    {
        size = Vector(276, 96, 8),
        pos = Vector(-148.872, 321.205, -78.2427),
        ang = Angle(-0, 10, 75),
    },
    {
        size = Vector(276, 128, 8),
        pos = Vector(-140.948, 277.825, -180.033),
        ang = Angle(-0, 10, 60),
    },
    {
        size = Vector(268.5, 160, 8),
        pos = Vector(-128.793, 185.977, -286.881),
        ang = Angle(-0, 10, 40),
    },
    {
        size = Vector(258, 128, 8),
        pos = Vector(-118.115, 93.8679, -393.73),
        ang = Angle(-0, 10, 60),
    },
    -- RIGHT
    {
        size = Vector(277.5, 64, 8),
        pos = Vector(122.759, -372.343, 0),
        ang = Angle(-0, -5, -85),
    },
    {
        size = Vector(276, 96, 8),
        pos = Vector(123.506, -357.196, -78.2427),
        ang = Angle(-0, -5, -75),
    },
    {
        size = Vector(272, 128, 8),
        pos = Vector(125.498, -312.947, -180.033),
        ang = Angle(-0, -5, -60),
    },
    {
        size = Vector(264, 160, 8),
        pos = Vector(129.483, -220.012, -286.881),
        ang = Angle(-0, -5, -40),
    },
    {
        size = Vector(256, 128, 8),
        pos = Vector(133.468, -127.077, -393.73),
        ang = Angle(-0, -5, -60),
    },
    {
        size = Vector(277.5, 64, 8),
        pos = Vector(-151.105, -336.156, 0),
        ang = Angle(-0, -10, -85),
    },
    {
        size = Vector(276, 96, 8),
        pos = Vector(-148.872, -321.205, -78.2427),
        ang = Angle(-0, -10, -75),
    },
    {
        size = Vector(276, 128, 8),
        pos = Vector(-140.948, -277.825, -180.033),
        ang = Angle(-0, -10, -60),
    },
    {
        size = Vector(268.5, 160, 8),
        pos = Vector(-128.793, -185.977, -286.881),
        ang = Angle(-0, -10, -40),
    },
    {
        size = Vector(258, 128, 8),
        pos = Vector(-118.115, -93.8679, -393.73),
        ang = Angle(-0, -10, -60),
    },
    -- BACK
    {
        levels = 0,
        type = "triangle",
        size = Vector(115, 64.50, 8),
        pos = Vector(-242, 75.50, -393.375),
        ang = Angle(264.03, 0, 180)
    },
    {
        levels = 0,
        size = Vector(115, 86.5, 8),
        pos = Vector(-242, 0, -393.375),
        ang = Angle(84.029984, 0, 0)
    },
    {
        levels = 0,
        type = "triangle",
        size = Vector(115, 64.50, 8),
        pos = Vector(-242, -75.50, -393.375),
        ang = Angle(264.03, 0, 0)
    },
    {
        levels = 0,
        type = "triangle",
        size = Vector(105, 118, 8),
        pos = Vector(-258.25, 169, -284.5),
        ang = Angle(281.256439, 180, 0)
    },
    {
        size = Vector(105, 110, 8),
        pos = Vector(-258.25, 55, -284.5),
        ang = Angle(281.256439, 180, 0)
    },
    {
        size = Vector(105, 110, 8),
        pos = Vector(-258.25, -55, -284.5),
        ang = Angle(281.256439, 180, 0)
    },
    {
        levels = 0,
        type = "triangle",
        size = Vector(105, 118, 8),
        pos = Vector(-258.25, -169, -284.5),
        ang = Angle(-78.74, 180, -180)
    },
    {
        levels = 0,
        type = "triangle",
        size = Vector(111, 65, 8),
        pos = Vector(-274, 257.50, -178),
        ang = Angle(275.710602, 180, 0)
    },
    {
        size = Vector(111, 225, 8),
        pos = Vector(-274, 112.5, -178),
        ang = Angle(275.710602, 180, 0)
    },
    {
        size = Vector(111, 225, 8),
        pos = Vector(-274, -112.5, -178),
        ang = Angle(275.710602, 180, 0)
    },
    {
        levels = 0,
        type = "triangle",
        size = Vector(111, 65, 8),
        pos = Vector(-274, -257.50, -178),
        ang = Angle(-84.29, 180, -180)
    },
    {
        levels = 0,
        type = "triangle",
        size = Vector(92, 22, 8),
        pos = Vector(-281.75, 301, -77),
        ang = Angle(272.800293, 180, 0)
    },
    {
        levels = 0,
        size = Vector(92, 134, 8),
        pos = Vector(-281.75, 223, -77),
        ang = Angle(272.800293, 180, 0)
    },
    {
        levels = 0,
        size = Vector(92, 128, 8),
        pos = Vector(-281.75, 0, -77),
        ang = Angle(272.800293, 180, 0)
    },
    {
        levels = 0,
        size = Vector(92, 134, 8),
        pos = Vector(-281.75, -223, -77),
        ang = Angle(272.800293, 180, 0)
    },
    {
        levels = 0,
        type = "triangle",
        size = Vector(92, 22, 8),
        pos = Vector(-281.75, -301, -77),
        ang = Angle(272.800293, 180, 180)
    },
    {
        size = Vector(69, 312.5, 8),
        pos = Vector(-284.5, 156.25, 3.5),
        ang = Angle(270.830322, 180., 0.)
    },
    {
        size = Vector(69, 312.5, 8),
        pos = Vector(-284.5, -156.25, 3.5),
        ang = Angle(270.830322, 180., 0.)
    }
}

--local a1 = Angle(95.71, 180, 0)
--a1:RotateAroundAxis(a1:Up(), 180)
--print("Angle("..a1.p..", "..a1.y..", "..a1.r..")")

local border = {
    translate = translate,
    levels = 0,
    mat_index = 3,
    -- LEFT
    {
        size = Vector(278, 12, 10),
        pos = Vector(123.066, 368.829, -31.748),
        ang = Angle(-0, 5, 80),
    },
    {
        size = Vector(272.5, 12, 10),
        pos = Vector(122.771, 344.123, -124.351),
        ang = Angle(-0, 5, 70),
    },
    {
        size = Vector(264.5, 12, 10),
        pos = Vector(124.192, 280.49, -234.976),
        ang = Angle(-0, 5, 50),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(130.629, 159.528, -338.786),
        ang = Angle(-0, 5, 50),
    },
    {
        size = Vector(277, 12, 10),
        pos = Vector(-150.901, 332.712, -31.748),
        ang = Angle(-0, 10, 80),
    },
    {
        size = Vector(277, 12, 10),
        pos = Vector(-146.383, 308.645, -124.351),
        ang = Angle(-0, 10, 70),
    },
    {
        size = Vector(269, 12, 10),
        pos = Vector(-139.335, 245.763, -234.976),
        ang = Angle(-0, 10, 50),
    },
    {
        size = Vector(258.5, 12, 10.5),
        pos = Vector(-123.772, 125.948, -338.786),
        ang = Angle(-0, 10, 50),
    },
    -- RIGHT
    {
        size = Vector(278, 12, 10),
        pos = Vector(123.066, -368.829, -31.748),
        ang = Angle(-0, -5, -80),
    },
    {
        size = Vector(272.5, 12, 10),
        pos = Vector(122.771, -344.123, -124.351),
        ang = Angle(-0, -5, -70),
    },
    {
        size = Vector(264.5, 12, 10),
        pos = Vector(124.192, -280.49, -234.976),
        ang = Angle(-0, -5, -50),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(130.629, -159.528, -338.786),
        ang = Angle(-0, -5, -50),
    },
    {
        size = Vector(277, 12, 10),
        pos = Vector(-150.901, -332.712, -31.748),
        ang = Angle(-0, -10, -80),
    },
    {
        size = Vector(277, 12, 10),
        pos = Vector(-146.383, -308.645, -124.351),
        ang = Angle(-0, -10, -70),
    },
    {
        size = Vector(269, 12, 10),
        pos = Vector(-139.335, -245.763, -234.976),
        ang = Angle(-0, -10, -50),
    },
    {
        size = Vector(258.5, 12, 10.5),
        pos = Vector(-123.772, -125.948, -338.786),
        ang = Angle(-0, -10, -50),
    },
    -- BACK
    {
        size = Vector(10, 312.5, 12),
        pos = Vector(-284, 156.25, -31),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(10, 312.5, 12),
        pos = Vector(-284, -156.25, -31),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(10, 288, 12),
        pos = Vector(-279.5, 144, -123),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(10, 288, 12),
        pos = Vector(-279.5, -144, -123),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(10, 225, 12),
        pos = Vector(-268.5, 112.5, -233),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(10, 225, 12),
        pos = Vector(-268.5, -112.5, -233),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(10, 214, 12),
        pos = Vector(-248, 0, -336),
        ang = Angle(0, 0, 0),
    },
    --
    {
        size = Vector(80.75, 12, 10),
        pos = Vector(-281.75, 160, -77),
        ang = Angle(273.25, 180, 0)
    },
    {
        size = Vector(80.75, 12, 10),
        pos = Vector(-281.75, 64, -77),
        ang = Angle(273.25, 180, 0)
    },
    {
        size = Vector(80.75, 12, 10),
        pos = Vector(-281.75, -64, -77),
        ang = Angle(273.25, 180, 0)
    },
    {
        size = Vector(80.75, 12, 10),
        pos = Vector(-281.75, -160, -77),
        ang = Angle(273.25, 180, 0)
    },
}

--local points = {
--    border[#border].pos,
--    border[#border].pos - Vector(-12, 0, 114.75),
--}
--
--for i = 1, #points-1 do
--    local a = points[i]
--    local b = points[i + 1]
--    local normal = (b - a):GetNormal()
--    local dist = a:Distance(b)
--    table.insert(wall, {
--        size = Vector(dist, 86.5, 8),
--        pos = a + normal * dist * 0.5,
--        ang = normal:Angle()
--    })
--    local p = a + normal * dist * 0.5
--    local a = normal:Angle()
--    print(string.format([[    {
--        size = Vector(%d, 16, 8),
--        pos = Vector(%f, %f, %f),
--        ang = Angle(%f, %f, %f)
--    }]], dist, p.x, p.y, p.z, a.p, a.y, a.r))
--end

table.insert(ENT.model.hulls, floor)
table.insert(ENT.model.hulls, wall)
table.insert(ENT.model.hulls, border)