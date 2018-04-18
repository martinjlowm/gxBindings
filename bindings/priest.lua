if select(2, UnitClass('player')) ~= 'PRIEST' then return end

oBindings:Factory(function(self)
        local level = UnitLevel('player')

        local priestBase = {
            [1] = 's|Holy Fire',
            [2] = 's|Smite',
            [3] = 's|Mind Blast(Rank 1)',
            -- [3] = 's|Mind Blast',
            [4] = [[m|[@mouseover,harm,nodead] Shadow Word: Pain(Rank 1);
              [@mouseover,help,nodead] Renew;
                         [harm,nodead] Shadow Word: Pain(Rank 1);
                                       Renew]],
            [5] = [[m|[@mouseover,harm,nodead] Shadow Word: Pain;
                                       Shadow Word: Pain]],
            T = [[m|[@mouseover,harm,nodead] Hex of Weakness;
                                     Hex of Weakness]],
            F = 's|Psychic Scream',
            ['§'] = 's|Shoot',
            C = 's|Attack',
            F1 = [[m|[@mouseover,help] Power Word: Fortitude;
                               Power Word: Fortitude]],
            F3 = [[m|[@mouseover,help] Shadow Protection;
                               Shadow Protection]],

            F10 = 's|Find Herbs',
            F11 = 's|Mind Vision',
            F12 = 'm|[@mouseover,help,dead] Resurrection; Resurrection',

            shift = {
                [1] = [[m|[@mouseover,help,nodead] Power Word: Shield;
                                           Power Word: Shield]],
                [2] = [[m|[@mouseover,help,nodead] Abolish Disease;
                                           Abolish Disease]],
                [3] = [[m|[@mouseover,help,nodead] Cure Disease;
                                           Cure Disease]],
                [4] = [[m|[@mouseover,help,nodead] Dispel Magic;
                         [@mouseover,harm] Dispel Magic;
                                           Dispel Magic]],
                R = 's|Inner Fire',
                F = 's|Shadowguard',
                C = 's|Mana Burn',
                ['§'] = 's|Berserking',
                F1 = [[m|[@mouseover,help] Prayer of Fortitude;
                                   Prayer of Fortitude]],
                F3 = [[m|[@mouseover,help] Prayer of Shadow Protection;
                                   Prayer of Shadow Protection]],
            },

            ctrl = {
                [1] = 'm|[@mouseover,help,nodead] Flash Heal(Rank 3); Flash Heal(Rank 3)',
                [2] = 'm|[@mouseover,help,nodead] Flash Heal; Flash Heal',
                [3] = 'm|[@mouseover,help,nodead] Greater Heal(Rank 1); Greater Heal(Rank 1)',
                [4] = 'm|[@mouseover,help,nodead] Greater Heal(Rank 3); Greater Heal(Rank 3)',
                R = 's|Inner Focus',
                F = 's|Prayer of Healing(Rank 3)',
                V = 's|Psychic Scream(Rank 1)'
            },

            alt = {
                [3] = 's|Fade',
                [2] = 'm|[@mouseover,harm,nodead] Mind Soothe; Mind Soothe',
                [4] = 'm|[@mouseover,harm,nodead] Shackle Undead; Shackle Undead',
                R = 's|Levitate',
                C = 's|Mind Control'
            }
        }

        if level < 44 then
            priestBase.ctrl[1] = 'm|[@mouseover,help,nodead] Lesser Heal; Lesser Heal'
        end

        if level < 60 then
            priestBase.ctrl[3] = 'm|[@mouseover,help,nodead] Heal; Heal'
        end

        local disc = {
            V = 'm|[nochanneling:Mind Flay] Mind Flay',
            R = 's|Holy Nova',
            F2 = [[m|[@mouseover,help] Divine Spirit;
                               Divine Spirit]],

            shift = {
                C = 'm|[@mouseover,help] Power Infusion; Power Infusion',
                V = 's|Holy Nova(Rank 1)',
                F2 = [[m|[@mouseover,help] Prayer of Spirit;
                                   Prayer of Spirit]],
            }
        }

        local holy = {
            V = 'm|[nochanneling:Mind Flay] Mind Flay(Rank 1),',
            -- V = 'm|[nochanneling:Mind Flay] Mind Flay,',
            R = 's|Holy Nova',
            F2 = [[m|[@mouseover,help] Divine Spirit;
                               Divine Spirit]],

            shift = {
                V = 's|Holy Nova(Rank 1)',
                F2 = [[m|[@mouseover,help] Prayer of Spirit;
                                   Prayer of Spirit]],
            }
        }

        local shadow = {
            [1] = 'm|[nochanneling:Mind Flay] Mind Flay',
            R = 'm|[@mouseover,harm] Vampiric Embrace; Vampiric Embrace',
            C = 'm|[@mouseover,harm] Silence; Silence',

            F2 = 's|Shadowform',
        }

        self:RegisterKeyBindings('Discipline', gxBindings.base, priestBase, disc)
        self:RegisterKeyBindings('Holy', gxBindings.base, priestBase, holy)
        self:RegisterKeyBindings('Shadow', gxBindings.base, priestBase, shadow)

end)
