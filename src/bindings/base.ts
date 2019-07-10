/**
 * @noSelfInFile
 */

// @ts-ignore
const [_, bindings] = [...FILE_ARGUMENTS];

bindings.base = {
  W: 'MOVEFORWARD',
  Q: 'STRAFELEFT',
  S: 'MOVEBACKWARD',
  E: 'STRAFERIGHT',
  A: 'TURNLEFT',
  D: 'TURNRIGHT',

  B: 'OPENALLBAGS',

  TAB: 'TARGETNEARESTENEMY',

  N: 'TOGGLETALENTS',
  I: 'TOGGLECHARACTER0',
  ';': 'TOGGLESPELLBOOK',
  '\\': 'TOGGLERUN',
  ']': 'TOGGLEAUTORUN',

  shift: {
    B: `m|
      /castrandom [flyable] Invincible; Amani War Bear
    `,
  },
  ctrl: {
    '§': 'i|13',
    TAB: 'TARGETNEARESTFRIEND',
  },

  F12: 'm|/run ReloadUI()',
  // F9: 'i|Crescent Key',

  RIGHT: `m|/script SetRaidTarget('mouseover', 8)`,
  LEFT: `m|/script SetRaidTarget('mouseover', 7)`,
  UP: `m|/script SetRaidTarget('mouseover', 6)`,
  DOWN: `m|/script SetRaidTarget('mouseover', 5)`,
};
