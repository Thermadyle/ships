local border = {
    translate = Vector(1536, 0, 0),
    levels = 0,
    mat_index = 3,
    --
    {
        type = "triangle",
        size = Vector(208 + 16, 512, 20),
        pos = Vector(640, 0, -130 - 8),
        ang = Angle(270, 90, 0),
    },
    {
        size = Vector(12, 52, 12),
        pos = Vector(564, 0, -31.75),
        ang = Angle(8, 0, 0),
    },
    {
        size = Vector(512, 24, 48),
        pos = Vector(812, 0, -32),
        ang = Angle(354, 0, 0),
    },
    {
        size = Vector(384, 16, 32),
        pos = Vector(1257.545776, 0, 14.828835),
        ang = Angle(354, 0, 0),
    },
    --{
    --    size = Vector(256, 8, 24),
    --    pos = Vector(1575.792725, 0, 48.278004),
    --    ang = Angle(354, 0, 0),
    --},
}

table.insert(ENT.model.hulls, border)