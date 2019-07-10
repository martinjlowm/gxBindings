/**
 * @noSelfInFile
 */
if (select(1, ...UnitClass('player')) !== 'PRIEST') {
  // @ts-ignore
  return;
}

// @ts-ignore
const [_, bindings] = [...FILE_ARGUMENTS];

const elemental = {
  1: 's|Lightning Bolt',
  2: 's|Chain Lightning',

  4: 's|Flame Shock',
  5: 's|Elemental Mastery',

  V: 's|Water Shield',

  BUTTON4: 's|Totemic Recall',
  BUTTON5: 's|Call of the Elements',

  shift: {
    V: 's|Flametongue Weapon',
  },
};

oBindings.RegisterKeyBindings('Elemental', bindings.base, elemental)
