SMODS.Consumable(
    {
        key = 'rage',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=9, y=0},
        unlocked = true,
        discovered = true,
        cost = 7,
        pools = {
            ['TerraPotion'] = true
        },
        loc_vars = function(self, info_queue, card)
            info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
            return {}
        end,
        can_use = function(self, card)
            if #G.hand ~= nil then
                if #G.hand.cards ~= 0 then
                    return true
                end
            end
            return false
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                for i=1, #G.hand.cards do
                    G.hand.cards[i]:flip()
                    G.hand.cards[i]:set_ability(G.P_CENTERS.m_lucky, nil, true)
                    G.hand.cards[i]:juice_up(0.3, 0.3)
                    G.hand.cards[i]:flip()
                end
                return true
            end }))
            return true
        end
    }
)