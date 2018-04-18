if select(2, UnitClass('player')) ~= 'MAGE' then
    return
end

oBindings:Factory(function(self)
        local mageBase = {
            [1] = 's|Frostbolt',
            [2] = 's|Fire Blast',
            [3] = 's|Fireball',
            [4] = 'm|[@mouseover,harm,nodead] Scorch; Scorch',
            R = 's|Arcane Explosion',
            F = 's|Blink',
            ['§'] = 's|Shoot',

            F1 = 's|Evocation',
            F2 = 's|Ice Armor',
            F3 = 's|Mage Armor',
            F4 = 'm|[@mouseover,help,nodead] Arcane Intellect; Arcane Intellect',
            F5 = 's|Conjure Water',
            F6 = 's|Conjure Food',
            F10 = 's|Teleport: Orgrimmar',
            F11 = 's|Teleport: Thunder Bluff',
            F12 = 's|Teleport: Undercity',

            shift = {
                [1] = 's|Mana Shield',
                [2] = 'm|[@mouseover,help,nodead] Remove Lesser Curse; Remove Lesser Curse',
                [3] = 's|Cone of Cold',
                [4] = 's|Frost Nova',
                R = 's|Fire Ward',
                F = 's|Flamestrike',
                V = 's|Arcane Explosion(Rank 1)',
                ['§'] = 's|Berserking',
                F4 = 'm|[@mouseover,help,nodead] Arcane Brilliance; Arcane Brilliance',
                -- F7 = [['s|Portal: ' .. (faction == 'Horde' and 'Orgrimmar' or 'Ironforge')]],
                -- F8 = [['s|Portal: ' .. (faction == 'Horde' and 'Thunder Bluff' or 'Darnassus')]],
                -- F9 = [['s|Portal: ' .. (faction == 'Horde' and 'Undercity' or 'Stormwind')]],
                F10 = 's|Portal: Orgrimmar',
                F11 = 's|Portal: Thunder Bluff',
                F12 = 's|Portal: Undercity',
            },

            ctrl = {
                [1] = 'm|[@mouseover,harm,nodead] Polymorph; Polymorph',
                [2] = 'm|[@mouseover,harm,nodead] Frostbolt(Rank 1); Frostbolt(Rank 1)',
                [3] = 'm|[@mouseover,harm,nodead] Counterspell; Counterspell',
                [4] = 's|Arcane Missiles',

                R = 's|Frost Ward',
                F = 's|Blizzard',
                C = 's|Blizzard(Rank 1)'
            },

            alt = {
                -- [1] = 'm|/script if ConjureManaGem then ConjureManaGem() end',
                [3] = 's|Amplify Magic',
                [4] = 's|Dampen Magic',
                R = 's|Slow Fall',
            }
        }

        local arcane = {
            -- R = 's|Presence of Mind',
            -- R = 's|Ice Block',
            C = 's|Arcane Power',
            V = 's|Presence of Mind',
        }

        local frost = {
            [5] = 's|Pyroblast',
            -- V = 's|Blast Wave',
            V = 's|Ice Barrier',
            C = 's|Ice Block',

            shift = {
                C = 's|Cold Snap',
            }
        }


        local fire = {
            [5] = 's|Pyroblast',
            -- V = 's|Ice Barrier',
            -- C = 's|Ice Block',

            -- shift = {
            --     C = 's|Cold Snap',
            -- },
            -- [1] = 's|Fireball',
            -- [5] = 's|Pyroblast',

            V = 's|Blast Wave',
            C = 's|Combustion',

            -- ctrl = {
            --     [2] = 's|Frostbolt',
            -- }
        }

        oBindings:RegisterKeyBindings('Arcane', gxBindings.base, mageBase, arcane)
        oBindings:RegisterKeyBindings('Frost', gxBindings.base, mageBase, frost)
        oBindings:RegisterKeyBindings('Fire', gxBindings.base, mageBase, fire)
end)
