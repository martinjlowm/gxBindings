/**
 * @noSelfInFile
 */
if (select(1, ...UnitClass('player')) !== 'WARRIOR') {
  // @ts-ignore
  return;
}

// @ts-ignore
const [_, bindings] = [...FILE_ARGUMENTS];


const warriorBase = {
  1: 's|Charge',
  2: 's|Heroic Strike',
  3: 's|Rend',
  4: 's|Hamstring',
  R: 's|Overpower',
  '§': 's|Shoot Gun',

  shift: {
    R: 's|Shield Bash',
    1: 's|Battle Shout',
    2: 's|Demoralizing Shout',
    '§': 's|Blood Fury',
    V: 's|Thunder Clap',
  },

  ctrl: {
    1: 's|Battle Stance',
    2: 's|Defensive Stance',
    4: 's|Bloodrage',
  },

  alt: {
  }
}

const arms = {

};

const fury = {

};

const protection = {

};

oBindings.RegisterKeyBindings('Arms', bindings.base, warriorBase, arms);
oBindings.RegisterKeyBindings('Fury', bindings.base, warriorBase, fury);
oBindings.RegisterKeyBindings('Protection', bindings.base, warriorBase, protection);
