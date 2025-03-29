SMODS.Consumable(
    {
        key = 'spelunker',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=13, y=0},
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
                if G.GAME.dollars <= 10 and G.GAME.dollars >= 0 then
                    ease_dollars(math.abs(G.GAME.dollars) * 3, true)
                else
                    ease_dollars(30, true)
                end
                return true
            end }))
        end
    }
)