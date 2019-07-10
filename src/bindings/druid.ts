/**
 * @noSelfInFile
 */
if (select(1, ...UnitClass('player')) !== 'PRIEST') {
  // @ts-ignore
  return;
}

// @ts-ignore
const [_, bindings] = [...FILE_ARGUMENTS];

const druidBase = {
  1: 's|Wrath',
  2: 's|Moonfire',
  3: 'm|[nochanneling:Mind Flay] Mind Blast',
  4: `m|[@mouseover,harm] Moonfire;
    [@mouseover,help] Rejuvenation;
    [harm] Moonfire;
    Rejuvenation`,

  R: `m|[@mouseover,harm] Entangling Roots;
    Entangling Roots`,
  V: 's|Mana Burn',
  C: 's|Attack',
  '§': 's|War Stomp',

  F1: `m|[@mouseover,help] Mark of the Wild;
    Mark of the Wild`,
  F2: `m|[@mouseover,help] Thorns;
    Thorns`,
  F3: `m|[@mouseover,help] Innervate;
    Innervate`,
  F4: 's|Omen of Clarity',
  F5: `m|[@mouseover,help] Gift of the Wild;
    Gift of the Wild`,
  F11: 's|Teleport: Moonglade',
  F12: 'm|[@mouseover,help,dead] Rebirth; Rebirth',

  bear: {
    1: 'm|[@mouseover,harm] Feral Charge; Feral Charge',
    2: 's|Swipe',
    3: 'm|[@mouseover,harm] Growl; Growl',
    4: 's|Enrage',
    F: 's|Demoralizing Roar',
    G: 's|Frenzied Regeneration',
    R: 'm|[@mouseover,harm] Faerie Fire (Feral)(); Faerie Fire (Feral)()',
    T: 'm|[@mouseover,harm] Bash; Bash',
    C: 's|Challenging Roar',
    V: 's|Maul',
  },

  cat: {
    1: 's|Shred',
    2: 's|Rake',
    3: 's|Claw',
    4: 's|Rip',
    R: 'm|[@mouseover,harm] Faerie Fire (Feral)(); Faerie Fire (Feral)()',
    F: 's|Prowl',
    G: 's|Cower',
    T: "s|Tiger's Fury",
    C: 's|Ferocious Bite',
    V: 's|Track Humanoids',
    F2: 's|Dash',
  },

  stealth: {
    1: 's|Ravage',
    2: 's|Pounce',
    F2: 's|Dash',
    R: 'm|[@mouseover,harm] Faerie Fire (Feral)(); Faerie Fire (Feral)()',
    T: "s|Tiger's Fury",
    V: 's|Track Humanoids',
  },

  shift: {
    1: 's|Dire Bear Form',
    2: 's|Aquatic Form',
    3: 's|Travel Form',
    4: 's|Cat Form',
    R: 'm|[@mouseover,help] Remove Curse; Remove Curse',
    F: 'm|[@mouseover,help] Cure Poison; Cure Poison',
    ['§']: 's|Shadowmeld',
  },

  ctrl: {
    1: 'm|[@mouseover,help] Healing Touch(Rank 6); Healing Touch(Rank 6)',
    2: 'm|[@mouseover,help] Healing Touch(Rank 8); Healing Touch(Rank 8)',
    3: "s|Nature's Swiftness",
    4: 'm|[@mouseover,help] Regrowth(Rank 7); Regrowth(Rank 7)',
    R: 'm|[@mouseover,help] Swiftmend; Swiftmend',
    F: 'm|[@mouseover,help] Abolish Poison; Abolish Poison',
  },

  alt: {
    2: 'm|[@mouseover,harm] Soothe Animal; Soothe Animal',
    3: 's|Fade',
    4: 'm|[@mouseover,harm] Hibernate; Hibernate',
  }
}

const balance = {
  F3: 's|Divine Spirit',

  shift: {
    V: 'm|[@mouseover,help] Power Infusion; Power Infusion',
  }
}

const feral = {

  shift: {
    V: 's|Holy Nova',
  },
}

const restoration = {
  1: 'm|[nochanneling:Mind Flay] Mind Flay',
  R: 'm|[@mouseover,harm] Vampiric Embrace; Vampiric Embrace',
  C: 'm|[@mouseover,harm] Silence; Silence',

  F3: 's|Shadowform',
}

oBindings.RegisterKeyBindings('Balance', bindings.base, druidBase, balance);
oBindings.RegisterKeyBindings('Feral', bindings.base, druidBase, feral);
oBindings.RegisterKeyBindings('Restoration', bindings.base, druidBase, restoration);
