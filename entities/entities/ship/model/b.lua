local translate = Vector(512, 0, 0)
local floor = {
    translate = translate,
    levels = 2,
    -- TOP
    {
        size = Vector(256, 384, 6),
        pos = Vector(-128, 192, 0),
    },
    {
        size = Vector(256, 384, 6),
        pos = Vector(-128, -192, 0),
    },
    {
        size = Vector(256, 384, 6),
        pos = Vector(128, 192, 0),
    },
    {
        size = Vector(256, 384, 6),
        pos = Vector(128, -192, 0),
    },
    -- MIDDLE
    {
        size = Vector(256, 356, 6),
        pos = Vector(-128, 178, -128),
    },
    {
        size = Vector(256, 356, 6),
        pos = Vector(-128, -178, -128),
    },
    {
        size = Vector(256, 356, 6),
        pos = Vector(128, 178, -128),
    },
    {
        size = Vector(256, 356, 6),
        pos = Vector(128, -178, -128),
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
        size = Vector(300, 24, 8),
        pos = Vector(-150, 240, -135),
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
        size = Vector(300, 24, 8),
        pos = Vector(-150, -240, -135),
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
        size = Vector(128, 4, 8),
        pos = Vector(-192, 386.963, 33.8706),
        ang = Angle(0, 0, 85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(-192, 387.661, 41.8402),
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
        pos = Vector(-128, 387.312, 37.8554),
        ang = Angle(0, 0, 85),
    },
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
        size = Vector(128, 4, 8),
        pos = Vector(-192, -386.963, 33.8706),
        ang = Angle(0, 0, -85),
    },
    {
        size = Vector(128, 4, 8),
        pos = Vector(-192, -387.661, 41.8402),
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