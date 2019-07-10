/**
 * @noSelfInFile
 */
if (select(1, ...UnitClass('player')) !== 'PRIEST') {
  // @ts-ignore
  return;
}

// @ts-ignore
const [_, bindings] = [...FILE_ARGUMENTS];

const hunterBase = {
  1: 's|Raptor Strike',
  2: 's|Arcane Shot',
  3: 's|Concussive Shot',
  4: 's|Serpent Sting',
  R: 's|Scatter Shot',
  F: 's|Freezing Trap',
  G: 'm|/cast [@mouseover,exists] Distracting Shot; Distracting Shot',
  C: 's|Immolation Trap',
  V: 's|',

  '§': 's|Feign Death',

  F2: 's|Aspect of the Pack',
  F3: 's|Aspect of the Wild',
  F4: 's|Call Pet',
  F5: 's|Eagle Eye',
  F6: 's|Eyes of the Beast',

  shift: {
    1: "m|/cast [@mouseover,exists] Hunter's Mark; Hunter's Mark",
    2: 's|Wing Clip',
    3: 's|Mongoose Bite',
    4: 's|Multi-Shot',
    R: 's|Rapid Fire',
    F: 's|Frost Trap',
    C: 's|Explosive Trap',
    V: 's|Flare',

    '§': 's|Blood Fury'
  },

  ctrl: {
    1: 's|Aspect of the Hawk',
    2: 's|Aspect of the Monkey',
    3: 's|Aspect of the Cheetah',
    4: 's|Scare Beast',

    R: 's|Disengage',
    F: 's|Mend Pet',
    C: 's|Viper Sting',
    V: 's|Volley',
  },
}

const marksmanship = {
  4: 's|Aimed Shot',
  F1: 's|Trueshot Aura',
}

const survival = {

}

const beastMastery = {

}

oBindings.RegisterKeyBindings('Marksmanship', bindings.base, hunterBase, marksmanship)
