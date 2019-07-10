/**
 * @noSelfInFile
 */
if (select(1, ...UnitClass('player')) !== 'ROGUE') {
  // @ts-ignore
  return;
}

// @ts-ignore
const [_, bindings] = [...FILE_ARGUMENTS];

const rogueBase = {
  1: 's|Backstab',
  2: 's|Sinister Strike',
  3: 's|Eviscerate',
  4: 's|Kidney Shot',
  5: 's|Dismantle',
  6: 's|Cold Blood',
  7: 's|Fan of Knives',

  R: 's|Kick',
  F: 's|Stealth',

  F1: 's|Evasion',
  F2: 's|Sprint',

  P: 's|Evasion',
  D: 's|Kick',
  N: 's|Sprint',
  W: 's|Will of the Forsaken',
  X: 's|Throw',
  J: 's|Distract',
  C: `m|/cast
    [@focus, help] Tricks of the Trade,
    [@target, help] Tricks of the Trade,
    [@targettarget, help] Tricks of the Trade`,
  G: 's|Hunger for Blood',
  Q: 's|Slice and Dice',
  V: 's|Vanish',
  A: 's|Feint',

  alt: {
    1: 's|Rupture',
  },

  stealth: {
    1: 's|Ambush',
    2: 's|Cheap Shot',
    3: 's|Sap',
    F: 's|Stealth',
    R: 's|Distract',
    C: 's|Pick Pocket',
    5: 's|Garrote',
  },
};

oBindings.RegisterKeyBindings('Combat', bindings.base, rogueBase);
