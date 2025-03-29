SMODS.Consumable(
    {
        key = 'mining',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=6, y=0},
        config = {
            extra = {
                num_reroll = 2
            }
        },
        unlocked = true,
        discovered = true,
        cost = 7,
        pools = {
            ["TerraPotion"] = true
        },
        loc_vars = function(self, info_queue, card)
            info_queue[#info_queue+1] = {key = 'tag_d_six', set = 'Tag'}
            return {
                vars = {
                    self.config.extra.num_reroll
                }
            }
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_d_six'))
                add_tag(Tag('tag_d_six'))
            return true
            end }))
        end
    }
)