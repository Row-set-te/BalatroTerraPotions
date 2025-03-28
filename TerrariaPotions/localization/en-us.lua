loc_colour('red') 
G.ARGS.LOC_COLOURS['potion'] = HEX("27db2d")

return {
    descriptions = {
        Back={},
        Blind={},
        Edition={},
        Enhanced={},
        Joker={
            j_terrapot_herbBag = {
                name = 'Herb Bag',
                text = {
                    'Sell to create a',
                    'random {C:potion}Potion{}'
                }
            }
        },
        Other={
            p_terrapot_small_potion_1 = {
                name = 'Potion Pack',
                text = {
                    'Choose {C:attention}#1#{} of up to',
                    '{C:attention}#2#{C:TerraPotion_2} Potion{} cards',
                    'to be used immediately'
                }
            },
            p_terrapot_small_potion_2 = {
                name = 'Potion Pack',
                text = {
                    'Choose {C:attention}#1#{} of up to',
                    '{C:attention}#2#{C:TerraPotion_2} Potion{} cards',
                    'to be used immediately'
                }
            },
            p_terrapot_jumbo_potion = {
                name = 'Potion Pack',
                text = {
                    'Choose {C:attention}#1#{} of up to',
                    '{C:attention}#2#{C:TerraPotion_2} Potion{} cards',
                    'to be used immediately'
                }
            },
            p_terrapot_mega_potion = {
                name = 'Potion Pack',
                text = {
                    'Choose {C:attention}#1#{} of up to',
                    '{C:attention}#2#{C:TerraPotion_2} Potion{} cards',
                    'to be used immediately'
                }
            },
        },
        Planet={},
        Spectral={},
        TerraPotion={
            c_terrapot_grav = {
                name = 'Gravitation Potion',
                text = {
                    '{C:green}#1# in #2# chance',
                    'to turn {C:attention}#3#{}',
                    'selected card or',
                    'Joker {C:dark_edition}Negative{}'
                }
            },
            c_terrapot_lesserHeal = {
                name = 'Lesser Healing Potion',
                text = {
                    'Create a',
                    '{C:attention}Lesser Mult Tag{}'
                }
            },
            c_terrapot_defaultHeal = {
                name = 'Healing Potion',
                text = {
                    'Create a',
                    '{C:attention}Mult Tag{}'
                }
            },
            c_terrapot_greaterHeal = {
                name = 'Greater Healing Potion',
                text = {
                    'Create a',
                    '{C:attention}Greater Mult Tag{}'
                }
            },
            c_terrapot_superHeal = {
                name = 'Super Healing Potion',
                text = {
                    'Create a',
                    '{C:attention}Super Mult Tag{}'
                }
            },
            c_terrapot_lesserMana = {
                name = 'Lesser Mana Potion',
                text = {
                    'Create a',
                    '{C:attention}Lesser Chip Tag{}'
                }
            },
            c_terrapot_defaultMana = {
                name = 'Mana Potion',
                text = {
                    'Create a',
                    '{C:attention}Chip Tag{}'
                }
            },
            c_terrapot_greaterMana = {
                name = 'Greater Mana Potion',
                text = {
                    'Create a',
                    '{C:attention}Greater Chip Tag{}'
                }
            },
            c_terrapot_superMana = {
                name = 'Super Mana Potion',
                text = {
                    'Create a',
                    '{C:attention}Super Chip Tag{}'
                }
            },
            c_terrapot_builder = {
                name = 'Builder Potion',
                text = {
                    'Create {C:attention}#1#{}',
                    '{C:attention}Coupon Tags{}'
                }
            },
            c_terrapot_recall = {
                name = 'Recall Potion',
                text = {
                    '{C:attention}-1{} Ante,',
                    'Sets money to {C:money}$0{}'
                }
            },
            c_terrapot_return = {
                name = 'Potion of Return',
                text = {
                    'Create a',
                    '{C:attention}Return Tag{}'
                }
            },
            c_terrapot_mushroom = {
                name = 'Mushroom',
                text = {
                    'Add one more {C:attention}Booster Pack{}',
                    'to the next {C:attention}Shop{}'
                }
            },
            c_terrapot_mining = {
                name = 'Mining Potion',
                text = {
                    'Create {C:attention}#1#{}',
                    '{C:attention}Reroll Tags{}'
                }
            },
            c_terrapot_obsidian = {
                name = 'Obsidian Potion',
                text = {
                    'Create an {C:attention}eternal{}',
                    '{C:attention}Mr. Bones{}'
                }
            },
            c_terrapot_lesserLuck = {
                name = 'Lesser Luck Potion',
                text = {
                    'Double all {C:attention}listed{}',
                    '{C:green}probabilities{} until',
                    'the {C:attention}end{} of the {C:attention}ante{},',
                    'sets money to {C:money}$0{}'
                }
            },
            c_terrapot_defaultLuck = {
                name = 'Luck Potion',
                text = {
                    'Double all {C:attention}listed{}',
                    '{C:green}probabilities{} until',
                    'the {C:attention}end{} of the {C:attention}ante{},',
                    '{C:money}-$20{}',
                    '{C:inactive}(Doesn\'t go below {C:money}$0{}){}'
                }
            },
            c_terrapot_greaterLuck = {
                name = 'Greater Luck Potion',
                text = {
                    'Double all {C:attention}listed{}',
                    '{C:green}probabilities{} until',
                    'the {C:attention}end{} of the {C:attention}ante{},',
                    '{C:money}-$10{}',
                    '{C:inactive}(Doesn\'t go below {}{C:money}$0{}{C:inactive}){}'
                }
            },
            c_terrapot_spelunker = {
                name = 'Spelunker Potion',
                text = {
                    'Triples {C:money}Money{},',
                    'Max of {C:money}$30{}'
                }
            },
            c_terrapot_regeneration = {
                name = 'Regeneration Potion',
                text = {
                    'Turn {C:attention}#1#{} selected',
                    'card or Joker {C:dark_edition}Holographic{}'
                }
            },
            c_terrapot_wrath = {
                name = 'Wrath Potion',
                text = {
                    'Turn {C:attention}#1#{} selected',
                    'card or Joker {C:dark_edition}Polychrome{}'
                }
            },
            c_terrapot_manaRegen = {
                name = 'Mana Regeneration Potion',
                text = {
                    'Turn {C:attention}#1#{} selected',
                    'card or Joker {C:dark_edition}Foil{}'
                }
            },
            c_terrapot_rage = {
                name = 'Rage Potion',
                text = {
                    'Turn all cards in hand',
                    'into {C:attention}Lucky Cards{}'
                }
            },
            c_terrapot_shine = {
                name = 'Shine Potion',
                text = {
                    '{C:attention}Create{} a copy of {C:attention}#1#{}',
                    'selected {C:dark_edition}Negative{} Joker,',
                    'Remove {C:dark_edition}Negative{} from {C:attention}both{} copies',
                    '{C:inactive}(Must have room for {}{C:attention}both{} {C:inactive}copies){}'
                }
            },
            c_terrapot_endurance = {
                name = 'Endurance Potion',
                text = {
                    '+2 {C:attention}Consumable Slots{}'
                }
            },
            c_terrapot_summoning = {
                name = 'Summoning Potion',
                text = {
                    'Create {C:attention}#1#{} random',
                    '{C:TerraPotion_2}Potion{} cards'
                }
            },
        },
        Stake={},
        Tag={
            tag_terrapot_lesserMult = {
                name = 'Lesser Mult Tag',
                text = {
                    '{C:mult}+#1#{} Mult, {C:attention}before{}',
                    'scoring, to your next',
                    'hand'
                }
            },
            tag_terrapot_defaultMult = {
                name = 'Mult Tag',
                text = {
                    '{C:mult}+#1#{} Mult, {C:attention}before{}',
                    'scoring, to your next',
                    'hand'
                }
            },
            tag_terrapot_greaterMult = {
                name = 'Greater Mult Tag',
                text = {
                    '{X:mult,C:white}x#1#{} Mult, {C:attention}after{}',
                    'scoring, to your next',
                    'hand'
                }
            },
            tag_terrapot_superMult = {
                name = 'Super Mult Tag',
                text = {
                    '{X:mult,C:white}x#1#{} Mult, {C:attention}after{}',
                    'scoring, to your next',
                    'hand'
                }
            },
            tag_terrapot_lesserChip = {
                name = 'Lesser Chip Tag',
                text = {
                    '{C:chips}+#1#{} Chips, {C:attention}before{}',
                    'scoring, to your next',
                    'hand'
                }
            },
            tag_terrapot_defaultChip = {
                name = 'Chip Tag',
                text = {
                    '{C:chips}+#1#{} Chips, {C:attention}before{}',
                    'scoring, to your next',
                    'hand'
                }
            },
            tag_terrapot_greaterChip = {
                name = 'Greater Chip Tag',
                text = {
                    '{X:chips,C:white}x#1#{} Chips, {C:attention}after{}',
                    'scoring, to your next',
                    'hand'
                }
            },
            tag_terrapot_superChip = {
                name = 'Super Chip Tag',
                text = {
                    '{X:chips,C:white}x#1#{} Chips, {C:attention}after{}',
                    'scoring, to your next',
                    'hand'
                }
            },
            tag_terrapot_returnTag = {
                name = 'Return Tag',
                text = {
                    'Enter the {C:attention}shop{}',
                    'when skipping a {C:attention}blind{}'
                }
            }
        },
        Tarot={},
        Voucher={},
    },
    misc = {
        achievement_descriptions={},
        achievement_names={},
        blind_states={},
        challenge_names={},
        collabs={},
        dictionary={
            ['potion_booster'] = {
                'Potion Pack'
            }
        },
        high_scores={},
        labels={},
        poker_hand_descriptions={},
        poker_hands={},
        quips={},
        ranks={},
        suits_plural={},
        suits_singular={},
        tutorial={},
        v_dictionary={},
        v_text={},
    },
}