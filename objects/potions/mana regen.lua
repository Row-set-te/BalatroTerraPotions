SMODS.Consumable(
    {
        key = 'manaRegen',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=5, y=0},
        config = {
            extra = {
                max_highlighted = 1
            }
        },
        unlocked = true,
        discovered = true,
        cost = 4,
        pools = {
            ["TerraPotion"] = true
        },
        loc_vars = function(self, info_queue, card)
            info_queue[#info_queue+1] = G.P_CENTERS.e_foil
            return {
                vars = {
                    card.ability.extra.max_highlighted
                }
            }
        end,
        can_use = function(self, card)
            if #G.jokers.highlighted + #G.hand.highlighted == card.ability.extra.max_highlighted then
                if #G.hand.highlighted ~= 0 then
                    for i=1, #G.hand.highlighted do
                        if G.hand.highlighted[i].edition ~= nil then
                            return false
                        end
                    end
                elseif #G.jokers.highlighted ~= 0 then
                    for i=1, #G.jokers.highlighted do
                        if G.jokers.highlighted[i].edition ~= nil then
                            return false
                        end
                    end
                end
                return true
            end
            return false
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                if #G.hand.highlighted ~= 0 then
                    G.hand.highlighted[1]:set_edition('e_foil', true)
                else
                    G.jokers.highlighted[1]:set_edition('e_foil', true)
                end
                return true
            end }))
            return true
        end
    }
)