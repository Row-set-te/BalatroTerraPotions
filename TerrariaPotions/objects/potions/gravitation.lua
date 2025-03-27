SMODS.Consumable(
    {
        key = 'grav',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=0, y=0},
        config = {
            extra = {
                odds = 8,
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
                    G.GAME.probabilities.normal or 1,
                    card.ability.extra.odds,
                    card.ability.extra.max_highlighted
                }
            }
        end,
        can_use = function(self, card)
            if #G.hand.highlighted == card.ability.extra.max_highlighted and G.hand.highlighted[1].edition == nil then
                return true
            else
                return false
            end
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                if pseudorandom('GRAVITY POTION'..G.SEED) < (G.GAME.probabilities.normal / card.ability.extra.odds) then
                    G.hand.highlighted[1]:set_edition('e_negative', true, false)
        
                    return true
                else
                    --[[    add "Nope!" text later
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                        attention_text({
                            text = localize('k_nope_ex'),
                            scale = 1.3, 
                            hold = 1.4,
                            major = used_tarot,
                            backdrop_colour = G.C.DARK_EDITION,
                            silent = true
                            })
                            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                                play_sound('tarot2', 0.76, 0.4);return true end}))
                            play_sound('tarot2', 1, 0.4)
                    return true end })) ]]
                    return {message = 'Nope!', colour = G.C.DARK_EDITION} --doesnt work
                end
                end
            }))
            return {message = "Nope!", colour = G.C.DARK_EDITION}
        end
    }
)