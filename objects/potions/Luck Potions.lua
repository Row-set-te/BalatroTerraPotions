--lesser luck potion
SMODS.Consumable(
    {
        key = 'lesserLuck',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=6, y=1},
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
                for k, v in pairs(G.GAME.probabilities) do 
                    G.GAME.probabilities[k] = v*2
                end
                G.TerraPotion.Temp_luck_increase = G.TerraPotion.Temp_luck_increase + 1
                ease_dollars(-G.GAME.dollars, true)
            return true
            end }))
        end
    }
)

--luck potion
SMODS.Consumable(
    {
        key = 'defaultLuck',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=2, y=0},
        unlocked = true,
        discovered = true,
        cost = 7,
        pools = {
            ['TerraPotion'] = true
        },
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                for k, v in pairs(G.GAME.probabilities) do 
                    G.GAME.probabilities[k] = v*2
                end
                G.TerraPotion.Temp_luck_increase = G.TerraPotion.Temp_luck_increase + 1
                if G.GAME.dollars - 20 <= 0 then
                    ease_dollars(-G.GAME.dollars, true)
                else
                    ease_dollars(-20, true)
                end
            return true
            end }))
        end
    }
)

--Greater Luck potion
SMODS.Consumable(
    {
        key = 'greaterLuck',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=12, y=1},
        unlocked = true,
        discovered = true,
        cost = 8,
        pools = {
            ['TerraPotion'] = true
        },
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                for k, v in pairs(G.GAME.probabilities) do 
                    G.GAME.probabilities[k] = v*2
                end
                G.TerraPotion.Temp_luck_increase = G.TerraPotion.Temp_luck_increase + 1
                if G.GAME.dollars - 10 <= 0 then
                    ease_dollars(-G.GAME.dollars, true)
                else
                    ease_dollars(-10, true)
                end
            return true
            end }))
        end
    }
)