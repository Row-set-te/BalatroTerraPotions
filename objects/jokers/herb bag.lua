SMODS.Joker{
    key = 'herbBag',
    rarity = 1,
    cost = 6,
    blueprint_compat = false,
    eternal_compat = false,
    unlock_card = true,
    discovered = true,
    atlas = 'Jokers',
    pos = { x = 0, y = 0},

    calculate = function(self, card, context)
        if context.selling_self then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card({set = 'TerraPotion', area = G.Consumable})
                    return true
                end
            }))
        end
    end
}

