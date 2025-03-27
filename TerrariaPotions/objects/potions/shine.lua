SMODS.Consumable(
    {
        key = 'shine',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=11, y=0},
        config = {
            extra = {
                max_highlighted = 1
            }
        },
        unlocked = true,
        discovered = true,
        cost = 5,
        pools = {
            ["TerraPotion"] = true
        },
        loc_vars = function(self, info_queue, card)
            info_queue[#info_queue+1] = G.P_CENTERS.e_negative
            return {
                vars = {
                    card.ability.extra.max_highlighted
                }
            }
        end,
        can_use = function(self, card)
            if #G.jokers.highlighted == card.ability.extra.max_highlighted then
                if #G.jokers.cards < G.jokers.config.card_limit then
                    if G.jokers.highlighted[1].edition ~= nil then
                        if G.jokers.highlighted[1].edition.negative == true then
                            return true
                        end
                    end
                end
            end
            return false
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                local Joker = G.jokers.highlighted[1]
                Joker:set_edition('e_base', true)
                local copy = copy_card(Joker, nil, nil, nil, Joker.edition and Joker.edition.negative)
                copy:add_to_deck()
                G.jokers:emplace(copy) 
                return true
            end }))
            return true
        end
    }
)