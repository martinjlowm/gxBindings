gxBindings = gxBindings or {}

gxBindings.base = {
    W = 'MOVEFORWARD',
    Q = 'STRAFELEFT',
    S = 'MOVEBACKWARD',
    E = 'STRAFERIGHT',
    A = 'TURNLEFT',
    D = 'TURNRIGHT',

    B = 'OPENALLBAGS',

    ['TAB'] = 'TARGETNEARESTENEMY',

    N = 'TOGGLETALENTS',
    I = 'TOGGLECHARACTER0',
    [';'] = 'TOGGLESPELLBOOK',
    ['\\'] = 'TOGGLERUN',
    [']'] = 'TOGGLEAUTORUN',

    shift = {
        B = 'f|MOUNT',
    },
    ctrl = {
        ['§'] = 'i|13',
        ['TAB'] = 'TARGETNEARESTFRIEND',
    },

    F8 = 'm|/run ReloadUI()',
    F9 = 'i|Crescent Key',

    ['RIGHT'] = 'a|[@mouseover] 8; 8',
    ['LEFT'] = 'a|[@mouseover] 7; 7',
    ['UP'] = 'a|[@mouseover] 6; 6',
    ['DOWN'] = 'a|[@mouseover] 5; 5',
}
