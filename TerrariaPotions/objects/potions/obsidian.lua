SMODS.Consumable(
    {
        key = 'obsidian',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=8, y=0},
        unlocked = true,
        discovered = true,
        cost = 7,
        pools = {
            ["TerraPotion"] = true
        },
        loc_vars = function(self, info_queue, card)
            info_queue[#info_queue+1] = G.P_CENTERS.j_mr_bones
            info_queue[#info_queue+1] = {key = 'eternal', set = 'Other'}
        end,
        can_use = function(self, card)
            if #G.jokers.cards < G.jokers.config.card_limit then
                return true
            else
                return false
            end
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                SMODS.add_card({set= "Joker", key= 'j_mr_bones', stickers={"eternal"}})
            return true
            end }))
        end
    }
)