if select(2, UnitClass('player')) ~= 'WARRIOR' then return end

oBindings:Factory(function(self)
        local warriorBase = {
            [1] = 's|Charge',
            [2] = 's|Heroic Strike',
            [3] = 's|Rend',
            [4] = 's|Hamstring',
            R = 's|Overpower',
            ['§'] = 's|Shoot Gun',

            shift = {
                R = 's|Shield Bash',
                [1] = 's|Battle Shout',
                [2] = 's|Demoralizing Shout',
                ['§'] = 's|Blood Fury',
                V = 's|Thunder Clap',
            },

            ctrl = {
                [1] = 's|Battle Stance',
                [2] = 's|Defensive Stance',
                [4] = 's|Bloodrage',
            },

            alt = {
            }
        }

        local arms = {

        }

        local fury = {

        }

        local protection = {

        }

        oBindings:RegisterKeyBindings('Arms', gxBindings.base, warriorBase, arms)
        oBindings:RegisterKeyBindings('Fury', gxBindings.base, warriorBase, fury)
        oBindings:RegisterKeyBindings('Protection', gxBindings.base, warriorBase, protection)
end)
