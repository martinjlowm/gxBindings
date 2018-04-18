if select(2, UnitClass('player')) ~= 'WARLOCK' then return end

oBindings:Factory(function(self)
        local warlockBase = {
            [1] = 's|Shadow Bolt',
            [2] = 's|Immolate',
            [3] = 'm|[@mouseover,harm] Corruption; Corruption',
            [4] = 's|Drain Life',
            R = 's|Searing Pain',
            F = 'p|1',

            ['§'] = 's|Shoot',

            F1 = 's|Demon Skin',
            F2 = 's|Unending Breath',
            F3 = 's|Summon Imp',
            F4 = 's|Summon Voidwalker',
            F10 = 's|Create Healthstone (Lesser)()',
            F11 = 's|Create Soulstone (Minor)()',
            F12 = 's|Ritual of Summoning',

            shift = {
                [1] = 's|Curse of Weakness',
                [2] = 'm|[@mouseover,harm] Curse of Agony; Curse of Agony',
                R = 's|Life Tap',
                F = 'p|2',
                B = 's|Summon Dreadsteed',
            },
            ctrl = {
                [1] = 'm|[@mouseover,harm] Fear; Fear',
                [2] = 's|Drain Soul',
                [3] = 's|Rain of Fire',
                F = 's|Health Funnel',
            }
        }

        local affliction = {

        }

        local destruction = {

        }

        local demonology = {

        }

        -- oBindings:RegisterCallback(function(self, state)
        -- 	if(oPanel and oPanel.fade) then
        -- 		if(state == 'bar2') then
        -- 			oPanel.fade:SetGradientAlpha("VERTICAL", .1, .1, .1, 0, .25, .35, .25, 1)
        -- 		elseif(state == 'base') then
        -- 			oPanel.fade:SetGradientAlpha("VERTICAL", .1, .1, .1, 0, .25, .25, .35, 1)
        -- 		end
        -- 	end
        -- end)

        oBindings:RegisterKeyBindings('Affliction', gxBindings.base, warlockBase, affliction)
        oBindings:RegisterKeyBindings('Destruction', gxBindings.base, warlockBase,  destruction)
        oBindings:RegisterKeyBindings('Demonology', gxBindings.base, warlockBase, demonology)
end)
