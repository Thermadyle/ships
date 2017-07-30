local translate = Vector(-512, 0, 0)
local floor = {
    translate = translate,
    levels = 2,
    -- TOP
    {
        size = Vector(216, 276, 6),
        pos = Vector(148, 246, 0),
    },
    {
        size = Vector(216, 372, 6),
        pos = Vector(148, -198, 0),
    },
    {
        size = Vector(296, 384, 6),
        pos = Vector(-108, 192, 0),
    },
    {
        size = Vector(296, 384, 6),
        pos = Vector(-108, -192, 0),
    },
    -- MIDDLE
    {
        size = Vector(216, 344, 6),
        pos = Vector(148, 184, -128),
    },
    {
        size = Vector(216, 248, 6),
        pos = Vector(148, -232, -128),
    },
    {
        size = Vector(296, 356, 6),
        pos = Vector(-108, 178, -128),
    },
    {
        size = Vector(296, 356, 6),
        pos = Vector(-108, -178, -128),
    },
    -- BOTTOM
    {
        size = Vector(256, 268, 6),
        pos = Vector(-128, 134, -256),
    },
    {
        size = Vector(256, 268, 6),
        pos = Vector(128, 134, -256),
    },
    {
        size = Vector(256, 268, 6),
        pos = Vector(-128, -134, -256),
    },
    {
        size = Vector(256, 268, 6),
        pos = Vector(128, -134, -256),
    },
    -- BALKS
    -- upper
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 380, 8),
        pos = Vector(-224, 190, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 380, 8),
        pos = Vector(-224, -190, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(-224, 240, -67.5),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(-224, -240, -67.5),
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
        size = Vector(24, 350, 8),
        pos = Vector(-224, 175, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 350, 8),
        pos = Vector(-224, -175, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(-224, 240, -196),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(-224, -240, -196),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(236, 24, 8),
        pos = Vector(-118, 240, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(300, 24, 8),
        pos = Vector(150, 240, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(236, 24, 8),
        pos = Vector(-118, -240, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(300, 24, 8),
        pos = Vector(150, -240, -135),
        ang = Angle(0, 0, 0),
    },
}

local wall = {
    translate = translate,
    mat_index = 2,
    -- LEFT
    -- a
    {
        size = Vector(256, 64, 8),
        pos = Vector(-128, 384, 0),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(256, 64, 8),
        pos = Vector(128, 384, 0),
        ang = Angle(0, 0, 85),
    },
    -- b
    {
        levels = 0,
        size = Vector(80, 96, 8),
        pos = Vector(-216, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    {
        levels = 0,
        size = Vector(160, 96, 8),
        pos = Vector(0, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    {
        levels = 0,
        size = Vector(80, 96, 8),
        pos = Vector(216, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    -- c
    {
        levels = 0,
        size = Vector(256, 32, 8),
        pos = Vector(-128, 348.364, -138.464),
        ang = Angle(0, 0, 60),
    },
    {
        levels = 0,
        size = Vector(256, 32, 8),
        pos = Vector(128, 348.364, -138.464),
        ang = Angle(0, 0, 60),
    },
    -- d
    {
        levels = 0,
        size = Vector(80, 96, 8),
        pos = Vector(-216, 316.364, -193.889),
        ang = Angle(0, 0, 60),
    },
    {
        levels = 0,
        size = Vector(160, 96, 8),
        pos = Vector(0, 316.364, -193.889),
        ang = Angle(0, 0, 60),
    },
    {
        levels = 0,
        size = Vector(80, 96, 8),
        pos = Vector(216, 316.364, -193.889),
        ang = Angle(0, 0, 60),
    },
    -- e
    {
        size = Vector(256, 160, 8),
        pos = Vector(-128, 231.081, -286.881),
        ang = Angle(0, 0, 40),
    },
    {
        size = Vector(256, 160, 8),
        pos = Vector(128, 231.081, -286.881),
        ang = Angle(0, 0, 40),
    },
    -- f
    {
        size = Vector(256, 128, 8),
        pos = Vector(-128, 137.797, -393.73),
        ang = Angle(0, 0, 60),
    },
    {
        size = Vector(256, 128, 8),
        pos = Vector(128, 137.797, -393.73),
        ang = Angle(0, 0, 60),
    },
    -- RIGHT
    -- a
    {
        size = Vector(256, 64, 8),
        pos = Vector(-128, -384, 0),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(256, 64, 8),
        pos = Vector(128, -384, 0),
        ang = Angle(0, 0, -85),
    },
    -- b
    {
        levels = 0,
        size = Vector(80, 96, 8),
        pos = Vector(-216, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    {
        levels = 0,
        size = Vector(160, 96, 8),
        pos = Vector(0, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    {
        levels = 0,
        size = Vector(80, 96, 8),
        pos = Vector(216, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    -- c
    {
        levels = 0,
        size = Vector(256, 32, 8),
        pos = Vector(-128, -348.364, -138.464),
        ang = Angle(0, 0, -60),
    },
    {
        levels = 0,
        size = Vector(256, 32, 8),
        pos = Vector(128, -348.364, -138.464),
        ang = Angle(0, 0, -60),
    },
    -- d
    {
        levels = 0,
        size = Vector(80, 96, 8),
        pos = Vector(-216, -316.364, -193.889),
        ang = Angle(0, 0, -60),
    },
    {
        levels = 0,
        size = Vector(160, 96, 8),
        pos = Vector(0, -316.364, -193.889),
        ang = Angle(0, 0, -60),
    },
    {
        levels = 0,
        size = Vector(80, 96, 8),
        pos = Vector(216, -316.364, -193.889),
        ang = Angle(0, 0, -60),
    },
    -- e
    {
        size = Vector(256, 160, 8),
        pos = Vector(-128, -231.081, -286.881),
        ang = Angle(0, 0, -40),
    },
    {
        size = Vector(256, 160, 8),
        pos = Vector(128, -231.081, -286.881),
        ang = Angle(0, 0, -40),
    },
    -- f
    {
        size = Vector(256, 128, 8),
        pos = Vector(-128, -137.797, -393.73),
        ang = Angle(0, 0, -60),
    },
    {
        size = Vector(256, 128, 8),
        pos = Vector(128, -137.797, -393.73),
        ang = Angle(0, 0, -60),
    }
}

local border = {
    translate = translate,
    levels = 0,
    mat_index = 3,
    -- LEFT
    -- a
    {
        size = Vector(177.75, 4, 8),
        pos = Vector(-216.875, 386.963, 33.8706),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(177.75, 4, 8),
        pos = Vector(-216.875, 387.661, 41.8402),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(-64, 386.963, 33.8706),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(-64, 387.661, 41.8402),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(64, 386.963, 33.8706),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(64, 387.661, 41.8402),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(192, 386.963, 33.8706),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(192, 387.661, 41.8402),
        ang = Angle(0, 0, 85),
    },
    --
    {
        size = Vector(16, 4, 5),
        pos = Vector(-256, 387.312, 37.8554),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-128, 387.312, 37.8554),
        ang = Angle(0, 0, 85),
    },
    -- rope attach
    {
        size = Vector(32, 16, 8),
        pos = Vector(0, 387.486328, 39.847790),
        ang = Angle(0, 0, 85),
    },

    {
        size = Vector(16, 4, 5),
        pos = Vector(128, 387.312, 37.8554),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(256, 387.312, 37.8554),
        ang = Angle(0, 0, 85),
    },
    -- b
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, 380.719, -31.7914),
        ang = Angle(0, 0, 80),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, 380.719, -31.7914),
        ang = Angle(0, 0, 80),
    },
    -- c
    {
        size = Vector(12, 86, 10),
        pos = Vector(176, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(80, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(-80, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(-176, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    -- d
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, 355.672, -124.32),
        ang = Angle(0, 0, 67.5),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, 355.672, -124.32),
        ang = Angle(0, 0, 67.5),
    },
    -- e
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, 340.364, -152.32),
        ang = Angle(0, 0, 60),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, 340.364, -152.32),
        ang = Angle(0, 0, 60),
    },
    -- f
    {
        size = Vector(12, 86, 10),
        pos = Vector(-176, 316.364, -193.889),
        ang = Angle(0, 0, 60),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(-80, 316.364, -193.889),
        ang = Angle(0, 0, 60),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(80, 316.364, -193.889),
        ang = Angle(0, 0, 60),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(176, 316.364, -193.889),
        ang = Angle(0, 0, 60),
    },
    -- g
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, 291.598, -234.816),
        ang = Angle(0, 0, 50),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, 291.598, -234.816),
        ang = Angle(0, 0, 50),
    },
    -- h
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, 170.563, -338.947),
        ang = Angle(0, 0, 50),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, 170.563, -338.947),
        ang = Angle(0, 0, 50),
    },
    -- RIGHT
    -- a
    {
        size = Vector(177.75, 4, 8),
        pos = Vector(-216.875, -386.963, 33.8706),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(177.75, 4, 8),
        pos = Vector(-216.875, -387.661, 41.8402),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(-64, -386.963, 33.8706),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(-64, -387.661, 41.8402),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(64, -386.963, 33.8706),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(64, -387.661, 41.8402),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(192, -386.963, 33.8706),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(192, -387.661, 41.8402),
        ang = Angle(0, 0, -85),
    },
    --
    {
        size = Vector(16, 4, 5),
        pos = Vector(-256, -387.312, 37.8554),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(-128, -387.312, 37.8554),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(32, 16, 8),
        pos = Vector(0, -387.486328, 39.847790),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(128, -387.312, 37.8554),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(16, 4, 5),
        pos = Vector(256, -387.312, 37.8554),
        ang = Angle(0, 0, -85),
    },
    -- b
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, -380.719, -31.7914),
        ang = Angle(0, 0, -80),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, -380.719, -31.7914),
        ang = Angle(0, 0, -80),
    },
    -- c
    {
        size = Vector(12, 86, 10),
        pos = Vector(176, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(80, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(-80, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(-176, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    -- d
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, -355.672, -124.32),
        ang = Angle(0, 0, -67.5),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, -355.672, -124.32),
        ang = Angle(0, 0, -67.5),
    },
    -- e
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, -340.364, -152.32),
        ang = Angle(0, 0, -60),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, -340.364, -152.32),
        ang = Angle(0, 0, -60),
    },
    -- f
    {
        size = Vector(12, 86, 10),
        pos = Vector(-176, -316.364, -193.889),
        ang = Angle(0, 0, -60),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(-80, -316.364, -193.889),
        ang = Angle(0, 0, -60),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(80, -316.364, -193.889),
        ang = Angle(0, 0, -60),
    },
    {
        size = Vector(12, 86, 10),
        pos = Vector(176, -316.364, -193.889),
        ang = Angle(0, 0, -60),
    },
    -- g
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, -291.598, -234.816),
        ang = Angle(0, 0, -50),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, -291.598, -234.816),
        ang = Angle(0, 0, -50),
    },
    -- h
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, -170.563, -338.947),
        ang = Angle(0, 0, -50),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, -170.563, -338.947),
        ang = Angle(0, 0, -50),
    },
}

local stairs = {
    translate = translate,
    levels = 0,
    mat_index = 4,
    -- TOP FRAME
    {
        levels = 1,
        mat_index = 3,
        size = Vector(128, 96, 12),
        pos = Vector(250, 48, -61),
        ang = Angle(90, 0, 0),
    },
    {
        mat_index = 3,
        size = Vector(216, 12, 6),
        pos = Vector(148, 102, 0),
    },
    {
        mat_index = 3,
        size = Vector(216, 12, 6),
        pos = Vector(148, -6, 0),
    },
    {
        mat_index = 3,
        size = Vector(12, 96, 6),
        pos = Vector(46, 48, 0),
    },
    {
        mat_index = 3,
        type = "triangle",
        levels = 1,
        size = Vector(128, 192, 6),
        pos = Vector(148, 93, -61),
        ang = Angle(90, 0, 90),
    },
    {
        mat_index = 3,
        type = "triangle",
        levels = 1,
        size = Vector(128, 192, 6),
        pos = Vector(148, 3, -61),
        ang = Angle(90, 0, 90),
    },
    -- TOP STEPS
    {
        size = Vector(20, 90, 6),
        pos = Vector(140 + 8, 48, -61),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(156.641 + 8, 48, -49.906),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(173.282 + 8, 48, -38.812),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(189.923 + 8, 48, -27.718),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(206.564 + 8, 48, -16.624),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(223.205 + 8, 48, -5.52998),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(123.359 + 8, 48, -72.094),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(106.718 + 8, 48, -83.188),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(90.077 + 8, 48, -94.282),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(73.436 + 8, 48, -105.376),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(56.795 + 8, 48, -116.47),
    },
    -- BOTTOM FRAME
    {
        mat_index = 3,
        levels = 1,
        size = Vector(128, 96, 12),
        pos = Vector(46, -48, -189),
        ang = Angle(90, 0, 0),
    },
    {
        mat_index = 3,
        size = Vector(216, 12, 6),
        pos = Vector(148, 6, -128),
    },
    {
        mat_index = 3,
        size = Vector(216, 12, 6),
        pos = Vector(148, -102, -128),
    },
    {
        mat_index = 3,
        size = Vector(12, 96, 6),
        pos = Vector(250, -48, -128),
    },
    {
        mat_index = 3,
        type = "triangle",
        levels = 1,
        size = Vector(128, 192, 6),
        pos = Vector(148, -3, -189),
        ang = Angle(90, 180, 90),
    },
    {
        mat_index = 3,
        type = "triangle",
        levels = 1,
        size = Vector(128, 192, 6),
        pos = Vector(148, -93, -189),
        ang = Angle(90, 180, 90),
    },
    -- BOTTOM STEPS
    {
        size = Vector(20, 90, 6),
        pos = Vector(140 + 8, -48, -189),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(123.359 + 8, -48, -177.906),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(106.718 + 8, -48, -166.812),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(90.077 + 8, -48, -155.718),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(73.436 + 8, -48, -144.624),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(56.795 + 8, -48, -133.53),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(156.641 + 8, -48, -200.094),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(173.282 + 8, -48, -211.188),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(189.923 + 8, -48, -222.282),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(206.564 + 8, -48, -233.376),
    },
    {
        size = Vector(20, 90, 6),
        pos = Vector(223.205 + 8, -48, -244.47),
    },
}

table.insert(ENT.model.hulls, floor)
table.insert(ENT.model.hulls, wall)
table.insert(ENT.model.hulls, border)
table.insert(ENT.model.hulls, stairs)