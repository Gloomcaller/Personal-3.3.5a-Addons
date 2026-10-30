-- BOSS DATA TABLE
-----------------------------------------------------------------------
local BossData = {
    ["Lord Marrowgar"] = { 
        icon = "Interface\\Icons\\achievement_boss_lordmarrowgar", 
        ["10N"] = "|cffffd100Strategy|r\n\n" ..
              "• |cffffffffTanks stack together in front of the boss.|r\n" ..
              "• |cffffffffThe raid stacks under the boss slightly behind the middle point. If Coldflame causes damage, you are standing too far back.|r\n" ..
              "• |cffffffffBone Spikes are the PRIORITY and must be killed ASAP.|r\n" ..
              "• |cffffffffHunters are the only class to stay outside of the boss's melee range; if they get spiked, RDPS must clear them out.|r\n" ..
              "• |cffffffffRight before Bone Storm, it is recommended that one hunter goes further back to kite the boss away from the raid group.|r\n" ..
              "• |cffffffffDuring Bone Storm, the raid stays spread to avoid being hit by Coldflame in a group.|r",
        
        ["10H"] = "|cffffd100Strategy|r\n\n" ..
              "• |cffffffffSame as normal except for the changes below:|r\n" ..
              "|cffff0000• ON HEROIC: During Bone Storm, the boss keeps casting Bone Spike Graveyard. Therefore, it is important to clear those spikes out ASAP and spread again to avoid being pummeled as a group in the whirlwind/Coldflame trap.|r",
        ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "• |cffffffffTanks stack together in front of the boss.|r\n" ..
              "• |cffffffffThe raid stacks under the boss slightly behind the middle point. If Coldflame causes damage, you are standing too far back.|r\n" ..
              "• |cffffffffBone Spikes are the PRIORITY and must be killed ASAP.|r\n" ..
              "• |cffffffffHunters are the only class to stay outside of the boss's melee range; if they get spiked, RDPS must clear them out.|r\n" ..
              "• |cffffffffRight before Bone Storm, it is recommended that one hunter goes further back to kite the boss away from the raid group.|r\n" ..
              "• |cffffffffDuring Bone Storm, the raid stays spread to avoid being hit by Coldflame in a group.|r",

        ["25H"] = "|cffffd100Strategy|r\n\n" ..
              "• |cffffffffSame as normal except for the changes below:|r\n" ..
              "|cffff0000• ON HEROIC: During Bone Storm, the boss keeps casting Bone Spike Graveyard. Therefore, it is important to clear those spikes out ASAP and spread again to avoid being pummeled as a group in the whirlwind/Coldflame trap.|r"
    },
    ["Lady Deathwhisper"] = { 
        icon = "Interface\\Icons\\achievement_boss_ladydeathwhisper",
      ["10N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffTanks prepare to take adds on one side and everyone else will have to swap from the boss to the adds to kill them fast.|r\n" ..
              "• |cffffffffWhen there are no adds, the raid continues to damage the boss to remove the Mana Shield.|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "• |cffffffffThe boss is now moving and causing more damage. The tank needs to move the boss if there is Death and Decay on the ground below the boss.|r\n" ..
              "• |cffffffffThe boss will summon Vengeful Spirits and those spirits will each chase their own player and upon reaching the target they will explode, causing damage to the target.|r\n" ..
              "• |cffffffffThere will be 1 add spawning from the entrance and the off-tank needs to take aggro for this one.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffThe boss will cast a debuff called Touch of Insignificance, which reduces the tank's threat generation by 20% per stack. It is important that Rogues and Hunters cast Misdirection & Tricks of the Trade on the main tank continuously on cooldown.|r",

        ["10H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffTanks prepare to take adds on one side and everyone else will have to swap from the boss to the adds to kill them fast.|r\n" ..
              "• |cffffffffWhen there are no adds, the raid continues to damage the boss to remove the Mana Shield.|r\n" ..
              "• |cffffffffRogues and Hunters assist threat with MD & TotS.|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "• |cffffffffThe boss is now moving and causing more damage. The tank needs to move the boss if there is Death and Decay on the ground below the boss.|r\n" ..
              "• |cffffffffThe boss will summon Vengeful Spirits and those spirits will each chase their own player; upon reaching the target, they will explode, causing damage.|r\n" ..
              "• |cffffffffThere will be an add spawning and the off-tank needs to take aggro.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffThe boss will cast a debuff called Touch of Insignificance, which reduces the tank's threat generation by 20% per stack. It is important that Rogues and Hunters cast Misdirection & Tricks of the Trade on the main tank continuously on cooldown.|r\n" ..
              "• |cffffffffThere will be Mind Control going out throughout the whole fight in Phases 1 and 2. There will be 1 mind-controlled player that needs to be CC'd (the best being Cyclone from a Druid).|r\n" ..
              "|cffff0000• HEROIC ONLY: It is recommended that the main tank keeps moving the boss constantly to avoid melee being hit by spirits or cleaved down by friendlies if someone gets mind-controlled.|r\n" ..
              "|cffff0000• HEROIC ONLY: Spirits now cause AOE damage upon explosion, so AVOID AT ALL COSTS!|r",

        ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffTanks prepare to take adds on each side and everyone else will have to swap from the boss to the adds to kill them fast.|r\n" ..
              "• |cffffffffWhen there are no adds, the raid continues to damage the boss to remove the Mana Shield.|r\n" ..
              "• |cffffffffGroups 1 & 3 damage adds on the left side; Rogues and Hunters use MD & TotS on the tank on this side.|r\n" ..
              "• |cffffffffGroups 2 & 4 damage adds on the right side; Rogues and Hunters use MD & TotS on the tank on this side.|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "• |cffffffffThe boss is now moving and causing more damage. The tank needs to move the boss if there is Death and Decay on the ground below the boss.|r\n" ..
              "• |cffffffffThe boss will summon Vengeful Spirits; these spirits will each chase their own player and upon reaching the target, they will explode, causing damage.|r\n" ..
              "• |cffffffffThere will be adds spawning and the off-tank needs to take aggro.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffThe boss will cast a debuff called Touch of Insignificance, which reduces the tank's threat generation by 20% per stack. It is important that Rogues and Hunters cast Misdirection & Tricks of the Trade on the main tank continuously on cooldown.|r\n" ..
              "• |cffffffffThere will be Mind Control going out throughout the whole fight in Phases 1 and 2. The mind-controlled person needs to be CC'd (the best being Cyclone from a Druid).|r",

              ["25H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffTanks prepare to take adds on each side and everyone else will have to swap from the boss to the adds to kill them fast.|r\n" ..
              "• |cffffffffWhen there are no adds, the raid continues to damage the boss to remove the Mana Shield.|r\n" ..
              "• |cffffffffGroups 1 & 3 damage adds on the left side; Rogues and Hunters use MD & TotS on the tank on this side.|r\n" ..
              "• |cffffffffGroups 2 & 4 damage adds on the right side; Rogues and Hunters use MD & TotS on the tank on this side.|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "• |cffffffffThe boss is now moving and causing more damage. The tank needs to move the boss if there is Death and Decay on the ground below the boss.|r\n" ..
              "• |cffffffffThe boss will summon Vengeful Spirits and those spirits will each chase their own player; upon reaching the target, they will explode, causing damage.|r\n" ..
              "• |cffffffffThere will be adds spawning and the off-tank needs to take aggro.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffThe boss will cast a debuff called Touch of Insignificance, which reduces the tank's threat generation by 20% per stack. It is important that Rogues and Hunters cast Misdirection & Tricks of the Trade on the main tank continuously on cooldown.|r\n" ..
              "• |cffffffffThere will be Mind Controls going out throughout the whole fight in Phases 1 and 2. There will be 3 mind-controlled players that need to be CC'd (the best being Cyclone from a Druid).|r\n" ..
              "|cffff0000• HEROIC ONLY: It is recommended that the main tank keeps moving the boss constantly to avoid melee being hit by spirits or cleaved down by friendlies if someone gets mind-controlled.|r\n" ..
              "|cffff0000• HEROIC ONLY: Spirits now cause AOE damage upon explosion, so AVOID AT ALL COSTS!|r",
},
    ["Gunship Battle"] = { 
        icon = "Interface\\Icons\\achievement_dungeon_hordeairship", 
        ["10N"] = "|cffffd100Cannon Strategy|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffCannon damage: Use 1-1-2 style to cause the highest possible damage.|r\n" ..
              "• |cffffffffKeep repeating 1-1-2 as fast as possible!|r",

        ["10H"] = "|cffffd100Cannon Strategy|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffCannon damage: Use 1-1-2 style to cause the highest possible damage.|r\n" ..
              "• |cffffffffKeep repeating 1-1-2 as fast as possible!|r",

        ["25N"] = "|cffffd100Cannon Strategy|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffCannon damage: Use 1-1-2 style to cause the highest possible damage.|r\n" ..
              "• |cffffffffKeep repeating 1-1-2 as fast as possible!|r",

        ["25H"] = "|cffffd100Cannon Strategy|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffCannon damage: Use 1-1-2 style to cause the highest possible damage.|r\n" ..
              "• |cffffffffKeep repeating 1-1-2 as fast as possible!|r",

        
    },
    ["Deathbringer Saurfang"] = { 
        icon = "Interface\\Icons\\achievement_boss_saurfang",
        ["10N"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffBoss will cast a debuff called Rune of Blood. The other tank must taunt immediately; otherwise, the boss will heal himself for every hit!|r\n\n" ..
              "|cffffd100MDPS & RDPS|r\n\n" ..
              "• |cffffffffBlood Beasts will spawn throughout the fight and must be killed ASAP. Stun and kite them if they target you.|r\n" ..
              "• |cffffffffBeasts have a 95% AOE damage reduction, so SINGLE TARGET DAMAGE is required!|r\n" ..
              "• |cffffffffElemental Shamans (Chain Lightning), Moonkins (Starfall), and Retribution Paladins (Seal of Command) can use these abilities as they count as single-target damage.|r\n\n" ..
              "|cffffd100Healers|r\n\n" ..
              "• |cffffffffWhen the boss reaches 100% Blood Power, he casts Mark of the Fallen Champion on a random player. You must keep them alive; if they die, the boss heals for 5%!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffAs Blood Power increases, the boss deals more damage. Tanks should use cooldowns when taunting at high Blood Power.|r\n" ..
              "• |cffffffffBoss enrages at 30% HP; be ready to maximize heals and use external cooldowns on tanks.|r\n" ..
              "• |cffffffffMark of the Fallen Champion targets can be helped by Hand of Protection, Divine Shield, or Ice Block to temporarily mitigate or avoid the physical damage portion.|r\n\n",

        ["10H"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffBoss will cast a debuff called Rune of Blood. The other tank must taunt immediately; otherwise, the boss will heal himself for every hit!|r\n\n" ..
              "|cffffd100MDPS & RDPS|r\n\n" ..
              "• |cffffffffBlood Beasts will spawn throughout the fight and must be killed ASAP. Stun and kite them if they target you.|r\n" ..
              "• |cffffffffBeasts have a 95% AOE damage reduction, so SINGLE TARGET DAMAGE is required!|r\n" ..
              "• |cffffffffElemental Shamans (Chain Lightning), Moonkins (Starfall), and Retribution Paladins (Seal of Command) can use these abilities as they count as single-target damage.|r\n\n" ..
              "|cffffd100Healers|r\n\n" ..
              "• |cffffffffWhen the boss reaches 100% Blood Power, he casts Mark of the Fallen Champion on a random player. You must keep them alive; if they die, the boss heals for 5%!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffAs Blood Power increases, the boss deals more damage. Tanks should use cooldowns when taunting at high Blood Power.|r\n" ..
              "• |cffffffffBoss enrages at 30% HP; be ready to maximize heals and use external cooldowns on tanks.|r\n" ..
              "• |cffffffffMark of the Fallen Champion targets can be helped by Hand of Protection, Divine Shield, or Ice Block to temporarily mitigate or avoid the physical damage portion.|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffff0000ON HEROIC: Tactics are the same, but the damage is significantly higher!|r",

            ["25N"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffBoss will cast a debuff called Rune of Blood. The other tank must taunt it off immediately; otherwise, the boss will heal himself!|r\n\n" ..
              "|cffffd100MDPS & RDPS|r\n\n" ..
              "• |cffffffffFive Blood Beasts will spawn throughout the fight and must be killed ASAP. Stun and kite them if they target you.|r\n" ..
              "• |cffffffffBeasts receive a 95% AOE damage reduction, so SINGLE TARGET DAMAGE is required!|r\n" ..
              "• |cffffffffElemental Shamans (Chain Lightning), Moonkins (Starfall), and Retribution Paladins (Seal of Command) can use these abilities as they count as single-target damage.|r\n\n" ..
              "|cffffd100Healers|r\n\n" ..
              "• |cffffffffWhen the boss reaches 100% Blood Power, he casts Mark of the Fallen Champion on random raid members. You must keep them alive; if they die, the boss heals for 5%!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffAs Blood Power increases, the boss deals more damage. Tanks should use cooldowns when taunting at high Blood Power.|r\n" ..
              "• |cffffffffBoss enrages at 30% HP; be ready to maximize heals and use external cooldowns on tanks.|r\n" ..
              "• |cffffffffMark of the Fallen Champion targets can be helped by Hand of Protection, Divine Shield, or Ice Block to temporarily mitigate or avoid damage.|r\n\n",

              ["25H"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffBoss will cast a debuff called Rune of Blood. The other tank must taunt it off immediately; otherwise, the boss will heal himself!|r\n\n" ..
              "|cffffd100MDPS & RDPS|r\n\n" ..
              "• |cffffffffFive Blood Beasts will spawn throughout the fight and must be killed ASAP. Stun and kite them if they target you.|r\n" ..
              "• |cffffffffBeasts receive a 95% AOE damage reduction, so SINGLE TARGET DAMAGE is required!|r\n" ..
              "• |cffffffffElemental Shamans (Chain Lightning), Moonkins (Starfall), and Retribution Paladins (Seal of Command) can use these abilities as they count as single-target damage.|r\n\n" ..
              "|cffffd100Healers|r\n\n" ..
              "• |cffffffffWhen the boss reaches 100% Blood Power, he casts Mark of the Fallen Champion on random raid members. You must keep them alive; if they die, the boss heals for 5%!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffAs Blood Power increases, the boss deals more damage. Tanks should use cooldowns when taunting at high Blood Power.|r\n" ..
              "• |cffffffffBoss enrages at 30% HP; be ready to maximize heals and use external cooldowns on tanks.|r\n" ..
              "• |cffffffffMark of the Fallen Champion targets can be helped by Hand of Protection, Divine Shield, or Ice Block to temporarily mitigate or avoid damage.|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffff0000ON HEROIC: Tactics are the same, but the damage is significantly higher!|r",
    },
    ["Festergut"] = { 
        icon = "Interface\\Icons\\achievement_boss_festergutrotface", 
        ["10N"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffTank the boss in the middle of the room.|r\n" ..
              "• |cffffffffSwap tanks at 7-8 stacks of Gastric Bloat.|r\n" ..
              "• |cffffffffWhen swapping, the new tank should use a cooldown before taunting.|r\n\n" ..
              "|cffffd100MDPS|r\n\n" ..
              "• |cffffffffStay behind the boss's LEFT or RIGHT leg. DO NOT STAY IN THE MIDDLE.|r\n" ..
              "• |cffffffffIf Malleable Goo targets the melee, swap legs immediately. Move back if it happens again.|r\n\n" ..
              "|cffffd100RDPS & Healers|r\n\n" ..
              "• |cffffffffSpread around the front of the room (entrance side).|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffThe boss will cast 2 Gas Spores. One should be placed on MDPS and one should be placed on the healers/ranged.|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffffffffVile Gas: Targets 1 random ranged player, causing them to vomit and disorienting them for 6 seconds. Stay spread!|r\n" ..
              "• |cffffffffGastric Bloat: This debuff is cast on tanks. It will explode at 10 stacks, instantly killing the tank.|r\n" ..
              "• |cffffffffGas Spores: Two players will get spores; everyone must stack on them. One on melee and one on ranged. Spores provide a buff that reduces Shadow damage taken, which is necessary to survive Pungent Blight (stacks up to 3 times).|r\n" ..
              "• |cffff0000Pungent Blight: This is cast after the 3rd set of spores. It causes massive damage to the whole raid. It must be mitigated by shields or damage reduction spells. Notes: you MUST have the Spore stacks to survive!|r",
        
         ["10H"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffTank the boss in the middle of the room.|r\n" ..
              "• |cffffffffSwap tanks at 7-8 stacks of Gastric Bloat.|r\n" ..
              "• |cffffffffWhen swapping, the new tank should use a cooldown before taunting.|r\n\n" ..
              "|cffffd100MDPS|r\n\n" ..
              "• |cffffffffStay behind the boss's LEFT or RIGHT leg. DO NOT STAY IN THE MIDDLE.|r\n" ..
              "• |cffffffffIf Malleable Goo is marked under melee, swap legs. Move back if it happens again.|r\n\n" ..
              "|cffffd100RDPS & Healers|r\n\n" ..
              "• |cffffffffSpread around the front of the room (entrance side).|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffThe boss will cast 2 spores: 1 should be placed on MDPS and 1 should be placed on healers/ranged.|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffffffffVile Gas: Targets 1 random ranged player, causing them to vomit and disorienting them for 6 seconds. Stay spread!|r\n" ..
              "• |cffff0000ON HEROIC: Gastric Bloat is a debuff the boss casts on tanks. It will explode at 10 stacks, causing massive AOE damage that will most likely wipe the raid.|r\n" ..
              "• |cffffffffGas Spores: Two players will spawn spores; everyone must stack on them. One on melee and one on ranged. Spores provide a buff that increases shadow resistance and is necessary to survive Pungent Blight (stacks 3 times).|r\n" ..
              "• |cffff0000Pungent Blight: This will be cast after the 3rd set of spores. This causes massive damage to the whole raid and can be mitigated by shields or damage mitigation spells.|r",     
        
            ["25N"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffTank the boss in the middle of the room.|r\n" ..
              "• |cffffffffSwap tanks at 7-8 stacks of Gastric Bloat.|r\n" ..
              "• |cffffffffWhen swapping, the new tank should use a cooldown before taunting.|r\n\n" ..
              "|cffffd100MDPS|r\n\n" ..
              "• |cffffffffStay behind the boss's LEFT or RIGHT leg. DO NOT STAY IN THE MIDDLE.|r\n" ..
              "• |cffffffffIf Malleable Goo is marked under melee, swap legs. Move back if it happens again.|r\n\n" ..
              "|cffffd100RDPS & Healers|r\n\n" ..
              "• |cffffffffSpread around the front of the room (entrance side).|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffThe boss will cast 3 spores: 1 should be placed on MDPS and 2 should be placed on healers/ranged.|r\n" ..
              "• |cffffffffDO NOT stack spores together!|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffffffffVile Gas: Targets 3 random ranged player, causing them to vomit and disorienting them for 6 seconds. Stay spread!|r\n" ..
              "• |cffffffffGastric Bloat: This debuff is cast on tanks and will explode at 10 stacks, causing the tank to die.|r\n" ..
              "• |cffffffffGas Spores: Three players will spawn spores; everyone must stack on them. One on melee and two on ranged. Spores provide a buff that reduces shadow damage taken and is necessary to survive Pungent Blight (stacks 3 times).|r\n" ..
              "• |cffff0000Pungent Blight: This will be cast after the 3rd set of spores. This causes massive damage to the whole raid and can be mitigated by shields or damage mitigation spells.|r",

              ["25H"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffTank the boss in the middle of the room.|r\n" ..
              "• |cffffffffSwap tanks at 7-8 stacks of Gastric Bloat.|r\n" ..
              "• |cffffffffWhen swapping, the new tank should use a cooldown before taunting.|r\n\n" ..
              "|cffffd100MDPS|r\n\n" ..
              "• |cffffffffStay behind the boss's LEFT or RIGHT leg. DO NOT STAY IN THE MIDDLE.|r\n" ..
              "• |cffffffffIf Malleable Goo targets the melee, swap legs immediately. Move back if it happens again.|r\n\n" ..
              "|cffffd100RDPS & Healers|r\n\n" ..
              "• |cffffffffSpread around the front of the room (entrance side).|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffThe boss will cast 3 Gas Spores: 1 should be placed on MDPS and 2 should be placed on healers/ranged.|r\n" ..
              "• |cffffffffDO NOT stack spores together!|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffffffffVile Gas: Targets 3 random ranged player, causing them to vomit and disorienting them for 6 seconds. Stay spread!|r\n" ..
              "• |cffff0000ON HEROIC: Gastric Bloat is cast on tanks and will explode at 10 stacks, causing a massive AOE explosion that will wipe the raid.|r\n" ..
              "• |cffffffffGas Spores: Three players will spawn spores; everyone must stack on them. One on melee and two on ranged. Spores provide a buff that increases shadow resistance and is necessary to survive Pungent Blight (stacks 3 times).|r\n" ..
              "• |cffff0000Pungent Blight: This is cast after the 3rd set of spores. It causes massive damage to the whole raid and must be mitigated by shields or damage reduction spells.|r",
    },
    ["Rotface"] = { 
        icon = "Interface\\Icons\\achievement_boss_festergutrotface", 
        ["10N"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffMain Tank: Keep the boss in the middle of the room.|r\n" ..
              "• |cffffffffOff-Tank: Kite the Big Ooze around the outer circle of the room's floor texture.|r\n" ..
              "• |cffffffffWhen the boss begins spitting, the Main Tank should move to the safe area behind or to the side of the boss.|r\n\n" ..
              "|cffffd100MDPS|r\n\n" ..
              "• |cffffffffAlways stay behind the boss. When the boss casts Slime Spray, ensure you are not in front of him.|r\n" ..
              "• |cffffffffDo not use cleave abilities if a Big Ooze is being merged in the middle.|r\n" ..
              "• |cffffffffAvoid merging two Little Oozes in the center; lead them to the Off-Tank on the outside.|r\n\n" ..
              "|cffffd100RDPS & Healers|r\n\n" ..
              "• |cffffffffStay spread around the room and avoid the slime pools flowing from the wall vents.|r\n" ..
              "• |cffffffffMove behind the boss during Slime Spray if possible.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffStrategy: Combine a Little Ooze with another Little Ooze to create a Big Ooze, then merge Big ooze into the Big Ooze to delay the explosion.|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffffffffMutated Infection: A random player receives this debuff, which reduces healing received. It must be dispelled quickly. Upon dispel, it spawns a Little Ooze.|r\n" ..
              "• |cffffffffSlime Spray: The boss faces a random direction and spits acid. Move behind him to avoid massive damage.|r\n" ..
              "• |cffff0000Unstable Big Ooze Explosion: Occurs when the Big Ooze reaches 5 stacks. It will shoot 10 goos at player locations. Move to a clear spot where no one was standing to stay safe!|r",
              
              ["10H"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffMain Tank: Keep the boss in the middle of the room.|r\n" ..
              "• |cffffffffOff-Tank: Kite the Big Ooze around the outer circle of the room's floor texture.|r\n" ..
              "• |cffffffffWhen the boss begins Slime Spray, the Main Tank must move to the side or behind the boss to avoid damage.|r\n\n" ..
              "|cffffd100MDPS|r\n\n" ..
              "• |cffffffffAlways stay behind the boss. When the boss spits, move behind him immediately.|r\n" ..
              "• |cffffffffDo not use cleave abilities if a Big Ooze is being merged in the middle.|r\n" ..
              "• |cffffffffAvoid merging two Little Oozes in the center; lead them to the Off-Tank on the outside.|r\n\n" ..
              "|cffffd100RDPS & Healers|r\n\n" ..
              "• |cffffffffStay spread around the room. Avoid slime pools from wall vents and maintain distance to prevent spreading Vile Gas.|r\n" ..
              "• |cffffffffMove behind the boss during Slime Spray if possible.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffStrategy: Combine a Little Ooze with another Little Ooze to create a Big Ooze, then merge Big ooze into the Big Ooze to delay the explosion.|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffffffffMutated Infection: Reduces healing received and must be dispelled quickly. Spawns a Little Ooze upon removal.|r\n" ..
              "• |cffffffffSlime Spray: Avoid the acid spit by staying behind the boss.|r\n" ..
              "• |cffff0000Unstable Big Ooze Explosion: Occurs at 5 stacks. Move to a spot where no one was standing to avoid the falling goos.|r\n" ..
              "• |cffff0000ON HEROIC: Vile Gas is added. It affects 3 players (in 10-man) or more (in 25-man). You must stay spread at least 8 yards apart or the disorientation and damage will spread!|r",

              ["25H"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffMain Tank: Keep the boss in the middle of the room.|r\n" ..
              "• |cffffffffOff-Tank: Kite the Big Ooze around the outer circle of the room's floor texture.|r\n" ..
              "• |cffffffffWhen the boss begins Slime Spray, the Main Tank must move to the side or behind the boss to avoid damage.|r\n\n" ..
              "|cffffd100MDPS|r\n\n" ..
              "• |cffffffffAlways stay behind the boss. When the boss spits, move behind him immediately.|r\n" ..
              "• |cffffffffDo not use cleave abilities if a Big Ooze is being merged in the middle.|r\n" ..
              "• |cffffffffAvoid merging two Little Oozes in the center; lead them to the Off-Tank on the outside.|r\n\n" ..
              "|cffffd100RDPS & Healers|r\n\n" ..
              "• |cffffffffStay spread around the room. Avoid slime pools from wall vents and maintain distance to prevent spreading Vile Gas.|r\n" ..
              "• |cffffffffMove behind the boss during Slime Spray if possible.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffStrategy: Combine a Little Ooze with another Little Ooze to create a Big Ooze, then merge Big ooze into the Big Ooze to delay the explosion.|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffffffffMutated Infection: Reduces healing received and must be dispelled quickly. Spawns a Little Ooze upon removal.|r\n" ..
              "• |cffffffffSlime Spray: Avoid the acid spit by staying behind the boss.|r\n" ..
              "• |cffff0000Unstable Big Ooze Explosion: Occurs at 5 stacks. Move to a spot where no one was standing to avoid the falling goos.|r\n" ..
              "• |cffff0000ON HEROIC: Vile Gas is added. It affects 3 players (in 10-man) or more (in 25-man). You must stay spread at least 8 yards apart or the disorientation and damage will spread!|r",
              

        ["25N"] = "|cffffd100Phase 1.|r\n\n" ..
              "|cffffd100Tanks|r\n\n" ..
              "• |cffffffffMain Tank: Keep the boss in the middle of the room.|r\n" ..
              "• |cffffffffOff-Tank: Kite the Big Ooze around the outer circle of the room's floor texture.|r\n" ..
              "• |cffffffffWhen the boss begins spitting, the Main Tank should move to the safe area behind or to the side of the boss.|r\n\n" ..
              "|cffffd100MDPS|r\n\n" ..
              "• |cffffffffAlways stay behind the boss. When the boss casts Slime Spray, ensure you are not in front of him.|r\n" ..
              "• |cffffffffDo not use cleave abilities if a Big Ooze is being merged in the middle.|r\n" ..
              "• |cffffffffAvoid merging two Little Oozes in the center; lead them to the Off-Tank on the outside.|r\n\n" ..
              "|cffffd100RDPS & Healers|r\n\n" ..
              "• |cffffffffStay spread around the room and avoid the slime pools flowing from the wall vents.|r\n" ..
              "• |cffffffffMove behind the boss during Slime Spray if possible.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffStrategy: Combine a Little Ooze with another Little Ooze to create a Big Ooze, then merge Big ooze into the Big Ooze to delay the explosion.|r\n\n" ..
              "|cffffd100Boss Mechanics|r\n\n" ..
              "• |cffffffffMutated Infection: A random player receives this debuff, which reduces healing received. It must be dispelled quickly. Upon dispel, it spawns a Little Ooze.|r\n" ..
              "• |cffffffffSlime Spray: The boss faces a random direction and spits acid. Move behind him to avoid massive damage.|r\n" ..
              "• |cffff0000Unstable Big Ooze Explosion: Occurs when the Big Ooze reaches 5 stacks. It will shoot 25 goos at players locations. Move to a clear spot where no one was standing to stay safe!|r",
    },
    ["Professor Putricide"] = { 
        icon = "Interface\\Icons\\achievement_boss_profputricide", 
        ["10N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1: 100% - 80% HP|r\n\n" ..
              "• |cffffffffThe boss should be kept at the table. The Abomination has to drink puddles to gain at least 46 Energy to be able to slow the next incoming ooze.|r\n" ..
              "• |cffffffffAt 80% HP, the boss will push to transition and stun the raid for a short duration.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffIf the green ooze spawns at about 90% boss HP, kill it. Otherwise, if it spawns at 85%, keep pushing the boss to transition and do not slow the ooze before the transition is over. Do not waste energy as the Abomination.|r\n\n" ..
              "|cffffd100Phase 2: 80% - 35% HP|r\n\n" ..
              "• |cffffffffDuring Phase 2, if the green ooze has already spawned, it must now be slowed and killed. Whomever the green ooze targets, the raid has to stack with that target to share the damage explosion.|r\n" ..
              "• |cffffffffIf the orange ooze is next, then the tank should move the boss to the green side and keep the boss at the wall on that side.|r\n" ..
              "• |cffffffffWhen the orange ooze spawns, it will target a player, and that player has to run AWAY from the ooze itself and not let it reach them. Otherwise, it will explode, causing big damage to the whole raid and possibly even wiping the raid.|r\n" ..
              "• |cffffffffThe tank has to keep rotating from the green to the orange sides respectively, depending on which ooze is going to spawn next. Do not stay on the same side.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffBe sure that you have enough time to push to 35% boss HP without spawning another ooze, because the Abomination will be removed during the second transition.|r\n" ..
              "• |cffffffffAlways save Rocket Boots or any other speed-increasing items when you are chased by the red ooze in case you are cornered and need to move fast!|r\n" ..
              "• |cffffffffAvoid the Malleable Oozes that the boss throws; ranged should STAY MID-RANGE to the boss.|r\n" ..
              "• |cffffffffAvoid Choking Gas during Phase 2. The boss will drop Choking Gas on the ground and the vial will explode, causing AOE damage from the vial. AVOID THIS!|r\n\n" ..
              "|cffffd100Phase 3: 35% - 0% HP|r\n\n" ..
              "• |cffffffffThis will be the execution phase where tanks will gain a debuff that will heal the boss upon death.|r\n" ..
              "• |cffffffffTanks will need to swap after the other one gains 3 stacks. Once the off-tank also has 3 stacks of the debuff, the main tank will take the boss again to take a 4th stack, and the off-tank takes a 4th stack after that if necessary.|r\n" ..
              "• |cffffffffTanks need to keep the boss moving in case there is a puddle or Choking Gas nearby the melee DPS. Give them ROOM!|r\n" ..
              "• |cffffffffThere are no more oozes during this phase.|r",

        ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1: 100% - 80% HP|r\n\n" ..
              "• |cffffffffThe boss should be kept at the table. The Abomination has to drink puddles to gain at least 46 Energy to be able to slow the next incoming ooze.|r\n" ..
              "• |cffffffffAt 80% HP, the boss will push to transition and stun the raid for a short duration.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffIf the green ooze spawns at about 90% boss HP, kill it. Otherwise, if it spawns at 85%, keep pushing the boss to transition and do not slow the ooze before the transition is over. Do not waste energy as the Abomination.|r\n\n" ..
              "|cffffd100Phase 2: 80% - 35% HP|r\n\n" ..
              "• |cffffffffDuring Phase 2, if the green ooze has already spawned, it must now be slowed and killed. Whomever the green ooze targets, the raid has to stack with that target to share the damage explosion.|r\n" ..
              "• |cffffffffIf the orange ooze is next, then the tank should move the boss to the green side and keep the boss at the wall on that side.|r\n" ..
              "• |cffffffffWhen the orange ooze spawns, it will target a player, and that player has to run AWAY from the ooze itself and not let it reach them. Otherwise, it will explode, causing big damage to the whole raid and possibly even wiping the raid.|r\n" ..
              "• |cffffffffThe tank has to keep rotating from the green to the orange sides respectively, depending on which ooze is going to spawn next. Do not stay on the same side.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffBe sure that you have enough time to push to 35% boss HP without spawning another ooze, because the Abomination will be removed during the second transition.|r\n" ..
              "• |cffffffffAlways save Rocket Boots or any other speed-increasing items when you are chased by the red ooze in case you are cornered and need to move fast!|r\n" ..
              "• |cffffffffAvoid the Malleable Oozes that the boss throws; ranged should STAY MID-RANGE to the boss.|r\n" ..
              "• |cffffffffAvoid Choking Gas during Phase 2. The boss will drop Choking Gas on the ground and the vial will explode, causing AOE damage from the vial. AVOID THIS!|r\n\n" ..
              "|cffffd100Phase 3: 35% - 0% HP|r\n\n" ..
              "• |cffffffffThis will be the execution phase where tanks will gain a debuff that will heal the boss upon death.|r\n" ..
              "• |cffffffffTanks will need to swap after the other one gains 3 stacks. Once the off-tank also has 3 stacks of the debuff, the main tank will take the boss again to take a 4th stack, and the off-tank takes a 4th stack after that if necessary.|r\n" ..
              "• |cffffffffTanks need to keep the boss moving in case there is a puddle or Choking Gas nearby the melee DPS. Give them ROOM!|r\n" ..
              "• |cffffffffThere are no more oozes during this phase.|r",

        ["10H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffff0000• ON HEROIC MAJOR CHANGE: Transitions no longer stun; instead, they keep the fight going and spawn two oozes: Green and Orange.|r\n\n" ..
              "|cffffd100Phase 1: 100% - 80% HP|r\n\n" ..
              "|cffff0000• ON HEROIC: Choose if you want to push this out to transition or kill the green ooze before pushing to transition. If you decide to kill the first ooze, stack on it and do not SLOW this ooze, or the Abomination won't have enough energy for the transition.|r\n\n" ..
              "|cffffd100Transition 1.5|r\n\n" ..
              "|cffff0000• ON HEROIC: The Abomination should have 100% energy and one puddle UP (DO NOT DRINK EVERYTHING). Now the transition spawns two oozes: Green and Orange. The Green ooze must be killed first (stack at the green ooze with your character's back toward the green tank so you don't get pushed to the orange ooze by accident). Once the green is dead, finish the orange ooze. The same tactics for ooze targets apply as in normal mode.|r\n\n" ..
              "|cffffd100Phase 2: 80% - 35% HP|r\n\n" ..
              "• |cffffffffSame as normal.|r\n" ..
              "• |cffffffffAbomination: Make sure to have 100% energy before pushing to the next transition.|r\n\n" ..
              "|cffffd100Transition 2.5|r\n\n" ..
              "|cffff0000• ON HEROIC: Same as the first one. Finish the oozes and continue to Phase 3.|r\n\n" ..
              "|cffffd100Phase 3: Execution|r\n\n" ..
              "|cffff0000• Same as normal except for higher damage; tanks CANNOT GO MORE THAN 3 STACKS or the raid starts to take a lot of damage.|r",

        ["25H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffff0000• ON HEROIC MAJOR CHANGE: Transitions no longer stun but keep the fight going. The boss spawns 2 oozes (Green and Orange) and each player gets a debuff: either Orange = Gas Variable or Green = Ooze Variable.|r\n" ..
              "|cffff0000• New Debuff involved: Unbound Plague. This deals massive shadow damage over time. To handle it, you must pass it to another player by running into them when your stacks get too high, but do not pass it to someone who recently had it (Plague Sickness).|r\n\n" ..
              "|cffffd100Phase 1: 100% - 80% HP|r\n\n" ..
              "|cffff0000• ON HEROIC: Choose if you want to push this out to transition or kill the green ooze before pushing to transition. If you decide to kill the first ooze, stack on it and do not SLOW this ooze or the Abomination won't have enough energy for the transition.|r\n\n" ..
              "|cffffd100Transition 1.5|r\n\n" ..
              "|cffff0000• ON HEROIC: The Abomination should have 100% energy and 1 puddle UP (DO NOT DRINK EVERYTHING). Now the transition spawns 2 oozes: Green and Orange.|r\n" ..
              "|cffff0000• Each player has an Orange or Green debuff, which means you can only damage the same color ooze as your debuff.|r\n" ..
              "|cffff0000• Once the transition is over, if one of the oozes is still alive, everyone can DPS that ooze now that the debuffs are gone.|r\n\n" ..
              "|cffffd100Phase 2: 80% - 35% HP|r\n\n" ..
              "• |cffffffffSame as normal.|r\n" ..
              "• |cffffffffAbomination: Make sure to have 100% energy before pushing to the next transition.|r\n\n" ..
              "|cffffd100Transition 2.5|r\n\n" ..
              "|cffff0000• ON HEROIC: Same as the first one. Finish the oozes and continue to Phase 3.|r\n\n" ..
              "|cffffd100Phase 3: Execution|r\n\n" ..
              "|cffff0000• Same as normal except for higher damage; tanks CANNOT GO MORE THAN 3 STACKS or the raid starts to take a lot of damage.|r",
    },
    ["Blood Prince Council"] = { 
        icon = "Interface\\Icons\\achievement_boss_princetaldaram",
        ["10N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "|cffffa500Prince Valanar is now empowered.|r\n" ..
              "• |cffffffffTanks stack Valanar and Taldaram in the middle and melee DPS behind them.|r\n" ..
              "• |cffffffffHealers are going to stay in the middle of the lower platform by the stairs, SPREAD.|r\n" ..
              "• |cffffffffRanged DPS should stay behind the healers, SPREAD.|r\n" ..
              "• |cffffffffValanar will cast Empowered Shock Vortex which will, on success, cause everyone to spawn a shockwave from within, causing damage to nearby friends and pushing them back. Avoid this by spreading.|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "|cffffa500Prince Taldaram is now empowered.|r\n" ..
              "• |cffffffffEverything stays the same as with Valanar except the main target swaps to Taldaram now. (You can see target swaps by their health pools.)|r\n" ..
              "• |cffffffffTaldaram will now cast Empowered Fireball which will traverse to one ranged person (out of melee range). Upon reaching the target, it explodes, causing AOE damage. AOE damage can be reduced by kiting the fireball through other raid members; it has stacks that reduce as it passes through players.|r\n\n" ..
              "|cffffd100Phase 3.|r\n\n" ..
              "|cffffa500Prince Keleseth is now empowered.|r\n" ..
              "• |cffffffffSwap the target to Keleseth and be sure NOT TO CLEAVE AT HIM.|r\n" ..
              "• |cffffffffThe tank who is tanking Keleseth should have Dark Nucleuses collected up until this point and should do a little damage to them to maintain aggro.|r\n" ..
              "• |cffffffffKeleseth is tank survival more than anything else. Just DPS him down and make sure not to CLEAVE!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffPhases might change during this encounter in a random order, so be sure to act accordingly.|r\n" ..
              "• |cffffffffDuring the boss fight, there will be spawning orbs called Kinetic Bombs. If those orbs fall to the ground, they will explode, sending missiles to nearby players that push them back and cause damage. Hunters are usually best at keeping them up with pets (up to 3 can be up simultaneously).|r",

        ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "|cffffa500Prince Valanar is now empowered.|r\n" ..
              "• |cffffffffTanks stack Valanar and Taldaram in the middle and melee DPS behind them.|r\n" ..
              "• |cffffffffHealers are going to stay in the middle of the lower platform by the stairs, SPREAD.|r\n" ..
              "• |cffffffffRanged DPS should stay behind the healers, SPREAD.|r\n" ..
              "• |cffffffffValanar will cast Empowered Shock Vortex which will, on success, cause everyone to spawn a shockwave from within, causing damage to nearby friends and pushing them back. Avoid this by spreading.|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "|cffffa500Prince Taldaram is now empowered.|r\n" ..
              "• |cffffffffEverything stays the same as with Valanar except the main target swaps to Taldaram now. (You can see target swaps by their health pools.)|r\n" ..
              "• |cffffffffTaldaram will now cast Empowered Fireball which will traverse to one ranged person (out of melee range). Upon reaching the target, it explodes, causing AOE damage. AOE damage can be reduced by kiting the fireball through other raid members; it has stacks that reduce as it passes through players.|r\n\n" ..
              "|cffffd100Phase 3.|r\n\n" ..
              "|cffffa500Prince Keleseth is now empowered.|r\n" ..
              "• |cffffffffSwap the target to Keleseth and be sure NOT TO CLEAVE AT HIM.|r\n" ..
              "• |cffffffffThe tank who is tanking Keleseth should have Dark Nucleuses collected up until this point and should do a little damage to them to maintain aggro.|r\n" ..
              "• |cffffffffKeleseth is tank survival more than anything else. Just DPS him down and make sure not to CLEAVE!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffPhases might change during this encounter in a random order, so be sure to act accordingly.|r\n" ..
              "• |cffffffffDuring the boss fight, there will be spawning orbs called Kinetic Bombs. If those orbs fall to the ground, they will explode, sending missiles to nearby players that push them back and cause damage. Hunters are usually best at keeping them up with pets (up to 3 can be up simultaneously).|r",
        
        ["10H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffff0000• ON HEROIC CHANGES: Movement must be LIMITED. As you move, you gain stacks of Shadow Prison. Each stack deals 350 Shadow damage every time you move; the higher the stacks, the more damage you take. Planning your movement ahead of time is recommended.|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "|cffffa500Prince Valanar is now empowered.|r\n" ..
              "• |cffffffffTanks stack Valanar and Taldaram in the middle with melee DPS behind them.|r\n" ..
              "• |cffffffffHealers are going to stay in the middle of the lower platform by the stairs, SPREAD.|r\n" ..
              "• |cffffffffRanged DPS should stay behind the healers, SPREAD.|r\n" ..
              "• |cffffffffValanar will cast Empowered Shock Vortex which will, on success, cause everyone to spawn a shockwave from within, causing damage to nearby friends and pushing them back. Avoid this by spreading.|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "|cffffa500Prince Taldaram is now empowered.|r\n" ..
              "• |cffffffffEverything stays the same as with Valanar except the main target swaps to Taldaram now. (You can see target swaps by their health pools.)|r\n" ..
              "• |cffffffffTaldaram will now cast Empowered Fireball, which will traverse to one ranged person (out of melee range). Upon reaching the target, it explodes, causing AOE damage. AOE damage can be reduced by kiting the fireball through other raid members; it has stacks that reduce as it passes through players.|r\n\n" ..
              "|cffffd100Phase 3.|r\n\n" ..
              "|cffffa500Prince Keleseth is now empowered.|r\n" ..
              "• |cffffffffSwap the target to Keleseth and be sure NOT TO CLEAVE AT HIM.|r\n" ..
              "• |cffffffffThe tank who is tanking Keleseth should have Dark Nucleuses collected up until this point and should do a little damage to them to maintain aggro.|r\n" ..
              "• |cffffffffKeleseth is tank survival more than anything else. Just DPS him down and make sure not to CLEAVE!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffPhases might change during this encounter in a random order, so be sure to act accordingly.|r\n" ..
              "• |cffffffffDuring the boss fight, there will be spawning orbs called Kinetic Bombs. If those orbs fall to the ground, they will explode, sending missiles to nearby players that push them back and cause damage. Hunters are usually best at keeping them up with pets (up to 3 can be up simultaneously).|r",
              
        ["25H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffff0000• ON HEROIC CHANGES: Movement must be LIMITED. As you move, you gain stacks of Shadow Prison. Each stack deals 350 Shadow damage every time you move; the higher the stacks, the more damage you take. Planning your movement ahead of time is recommended.|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "|cffffa500Prince Valanar is now empowered.|r\n" ..
              "• |cffffffffTanks stack Valanar and Taldaram in the middle with melee DPS behind them.|r\n" ..
              "• |cffffffffHealers are going to stay in the middle of the lower platform by the stairs, SPREAD.|r\n" ..
              "• |cffffffffRanged DPS should stay behind the healers, SPREAD.|r\n" ..
              "• |cffffffffValanar will cast Empowered Shock Vortex which will, on success, cause everyone to spawn a shockwave from within, causing damage to nearby friends and pushing them back. Avoid this by spreading.|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "|cffffa500Prince Taldaram is now empowered.|r\n" ..
              "• |cffffffffEverything stays the same as with Valanar except the main target swaps to Taldaram now. (You can see target swaps by their health pools.)|r\n" ..
              "• |cffffffffTaldaram will now cast Empowered Fireball, which will traverse to one ranged person (out of melee range). Upon reaching the target, it explodes, causing AOE damage. AOE damage can be reduced by kiting the fireball through other raid members; it has stacks that reduce as it passes through players.|r\n\n" ..
              "|cffffd100Phase 3.|r\n\n" ..
              "|cffffa500Prince Keleseth is now empowered.|r\n" ..
              "• |cffffffffSwap the target to Keleseth and be sure NOT TO CLEAVE AT HIM.|r\n" ..
              "• |cffffffffThe tank who is tanking Keleseth should have Dark Nucleuses collected up until this point and should do a little damage to them to maintain aggro.|r\n" ..
              "• |cffffffffKeleseth is tank survival more than anything else. Just DPS him down and make sure not to CLEAVE!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffPhases might change during this encounter in a random order, so be sure to act accordingly.|r\n" ..
              "• |cffffffffDuring the boss fight, there will be spawning orbs called Kinetic Bombs. If those orbs fall to the ground, they will explode, sending missiles to nearby players that push them back and cause damage. Hunters are usually best at keeping them up with pets (up to 3 can be up simultaneously).|r",
              
              
              
    },
    ["Blood-Queen Lana'Thel"] = { 
        icon = "Interface\\Icons\\achievement_boss_lanathel",
        ["10N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "|cffffa500This encounter has a couple of things to take into consideration:|r\n" ..
              "• |cffffffffRaid positioning: Melee DPS behind the boss, and ranged & healers spread across the room, or everyone stacks behind the boss at MAX melee range. Choose accordingly with the group.|r\n\n" ..
              "|cffffd100Spell Mechanics|r\n\n" ..
              "• |cffffffffPact of the Darkfallen: Those linked must stack together immediately to remove the link. This link damages anyone it passes through.|r\n" ..
              "• |cffffffffSwarming Shadows: Cast by BQL on a random player who must run to the wall and keep moving until the debuff runs out, as it leaves a trail of fire on the ground. Return to the group once it ends.|r\n" ..
              "• |cffffffffBite: One person receives Essence of the Blood-Queen from BQL at the start; this player gains 100% increased damage and heals themselves for a portion of damage dealt. This person has a certain amount of time until they feel a Frenzied Bloodthirst and must bite another player (PREFER TOP DPSers).|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "• |cffffffffThe boss fears everyone, runs into the middle, and then flies up. While hovering in the air, she casts Bloodbolt Whirl, an AOE damaging spell that must be healed through.|r\n" ..
              "• |cffffffffAfter the air phase is over, the boss lands; choose to stay in the middle where she lands or move her back to the stairs. Repeat Phase 1.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffYou cannot bite the same person twice; you must always bite someone who hasn't been bitten yet.|r\n" ..
              "• |cffffffffWhen you go into a Frenzy (Bloodthirst), your action bar changes to only one spell: Vampiric Bite. Target another player and bite!|r",

        ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "|cffffa500This encounter has a couple of things to take into consideration:|r\n" ..
              "• |cffffffffRaid positioning: Melee DPS behind the boss, and ranged & healers spread across the room, or everyone stacks behind the boss at MAX melee range. Choose accordingly with the group.|r\n\n" ..
              "|cffffd100Spell Mechanics|r\n\n" ..
              "• |cffffffffPact of the Darkfallen: Those linked must stack together immediately to remove the link. This link damages anyone it passes through.|r\n" ..
              "• |cffffffffSwarming Shadows: Cast by BQL on a random player who must run to the wall and keep moving until the debuff runs out, as it leaves a trail of fire on the ground. Return to the group once it ends.|r\n" ..
              "• |cffffffffBite: One person receives Essence of the Blood-Queen from BQL at the start; this player gains 100% increased damage and heals themselves for a portion of damage dealt. This person has a certain amount of time until they feel a Frenzied Bloodthirst and must bite another player (PREFER TOP DPSers).|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "• |cffffffffThe boss fears everyone, runs into the middle, and then flies up. While hovering in the air, she casts Bloodbolt Whirl, an AOE damaging spell that must be healed through.|r\n" ..
              "• |cffffffffAfter the air phase is over, the boss lands; choose to stay in the middle where she lands or move her back to the stairs. Repeat Phase 1.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffYou cannot bite the same person twice; you must always bite someone who hasn't been bitten yet.|r\n" ..
              "• |cffffffffWhen you go into a Frenzy (Bloodthirst), your action bar changes to only one spell: Vampiric Bite. Target another player and bite!|r",

        ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "|cffffa500This encounter has a couple of things to take into consideration:|r\n" ..
              "• |cffffffffRaid positioning: Melee DPS behind the boss, and ranged & healers spread across the room, or everyone stacks behind the boss at MAX melee range. Choose accordingly with the group.|r\n\n" ..
              "|cffffd100Spell Mechanics|r\n\n" ..
              "• |cffffffffPact of the Darkfallen: Those linked must stack together immediately to remove the link. This link damages anyone it passes through.|r\n" ..
              "• |cffffffffSwarming Shadows: Cast by BQL on a random player who must run to the wall and keep moving until the debuff runs out, as it leaves a trail of fire on the ground. Return to the group once it ends.|r\n" ..
              "• |cffffffffBite: One person receives Essence of the Blood-Queen from BQL at the start; this player gains 100% increased damage and heals themselves for a portion of damage dealt. This person has a certain amount of time until they feel a Frenzied Bloodthirst and must bite another player (PREFER TOP DPSers).|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "• |cffffffffThe boss fears everyone, runs into the middle, and then flies up. While hovering in the air, she casts Bloodbolt Whirl, an AOE damaging spell that must be healed through.|r\n" ..
              "• |cffffffffAfter the air phase is over, the boss lands; choose to stay in the middle where she lands or move her back to the stairs. Repeat Phase 1.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffYou cannot bite the same person twice; you must always bite someone who hasn't been bitten yet.|r\n" ..
              "• |cffffffffWhen you go into a Frenzy (Bloodthirst), your action bar changes to only one spell: Vampiric Bite. Target another player and bite!|r",

        ["25H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "|cffffa500This encounter has a couple of things to take into consideration:|r\n" ..
              "• |cffffffffRaid positioning: Melee DPS behind the boss, and ranged & healers spread across the room, or everyone stacks behind the boss at MAX melee range. Choose accordingly with the group.|r\n\n" ..
              "|cffffd100Spell Mechanics|r\n\n" ..
              "• |cffffffffPact of the Darkfallen: Those linked must stack together immediately to remove the link. This link damages anyone it passes through.|r\n" ..
              "• |cffffffffSwarming Shadows: Cast by BQL on a random player who must run to the wall and keep moving until the debuff runs out, as it leaves a trail of fire on the ground. Return to the group once it ends.|r\n" ..
              "• |cffffffffBite: One person receives Essence of the Blood-Queen from BQL at the start; this player gains 100% increased damage and heals themselves for a portion of damage dealt. This person has a certain amount of time until they feel a Frenzied Bloodthirst and must bite another player (PREFER TOP DPSers).|r\n\n" ..
              "|cffffd100Phase 2.|r\n\n" ..
              "• |cffffffffThe boss fears everyone, runs into the middle, and then flies up. While hovering in the air, she casts Bloodbolt Whirl, an AOE damaging spell that must be healed through.|r\n" ..
              "• |cffffffffAfter the air phase is over, the boss lands; choose to stay in the middle where she lands or move her back to the stairs. Repeat Phase 1.|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffYou cannot bite the same person twice; you must always bite someone who hasn't been bitten yet.|r\n" ..
              "• |cffffffffWhen you go into a Frenzy (Bloodthirst), your action bar changes to only one spell: Vampiric Bite. Target another player and bite!|r",
              
        
    },
    ["Valithria Dreamwalker"] = { 
        icon = "Interface\\Icons\\achievement_boss_shadeoferanikus",
        ["10N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500This fight is more survival than anything else. Healers play the main role on this one.|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffAssigned healers have to heal the boss's HP up. There will be portals spawning from time to time that assigned healers must enter. Portals are explained below.|r\n" ..
              "• |cffffffffThe raid group has to kill every add coming into the room. Tanks prepare to take all mobs, especially Abominations.|r\n\n" ..
              "|cffffd100Priority of adds:|r\n\n" ..
              "• |cffffffffSuppressors -> Blazing Skeleton -> Archmage -> Abomination (After the Abomination dies, kill the Rot Worms that it spawns).|r\n" ..
              "• |cffffffffHunters have a special role to take the Zombies. Slow them down and kite them around while killing them!|r\n\n" ..
              "|cffffa500Portals|r\n\n" ..
              "• |cffffffffEach healer has to click their own portal to be teleported inside Valithria's dream. In the dream, you can fly and must STACK with other healers at the boss's face, then go around the boss in the air collecting orbs.|r\n" ..
              "• |cffffffffEach orb increases healing done. After your time expires, you will return to the awake realm and continue healing the boss. Repeat this until the boss is healed fully; do not miss portals, or you will lose your stacks.|r",

        ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500This fight is more survival than anything else. Healers play the main role on this one.|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffAssigned healers have to heal the boss's HP up. There will be portals spawning from time to time that assigned healers must enter. Portals are explained below.|r\n" ..
              "• |cffffffffThe raid group has to kill every add coming into the room. Tanks prepare to take all mobs, especially Abominations.|r\n\n" ..
              "|cffffd100Priority of adds:|r\n\n" ..
              "• |cffffffffSuppressors -> Blazing Skeleton -> Archmage -> Abomination (After the Abomination dies, kill the Rot Worms that it spawns).|r\n" ..
              "• |cffffffffHunters have a special role to take the Zombies. Slow them down and kite them around while killing them!|r\n\n" ..
              "|cffffa500Portals|r\n\n" ..
              "• |cffffffffEach healer has to click their own portal to be teleported inside Valithria's dream. In the dream, you can fly and must STACK with other healers at the boss's face, then go around the boss in the air collecting orbs.|r\n" ..
              "• |cffffffffEach orb increases healing done. After your time expires, you will return to the awake realm and continue healing the boss. Repeat this until the boss is healed fully; do not miss portals, or you will lose your stacks.|r",

        ["10H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500This fight is more survival than anything else. Healers play the main role on this one.|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffAssigned healers have to heal the boss's HP up. There will be portals spawning from time to time that assigned healers must enter. Portals are explained below.|r\n" ..
              "• |cffffffffThe raid group has to kill every add coming into the room. Tanks prepare to take all mobs, especially Abominations.|r\n\n" ..
              "|cffffd100Priority of adds:|r\n\n" ..
              "• |cffffffffSuppressors -> Blazing Skeleton -> Risen Archmage -> Abomination (After the Abomination dies, kill the Rot Worms that it spawns).|r\n" ..
              "• |cffffffffHunters have a special role to take the Zombies. Slow them down and kite them around while killing them!|r\n\n" ..
              "|cffffa500Portals|r\n\n" ..
              "• |cffffffffAll healers can now use the same portal. In the dream, you can fly and must STACK with other healers at the face and start going around the boss in the air collecting orbs.|r\n" ..
              "• |cffffffffEach orb increases healing done. After your time expires, you will return to the awake realm and continue healing the boss. Repeat this until the boss is healed fully; do not miss portals, or you will lose your stacks.|r\n" ..
              "|cffff0000• ON HEROIC: Stacks are now a debuff called Twisted Nightmares. While they increase healing done, they also deal periodic damage over time. Healers must now keep healing themselves as well!|r",

        ["25H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500This fight is more survival than anything else. Healers play the main role on this one.|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffAssigned healers have to heal the boss's HP up. There will be portals spawning from time to time that assigned healers must enter. Portals are explained below.|r\n" ..
              "• |cffffffffThe raid group has to kill every add coming into the room. Tanks prepare to take all mobs, especially Abominations.|r\n\n" ..
              "|cffffd100Priority of adds:|r\n\n" ..
              "• |cffffffffSuppressors -> Blazing Skeleton -> Risen Archmage -> Abomination (After the Abomination dies, kill the Rot Worms that it spawns).|r\n" ..
              "• |cffffffffHunters have a special role to take the Zombies. Slow them down and kite them around while killing them!|r\n\n" ..
              "|cffffa500Portals|r\n\n" ..
              "• |cffffffffAll healers can now use the same portal. In the dream, you can fly and must STACK with other healers at the face and start going around the boss in the air collecting orbs.|r\n" ..
              "• |cffffffffEach orb increases healing done. After your time expires, you will return to the awake realm and continue healing the boss. Repeat this until the boss is healed fully; do not miss portals, or you will lose your stacks.|r\n" ..
              "|cffff0000• ON HEROIC: Stacks are now a debuff called Twisted Nightmares. While they increase healing done, they also deal periodic damage over time. Healers must now keep healing themselves as well!|r",

    
    
    },
    ["Sindragosa"] = { 
        icon = "Interface\\Icons\\achievement_boss_sindragosa",
        ["10N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500This guide explains the commonly used ZUG ZUG tactic; if you are using 2 tanks and resetting your stacks in the last phase, you are in good hands. Otherwise, let's get into the ZUG ZUG guide.|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffMelee DPS gain a debuff called Chilled to the Bone; the higher the stacks, the more damage you take. Keep this in mind!|r\n" ..
              "• |cffffffffSpellcasters gain Unchained Magic which causes Instability stacks. These explode after 5 seconds; higher stacks equal higher damage to the caster. With lower gearing, 4 stacks are recommended; with higher geared healers, 6-8 is safe.|r\n" ..
              "• |cffffffffSindragosa will cast Blistering Cold, which pulls everyone to the center of the boss. After being pulled in, run immediately to the edge of the platform. Once the cast finishes, it is safe to return.|r\n\n" ..
              "|cffffd100Phase 1.5 (Air Phase)|r\n\n" ..
              "• |cffffffffTwo people will be marked for Frost Tombs. These locations should be assigned by the raid leader, so listen closely.|r\n" ..
              "• |cffffffffSindragosa will launch 4 Frost Bombs. Position yourself behind a Frost Tomb to block the line of sight (Bomb -> Tomb -> You). Kill the tombs only after the 4th bomb has landed.|r\n\n" ..
              "|cffffd100Phase 2: 35% HP|r\n\n" ..
              "• |cffffffffThis is the execution phase where the encounter becomes a race against time.|r\n" ..
              "• |cffffffffPlayers gain Mystic Buffet, an aura that increases magic damage taken per stack. This is why the 'ZUG ZUG' tactic requires high DPS to kill her before stacks get too high.|r\n" ..
              "• |cffffffffPlayers will be Frost Tombed one by one; the marked person must run to the side of the platform. Blistering Cold still happens—run away and pop personal defensive cooldowns!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffHopefully, your raid damage was high enough for the ZUG ZUG tactic and you killed the boss! Congratulations!|r",

        ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500This guide explains the commonly used ZUG ZUG tactic; if you are using 2 tanks and resetting your stacks in the last phase, you are in good hands. Otherwise, let's get into the ZUG ZUG guide.|r\n\n" ..
              "|cffffd100Phase 1.|r\n\n" ..
              "• |cffffffffMelee DPS gain a debuff called Chilled to the Bone; the higher the stacks, the more damage you take. Keep this in mind!|r\n" ..
              "• |cffffffffSpellcasters gain Unchained Magic which causes Instability stacks. These explode after 5 seconds; higher stacks equal higher damage to the caster. With lower gearing, 4 stacks are recommended; with higher geared healers, 6-8 is safe.|r\n" ..
              "• |cffffffffSindragosa will cast Blistering Cold, which pulls everyone to the center of the boss. After being pulled in, run immediately to the edge of the platform. Once the cast finishes, it is safe to return.|r\n\n" ..
              "|cffffd100Phase 1.5 (Air Phase)|r\n\n" ..
              "• |cffffffffFive people will be marked for Frost Tombs. These locations should be assigned by the raid leader, so listen closely.|r\n" ..
              "• |cffffffffSindragosa will launch 4 Frost Bombs. Position yourself behind a Frost Tomb to block the line of sight (Bomb -> Tomb -> You). Kill the tombs only after the 4th bomb has landed.|r\n\n" ..
              "|cffffd100Phase 2: 35% HP|r\n\n" ..
              "• |cffffffffThis is the execution phase where the encounter becomes a race against time.|r\n" ..
              "• |cffffffffPlayers gain Mystic Buffet, an aura that increases magic damage taken per stack. This is why the 'ZUG ZUG' tactic requires high DPS to kill her before stacks get too high.|r\n" ..
              "• |cffffffffPlayers will be Frost Tombed one by one; the marked person must run to the side of the platform. Blistering Cold still happens—run away and pop personal defensive cooldowns!|r\n\n" ..
              "|cff1eff00NOTES:|r\n\n" ..
              "• |cffffffffHopefully, your raid damage was high enough for the ZUG ZUG tactic and you killed the boss! Congratulations!|r",

        ["10H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffff0000• ON HEROIC: Exactly the same as normal, except the Unchained Magic debuff (Instability) now explodes and causes AOE damage around the player. Therefore, these players must move to the edge of the platform to explode safely.|r\n" ..
              "• |cffffffffThe safe limit for Instability is 4 stacks MAX.|r",
              
        ["25H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffff0000• ON HEROIC: Exactly the same as normal, except the Unchained Magic debuff (Instability) now explodes and causes AOE damage around the player. Therefore, these players must move to the edge of the platform to explode safely.|r\n" ..
              "• |cffffffffThe safe limit for Instability is 4 stacks MAX.|r\n" ..
              "• |cffffffffThe Air Phase now has 6 Frost Tombs instead of 5.|r",
    
    },
    ["The Lich King"] = { 
        icon = "Interface\\Icons\\achievement_boss_lichking",
        ["10N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500There are a couple of spells the Lich King will use, and I will list them below the guide under Spell Mechanics.|r\n\n" ..
              "|cffffd100Phase 1. 100% - 70%|r\n\n" ..
              "• |cffffffffMain tank takes the Lich King and the off-tank takes Shambling Horrors.|r\n" ..
              "• |cffffffffRDPS and healers have to stack together, and MDPS will stack behind the Lich King.|r\n" ..
              "• |cffffffffWarriors, Retribution Paladins, Rogues, Feral Cats, and Unholy DKs cleave down ghouls when there are more than 3 ghouls alive. Warriors should cleave and leave 1-2 alive, hitting them to get the Enrage buff for increased damage.|r\n" ..
              "• |cffffffffLich King will cast Necrotic Plague on a random player, and this player has to run BEHIND the Shambling Horror and get dispelled so the Necrotic Plague jumps to the horror. Once dispelled, move back to your old position.|r\n" ..
              "• |cffffffffInfest has to be healed by healers. It is best if a Discipline Priest uses bubbles to blanket the whole raid.|r\n\n" ..
              "|cff1eff00NOTES:|r\n" ..
              "• |cffffffffNecrotic Plague will tick damage after 5 seconds and 99% of the time kills the player. So you have 5 seconds to move to the Shambling Horror and get dispelled.|r\n" ..
              "• |cffffffffShambling Horrors enrage from time to time, and hunters have to use Tranquilizing Shot to dispel that enrage.|r\n\n" ..
              "|cffffd100Transition 1.5|r\n\n" ..
              "• |cffffffffThe whole raid moves out to the edge and waits for Raging Spirits to spawn from players.|r\n" ..
              "• |cffffffffFire mages have to be at MAX RANGE to keep DPSing the Lich King.|r\n" ..
              "• |cffffffffShadow Priests or any lower DPS ranged classes handle Ice Spheres that are slowly coming to the raid.|r\n" ..
              "• |cffffffffRaging Spirits cast silence on the tank, so Retribution Paladins or any other class that can magic dispel should dispel that silence away.|r\n" ..
              "• |cffffffffAfter Remorseless Winter from the Lich King finishes casting, he will break the frozen edge and the raid has to move inside fast!|r\n\n" ..
              "|cffffd100Phase 2. 70% - 40%|r\n\n" ..
              "• |cffffffffThe raid moves and keeps the Lich King fight in the middle because Valkyries are now spawning and grabbing players to transport them outside of the platform and drop them into the void.|r\n" ..
              "• |cffffffffAfter killing Valkyries, the raid moves back to the middle; however, keep in mind that Defile should not be placed in the middle!|r\n" ..
              "• |cffffffffDefile is a new spell present in P2 and P3. The Lich King casts this debuff on 1 player, and after 3 seconds, that player will drop Defile on the ground, leaving a black puddle.|r\n" ..
              "• |cffffffffSoul Reaper is present in P2 and P3 and hits the Lich King's target. Healers overheal this!|r\n\n" ..
              "|cff1eff00NOTES:|r\n" ..
              "• |cffffffffSoul Reaper: Nasty spell the Lich King uses to devour tanks even faster.|r\n" ..
              "• |cffffffffDebuff expires after 5 seconds, causing 50k Shadow damage on 10 Normal, |cffff000060k on 10 Heroic and 25 Normal, and 70k on 25 Heroic.|r\n\n" ..
              "|cffffd100Transition 2.5|r\n\n" ..
              "• |cffffffffSame as 1.5, except now instead of 3 Raging Spirits, there will be 4.|r\n\n" ..
              "|cffffd100Phase 3.|r\n\n" ..
              "• |cffffffffIn this phase, the raid is kept between the edge and the Lich King. Place the Lich King at the top of the spike texture on the floor.|r\n" ..
              "• |cffffffffAfter spirits are summoned, the main tank has to move the Lich King to the other side of the platform at a fast pace!|r\n" ..
              "• |cffffffffThe Lich King will attempt to drain the soul from a player into his sword, and this person will be teleported inside a chamber.|r\n" ..
              "• |cffffffffThe Lich King will kill everyone in the raid at 10% health by casting Fury of the Frostmourne. This is scripted and you have now finished the encounter!|r",

              ["10H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500I will only list differences here compared to normal!|r\n\n" ..
              "|cffffd100Phase 1. 100% - 70%|r\n\n" ..
              "• |cffffffffLich King will cast Shadow Trap on a random player. This group that gets the shadow trap has to move forward. Listen to your raid leader regarding how you are moving.|r\n" ..
              "• |cffffffffIf any player triggers a shadow trap, it will push players around it away from the platform!|r\n\n" ..
              "|cff1eff00NOTES:|r\n" ..
              "• |cffffffffShadow Trap will be cast by the Lich King, and upon reaching the target, it will leave a shadowy pool under the player; this pool will explode if triggered and pushes back players around it from the platform.|r\n\n" ..
              "|cffffd100Transition 1.5|r\n\n" ..
              "• |cffffffffSame as normal.|r\n\n" ..
              "|cffffd100Phase 2. 70% - 40%|r\n\n" ..
              "• |cffffffffSame as normal, except Valkyries now have over double the HP compared to normal, and they have to be damaged until 50% HP, at which point they will drop the player (no need to kill).|r\n\n" ..
              "|cffffd100Transition 2.5|r\n\n" ..
              "• |cffffffffSame as normal.|r\n\n" ..
              "|cffffd100Phase 3. 40% - 10%|r\n\n" ..
              "• |cffffffffSame as normal, except now all players are ported inside the chamber and there are spirits called Wicked Spirits that will cause an explosion upon reaching a target and damage all players around it. All casters should participate in killing them before they reach the raid!|r\n" ..
              "• |cffffffffInside the chamber, the raid needs to move together with the assigned player and follow them because there are orbs spawning on top that will slowly fall and will explode once they hit the ground, causing high damage!|r\n" ..
              "• |cffffffffMovement and killing spirits are the key inside!!|r\n\n" ..
              "|cff1eff00NOTES:|r\n" ..
              "• |cffffffffListen to your raid leader's callouts; this fight is more about following tactics properly than tunneling your DPS higher, or you might cause a raid wipe with one mistake!|r",

              
              ["25N"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500There are a couple of spells the Lich King will use, and I will list them below the guide under Spell Mechanics.|r\n\n" ..
              "|cffffd100Phase 1. 100% - 70%|r\n\n" ..
              "• |cffffffffMain tank takes the Lich King and the off-tank takes Shambling Horrors.|r\n" ..
              "• |cffffffffRDPS and healers have to stack together, and MDPS will stack behind the Lich King.|r\n" ..
              "• |cffffffffWarriors, Retribution Paladins, Rogues, Feral Cats, and Unholy DKs cleave down ghouls when there are more than 3 ghouls alive. Warriors should cleave and leave 1-2 alive, hitting them to get the Enrage buff for increased damage.|r\n" ..
              "• |cffffffffLich King will cast Necrotic Plague on a random player, and this player has to run BEHIND the Shambling Horror and get dispelled so the Necrotic Plague jumps to the horror. Once dispelled, move back to your old position.|r\n" ..
              "• |cffffffffInfest has to be healed by healers. It is best if a Discipline Priest uses bubbles to blanket the whole raid.|r\n\n" ..
              "|cff1eff00NOTES:|r\n" ..
              "• |cffffffffNecrotic Plague will tick damage after 5 seconds and 99% of the time kills the player. So you have 5 seconds to move to the Shambling Horror and get dispelled.|r\n" ..
              "• |cffffffffShambling Horrors enrage from time to time, and hunters have to use Tranquilizing Shot to dispel that enrage.|r\n\n" ..
              "|cffffd100Transition 1.5|r\n\n" ..
              "• |cffffffffThe whole raid moves out to the edge and waits for Raging Spirits to spawn from players.|r\n" ..
              "• |cffffffffFire mages have to be at MAX RANGE to keep DPSing the Lich King.|r\n" ..
              "• |cffffffffShadow Priests or any lower DPS ranged classes handle Ice Spheres that are slowly coming to the raid.|r\n" ..
              "• |cffffffffRaging Spirits cast silence on the tank, so Retribution Paladins or any other class that can magic dispel should dispel that silence away.|r\n" ..
              "• |cffffffffAfter Remorseless Winter from the Lich King finishes casting, he will break the frozen edge and the raid has to move inside fast!|r\n\n" ..
              "|cffffd100Phase 2. 70% - 40%|r\n\n" ..
              "• |cffffffffThe raid moves and keeps the Lich King fight in the middle because Valkyries are now spawning and grabbing players to transport them outside of the platform and drop them into the void.|r\n" ..
              "• |cffffffffAfter killing Valkyries, the raid moves back to the middle; however, keep in mind that Defile should not be placed in the middle!|r\n" ..
              "• |cffffffffDefile is a new spell present in P2 and P3. The Lich King casts this debuff on 1 player, and after 3 seconds, that player will drop Defile on the ground, leaving a black puddle.|r\n" ..
              "• |cffffffffSoul Reaper is present in P2 and P3 and hits the Lich King's target. Healers overheal this!|r\n\n" ..
              "|cff1eff00NOTES:|r\n" ..
              "• |cffffffffSoul Reaper: Nasty spell the Lich King uses to devour tanks even faster.|r\n" ..
              "• |cffffffffDebuff expires after 5 seconds, causing 50k Shadow damage on 10 Normal, |cffff000060k on 10 Heroic and 25 Normal, and 70k on 25 Heroic.|r\n\n" ..
              "|cffffd100Transition 2.5|r\n\n" ..
              "• |cffffffffSame as 1.5, except now instead of 3 Raging Spirits, there will be 4.|r\n\n" ..
              "|cffffd100Phase 3.|r\n\n" ..
              "• |cffffffffIn this phase, the raid is kept between the edge and the Lich King. Place the Lich King at the top of the spike texture on the floor.|r\n" ..
              "• |cffffffffAfter spirits are summoned, the main tank has to move the Lich King to the other side of the platform at a fast pace!|r\n" ..
              "• |cffffffffThe Lich King will attempt to drain the soul from a player into his sword, and this person will be teleported inside a chamber.|r\n" ..
              "• |cffffffffThe Lich King will kill everyone in the raid at 10% health by casting Fury of the Frostmourne. This is scripted and you have now finished the encounter!|r",


              ["25H"] = "|cffffd100Strategy|r\n\n" ..
              "|cffffa500I will only list differences here compared to normal!|r\n\n" ..
              "|cffffd100Phase 1. 100% - 70%|r\n\n" ..
              "• |cffffffffLich King will cast Shadow Trap on a random player. This group that gets the shadow trap has to move forward. Listen to your raid leader regarding how you are moving.|r\n" ..
              "• |cffffffffIf any player triggers a shadow trap, it will push players around it away from the platform!|r\n\n" ..
              "|cff1eff00NOTES:|r\n" ..
              "• |cffffffffShadow Trap will be cast by the Lich King, and upon reaching the target, it will leave a shadowy pool under the player; this pool will explode if triggered and pushes back players around it from the platform.|r\n\n" ..
              "|cffffd100Transition 1.5|r\n\n" ..
              "• |cffffffffSame as normal.|r\n\n" ..
              "|cffffd100Phase 2. 70% - 40%|r\n\n" ..
              "• |cffffffffSame as normal, except Valkyries now have over double the HP compared to normal, and they have to be damaged until 50% HP, at which point they will drop the player (no need to kill).|r\n\n" ..
              "|cffffd100Transition 2.5|r\n\n" ..
              "• |cffffffffSame as normal.|r\n\n" ..
              "|cffffd100Phase 3. 40% - 10%|r\n\n" ..
              "• |cffffffffSame as normal, except now all players are ported inside the chamber and there are spirits called Wicked Spirits that will cause an explosion upon reaching a target and damage all players around it. All casters should participate in killing them before they reach the raid!|r\n" ..
              "• |cffffffffInside the chamber, the raid needs to move together with the assigned player and follow them because there are orbs spawning on top that will slowly fall and will explode once they hit the ground, causing high damage!|r\n" ..
              "• |cffffffffMovement and killing spirits are the key inside!!|r\n\n" ..
              "|cff1eff00NOTES:|r\n" ..
              "• |cffffffffListen to your raid leader's callouts; this fight is more about following tactics properly than tunneling your DPS higher, or you might cause a raid wipe with one mistake!|r",

    },
}



local BossOrder = {
    "Lord Marrowgar", "Lady Deathwhisper", "Gunship Battle", "Deathbringer Saurfang",
    "Festergut", "Rotface", "Professor Putricide", "Blood Prince Council",
    "Blood-Queen Lana'Thel", "Valithria Dreamwalker", "Sindragosa", "The Lich King"
}

local currentBoss = "Lord Marrowgar"



local function UpdateJournal(bossName, diff)
    currentBoss = bossName
    local data = BossData[bossName] and BossData[bossName][diff] or "Tactics not recorded."
    
    if ICCJournalText and ICCJournalScrollChild then
        -- 1. Set the text
        ICCJournalText:SetText(data)
        
        -- 2. Force the FontString to wrap at the specific width
        ICCJournalText:SetWidth(410)
        
        -- 3. Get the height the text actually takes up
        local actualHeight = ICCJournalText:GetHeight()
        
        -- 4. Update the container frame to be that tall
        -- We add 40px padding so the bottom isn't cut off
        ICCJournalScrollChild:SetHeight(actualHeight + 40)
        
        -- 5. Reset scroll to top
        ICCJournalScrollFrame:SetVerticalScroll(0)
    end
    
    ICCJournalSubtitle:SetText(bossName .. " (" .. diff .. ")")
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function()
    for i, bossName in ipairs(BossOrder) do
        local b = CreateFrame("Button", "ICCBossBtn"..i, ICCJournalFrame)
        b:SetSize(42, 42)
        b:SetPoint("TOPRIGHT", ICCJournalFrame, "TOPRIGHT", -15, -60 - (i-1)*47)
        
        local bg = b:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetTexture("Interface\\Buttons\\UI-EmptySlot-White")
        bg:SetVertexColor(0.2, 0.2, 0.2, 1)
        
        local icon = b:CreateTexture(nil, "ARTWORK")
        icon:SetPoint("TOPLEFT", 2, -2)
        icon:SetPoint("BOTTOMRIGHT", -2, 2)
        icon:SetTexture(BossData[bossName].icon)
        icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)

        b:SetScript("OnClick", function() UpdateJournal(bossName, "10N") end)
        b:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_LEFT")
            GameTooltip:SetText(bossName)
            GameTooltip:Show()
        end)
        b:SetScript("OnLeave", function() GameTooltip:Hide() end)
    end

    local parentFrame = ICCJournalFrame.DiffContainer
    if parentFrame then
        local diffs = {"10N", "10H", "25N", "25H"}
        for i, d in ipairs(diffs) do
            local b = CreateFrame("Button", nil, parentFrame, "UIPanelButtonTemplate")
            b:SetSize(75, 24)
            b:SetPoint("LEFT", parentFrame, "LEFT", (i-1)*85 + 20, 0)
            b:SetText(d)
            b:SetScript("OnClick", function() UpdateJournal(currentBoss, d) end)
        end
    end

    UpdateJournal(BossOrder[1], "10N")
end)

SLASH_ICCJ1 = "/iccj"
SlashCmdList["ICCJ"] = function()
    if ICCJournalFrame:IsShown() then 
        ICCJournalFrame:Hide() 
    else 
        ICCJournalFrame:Show() 
    end
end