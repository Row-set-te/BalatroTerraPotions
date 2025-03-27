---- lesser chip tag
SMODS.Tag(
    {
        name = 'Lesser Chip Tag',
        key = 'lesserChip',
        atlas = 'tags_atlas',
        pos = {x=0, y=1},
        config = {
            type = 'before',
            extra = {
                chip = 100
            }
        },
        discovered = true,
        min_ante = 999,
        loc_vars = function(self, info_queue, card)
            if card.ability.extra ~= nil then
                return {
                    vars = {
                        card.ability.extra.chip
                    }
                }
            else
                return {
                    vars = {
                        self.config.extra.chip
                    }
                }
            end
        end,
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('+', G.C.Chip, function()
                    return true
                end)
                self.triggered = true
                SMODS.calculate_effect({chips = self.config.extra.chip, remove_default_message = true}, self)
                return true
            end
        end
    }
)

---- Chip tag
SMODS.Tag(
    {
        name = 'Chip Tag',
        key = 'defaultChip',
        atlas = 'tags_atlas',
        pos = {x=1, y=1},
        config = {
            type = 'before',
            extra = {
                chip = 200
            }
        },
        discovered = true,
        min_ante = 999,
        loc_vars = function(self, info_queue, card)
            if card.ability.extra ~= nil then
                return {
                    vars = {
                        card.ability.extra.chip
                    }
                }
            else
                return {
                    vars = {
                        self.config.extra.chip
                    }
                }
            end
        end,
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('+', G.C.Chip, function()
                    return true
                end)
                self.triggered = true
                SMODS.calculate_effect({chips = self.config.extra.chip, remove_default_message = true}, self)
                return true
            end
        end
    }
)

---- greater chip tag
SMODS.Tag(
    {
        name = 'Greater Chip Tag',
        key = 'greaterChip',
        atlas = 'tags_atlas',
        pos = {x=2, y=1},
        config = {
            type = 'after',
            extra = {
                xchip = 1.2
            }
        },
        discovered = true,
        min_ante = 999,
        loc_vars = function(self, info_queue, card)
            if card.ability.extra ~= nil then
                return {
                    vars = {
                        card.ability.extra.xchip
                    }
                }
            else
                return {
                    vars = {
                        self.config.extra.xchip
                    }
                }
            end
        end,
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('x', G.C.Chip, function()
                    return true
                end)
                self.triggered = true
                SMODS.calculate_effect({xchips = self.config.extra.xchip, remove_default_message = true}, self)
                return true
            end
        end
    }
)

---- super chip tag
SMODS.Tag(
    {
        name = 'Super Chip Tag',
        key = 'superChip',
        atlas = 'tags_atlas',
        pos = {x=3, y=1},
        config = {
            type = 'after',
            extra = {
                xchip = 1.5
            }
        },
        discovered = true,
        min_ante = 999,
        loc_vars = function(self, info_queue, card)
            if card.ability.extra ~= nil then
                return {
                    vars = {
                        card.ability.extra.xchip
                    }
                }
            else
                return {
                    vars = {
                        self.config.extra.xchip
                    }
                }
            end
        end,
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('x', G.C.Chip, function()
                    return true
                end)
                self.triggered = true
                SMODS.calculate_effect({xchips = self.config.extra.xchip, remove_default_message = true}, self)
                return true
            end
        end
    }
)