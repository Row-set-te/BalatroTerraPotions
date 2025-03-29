SMODS.Tag(
    {
        name = 'Return Tag',
        key = 'returnTag',
        atlas = 'tags_atlas',
        pos = {x=0, y=2},
        config = {
            type = 'skip_blind',
        },
        discovered = true,
        min_ante = 999,
        apply = function(self, tag, context)
            if context.type == self.config.type and G.TerraPotion.ReturnTagTrigger == false then
                tag:yep('S', G.C.GOLD, function()
                    return true
                end)
                self.triggered = true
                G.TerraPotion.ReturnTagTrigger = true
                G.blind_select:remove()
                G.blind_prompt_box:remove()
                G.STATE = G.STATES.SHOP
                G.GAME.shop_free = nil
                G.GAME.shop_d6ed = nil
                G.STATE_COMPLETE = false
                G.GAME.current_round.reroll_cost_increase = 0
                G.GAME.current_round.used_packs = {}
                local chaos = find_joker('Chaos the Clown')
                G.GAME.current_round.free_rerolls = #chaos
                calculate_reroll_cost(true)
                return true
            end
        end
    }
)