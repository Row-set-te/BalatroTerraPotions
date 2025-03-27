SMODS.Consumable(
    {
        key = 'recall',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=8, y=3},
        unlocked = true,
        discovered = true,
        cost = 6,
        pools = {
            ['TerraPotion'] = true
        },
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                if G.GAME.dollars ~= 0 then
                    ease_dollars(-G.GAME.dollars, true)
                end
                ease_ante(-1)
            return true
            end }))
        end
    }
)