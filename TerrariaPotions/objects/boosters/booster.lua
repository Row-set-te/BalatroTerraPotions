SMODS.Atlas(
    {
        key = 'boosters_atlas',
        px = '71',
        py = '95',
        path = 'boosters.png',
    }
)

is_in_pool = function(pool, object)
    if #pool ~= 0 then
        for i=1, #pool do
            if pool[i].config.center.key == object.config.center.key then
                return true
            end
        end
    end
    return false
end

value_in_table = function(table, value)
    if #table ~= 0 then
        for i=1, #table do
            if table[i] == value then
                return true
            end
        end
    end
end

key_in_table = function(table, value)
    if #table ~= 0 then
        for i=1, #table do
            if table[i] == value.config.center.key then
                return true
            end
        end
    end
end

has_showman = function()
    if #G.jokers ~= 0 then
        for i=0, #G.jokers do
            if G.jokers.config.center.key == 'j_ring_master' then
                return true
            end
        end
    end
    return false
end

local healingPot_keys = {'c_terrapot_lesserHeal', 'c_terrapot_defaultHeal', 'c_terrapot_greaterHeal', 'c_terrapot_superHeal'}
local manaPot_keys = {'c_terrapot_lesserMana', 'c_terrapot_defaultMana', 'c_terrapot_greaterMana', 'c_terrapot_superMana'}
local luckPot_keys = {'c_terrapot_lesserLuck', 'c_terrapot_defaultLuck', 'c_terrapot_greaterLuck'}
local editionPot_keys = {'c_terrapot_regeneration', 'c_terrapot_wrath', 'c_terrapot_manaRegen'}
get_potion_booster_cards = function(choose, extra)
    extra = extra - 1
    booster_set = {}
    local return_table = {}
    local restricted_potion_types = {}
    local checked_already = {}
    while #return_table ~= choose + extra do
        local card = SMODS.create_card({set = 'TerraPotion', area = G.pack_cards, skip_materialize = true, soulable = true})
        if is_in_pool(checked_already, card) ~= true or has_showman() then
            checked_already[#checked_already+1] = card

            if key_in_table(healingPot_keys, card) then
                if value_in_table(restricted_potion_types, 'healing') ~= true then
                    return_table[#return_table+1] = card
                    restricted_potion_types[#restricted_potion_types+1] = 'healing'
                else
                    card:remove()
                end

            elseif key_in_table(manaPot_keys, card) then
                if value_in_table(restricted_potion_types, 'mana') ~= true then
                    return_table[#return_table+1] = card
                    restricted_potion_types[#restricted_potion_types+1] = 'mana'
                else
                    card:remove()
                end

            elseif key_in_table(luckPot_keys, card) then
                if value_in_table(restricted_potion_types, 'luck') ~= true then
                    return_table[#return_table+1] = card
                    restricted_potion_types[#restricted_potion_types+1] = 'luck'
                else
                    card:remove()
                end

            elseif key_in_table(editionPot_keys, card) then
                if value_in_table(restricted_potion_types, 'edition') ~= true then
                    return_table[#return_table+1] = card
                    restricted_potion_types[#restricted_potion_types+1] = 'edition'
                else
                    card:remove()
                end
            
            elseif card.config.center.key == 'c_terrapot_recall' then
                if G.GAME.round_resets.ante >= 2 then
                    return_table[#return_table+1] = card
                else
                    card:remove()
                end

            else 
                return_table[#return_table+1] = card
            end
        else
            card:remove()
            if #checked_already >= #G.P_CENTER_POOLS['TerraPotion'] then
                return_table[#return_table+1] = SMODS.create_card({set = 'TerraPotion', area = G.pack_cards, skip_materialize = true, soulable = true, key = 'c_terrapot_lesserHeal'})
            end
        end
    end
    return return_table
end

SMODS.Booster{
    key = 'small_potion_1',
    atlas = 'boosters_atlas',
    pos = {x=0, y=0},
    kind = 'TerraPotion',
    config = {choose = 1, extra = 4},
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return {vars = {self.config.choose, self.config.extra}}
    end,
    create_card = function(self, card, i)
        if i == 1 then
            booster_card_set = get_potion_booster_cards(self.config.choose, self.config.extra)
        end
        return booster_card_set[i]
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.TerraPotion_2)
        ease_background_colour{new_colour = G.C.TerraPotion_2, special_colour = G.C.BLACK, contrast = 2}
    end,
    draw_hand = true,
    cost = 4,
    weight = 2,
    group_key = 'potion_booster',
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0,0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = {G.C.TerraPotion_2, lighten(G.C.TerraPotion_2, 0.4), lighten(G.C.TerraPotion_2, 0.2), darken(G.C.TerraPotion_2, 0.2)},
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}

SMODS.Booster{
    key = 'small_potion_2',
    atlas = 'boosters_atlas',
    pos = {x=1, y=0},
    kind = 'TerraPotion',
    config = {choose = 1, extra = 4},
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return {vars = {self.config.choose, self.config.extra}}
    end,
    create_card = function(self, card, i)
        if i == 1 then
            booster_card_set = get_potion_booster_cards(self.config.choose, self.config.extra)
        end
        return booster_card_set[i]
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.TerraPotion_2)
        ease_background_colour{new_colour = G.C.TerraPotion_2, special_colour = G.C.BLACK, contrast = 2}
    end,
    draw_hand = true,
    cost = 4,
    weight = 2,
    group_key = 'potion_booster',
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0,0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = {G.C.TerraPotion_2, lighten(G.C.TerraPotion_2, 0.4), lighten(G.C.TerraPotion_2, 0.2), darken(G.C.TerraPotion_2, 0.2)},
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}

SMODS.Booster{
    key = 'jumbo_potion',
    atlas = 'boosters_atlas',
    pos = {x=2, y=0},
    kind = 'TerraPotion',
    config = {choose = 1, extra = 5},
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return {vars = {self.config.choose, self.config.extra}}
    end,
    create_card = function(self, card, i)
        if i == 1 then
            booster_card_set = get_potion_booster_cards(self.config.choose, self.config.extra)
        end
        return booster_card_set[i]
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.TerraPotion_2)
        ease_background_colour{new_colour = G.C.TerraPotion_2, special_colour = G.C.BLACK, contrast = 2}
    end,
    draw_hand = true,
    cost = 5,
    weight = 1,
    group_key = 'potion_booster',
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0,0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = {G.C.TerraPotion_2, lighten(G.C.TerraPotion_2, 0.4), lighten(G.C.TerraPotion_2, 0.2), darken(G.C.TerraPotion_2, 0.2)},
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}

SMODS.Booster{
    key = 'mega_potion',
    atlas = 'boosters_atlas',
    pos = {x=3, y=0},
    kind = 'TerraPotion',
    config = {choose = 2, extra = 6},
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return {vars = {self.config.choose, self.config.extra}}
    end,
    create_card = function(self, card, i)
        if i == 1 then
            booster_card_set = get_potion_booster_cards(self.config.choose, self.config.extra - 1)
        end
        return booster_card_set[i]
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.TerraPotion_2)
        ease_background_colour{new_colour = G.C.TerraPotion_2, special_colour = G.C.BLACK, contrast = 2}
    end,
    draw_hand = true,
    cost = 6,
    weight = .5,
    group_key = 'potion_booster',
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0,0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = {G.C.TerraPotion_2, lighten(G.C.TerraPotion_2, 0.4), lighten(G.C.TerraPotion_2, 0.2), darken(G.C.TerraPotion_2, 0.2)},
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}