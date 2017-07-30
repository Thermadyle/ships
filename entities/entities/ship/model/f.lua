local translate = Vector(-1024, 0, 0)
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
        size = Vector(256, 354, 6),
        pos = Vector(-128, 177, -128),
    },
    {
        size = Vector(256, 354, 6),
        pos = Vector(-128, -177, -128),
    },
    {
        size = Vector(256, 354, 6),
        pos = Vector(128, 177, -128),
    },
    {
        size = Vector(256, 354, 6),
        pos = Vector(128, -177, -128),
    },
    -- BOTTOM
    {
        size = Vector(256, 268, 6),
        pos = Vector(-128, 134, -256),
    },
    {
        size = Vector(256, 268, 6),
        pos = Vector(-128, -134, -256),
    },
    {
        size = Vector(256, 268, 6),
        pos = Vector(128, 134, -256),
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
        size = Vector(256, 96, 8),
        pos = Vector(-128, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    {
        size = Vector(256, 96, 8),
        pos = Vector(128, 368.788, -78.2427),
        ang = Angle(0, 0, 75),
    },
    -- c
    {
        size = Vector(256, 128, 8),
        pos = Vector(-128, 324.364, -180.033),
        ang = Angle(0, 0, 60),
    },
    {
        size = Vector(256, 128, 8),
        pos = Vector(128, 324.364, -180.033),
        ang = Angle(0, 0, 60),
    },
    -- d
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
    -- e
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
        size = Vector(256, 96, 8),
        pos = Vector(-128, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    {
        size = Vector(256, 96, 8),
        pos = Vector(128, -368.788, -78.2427),
        ang = Angle(0, 0, -75),
    },
    -- c
    {
        size = Vector(256, 128, 8),
        pos = Vector(-128, -324.364, -180.033),
        ang = Angle(0, 0, -60),
    },
    {
        size = Vector(256, 128, 8),
        pos = Vector(128, -324.364, -180.033),
        ang = Angle(0, 0, -60),
    },
    -- d
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
    -- e
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
    translate = translate,
    levels = 0,
    mat_index = 3,
    -- LEFT
    -- a
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
    -- b
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
    -- c
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
    -- d
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
        size = Vector(256.5, 12, 10),
        pos = Vector(-128, -380.719, -31.7914),
        ang = Angle(0, 0, -80),
    },
    {
        size = Vector(256.5, 12, 10),
        pos = Vector(128, -380.719, -31.7914),
        ang = Angle(0, 0, -80),
    },
    -- b
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
    -- c
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
    -- d
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