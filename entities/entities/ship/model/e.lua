local translate = Vector(1536, 0, 0)
local floor = {
    translate = translate,
    -- TOP
    {
        levels = 2,
        size = Vector(271, 240, 6),
        pos = Vector(-88.5, 120, 0),
    },
    {
        levels = 2,
        size = Vector(271, 240, 6),
        pos = Vector(-88.5, -120, 0),
    },
    {
        levels = 2,
        size = Vector(270, 286, 6),
        pos = Vector(182, 0, 0),
    },
    {
        levels = 0,
        size = Vector(125.75, 52, 6),
        pos = Vector(379.875, 0, 0),
    },
    {
        levels = 0,
        size = Vector(125.75, 52, 6),
        pos = Vector(505.63, 0, 0),
    },
    {
        type = "triangle",
        size = Vector(72, 271, 6),
        pos = Vector(-88.5, 276, 0),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(72, 271, 6),
        pos = Vector(-88.5, -276, 0),
        ang = Angle(0, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(97, 270, 6),
        pos = Vector(182, 191.5, 0),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(97, 270, 6),
        pos = Vector(182, -191.5, 0),
        ang = Angle(0, 90, 0),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(117, 251.5, 6),
        pos = Vector(442.75, 84.5, 0),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        levels = 0,
        size = Vector(117, 251.5, 6),
        pos = Vector(442.75, -84.5, 0),
        ang = Angle(0, 90, 0),
    },
    -- MIDDLE
    {
        levels = 2,
        size = Vector(270, 210, 6),
        pos = Vector(-95, -105, -128),
    },
    {
        levels = 2,
        size = Vector(270, 210, 6),
        pos = Vector(-95, 105, -128),
    },
    {
        levels =  2,
        size = Vector(268, 230, 6),
        pos = Vector(174, 0, -128),
    },
    {
        type = "triangle",
        size = Vector(74, 270, 6),
        pos = Vector(-95, 247, -128),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(74, 270, 6),
        pos = Vector(-95, -247, -128),
        ang = Angle(0, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(95, 268, 6),
        pos = Vector(174, 162.5, -128),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(95, 268, 6),
        pos = Vector(174, -162.5, -128),
        ang = Angle(0, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(115, 244, 6),
        pos = Vector(430, 57.5, -128),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(115, 244, 6),
        pos = Vector(430, -57.5, -128),
        ang = Angle(0, 90, 0),
    },
    -- BOTTOM
    {
        levels = 2,
        size = Vector(263, 256, 6),
        pos = Vector(-113.5, 0, -256),
    },
    {
        type = "triangle",
        size = Vector(71, 263, 6),
        pos = Vector(-113.5, 163.5, -256),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(71, 263, 6),
        pos = Vector(-113.5, -163.5, -256),
        ang = Angle(0, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(128, 324, 6),
        pos = Vector(180, 64, -256),
        ang = Angle(180, 90, 0),
    },
    {
        type = "triangle",
        size = Vector(128, 324, 6),
        pos = Vector(180, -64, -256),
        ang = Angle(0, 90, 0),
    },
    -- BALKS
    -- upper
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 347.5, 8),
        pos = Vector(224, 0, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, 112, -67.5),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, -112, -67.5),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(273, 24, 8),
        pos = Vector(100.424484, 142.893890, -7),
        ang = Angle(0, -14.0362435, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(273, 24, 8),
        pos = Vector(-164.424423, 209.106110, -7),
        ang = Angle(0, -14.0362435, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(273, 24, 8),
        pos = Vector(100.424484, -142.893890, -7),
        ang = Angle(0, 14.0362435, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(273, 24, 8),
        pos = Vector(-164.424423, -209.106110, -7),
        ang = Angle(0, 14.0362435, 0),
    },
    -- lower
    {
        mat_index = 3,
        size = Vector(24, 276, 8),
        pos = Vector(224, 0, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, 0, -196),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(279, 24, 8),
        pos = Vector(-163.603973, 136.267029, -135),
        ang = Angle(0, -19.369762, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(279, 24, 8),
        pos = Vector(99.604004, 43.732967, -135),
        ang = Angle(0, -19.369762, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(279, 24, 8),
        pos = Vector(-163.603973, -136.267029, -135),
        ang = Angle(0, 19.369762, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(279, 24, 8),
        pos = Vector(99.604004, -43.732967, -135),
        ang = Angle(0, 19.369762, 0),
    },
}

local border = {
    translate = translate,
    levels = 0,
    mat_index = 3,
    -- LEFT
    -- a
    {
        size = Vector(283, 12, 10),
        pos = Vector(-89.70, 272.488, -31.748),
        ang = Angle(0, -15, 80),
    },
    {
        size = Vector(289.5, 12, 10),
        pos = Vector(181.39, 186.971, -31.748),
        ang = Angle(0, -20, 80),
    },
    {
        size = Vector(277.5, 12, 10),
        pos = Vector(441.70, 79.5038, -31.748),
        ang = Angle(0, -25, 80),
    },
    -- b
    {
        size = Vector(280.5, 12, 10),
        pos = Vector(-94.72, 248.632, -124.351),
        ang = Angle(0, -15, 70),
    },
    {
        size = Vector(286, 12, 10),
        pos = Vector(174.44, 163.779, -124.351),
        ang = Angle(0, -20, 70),
    },
    {
        size = Vector(140.5, 12, 10),
        pos = Vector(372.05, 85.49, -124.351),
        ang = Angle(0, -25, 70),
    },
    {
        size = Vector(134.5, 12, 10),
        pos = Vector(496.67, 27.38, -124.351),
        ang = Angle(0, 155, 110),
    },
    -- c
    {
        size = Vector(275, 12, 10.5),
        pos = Vector(-108.56, 187.15, -234.816),
        ang = Angle(0, -15, 50),
    },
    {
        size = Vector(210, 12, 12),
        pos = Vector(121.05, 116.511, -234.326),
        ang = Angle(-0.448, -19.95, 50),
    },
    {
        size = Vector(142.75, 12, 13.25),
        pos = Vector(284.90, 54.2145, -233.851),
        ang = Angle(0, -22.5, 50),
    },
    {
        size = Vector(65.5, 12, 13.25),
        pos = Vector(379.42, 13.0977, -234.63),
        ang = Angle(1.406, -25.778, 50),
    },
    -- d
    {
        size = Vector(212, 12, 11),
        pos = Vector(-159.94, 76.3473, -338.626),
        ang = Angle(0, -15, 50),
    },
    {
        size = Vector(174, 12, 12),
        pos = Vector(24.92, 24.3523, -336.618),
        ang = Angle(-1.285, -16.532, 50.017),
    },
    -- RIGHT
    -- a
    {
        size = Vector(283, 12, 10),
        pos = Vector(-89.70, -272.488, -31.748),
        ang = Angle(0, 15, -80),
    },
    {
        size = Vector(289.5, 12, 10),
        pos = Vector(181.39, -186.971, -31.748),
        ang = Angle(0, 20, -80),
    },
    {
        size = Vector(277.5, 12, 10),
        pos = Vector(441.70, -79.5038, -31.748),
        ang = Angle(0, 25, -80),
    },
    -- b
    {
        size = Vector(280.5, 12, 10),
        pos = Vector(-94.72, -248.632, -124.351),
        ang = Angle(0, 15, -70),
    },
    {
        size = Vector(286, 12, 10),
        pos = Vector(174.44, -163.779, -124.351),
        ang = Angle(0, 20, -70),
    },
    {
        size = Vector(140.5, 12, 10),
        pos = Vector(372.05, -85.49, -124.351),
        ang = Angle(0, 25, -70),
    },
    {
        size = Vector(134.5, 12, 10),
        pos = Vector(496.67, -27.38, -124.351),
        ang = Angle(0, -155, -110),
    },
    -- c
    {
        size = Vector(275, 12, 10.5),
        pos = Vector(-108.56, -187.15, -234.816),
        ang = Angle(0, 15, -50),
    },
    {
        size = Vector(210, 12, 12),
        pos = Vector(121.05, -116.511, -234.326),
        ang = Angle(-0.448, 19.95, -50),
    },
    {
        size = Vector(142.75, 12, 13.25),
        pos = Vector(284.90, -54.2145, -233.851),
        ang = Angle(0, 22.5, -50),
    },
    {
        size = Vector(65.5, 12, 13.25),
        pos = Vector(379.42, -13.0977, -234.63),
        ang = Angle(1.406, 25.778, -50),
    },
    -- d
    {
        size = Vector(212, 12, 11),
        pos = Vector(-159.94, -76.3473, -338.626),
        ang = Angle(0, 15, -50),
    },
    {
        size = Vector(174, 12, 12),
        pos = Vector(24.917, -24.3523, -336.618),
        ang = Angle(-1.285, 16.532, -50.017),
    },
    -- FRONT
    {
        size = Vector(188.669, 12, 16),
        pos = Vector(489.44, 0, -180.033),
        ang = Angle(36.658, 180, 0),
    },
    {
        size = Vector(337.235, 12, 16),
        pos = Vector(255.961, 0, -286.881),
        ang = Angle(17.921, 180, 0),
    },
    {
        size = Vector(242.978, 12, 16),
        pos = Vector(-9.47, 0, -393.73),
        ang = Angle(27.5112, 180, 0),
    },
    -- FRONT RAILS
    {
        size = Vector(4, 60, 8),
        pos = Vector(567.779419, 0, 33.953403),
        ang = Angle(273, 0, 0),
    },
    {
        size = Vector(4, 61.5, 8),
        pos = Vector(568.185059, 0, 41.692783),
        ang = Angle(273, 0, 0),
    },
    -- left
    {
        size = Vector(277.75, 4, 8),
        pos = Vector(444.022339, 85.291458, 33.870621),
        ang = Angle(0, -25, 85),
    },
    {
        size = Vector(277.75, 4, 8),
        pos = Vector(444.317017, 85.923378, 41.840179),
        ang = Angle(0, -25, 85),
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(436.919220, 88.988358, 37.8554),
        ang = Angle(0, -25, 85),
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(561.989685, 30.667038, 37.8554),
        ang = Angle(0, -25, 85),
    },
    -- right
    {
        size = Vector(277.75, 4, 8),
        pos = Vector(444.022339, -85.291458, 33.870621),
        ang = Angle(0, 25, -85),
    },
    {
        size = Vector(277.75, 4, 8),
        pos = Vector(444.317017, -85.923378, 41.840179),
        ang = Angle(0, 25, -85),
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(436.919220, -88.988358, 37.8554),
        ang = Angle(0, 25, -85),
    },
    {
        size = Vector(16, 4, 4),
        pos = Vector(561.989685, -30.667038, 37.8554),
        ang = Angle(0, 25, -85),
    },
}

local wall = {
    translate = translate,
    mat_index = 2,
    -- LEFT
    {
        size = Vector(282.5, 64, 8),
        pos = Vector(-88.78, 275.763, 0),
        ang = Angle(0, -15, 85),
    },
    {
        size = Vector(282.5, 96, 8),
        pos = Vector(-92.72, 261.201, -78.2427),
        ang = Angle(0, -15, 75),
    },
    {
        size = Vector(280, 128, 8),
        pos = Vector(-102.82, 218.403, -180.033),
        ang = Angle(0, -15, 60),
    },
    {
        size = Vector(274.5, 160, 8),
        pos = Vector(-124.22, 128.694, -286.881),
        ang = Angle(0, -15, 40),
    },
    {
        size = Vector(165, 128, 8),
        pos = Vector(-190.05, 50.8912, -393.73),
        ang = Angle(0, -15, 60),
    },
    {
        size = Vector(288.5, 64, 8),
        pos = Vector(182.27, 190.211, 0),
        ang = Angle(0, -20, 85),
    },
    {
        size = Vector(288.5, 96, 8),
        pos = Vector(177.39, 175.991, -78.2427),
        ang = Angle(0, -20, 75),
    },
    {
        size = Vector(285.5, 128, 8),
        pos = Vector(163.74, 134.371, -180.033),
        ang = Angle(0, -20, 60),
    },
    {
        size = Vector(116.25, 160, 8),
        pos = Vector(57.34, 75.3437, -286.881),
        ang = Angle(0, -20, 40),
    },
    {
        size = Vector(277.75, 64, 8),
        pos = Vector(442.77, 82.6058, 0),
        ang = Angle(0, -25, 85),
    },
    {
        size = Vector(277.25, 96, 8),
        pos = Vector(436.76, 68.9139, -78.2427),
        ang = Angle(0, -25, 75),
    },
    {
        size = Vector(140.5, 128, 8),
        pos = Vector(358.83, 57.1269, -180.033),
        ang = Angle(0, -25, 60),
    },
    -- RIGHT
    {
        size = Vector(282.5, 64, 8),
        pos = Vector(-88.78, -275.763, 0),
        ang = Angle(0, 15, -85),
    },
    {
        size = Vector(282.5, 96, 8),
        pos = Vector(-92.72, -261.201, -78.2427),
        ang = Angle(0, 15, -75),
    },
    {
        size = Vector(280, 128, 8),
        pos = Vector(-102.82, -218.403, -180.033),
        ang = Angle(0, 15, -60),
    },
    {
        size = Vector(274.5, 160, 8),
        pos = Vector(-124.22, -128.694, -286.881),
        ang = Angle(0, 15, -40),
    },
    {
        size = Vector(165, 128, 8),
        pos = Vector(-190.05, -50.8912, -393.73),
        ang = Angle(0, 15, -60),
    },
    {
        size = Vector(288.5, 64, 8),
        pos = Vector(182.27, -190.211, 0),
        ang = Angle(0, 20, -85),
    },
    {
        size = Vector(288.5, 96, 8),
        pos = Vector(177.39, -175.991, -78.2427),
        ang = Angle(0, 20, -75),
    },
    {
        size = Vector(285.5, 128, 8),
        pos = Vector(163.74, -134.371, -180.033),
        ang = Angle(0, 20, -60),
    },
    {
        size = Vector(116.25, 160, 8),
        pos = Vector(57.34, -75.3437, -286.881),
        ang = Angle(0, 20, -40),
    },
    {
        size = Vector(277.75, 64, 8),
        pos = Vector(442.77, -82.6058, 0),
        ang = Angle(0, 25, -85),
    },
    {
        size = Vector(277.25, 96, 8),
        pos = Vector(436.76, -68.9139, -78.2427),
        ang = Angle(0, 25, -75),
    },
    {
        size = Vector(140.5, 128, 8),
        pos = Vector(358.83, -57.1269, -180.033),
        ang = Angle(0, 25, -60),
    },
    -- SLOPE
    {
        type = "triangle",
        size = Vector(134.5, 128, 8),
        pos = Vector(483.44, -0.983129, -180.033),
        ang = Angle(0, 155, 120),
    },
    {
        type = "triangle",
        size = Vector(134.5, 128, 8),
        pos = Vector(483.44, 0.983129, -180.033),
        ang = Angle(0, -155, 60),
    },
    {
        type = "triangle",
        size = Vector(300, 160, 8),
        pos = Vector(247.77, -0.790714, -286.881),
        ang = Angle(0, 157.5, 140),
    },
    {
        type = "triangle",
        size = Vector(300, 160, 8),
        pos = Vector(247.77, 0.790714, -286.881),
        ang = Angle(0, -157.5, 40),
    },
    {
        type = "triangle",
        size = Vector(203, 128, 8),
        pos = Vector(-15.47, -0.381643, -393.73),
        ang = Angle(0, 162, 120),
    },
    {
        type = "triangle",
        size = Vector(203, 128, 8),
        pos = Vector(-15.47, 0.381643, -393.73),
        ang = Angle(0, -162, 60),
    },
    --
    {
        size = Vector(64, 48, 8),
        pos = Vector(566, 0, 0),
        ang = Angle(273, 0, 0),
    },
    {
        type = "triangle",
        size = Vector(64, 6, 8),
        pos = Vector(566, 27, 0),
        ang = Angle(273, 0, 180),
    },
    {
        type = "triangle",
        size = Vector(64, 6, 8),
        pos = Vector(566, -27, 0),
        ang = Angle(273, 0, 0),
    },
}

table.insert(ENT.model.hulls, floor)
table.insert(ENT.model.hulls, border)
table.insert(ENT.model.hulls, wall)