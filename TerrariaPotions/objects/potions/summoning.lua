SMODS.Consumable(
    {
        key = 'summoning',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=15, y=0},
        config = {
            extra = {
                num_potions = 2
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
                    self.config.extra.num_potions
                }
            }
        end,
        can_use = function(self, card)
            local cardInArea = nil
            for _,v in ipairs(G.consumeables.cards) do
                if v == card then cardInArea = true break end
            end
            if cardInArea then
                if #G.consumeables.cards + G.GAME.consumeable_buffer + self.config.extra.num_potions - 1 <= G.consumeables.config.card_limit then
                    return true
                end
            else
                if #G.consumeables.cards + G.GAME.consumeable_buffer + self.config.extra.num_potions <= G.consumeables.config.card_limit then
                    return true
                end
            end
            return false
        end,
        use = function(self, card, area, copier)
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 2
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer +  self.config.extra.num_potions
                local cards = get_potion_booster_cards(self.config.extra.num_potions + 1, 1)
                for i=1, self.config.extra.num_potions + 1 do
                    if cards[i].config.center.key == 'c_terrapot_summoning' and i ~= 3 and has_showman() ~= true then
                        cards[i] = cards[3]
                    end
                end
                cards[3]:remove()
                cards[3] = nil
                for i=1, #cards do
                    G.consumeables:emplace(cards[i])
                end
                G.GAME.consumeable_buffer = 0
            return true
            end }))
        end
    }
)
    