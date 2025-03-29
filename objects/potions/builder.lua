SMODS.Consumable(
    {
        key = 'builder',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=5, y=2},
        config = {
            extra = {
                num_coupons = 2
            }
        },
        unlocked = true,
        discovered = true,
        cost = 7,
        pools = {
            ["TerraPotion"] = true
        },
        loc_vars = function(self, info_queue, card)
            info_queue[#info_queue+1] = {key = 'tag_coupon', set = 'Tag'}
            return {
                vars = {
                    self.config.extra.num_coupons
                }
            }
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_coupon'))
                add_tag(Tag('tag_coupon'))
            return true
            end }))
        end
    }
)