local translate = Vector(1024, 0, 0)
local floor = {
    translate = translate,
    levels = 2,
    -- TOP
    {
        size = Vector(272, 348, 6),
        pos = Vector(-120, 186, 0),
    },
    {
        size = Vector(272, 220, 6),
        pos = Vector(-120, -250, 0),
    },
    {
        levels = 1,
        size = Vector(56, 152, 6),
        pos = Vector(-228, -64, 0),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(24, 272, 6),
        pos = Vector(-120, 372, 0),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(24, 272, 6),
        pos = Vector(-120, -372, 0),
        ang = Angle(0, 90, 0),
    },
    {
        size = Vector(272, 312, 6),
        pos = Vector(152, 156, 0),
    },
    {
        size = Vector(272, 312, 6),
        pos = Vector(152, -156, 0),
    },
    {
        type = "triangle",
        levels = 1,
        size = Vector(48, 272, 6),
        pos = Vector(152, 336, 0),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        levels = 1,
        size = Vector(48, 272, 6),
        pos = Vector(152, -336, 0),
        ang = Angle(0, 90, 0),
    },
    -- MIDDLE
    {
        size = Vector(272, 191, 6),
        pos = Vector(-120, 235.5, -128),
    },
    {
        size = Vector(272, 319, 6),
        pos = Vector(-120, -171.5, -128),
    },
    {
        levels = 1,
        size = Vector(56, 152, 6),
        pos = Vector(-228, 64, -128),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(25, 268, 6),
        pos = Vector(-122, 343.5, -128),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(25, 268, 6),
        pos = Vector(-122, -343.5, -128),
        ang = Angle(0, 90, 0),
    },
    {
        size = Vector(266, 284, 6),
        pos = Vector(149, 142, -128),
    },
    {
        size = Vector(266, 284, 6),
        pos = Vector(149, -142, -128),
    },
    {
        type = "triangle",
        levels = 1,
        size = Vector(47, 270, 6),
        pos = Vector(147, 307.5, -128),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        levels = 1,
        size = Vector(47, 270, 6),
        pos = Vector(147, -307.5, -128),
        ang = Angle(0, 90, 0),
    },
    -- BOTTOM
    {
        size = Vector(261, 245, 6),
        pos = Vector(-125.5, 122.5, -256),
    },
    {
        size = Vector(261, 245, 6),
        pos = Vector(-125.5, -122.5, -256),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(23, 261, 6),
        pos = Vector(-125.5, 256.5, -256),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(23, 261, 6),
        pos = Vector(-125.5, -256.5, -256),
        ang = Angle(0, 90, 0),
    },
    {
        size = Vector(262, 199, 6),
        pos = Vector(136, 99.5, -256),
    },
    {
        size = Vector(262, 199, 6),
        pos = Vector(136, -99.5, -256),
    },
    {
        type = "triangle",
        levels = 1,
        size = Vector(46, 262, 6),
        pos = Vector(136, 222, -256),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        levels = 1,
        size = Vector(46, 262, 6),
        pos = Vector(136, -222, -256),
        ang = Angle(0, 90, 0),
    },
    -- BALKS
    -- upper
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 322, 8),
        pos = Vector(224, 161, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 322, 8),
        pos = Vector(224, -161, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, 240, -67.5),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, -240, -67.5),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(300, 24, 8),
        pos = Vector(-150, 240, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(236, 24, 8),
        pos = Vector(118, 240, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(300, 24, 8),
        pos = Vector(-150, -240, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(236, 24, 8),
        pos = Vector(118, -240, -7),
        ang = Angle(0, 0, 0),
    },
    -- lower
    {
        levels = 0,
        mat_index = 3,
        size = Vector(268, 24, 8),
        pos = Vector(-165.089264, -225.596405, -135),
        ang = Angle(0, 6.68386411, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(268, 24, 8),
        pos = Vector(101.089264, -194.403595, -135),
        ang = Angle(0, 6.68386411, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(268, 24, 8),
        pos = Vector(-165.089264, 225.596405, -135),
        ang = Angle(0, -6.68386411, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(268, 24, 8),
        pos = Vector(101.089264, 194.403595, -135),
        ang = Angle(0, -6.68386411, 0),
    },
    {
        mat_index = 3,
        size = Vector(24, 289.5, 8),
        pos = Vector(224, 144.75, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 289.5, 8),
        pos = Vector(224, -144.75, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, 180, -196),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, -180, -196),
        ang = Angle(0, 0, 0),
    },
}

local wall = {
    translate = translate,
    mat_index = 2,
    -- LEFT
    --a
    {
        size = Vector(277.5, 64, 8),
        pos = Vector(-122.759, 372.343, 0),
        ang = Angle(0, -5, 85),
    },
    {
        size = Vector(277.5, 64, 8),
        pos = Vector(151.105, 336.156, 0),
        ang = Angle(0, -10, 85),
    },
    -- b
    {
        size = Vector(276, 96, 8),
        pos = Vector(-123.506, 357.196, -78.2427),
        ang = Angle(0, -5, 75),
    },
    {
        size = Vector(276, 96, 8),
        pos = Vector(148.872, 321.205, -78.2427),
        ang = Angle(0, -10, 75),
    },
    -- c
    {
        size = Vector(272, 128, 8),
        pos = Vector(-125.498, 312.947, -180.033),
        ang = Angle(0, -5, 60),
    },
    {
        size = Vector(276, 128, 8),
        pos = Vector(140.948, 277.825, -180.033),
        ang = Angle(0, -10, 60),
    },
    -- d
    {
        size = Vector(264, 160, 8),
        pos = Vector(-129.483, 220.012, -286.881),
        ang = Angle(0, -5, 40),
    },
    {
        size = Vector(268.5, 160, 8),
        pos = Vector(128.793, 185.977, -286.881),
        ang = Angle(0, -10, 40),
    },
    -- e
    {
        size = Vector(256, 128, 8),
        pos = Vector(-133.468, 127.077, -393.73),
        ang = Angle(0, -5, 60),
    },
    {
        size = Vector(258, 128, 8),
        pos = Vector(118.115, 93.8679, -393.73),
        ang = Angle(0, -10, 60),
    },
    -- RIGHT
    --a
    {
        size = Vector(277.5, 64, 8),
        pos = Vector(-122.759, -372.343, 0),
        ang = Angle(0, 5, -85),
    },
    {
        size = Vector(277.5, 64, 8),
        pos = Vector(151.105, -336.156, 0),
        ang = Angle(0, 10, -85),
    },
    -- b
    {
        size = Vector(276, 96, 8),
        pos = Vector(-123.506, -357.196, -78.2427),
        ang = Angle(0, 5, -75),
    },
    {
        size = Vector(276, 96, 8),
        pos = Vector(148.872, -321.205, -78.2427),
        ang = Angle(0, 10, -75),
    },
    -- c
    {
        size = Vector(272, 128, 8),
        pos = Vector(-125.498, -312.947, -180.033),
        ang = Angle(0, 5, -60),
    },
    {
        size = Vector(276, 128, 8),
        pos = Vector(140.948, -277.825, -180.033),
        ang = Angle(0, 10, -60),
    },
    -- d
    {
        size = Vector(264, 160, 8),
        pos = Vector(-129.483, -220.012, -286.881),
        ang = Angle(0, 5, -40),
    },
    {
        size = Vector(268.5, 160, 8),
        pos = Vector(128.793, -185.977, -286.881),
        ang = Angle(0, 10, -40),
    },
    -- e
    {
        size = Vector(256, 128, 8),
        pos = Vector(-133.468, -127.077, -393.73),
        ang = Angle(0, 5, -60),
    },
    {
        size = Vector(258, 128, 8),
        pos = Vector(118.115, -93.8679, -393.73),
        ang = Angle(0, 10, -60),
    },
}

local border = {
    translate = translate,
    levels = 0,
    mat_index = 3,
    -- LEFT
    -- a
    {
        size = Vector(278, 12, 10),
        pos = Vector(-123.066, 368.829, -31.748),
        ang = Angle(0, -5, 80),
    },
    {
        size = Vector(277, 12, 10),
        pos = Vector(150.901, 332.712, -31.748),
        ang = Angle(0, -10, 80),
    },
    -- b
    {
        size = Vector(272.5, 12, 10),
        pos = Vector(-122.771, 344.123, -124.351),
        ang = Angle(0, -5, 70),
    },
    {
        size = Vector(277, 12, 10),
        pos = Vector(146.383, 308.645, -124.351),
        ang = Angle(0, -10, 70),
    },
    -- c
    {
        size = Vector(264.5, 12, 10),
        pos = Vector(-124.192, 280.49, -234.976),
        ang = Angle(0, -5, 50),
    },
    {
        size = Vector(269, 12, 10),
        pos = Vector(139.335, 245.763, -234.976),
        ang = Angle(0, -10, 50),
    },
    -- d
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-130.629, 159.528, -338.786),
        ang = Angle(0, -5, 50),
    },
    {
        size = Vector(258.5, 12, 10.5),
        pos = Vector(123.772, 125.948, -338.786),
        ang = Angle(0, -10, 50),
    },
    -- RIGHT
    -- a
    {
        size = Vector(278, 12, 10),
        pos = Vector(-123.066, -368.829, -31.748),
        ang = Angle(0, 5, -80),
    },
    {
        size = Vector(277, 12, 10),
        pos = Vector(150.901, -332.712, -31.748),
        ang = Angle(0, 10, -80),
    },
    -- b
    {
        size = Vector(272.5, 12, 10),
        pos = Vector(-122.771, -344.123, -124.351),
        ang = Angle(0, 5, -70),
    },
    {
        size = Vector(277, 12, 10),
        pos = Vector(146.383, -308.645, -124.351),
        ang = Angle(0, 10, -70),
    },
    -- c
    {
        size = Vector(264.5, 12, 10),
        pos = Vector(-124.192, -280.49, -234.976),
        ang = Angle(0, 5, -50),
    },
    {
        size = Vector(269, 12, 10),
        pos = Vector(139.335, -245.763, -234.976),
        ang = Angle(0, 10, -50),
    },
    -- d
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-130.629, -159.528, -338.786),
        ang = Angle(0, 5, -50),
    },
    {
        size = Vector(258.5, 12, 10.5),
        pos = Vector(123.772, -125.948, -338.786),
        ang = Angle(0, 10, -50),
    },
}

local stairs = {
    translate = translate,
    levels = 0,
    mat_index = 4,
    -- TOP
    -- frame
    {
        levels = 1,
        mat_index = 3,
        size = Vector(128, 128, 12),
        pos = Vector(10, 64, 67),
        ang = Angle(90, 0, 0),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(-92, 125, 67),
        ang = Angle(90, 0, 90),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(-92, 3, 67),
        ang = Angle(90, 0, 90),
    },
    -- steps
    {
        size = Vector(20, 122, 6),
        pos = Vector(-92, 64, 67),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-75.359, 64, 78.094),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-58.718, 64, 89.188),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-42.077, 64, 100.282),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-25.436, 64, 111.376),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-8.795, 64, 122.47002),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-108.641, 64, 55.906),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-125.282, 64, 44.812),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-141.923, 64, 33.718),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-158.564, 64, 22.624),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-175.205, 64, 11.53),
    },
    -- MIDDLE
    -- frame
    {
        levels = 1,
        mat_index = 3,
        size = Vector(128, 128, 12),
        pos = Vector(-194, -64, -61),
        ang = Angle(90, 0, 0),
    },
    {
        mat_index = 3,
        size = Vector(216, 12, 6),
        pos = Vector(-92, 6, 0),
    },
    {
        mat_index = 3,
        size = Vector(232 - 16, 12, 6),
        pos = Vector(-92, -134, 0),
    },
    {
        mat_index = 3,
        size = Vector(8, 128, 6),
        pos = Vector(12, -64, 0),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(-92, -3, -61),
        ang = Angle(90, 180, 90),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(-92, -125, -61),
        ang = Angle(90, 180, 90),
    },
    -- steps
    {
        size = Vector(20, 122, 6),
        pos = Vector(-92, -64, -61),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-108.641, -64, -49.906),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-125.282, -64, -38.812),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-141.923, -64, -27.718),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-158.564, -64, -16.624),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-175.205, -64, -5.53),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-75.359, -64, -72.094),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-58.718, -64, -83.188),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-42.077, -64, -94.282),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-25.436, -64, -105.376),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-8.795, -64, -116.47),
    },
    -- BOTTOM
    -- frame
    {
        levels = 1,
        mat_index = 3,
        size = Vector(128, 128, 12),
        pos = Vector(10, 64, -189),
        ang = Angle(90, 0, 0),
    },
    {
        mat_index = 3,
        size = Vector(216, 12, 6),
        pos = Vector(-92, -6, -128),
    },
    {
        mat_index = 3,
        size = Vector(216, 12, 6),
        pos = Vector(-92, 134, -128),
    },
    {
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(-194, 64, -128),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(-92, 125, -189),
        ang = Angle(90, 0, 90),
    },
    {
        type = "triangle",
        levels = 1,
        mat_index = 3,
        size = Vector(128, 192, 6),
        pos = Vector(-92, 3, -189),
        ang = Angle(90, 0, 90),
    },
    -- steps
    {
        size = Vector(20, 122, 6),
        pos = Vector(-92, 64, -189),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-75.359, 64, -177.906),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-58.718, 64, -166.812),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-42.077, 64, -155.718),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-25.436, 64, -144.624),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-8.795, 64, -133.52998),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-108.641, 64, -200.094),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-125.282, 64, -211.188),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-141.923, 64, -222.282),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-158.564, 64, -233.376),
    },
    {
        size = Vector(20, 122, 6),
        pos = Vector(-175.205, 64, -244.47),
    },
}

table.insert(ENT.model.hulls, floor)
table.insert(ENT.model.hulls, wall)
table.insert(ENT.model.hulls, border)
table.insert(ENT.model.hulls, stairs)