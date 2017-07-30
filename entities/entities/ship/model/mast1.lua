local mast = {
    translate = Vector(1248, 0, 0),
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
        size = Vector(64, 64, 320),
        pos = Vector(0, 0,  156),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(60, 60, 320),
        pos = Vector(0, 0,  476),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(56, 56, 320),
        pos = Vector(0, 0,  796),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(52, 52, 320),
        pos = Vector(0, 0,  1116),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(48, 48, 320),
        pos = Vector(0, 0,  1436),
        ang = Angle(0, 0, 0),
    },
    --
    {
        size = Vector(16, 510, 20),
        pos = Vector(38, 255, 326),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 510, 20),
        pos = Vector(38, -255, 326),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 382, 20),
        pos = Vector(34, 191, 966),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 382, 20),
        pos = Vector(34, -191, 966),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 317, 20),
        pos = Vector(58, 158.5, 912),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 317, 20),
        pos = Vector(58, -158.5, 912),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 190, 20),
        pos = Vector(32, 95, 1510),
        ang = Angle(0, 0, 0),
    },
    {
        size = Vector(16, 190, 20),
        pos = Vector(32, -95, 1510),
        ang = Angle(0, 0, 0),
    },
    -- sail
    {
        type = "triangle",
        mat_index = 5,
        size = Vector(640, 128, 8),
        pos = Vector(36, 448, 646),
        ang = Angle(90.36, 180, 0),
    },
    {
        mat_index = 5,
        levels = 2,
        size = Vector(640, 768, 8),
        pos = Vector(36, 0, 646),
        ang = Angle(90.36, 180, 0),
    },
    {
        type = "triangle",
        mat_index = 5,
        size = Vector(640, 128, 8),
        pos = Vector(36, -448, 646),
        ang = Angle(89.64, 0, 0),
    },
    {
        type = "triangle",
        mat_index = 5,
        size = Vector(598, 128, 8),
        pos = Vector(45, 256, 1211),
        ang = Angle(92.49, 180, 0),
    },
    {
        mat_index = 5,
        levels = 2,
        size = Vector(598, 384, 8),
        pos = Vector(45, 0, 1211),
        ang = Angle(92.49, 180, 0),
    },
    {
        type = "triangle",
        mat_index = 5,
        size = Vector(598, 128, 8),
        pos = Vector(45, -256, 1211),
        ang = Angle(87.510, 0, 0),
    },
}

table.insert(ENT.model.hulls, mast)