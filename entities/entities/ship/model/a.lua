local floor = {
    -- TOP
    -- floor
    {
        levels = 2,
        size = Vector(256, 244, 6),
        pos = Vector(-128, 262, 0),
    },
    {
        levels = 2,
        size = Vector(256, 244, 6),
        pos = Vector(-128, -262, 0),
    },
    {
        levels = 2,
        size = Vector(256, 244, 6),
        pos = Vector(128, 262, 0),
    },
    {
        levels = 2,
        size = Vector(256, 244, 6),
        pos = Vector(128, -262, 0),
    },
    {
        size = Vector(94, 140, 6),
        pos = Vector(209, 70, 0),
    },
    {
        size = Vector(94, 140, 6),
        pos = Vector(209, -70, 0),
    },
    {
        size = Vector(94, 140, 6),
        pos = Vector(-209, 70, 0),
    },
    {
        size = Vector(94, 140, 6),
        pos = Vector(-209, -70, 0),
    },
    -- border
    {
        levels = 0,
        mat_index = 3,
        size = Vector(162, 12, 6),
        pos = Vector(-81, 134, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(162, 12, 6),
        pos = Vector(81, 134, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(162, 12, 6),
        pos = Vector(-81, -134, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(162, 12, 6),
        pos = Vector(81, -134, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(156, 64, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(156, -64, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(-156, 64, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(-156, -64, 0),
    },
    -- MIDDLE
    -- floor
    {
        levels = 2,
        size = Vector(256, 214, 6),
        pos = Vector(-128, 247, -128),
    },
    {
        levels = 2,
        size = Vector(256, 214, 6),
        pos = Vector(-128, -247, -128),
    },
    {
        levels = 2,
        size = Vector(256, 214, 6),
        pos = Vector(128, 247, -128),
    },
    {
        levels = 2,
        size = Vector(256, 214, 6),
        pos = Vector(128, -247, -128),
    },
    {
        size = Vector(94, 140, 6),
        pos = Vector(209, 70, -128),
    },
    {
        size = Vector(94, 140, 6),
        pos = Vector(209, -70, -128),
    },
    {
        size = Vector(94, 140, 6),
        pos = Vector(-209, 70, -128),
    },
    {
        size = Vector(94, 140, 6),
        pos = Vector(-209, -70, -128),
    },
    -- border
    {
        levels = 0,
        mat_index = 3,
        size = Vector(162, 12, 6),
        pos = Vector(-81, 134, -128),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(162, 12, 6),
        pos = Vector(81, 134, -128),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(162, 12, 6),
        pos = Vector(-81, -134, -128),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(162, 12, 6),
        pos = Vector(81, -134, -128),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(156, 64, -128),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(156, -64, -128),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(-156, 64, -128),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(12, 128, 6),
        pos = Vector(-156, -64, -128),
    },
    -- BOTTOM
    {
        levels = 2,
        size = Vector(256, 268, 6),
        pos = Vector(-128, 134, -256),
    },
    {
        levels = 2,
        size = Vector(256, 268, 6),
        pos = Vector(-128, -134, -256),
    },
    {
        levels = 2,
        size = Vector(256, 268, 6),
        pos = Vector(128, 134, -256),
    },
    {
        levels = 2,
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
        size = Vector(24, 380, 8),
        pos = Vector(224, 190, -7),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 380, 8),
        pos = Vector(224, -190, -7),
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
        size = Vector(236, 24, 8),
        pos = Vector(-118, 240, -7),
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
        size = Vector(236, 24, 8),
        pos = Vector(-118, -240, -7),
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
        mat_index = 3,
        size = Vector(24, 350, 8),
        pos = Vector(224, 175, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(24, 350, 8),
        pos = Vector(224, -175, -135),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, 240, -196),
        ang = Angle(0, 0, 0),
    },
    {
        levels = 0,
        mat_index = 3,
        size = Vector(16, 16, 129),
        pos = Vector(224, -240, -196),
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
        size = Vector(236, 24, 8),
        pos = Vector(118, 240, -135),
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
        size = Vector(236, 24, 8),
        pos = Vector(118, -240, -135),
        ang = Angle(0, 0, 0),
    },
}

local wall = {
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
        size = Vector(256, 96, 8),
        pos = Vector(-128, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    {
        levels = 0,
        size = Vector(256, 96, 8),
        pos = Vector(128, 368.788, -78.2427),
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
        size = Vector(256, 96, 8),
        pos = Vector(-128, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    {
        levels = 0,
        size = Vector(256, 96, 8),
        pos = Vector(128, -368.788, -78.2427),
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
    },
}

local border = {
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
        pos = Vector(192, 386.963, 33.8706),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(192, 387.661, 41.8402),
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
    {
        size = Vector(16, 4, 5),
        pos = Vector(0, 387.312, 37.8554),
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
        pos = Vector(192, -386.963, 33.8706),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(192, -387.661, 41.8402),
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
        size = Vector(16, 4, 5),
        pos = Vector(0, -387.312, 37.8554),
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

table.insert(ENT.model.hulls, floor)
table.insert(ENT.model.hulls, wall)
table.insert(ENT.model.hulls, border)