SMODS.Consumable(
    {
        key = 'endurance',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=7, y=1},
        config = {
            extra = {
                num_slots = 2
            }
        },
        unlocked = true,
        discovered = true,
        cost = 8,
        pools = {
            ["TerraPotion"] = true
        },
        loc_vars = function(self, info_queue, card)
            return {
                vars = {
                    self.config.extra.num_slots
                }
            }
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                G.consumeables.config.card_limit = G.consumeables.config.card_limit + self.config.extra.num_slots
            return true
            end }))
        end
    }
)
