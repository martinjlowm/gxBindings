if select(2, UnitClass('player')) ~= 'HUNTER' then return end

oBindings:Factory(function(self)
        local hunterBase = {
            [1] = 's|Raptor Strike',
            [2] = 's|Arcane Shot',
            [3] = 's|Concussive Shot',
            [4] = 's|Serpent Sting',
            R = 's|Scatter Shot',
            F = 's|Freezing Trap',
            G = 'm|/cast [@mouseover,exists] Distracting Shot; Distracting Shot',
            C = 's|Immolation Trap',
            V = 's|',

            ['§'] = 's|Feign Death',

            F2 = 's|Aspect of the Pack',
            F3 = 's|Aspect of the Wild',
            F4 = 's|Call Pet',
            F5 = 's|Eagle Eye',
            F6 = 's|Eyes of the Beast',

            shift = {
                [1] = "m|/cast [@mouseover,exists] Hunter's Mark; Hunter's Mark",
                [2] = 's|Wing Clip',
                [3] = 's|Mongoose Bite',
                [4] = 's|Multi-Shot',
                R = 's|Rapid Fire',
                F = 's|Frost Trap',
                -- G = '',
                C = 's|Explosive Trap',
                V = 's|Flare',

                ['§'] = 's|Blood Fury'
            },

            ctrl = {
                [1] = 's|Aspect of the Hawk',
                [2] = 's|Aspect of the Monkey',
                [3] = 's|Aspect of the Cheetah',
                [4] = 's|Scare Beast',

                R = 's|Disengage',
                F = 's|Mend Pet',
                -- G = 's|',
                C = 's|Viper Sting',
                V = 's|Volley',
            },
        }

        local marksmanship = {
            [4] = 's|Aimed Shot',
            F1 = 's|Trueshot Aura',
        }

        local holy = {

        }

        local shadow = {

        }

        oBindings:RegisterKeyBindings('Marksmanship', gxBindings.base, hunterBase, marksmanship)
end)
