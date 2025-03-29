-- mod Icon
SMODS.Atlas {
    key = 'modicon',
    path = "icon.png",
    px = 34,
    py = 34
}

G.TerraPotion = {}
G.C.TerraPotion_1 = HEX('22ba45')
G.C.TerraPotion_2 = HEX('29a345')

G.P_CENTER_POOLS['HealingPotion'] = {}
G.P_CENTER_POOLS['ManaPotion'] = {}
G.P_CENTER_POOLS['TerraPotion'] = {}
assert(SMODS.load_file('./objects/potions/potion.lua'))()
assert(SMODS.load_file('./objects/tags/tag.lua'))()
assert(SMODS.load_file('./objects/boosters/booster.lua'))()
assert(SMODS.load_file('./objects/jokers/jokers.lua'))()