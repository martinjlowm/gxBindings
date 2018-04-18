if (select(2, UnitClass('player')) ~= 'ROGUE') then
    return
end

oBindings:Factory(function(self)
        local rogueBase = {
            [1] = 's|Backstab',
            [2] = 's|Sinister Strike',
            [3] = 's|Eviscerate',
            -- 's|Kidney Shot',
            -- 's|Dismantle',
            -- 's|Cold Blood',
            -- 's|Fan of Knives',

            R = 's|Kick',
            F = 's|Stealth',

            F1 = 's|Evasion',
            F2 = 's|Sprint',

            -- P = 's|Evasion',
            -- D = 's|Kick',
            -- N = 's|Sprint',
            -- W = 's|Will of the Forsaken',
            -- X = 's|Throw',
            -- J = 's|Distract',
            -- C = 'm|/cast [@focus, help] Tricks of the Trade, [@target, help] Tricks of the Trade, [@targettarget, help] Tricks of the Trade',
            -- G = 's|Hunger for Blood',
            -- Q = 's|Slice and Dice',
            -- V = 's|Vanish',
            -- A = 's|Feint',

            alt = {
                's|Rupture',
            },

            stealth = {
                's|Ambush',
                's|Cheap Shot',
                's|Sap',
                F = 's|Stealth',
                R = 's|Distract',
                C = 's|Pick Pocket',
                -- old habbit
                [5] = 's|Garrote',

            },
        }

        oBindings:RegisterKeyBindings('Combat', gxBindings.base, rogueBase)
end)
