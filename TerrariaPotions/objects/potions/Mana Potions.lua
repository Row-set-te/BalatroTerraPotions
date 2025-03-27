---- lesser Mana potion
SMODS.Consumable(
    {
        key = 'lesserMana',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=15, y=2},
        unlocked = true,
        discovered = true,
        cost = 3,
        pools = {
            ['TerraPotion'] = true,
            ['ManaPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_lesserChip', set = 'Tag', specific_vars = {100}}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_lesserChip'))
            return true
            end }))
        end
    }
)

---- Mana potion
SMODS.Consumable(
    {
        key = 'defaultMana',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=10, y=2},
        unlocked = true,
        discovered = true,
        cost = 4,
        pools = {
            ['TerraPotion'] = true,
            ['ManaPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_defaultChip', set = 'Tag', specific_vars = {200}}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_defaultChip'))
            return true
            end }))
        end
    }
)

---- geater Mana potion
SMODS.Consumable(
    {
        key = 'greaterMana',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=13, y=1},
        unlocked = true,
        discovered = true,
        cost = 5,
        pools = {
            ['TerraPotion'] = true,
            ['ManaPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_greaterChip', set = 'Tag', specific_vars = {1.2}}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_greaterChip'))
            return true
            end }))
        end
    }
)

---- super Mana potion
SMODS.Consumable(
    {
        key = 'superMana',
        set = 'TerraPotion',
        atlas = 'potions_atlas',
        pos = {x=17, y=1},
        unlocked = true,
        discovered = true,
        cost = 6,
        pools = {
            ['TerraPotion'] = true,
            ['ManaPotion'] = true
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = {key = 'tag_terrapot_superChip', set = 'Tag', specific_vars = {1.5}}
        end,
        can_use = function(self, card)
            return true
        end,
        use = function(self, card, area, copier)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                add_tag(Tag('tag_terrapot_superChip'))
            return true
            end }))
        end
    }
)