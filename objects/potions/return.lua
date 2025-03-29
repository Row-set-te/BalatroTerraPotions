SMODS.Consumable(
    {
        key = 'return',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=3, y=3},
        unlocked = true,
        discovered = true,
        cost = 6,
        pools = {
            ['TerraPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_returnTag', set = 'Tag'}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_returnTag'))
            return true
            end }))
        end
    }
)