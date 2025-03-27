SMODS.Atlas(
    {
        key = 'potions_atlas',
        px = 54,
        py = 79,
        path = 'potions.png'
    }
)

G.TerraPotion.Temp_booster_increase = 0
G.TerraPotion.Temp_luck_increase = 0

SMODS.ConsumableType(
    {
        key = 'TerraPotion',
        default = 'c_terrapot_lesserHealing',
        primary_colour = G.C.TerraPotion_1,
        secondary_colour = G.C.TerraPotion_2,
        loc_txt = {
            name = 'Potion',
            collection = 'Potions',
            undiscovered = {
                name = 'Unknown Potion',
                text = {}
            }
        },
        collection_rows = { 4, 4, 4}
    }
)

assert(SMODS.load_file('./objects/potions/Healing Potions.lua'))()
assert(SMODS.load_file('./objects/potions/Mana Potions.lua'))()
assert(SMODS.load_file('./objects/potions/Luck Potions.lua'))()
assert(SMODS.load_file('./objects/potions/gravitation.lua'))()
assert(SMODS.load_file('./objects/potions/builder.lua'))()
assert(SMODS.load_file('./objects/potions/recall.lua'))()
assert(SMODS.load_file('./objects/potions/return.lua'))()
assert(SMODS.load_file('./objects/potions/crate.lua'))()
assert(SMODS.load_file('./objects/potions/mining.lua'))()
assert(SMODS.load_file('./objects/potions/obsidian.lua'))()
assert(SMODS.load_file('./objects/potions/spelunker.lua'))()
assert(SMODS.load_file('./objects/potions/regeneration.lua'))()
assert(SMODS.load_file('./objects/potions/wrath.lua'))()
assert(SMODS.load_file('./objects/potions/mana regen.lua'))()
assert(SMODS.load_file('./objects/potions/rage.lua'))()
assert(SMODS.load_file('./objects/potions/shine.lua'))()