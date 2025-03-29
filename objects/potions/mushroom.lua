SMODS.Consumable(
    {
        key = 'mushroom',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=17, y=2},
        unlocked = true,
        discovered = true,
        cost = 5,
        pools = {
            ["TerraPotion"] = true
        },
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                G.TerraPotion.Temp_booster_increase = G.TerraPotion.Temp_booster_increase + 1
                SMODS.change_booster_limit(1)
            return true
            end }))
        end
    }
)