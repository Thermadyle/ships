local mast = {
    translate = Vector(384, 0, 0),
    levels = 0,
    mat_index = 3,
    {
        size = Vector(64, 64, 136),
        pos = Vector(0, 0, -192),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(64, 64, 136),
        pos = Vector(0, 0, -64),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(64, 64, 384),
        pos = Vector(0, 0,  188),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(60, 60, 384),
        pos = Vector(0, 0,  572),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(56, 56, 384),
        pos = Vector(0, 0,  956),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(52, 52, 384),
        pos = Vector(0, 0,  1340),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(48, 48, 384),
        pos = Vector(0, 0,  1660),
        ang = Angle(0, 0, 0),
    },
    --
    {
        size = Vector(16, 510, 20),
        pos = Vector(38, 255, 256),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 510, 20),
        pos = Vector(38, -255, 256),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 383, 20),
        pos = Vector(34, 191.5, 1158),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 383, 20),
        pos = Vector(34, -191.5, 1158),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 318, 20),
        pos = Vector(58, 159, 1110),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 318, 20),
        pos = Vector(58, -159, 1110),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 190, 20),
        pos = Vector(32, 95, 1766),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 190, 20),
        pos = Vector(32, -95, 1766),
        ang = Angle(0, 0, 0),
    },
    -- sail
    {
        type = "triangle",
        mat_index = 5,
        size = Vector(908, 128, 8),
        pos = Vector(36, -448, 707),
        ang = Angle(89.75, 0, 0),
    },
    {
        mat_index = 5,
        levels = 2,
        size = Vector(908, 768, 8),
        pos = Vector(36, 0, 707),
        ang = Angle(270.254, 180, 0),
    },
    {
        type = "triangle",
        mat_index = 5,
        size = Vector(908, 128, 8),
        pos = Vector(36, 448, 707),
        ang = Angle(90.25, 180, 0),
    },

    {
        type = "triangle",
        mat_index = 5,
        size = Vector(656, 128, 8),
        pos = Vector(45, 256, 1438),
        ang = Angle(92.27, 180, 0),
    },
    {
        mat_index = 5,
        levels = 2,
        size = Vector(656, 384, 8),
        pos = Vector(45, 0, 1438),
        ang = Angle(272.270, 180, 0),
    },
    {
        type = "triangle",
        mat_index = 5,
        size = Vector(656, 128, 8),
        pos = Vector(45, -256, 1438),
        ang = Angle(87.73, 0, 0),
    },
}

table.insert(ENT.model.hulls, mast)