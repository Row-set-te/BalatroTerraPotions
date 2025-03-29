---- lesser mult tag
SMODS.Tag(
    {
        name = 'Lesser Mult Tag',
        key = 'lesserMult',
        atlas = 'tags_atlas',
        pos = {x=0, y=0},
        config = {
            type = 'before',
            extra = {
                mult = 15
            }
        },
        discovered = true,
        min_ante = 999,
        loc_vars = function(self, info_queue, card)
            if card.ability.extra ~= nil then
                return {
                    vars = {
                        card.ability.extra.mult
                    }
                }
            else
                return {
                    vars = {
                        self.config.extra.mult
                    }
                }
            end
        end,
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('+', G.C.Mult, function()
                    return true
                end)
                self.triggered = true
                SMODS.calculate_effect({mult = self.config.extra.mult, remove_default_message = true}, self)
                return true
            end
        end
    }
)

---- mult tag
SMODS.Tag(
    {
        name = 'Mult Tag',
        key = 'defaultMult',
        atlas = 'tags_atlas',
        pos = {x=1, y=0},
        config = {
            type = 'before',
            extra = {
                mult = 45
            }
        },
        discovered = true,
        min_ante = 999,
        loc_vars = function(self, info_queue, card)
            if card.ability.extra ~= nil then
                return {
                    vars = {
                        card.ability.extra.mult
                    }
                }
            else
                return {
                    vars = {
                        self.config.extra.mult
                    }
                }
            end
        end,
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('+', G.C.Mult, function()
                    return true
                end)
                self.triggered = true
                SMODS.calculate_effect({mult = self.config.extra.mult, remove_default_message = true}, self)
                return true
            end
        end
    }
)

---- greater mult tag
SMODS.Tag(
    {
        name = 'Greater Mult Tag',
        key = 'greaterMult',
        atlas = 'tags_atlas',
        pos = {x=2, y=0},
        config = {
            type = 'after',
            extra = {
                xmult = 1.5
            }
        },
        discovered = true,
        min_ante = 999,
        loc_vars = function(self, info_queue, card)
            if card.ability.extra ~= nil then
                return {
                    vars = {
                        card.ability.extra.xmult
                    }
                }
            else
                return {
                    vars = {
                        self.config.extra.xmult
                    }
                }
            end
        end,
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('x', G.C.Mult, function()
                    return true
                end)
                self.triggered = true
                SMODS.calculate_effect({xmult = self.config.extra.xmult, remove_default_message = true}, self)
                return true
            end
        end
    }
)

---- super mult tag
SMODS.Tag(
    {
        name = 'Super Mult Tag',
        key = 'superMult',
        atlas = 'tags_atlas',
        pos = {x=3, y=0},
        config = {
            type = 'after',
            extra = {
                xmult = 2
            }
        },
        discovered = true,
        min_ante = 999,
        loc_vars = function(self, info_queue, card)
            if card.ability.extra ~= nil then
                return {
                    vars = {
                        card.ability.extra.xmult
                    }
                }
            else
                return {
                    vars = {
                        self.config.extra.xmult
                    }
                }
            end
        end,
        apply = function(self, tag, context)
            if context.type == self.config.type then
                tag:yep('x', G.C.Mult, function()
                    return true
                end)
                self.triggered = true
                SMODS.calculate_effect({xmult = self.config.extra.xmult, remove_default_message = true}, self)
                return true
            end
        end
    }
)