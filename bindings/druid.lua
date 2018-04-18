if select(2, UnitClass('player')) ~= 'DRUID' then return end

oBindings:Factory(function(self)
        local druidBase = {
            [1] = 's|Wrath',
            [2] = 's|Moonfire',
            [3] = 'm|[nochanneling:Mind Flay] Mind Blast',
            [4] = [[m|[@mouseover,harm] Moonfire;
                      [@mouseover,help] Rejuvenation;
                                 [harm] Moonfire;
                                        Rejuvenation]],
            F = 's|Psychic Scream',
            G = 'm|[@mouseover,harm] Shackle Undead; Shackle Undead',
            V = 's|Mana Burn',
            ['§'] = 's|War Stomp',

            F1 = 's|Mark of the Wild',
            F2 = 's|Thorns',
            F4 = 's|Power Word: Fortitude',
            F5 = 's|Shadow Protection',
            F6 = 'm|[@mouseover,help] Resurrection; Resurrection',

            bear = {
                [1] = 's|Maul',
                [2] = 's|Swipe',
                [3] = 'm|[@mouseover,harm] Growl; Growl',
                [4] = 's|Enrage',
                R = 'm|/cast [@mouseover,harm] Bash; Bash',
            },

            cat = {
                [1] = 's|Claw',
                [2] = 's|Rip',
                F = 's|Prowl',
            },

            shift = {
                [1] = 's|Bear Form',
                [2] = 's|Aqua Form',
                [4] = 's|Travel Form',
                [4] = 's|Cat Form',
            },

            ctrl = {
                [1] = 'm|[@mouseover,help] Healing Touch; Healing Touch',
                [2] = 'm|[@mouseover,help] Heal; Heal',
                [3] = 'm|[@mouseover,help] Greater Heal; Greater Heal',
                [4] = 'm|[@mouseover,help] Regrowth; Regrowth',
                R = 's|Inner Focus',
                F = 's|Prayer of Healing',
            },

            alt = {
                [3] = 's|Fade',
                [4] = 'm|[@mouseover,harm] Mind Soothe; Mind Soothe',
            }
        }

        local balance = {
            F3 = 's|Divine Spirit',

            shift = {
                V = 'm|[@mouseover,help] Power Infusion; Power Infusion',
            }
        }

        local feral = {
            F3 = 's|Lightwell',

            shift = {
                V = 's|Holy Nova',
            },
        }

        local restoration = {
            [1] = 'm|[nochanneling:Mind Flay] Mind Flay',
            R = 'm|[@mouseover,harm] Vampiric Embrace; Vampiric Embrace',
            C = 'm|[@mouseover,harm] Silence; Silence',

            F3 = 's|Shadowform',
        }

        oBindings:RegisterKeyBindings('Balance', gxBindings.base, druidBase, balance)
        oBindings:RegisterKeyBindings('Feral', gxBindings.base, druidBase, feral)
        oBindings:RegisterKeyBindings('Restoration', gxBindings.base, druidBase, restoration)
end)
