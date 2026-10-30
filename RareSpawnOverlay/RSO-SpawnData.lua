local RED = "|cffFF0000";
local MAGENTA = "|cffFF00EA";
local GREEN = "|cff30FF00";
local CYAN = "|cff00EEFF";
local OVERLAYS = "Interface\\AddOns\\RareSpawnOverlay\\Overlays\\"
local IMAGES = "Interface\\AddOns\\RareSpawnOverlay\\Images\\"

RareSpawnOverlay.ColorData = {
   red = {
      rgb = RED,
      r = 0xFF,
      g = 0x00,
      b = 0x00
   },
   green = {
      rgb = GREEN,
      r = 0x00,
      g = 0xFF,
      b = 0x00
   },
   magenta = {
      rgb = MAGENTA,
      r = 0xFF,
      g = 0x00,
      b = 0xEA
   },
   cyan = {
      rgb = CYAN,
      r = 0x00,
      g = 0xEE,
      b = 0xFF
   },
}

RareSpawnOverlay.SpawnData = {
   SholazarBasin = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Loque'nahak",
	 ID = 32517,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."SholazarBasin\\Loquenahak.blp",
	 Information = "Level: 76 Beast\nHealth: 16,502\nTameable (Spirit Beast)\n|T"..IMAGES.."Loquenahak:512:1024|t",
      },
      {
	 Name = "Aotona",
	 ID = 32481,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."SholazarBasin\\Aotona.blp",
	 Information = "Level: 75 Beast\nHealth: 15,952\nTameable (Bird of Prey)\n|T"..IMAGES.."Aotona:512|t",
      },
      {
	 Name = "King Krush",
	 ID = 32485,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."SholazarBasin\\KingKrush.blp",
	 Information = "Level: 75 Beast\nHealth: 42,540\nTameable (Devilsaur)\n|T"..IMAGES.."KingKrush:512:1024|t",
      }
   },
   IcecrownGlacier = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Hildana Deathstealer",
	 ID = 32495,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."IcecrownGlacier\\HildanaDeathstealer.blp",
	 Information = "Level: 80 Undead\nHealth: 18,900; Mana: 5,991\n|T"..IMAGES.."HildanaDeathstealer:512|t",
      },
      {
	 Name = "Putridus the Ancient",
	 ID = 32487,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."IcecrownGlacier\\PutridusTheAncient.blp",
	 Information = "Level: 80 Giant\nHealth: 75,600\n|T"..IMAGES.."PutridusTheAncient:512|t",
      },
      {
	 Name = "High Thane Jorfus",
	 ID = 32501,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."IcecrownGlacier\\HighThaneJorfus.blp",
	 Information = "Level: 80 Undead\nHealth: 18,900\n|T"..IMAGES.."HighThaneJorfus:512|t",
      },
   },
   Dragonblight = {
      LegendX = 700,
      LegendY = -40,
      {
	 Name = "Scarlet Highlord Daion",
	 ID = 32417,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."Dragonblight\\ScarletHighlordDaion.blp",
	 Information = "Level: 73 Humanoid\nHealth: 14,910\n|T"..IMAGES.."ScarletHighlordDaion:512|t"
      },
      {
	 Name = "Crazed Indu'le Survivor",
	 ID = 32409,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."Dragonblight\\CrazedInduleSurvivor.blp",
	 Information = "Level: 73 Humanoid\nHealth: 14,910\n|T"..IMAGES.."CrazedInduleSurvivor:512|t"
      },
      {
	 Name = "Tukemuth",
	 ID = 32400,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."Dragonblight\\Tukemuth.blp",
	 Information = "Level: 73 Beast\nHealth: 39,760\n|T"..IMAGES.."Tukemuth:512|t"
      },
   },
   BoreanTundra = {
      LegendX = 10,
      LegendY = -500,
      {
	 Name = "Fumblub Gearwind",
	 ID = 32358,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."BoreanTundra\\FumblubGearwind.blp",
	 Information = "Level: 71 Mechanical\nHealth: 13,936\n|T"..IMAGES.."FumblubGearwind:512|t"
      },
      {
	 Name = "Old Crystalbark",
	 ID = 32357,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."BoreanTundra\\OldCrystalbark.blp",
	 Information = "Level: 71-72 Elemental\nHealth: 13,936 - 14,415; Mana: 3,231 - 3,309\n|T"..IMAGES.."OldCrystalbark:512|t"
      },
      {
	 Name = "Icehorn",
	 ID = 32361,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."BoreanTundra\\Icehorn.blp",
	 Information = "Level: 71 Beast\nHealth: 13,936\n|T"..IMAGES.."Icehorn:512|t"
      },
   },
   HowlingFjord = {
      LegendX = 10,
      LegendY = -400,
      {
	 Name = "Perobas the Bloodthirster",
	 ID = 32377,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."HowlingFjord\\PerobasTheBloodthirster.blp",
	 Information = "Level: 71 Humanoid\nHealth: 13,936\n|T"..IMAGES.."PerobasTheBloodthirster:512|t"
      },
      {
	 Name = "King Ping",
	 ID = 32398,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."HowlingFjord\\KingPing.blp",
	 Information = "Level: 71 Beast\nHealth: 13,936\n|T"..IMAGES.."KingPing:512|t"
      },
      {
	 Name = "Vigdis the War Maiden",
	 ID = 32386,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."HowlingFjord\\VigdisTheWarMaiden.blp",
	 Information = "Level: 71 Humanoid\nHealth: 13,936\n|T"..IMAGES.."VigdisTheWarMaiden:512|t"
      },
   },
   GrizzlyHills = {
      LegendX = 80,
      LegendY = -30,
      {
	 Name = "Grocklar",
	 ID = 32422,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."GrizzlyHills\\Grocklar.blp",
	 Information = "Level: 74 Giant\nHealth: 41,128\n|T"..IMAGES.."Grocklar:512|t"
      },
      {
	 Name = "Syreian the Bonecarver",
	 ID = 32438,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."GrizzlyHills\\SyreianTheBonecarver.blp",
	 Information = "Level: 73 Humanoid\nHealth: 14,910\n|T"..IMAGES.."SyreianTheBonecarver:512|t"
      },
      {
	 Name = "Seething Hate",
	 ID = 32429,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."GrizzlyHills\\SeethingHate.blp",
	 Information = "Level: 73\nHealth: 14,910\n|T"..IMAGES.."SeethingHate:512|t"
      },
   },
   ZulDrak = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Griegen",
	 ID = 32471,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."ZulDrak\\Griegen.blp",
	 Information = "Level: 75 Undead\nHealth: 15,952\n|T"..IMAGES.."Griegen:512|t"
      },
      {
	 Name = "Zul'drak Sentinel",
	 ID = 32447,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."ZulDrak\\ZuldrakSentinel.blp",
	 Information = "Level: 77 Elemental\nHealth: 45,516\n|T"..IMAGES.."ZuldrakSentinel:512|t"
      },
      {
	 Name = "Terror Spinner",
	 ID = 32475,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."ZulDrak\\TerrorSpinner.blp",
	 Information = "Level: 76 Beast\nHealth: 16,502\n|T"..IMAGES.."TerrorSpinner:256:512|t"
      },
      {
	 Name = "Gondria",
	 ID = 33776,
	 Color = RareSpawnOverlay.ColorData.cyan,
	 OverlayFilename = OVERLAYS.."ZulDrak\\Gondria.blp",
	 Information = "Level: 77 Beast\nHealth: 17,068\nTameable (Spirit Beast)\n|T"..IMAGES.."Gondria:512|t"
      },
   },
   TheStormPeaks = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Vyragosa",
	 ID = 32630,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."TheStormPeaks\\Vyragosa.blp",
	 Information = "Level: 80 Dragonkin\nHealth: 18,900\n|T"..IMAGES.."Vyragosa:512|t"
      },
      {
	 Name = "Dirkee",
	 ID = 32500,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."TheStormPeaks\\Dirkee.blp",
	 Information = "Level: 80 Mechanical\nHealth: 50,400; Mana: 3,994\n|T"..IMAGES.."Dirkee:512|t"
      },
      {
	 Name = "Time-Lost Proto Drake",
	 ID = 32491,
	 Color = RareSpawnOverlay.ColorData.cyan,
	 OverlayFilename = OVERLAYS.."TheStormPeaks\\TimeLostProtoDrake.blp",
	 Information = "Level: 80 Dragonkin\nHealth: 18,900\n|T"..IMAGES.."TimeLostProtoDrake:512:1024|t"
      },
   },
   BladesEdgeMountains = {
      LegendX = 80,
      LegendY = -40,
      {
	 ID = 18690,
	 Name = "Morcrush",
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."BladesEdgeMountains\\Morcrush.blp",
	 Information = "Level: 68 Giant\nHealth: 14,981\n|T"..IMAGES.."Morcrush:512|t"
      },
      {
	 Name = "Speaker Mar'grom",
	 ID = 18693,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."BladesEdgeMountains\\SpeakerMargrom.blp",
	 Information = "Level: 68 Humanoid\nHealth: 10,466; Mana: 8,973\n|T"..IMAGES.."SpeakerMargrom:512|t"
      },
      {
	 Name = "Hemathion",
	 ID = 18692,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."BladesEdgeMountains\\Hemathion.blp",
	 Information = "Level: 68 Dragonkin\nHealth: 13,084\n|T"..IMAGES.."Hemathion:512|t"
      },
   },
   Hellfire = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Vorakem Doomspeaker",
	 ID = 18679,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."Hellfire\\VorakemDoomspeaker.blp",
	 Information = "Level: 62 Demon\nHealth: 8,548; Mana: 2,568\n|T"..IMAGES.."VorakemDoomspeaker:512|t"
      },
      {
	 Name = "Fulgorge",
	 ID = 18678,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."Hellfire\\Fulgorge.blp",
	 Information = "Level: 62\nHealth: 10,682\n|T"..IMAGES.."Fulgorge:512|t"
      },
      {
	 Name = "Mekthorg the Wild",
	 ID = 18677,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."Hellfire\\MekthorgTheWild.blp",
	 Information = "Level: 61 Humanoid\nHealth: 10,316\n|T"..IMAGES.."MekthorgTheWild:512|t"
      },
   },
   Nagrand = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Voidhunter Yar",
	 ID = 18683,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."Nagrand\\VoidhunterYar.blp",
	 Information = "Level: 68 Demon\nHealth: 10,466; Mana: 11,964\n|T"..IMAGES.."VoidhunterYar:512|t"
      },
      {
	 Name = "Goretooth",
	 ID = 17144,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."Nagrand\\Goretooth.blp",
	 Information = "Level: 65 Beast\nHealth: 11,828\nTameable (Crocolisk)\n|T"..IMAGES.."Goretooth:512|t"
      },
      {
	 Name = "Bro'Gaz the Clanless",
	 ID = 18684,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."Nagrand\\BroGazTheClanless.blp",
	 Information = "Level: 66 Humanoid\nHealth: 9,784; Mana: 5,692\n|T"..IMAGES.."BroGazTheClanless:512|t"
      },
   },
   Netherstorm = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Nuramoc",
	 ID = 20932,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."Netherstorm\\Nuramoc.blp",
	 Information = "Level: 70 Beast\nHealth: 13,972\nTameable (Chimera)\n|T"..IMAGES.."Nuramoc:256:512|t"
      },
      {
	 Name = "Chief Engineer Lorthander",
	 ID = 18697,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."Netherstorm\\ChiefEngineerLorthander.blp",
	 Information = "Level: 69 Humanoid\nHealth: 10,818; Mana: 15,400\n|T"..IMAGES.."ChiefEngineerLorthander:512|t"
      },
      {
	 Name = "Ever-Core the Punisher",
	 ID = 18698,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."Netherstorm\\EverCoreThePunisher.blp",
	 Information = "Level: 68 Elemental\nHealth: 10,466; Mana: 5,982\n|T"..IMAGES.."EverCoreThePunisher:512|t"
      },
   },
   ShadowmoonValley = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Collidus the Warp-Watcher",
	 ID = 18694,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."ShadowmoonValley\\CollidusTheWarpWatcher.blp",
	 Information = "Level: 68 Demon\nHealth: 13,084\n|T"..IMAGES.."CollidusTheWarpWatcher:512|t"
      },
      {
	 Name = "Kraator",
	 ID = 18696,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."ShadowmoonValley\\Kraator.blp",
	 Information = "Level: 68 Demon\nHealth: 13,084\n|T"..IMAGES.."Kraator:512|t"
      },
      {
	 Name = "Ambassador Jerrikar",
	 ID = 18695,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."ShadowmoonValley\\AmbassadorJerrikar.blp",
	 Information = "Level: 69 Demon\nHealth: 13,522\n|T"..IMAGES.."AmbassadorJerrikar:512|t"
      },
   },
   TerokkarForest = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Crippler",
	 ID = 18689,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."TerokkarForest\\Crippler.blp",
	 Information = "Level: 65 Undead\nHealth: 11.828\n|T"..IMAGES.."Crippler:512|t"
      },
      {
	 Name = "Doomsayer Jurim",
	 ID = 18689,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."TerokkarForest\\DoomsayerJurim.blp",
	 Information = "Level: 64 Humanoid\nHealth: 9,144; Mana: 13,525\n|T"..IMAGES.."DoomsayerJurim:512|t"
      },
      {
	 Name = "Okrek",
	 ID = 18685,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."TerokkarForest\\Okrek.blp",
	 Information = "Level: 64 Humanoid\nHealth: 9,144; Mana: 13,525\n|T"..IMAGES.."Okrek:512|t"
      },
   },
   Zangarmarsh = {
      LegendX = 80,
      LegendY = -40,
      {
	 Name = "Marticar",
	 ID = 18680,
	 Color = RareSpawnOverlay.ColorData.green,
	 OverlayFilename = OVERLAYS.."Zangarmarsh\\Marticar.blp",
	 Information = "Level: 63 Beast\nHealth: 11,054\n|T"..IMAGES.."Marticar:512|t"
      },
      {
	 Name = "Bog Lurker",
	 ID = 18682,
	 Color = RareSpawnOverlay.ColorData.magenta,
	 OverlayFilename = OVERLAYS.."Zangarmarsh\\BogLurker.blp",
	 Information = "Level: 63 Elemental\nHealth: 8,844; Mana: 2,620\n|T"..IMAGES.."BogLurker:512|t"
      },
      {
	 Name = "Coilfang Emissary",
	 ID = 18681,
	 Color = RareSpawnOverlay.ColorData.red,
	 OverlayFilename = OVERLAYS.."Zangarmarsh\\CoilfangEmissary.blp",
	 Information = "Level: 63 Humanoid\nHealth: 8,844; Mana: 10,480\n|T"..IMAGES.."CoilfangEmissary:512:256|t"
      },
   },

};
