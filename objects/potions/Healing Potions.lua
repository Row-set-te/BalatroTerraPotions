---- lesser healing potion
SMODS.Consumable(
    {
        key = 'lesserHeal',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=16, y=2},
        unlocked = true,
        discovered = true,
        cost = 3,
        pools = {
            ['TerraPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_lesserMult', set = 'Tag', specific_vars = {15}}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_lesserMult'))
            return true
            end }))
        end
    }
)

---- healing potion
SMODS.Consumable(
    {
        key = 'defaultHeal',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=12, y=2},
        unlocked = true,
        discovered = true,
        cost = 4,
        pools = {
            ['TerraPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_defaultMult', set = 'Tag', specific_vars = {45}}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_defaultMult'))
            return true
            end }))
        end
    }
)

---- geater healing potion
SMODS.Consumable(
    {
        key = 'greaterHeal',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=13, y=2},
        unlocked = true,
        discovered = true,
        cost = 5,
        pools = {
            ['TerraPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_greaterMult', set = 'Tag', specific_vars = {1.5}}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_greaterMult'))
            return true
            end }))
        end
    }
)

---- super healing potion
SMODS.Consumable(
    {
        key = 'superHeal',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=9, y=2},
        unlocked = true,
        discovered = true,
        cost = 6,
        pools = {
            ['TerraPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_superMult', set = 'Tag', specific_vars = {2}}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_superMult'))
            return true
            end }))
        end
    }
)