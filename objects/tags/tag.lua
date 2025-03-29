SMODS.Atlas(
    {
        key = 'tags_atlas',
        px = 34,
        py = 34,
        path = 'tags.png'
    }
)
G.TerraPotion.ReturnTagTrigger = false

-- Lesser Mult Tag
assert(SMODS.load_file('./objects/tags/Mult tags.lua'))()
assert(SMODS.load_file('./objects/tags/Chip tags.lua'))()
assert(SMODS.load_file('./objects/tags/Return Tag.lua'))()