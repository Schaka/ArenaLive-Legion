--[[
    ArenaLive [Core] is an unit frame framework for World of Warcraft.
    Copyright (C) 2014  Harald Böhm <harald@boehm.agency>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
	
	ADDITIONAL PERMISSION UNDER GNU GPL VERSION 3 SECTION 7:
	As a special exception, the copyright holder of this add-on gives you
	permission to link this add-on with independent proprietary software,
	regardless of the license terms of the independent proprietary software.
]]

ArenaLive.spellDB = {
			["Trinket"] = { 208683, 120 }, -- SpellID and cooldown of the PvP-Trinket
			["Racials"] = {
					-- First Number is the SpellID, 2nd one is the CD. Use 0 if they don't have a shared CD.
					["Human"] = { 59752, 120 },
					["Dwarf"] = { 20594, 120 },
					["NightElf"] = { 58984, 120 },
					["Gnome"] = { 20589, 90 },
					["Draenei"] = { -- For some reason, as a Draenei every class has it's own "Gift of the Naaru" spell. So we have to add them all into the table
						["WARRIOR"] =  { 28880, 180 },
						["PALADIN"] = { 59542, 180 },
						["HUNTER"] = { 59543, 180 },
						["PRIEST"] = { 59544, 180 },
						["DEATHKNIGHT"] = { 59545, 180 },
						["SHAMAN"] = { 59547, 180 },
						["MAGE"] = { 59548, 180 },
						["MONK"] = { 121093, 180 } -- Need to test this as soon as MoP is out.
					},
					["Worgen"] = { 68992, 120 },
					["Orc"] = { -- Since Orcs also have class-specific racials, we need to add all of them
						["WARRIOR"] = { 20572, 120 },
						["HUNTER"] = { 20572, 120 },
						["ROGUE"] = { 20572, 120 },
						["SHAMAN"] = { 33697, 120 },
						["MAGE"] = { 33702, 120 },
						["WARLOCK"] = { 33702, 120 },
						["DEATHKNIGHT"] = { 20572, 120 },
						["MONK"] = { 33697, 120 } -- I guess Monks will get the same racial version as Shamans, since it increases AP+Spell Power. Test this as soon as MoP is out
					},
					["Scourge"] = { 7744, 120 },
					["Tauren"] = { 20549, 120 },
					["Troll"] = { 26297, 180 },
					["BloodElf"] = {
						["WARRIOR"] = { 69179, 120 },
						["PALADIN"] = { 28730, 120 },
						["HUNTER"] = { 80483, 120 },
						["ROGUE"] = { 25046, 120 },
						["PRIEST"] = { 28730, 120 },
						["MAGE"] = { 28730, 120 },
						["WARLOCK"] = { 28730, 120 },
						["DEATHKNIGHT"] = { 50613, 120 },
						["MONK"] = { 129597, 120 },
					},
					["Goblin"] = { 69070, 120 },
					["Pandaren"] = { 107079, 120 }
			},
			["CooldownResets"] = {
				[108285] = {			-- Shaman: Call of the Elements
					[5394] = true,
					[2484] = true,
					[108270] = true,
					[51485] = true,
					[108273] = true,
					[157153] = true,
				},
				[108503] = { -- Sacrifice basically resets CD for warlocks interrupt
					[132409] = true,		-- Spell lock (Warlock)
				},
			},			
			["CCIndicator"] = { -- This table is used to track those spells, that are shown in the cc indcator.
				-- The order is [spellID] = Priority-Type.

				-- Death Knight
				[48707] = "defCD",			-- Anti-Magic Shell
				[51271] = "offCD", 			-- Pillar of Frost
				[91800] = "stun",			-- Gnaw (Petstun)
				[91797] = "stun", 			-- Monstrous Blow (Petstun)
				[108194] = "stun",			-- Asphyxiate
				[47476] = "silence",		-- Strangulate
				[96294] = "root",			-- Chains of Ice (root)
				[48792] = "defCD",			-- Icebound Fortitude
				[91797] = "stun",			-- Monstrous Blow
				[77606] = "usefulDebuffs", 	-- Dark Simulacrum
				[91807] = "root", 			-- Pet Leap Root
				[55233] = "defCD",			-- Vampiric Blood
				[152279] = "offCD",			-- Breath of Sindragosa
				[194679] = "defCD", 		-- Rune Tap
				[207167] = "crowdControl", 	-- Blinding Sleet
				[207256] = "offCD", 		-- Obliteration
				[207319] = "defCD", 		-- Corpse Shield
				[212552] = "defCD", 		-- Wraith Walk
				[221527] = "crowdControl", 	-- Imprison
				[223929] = "usefulBuffs", 	-- Necrotic Wound
				
				
				-- Druid
				[99] = "crowdControl", -- Incapacitating Roar
				[339] = "root", -- Entangling Roots
				[740] = "defCD", -- Tranquility
				[1850] = "usefulBuffs", -- Dash
				[5211] = "stun", -- Mighty Bash
				[5217] = "offCD", -- Tiger's Fury
				[22812] = "defCD", -- Barkskin
				[22842] = "defCD", -- Frenzied Regeneration
				[29166] = "offCD", -- Innervate
				[33891] = "offCD", -- Incarnation: Tree of Life
				[61336] = "defCD", -- Survival Instincts
				[81261] = "silence", -- Solar Beam
				[102342] = "defCD", -- Ironbark
				[102359] = "root", -- Mass Entanglement
				[102543] = "offCD", -- Incarnation: King of the Jungle
				[102558] = "offCD", -- Incarnation: Guardian of Ursoc
				[102560] = "offCD", -- Incarnation: Chosen of Elune
				[106951] = "offCD", -- Berserk
				[194223] = "offCD", -- Celestial Alignment
				[200851] = "offCD", -- Rage of the Sleeper
				[202425] = "offCD", -- Warrior of Elune
				[209753] = "defCD", -- Cyclone
				[33786] = "defCD", -- Cyclone

				-- Hunter
				[136] = "defCD", -- Mend Pet
				[19574] = "offCD", -- Bestial Wrath
				[131894] = "offCD", -- A Murder of Crows (Beast Mastery, Marksmanship)
				[206505] = "offCD", -- A Murder of Crows (Survival)
				[186265] = "defCD", -- Aspect of the Turtle
				[186289] = "offCD", -- Aspect of the Eagle
				[186387] = "crowdControl", -- Bursting Shot
				[193526] = "offCD", -- Trueshot
				[193530] = "offCD", -- Aspect of the Wild
				[199483] = "defCD", -- Camouflage
				[209997] = "defCD", -- Play Dead
				[213691] = "crowdControl", -- Scatter Shot	
				[5384] = "defCD",			-- Feign Death
				[19263] = "defCD",			-- Deterrence
				[148467] = "defCD",			-- Deterrence (Crouching Tiger, Hidden Chimaera)
				[117526] = "stun",			-- Binding Shot
				[19577] = "stun",			-- Intimidation (stun)
				[3355] = "crowdControl",	-- Freezing Trap
				[19386] = "crowdControl",	-- Wyvern Sting
				[53148] = "root",			-- Charge (Tenacity Pet)
				[64803] = "root",			-- Entrapment (trap-roots)
				[136634] = "root",			-- Narrow Escape
				
				-- Mage
				[45438] = "defCD",			-- Ice Block
				[12472] = "offCD",			-- Icy Veins
				[11426] = "usefulBuffs", 	-- Ice Barrier
				[12042] = "offCD", 			-- Arcane Power
				[118] = "crowdControl",		-- Standard Polymorph
				[61305] = "crowdControl",	-- Polymorph Cat
				[28272] = "crowdControl",	-- Polymorph Pig
				[61721] = "crowdControl",	-- Polymorph Rabbit
				[61780] = "crowdControl",	-- Polymorph Turkey (woot?!)
				[28271] = "crowdControl",	-- Polymorph Turtle
				[161353] = "crowdControl",	-- Polymorph Polar Bear Cub
				[82691] = "crowdControl",	-- Ring of Frost
				[31661] = "crowdControl",	-- Dragon's Breath
				[122] = "root",				-- Frost Nova
				[33395] = "root",			-- Freeze (Pet Nova)
				[198120] = "root",			-- Frostbite
				[110909] = "usefulBuffs",	-- Alter Time
				[80353] = "offCD", 			-- Time Warp
				[198144] = "offCD",			-- Ice Form
				[108839] = "offCD", 		-- Ice Floes
				[157997] = "root", 			-- Ice Nova
				[190319] = "offCD", 		-- Combustion
				[198158] = "offCD",			-- Mass Invisibility
				[205025] = "offCD", 		-- Presence of Mind
				[12051] = "offCD", 			-- Evocation

				-- Monk
				[122278] = "defCD",			-- Dampen Harm
				[122783] = "defCD",			-- Diffuse Magic
				[116849] = "defCD", 		-- Life Cocoon
				[116844] = "defCD", 		-- Ring of Peace
				[122470] = "defCD",			-- Touch of Karma
				[115176] = "defCD",			-- Zen Meditation
				[152173] = "offCD",			-- Serenity
				[120086] = "stun",			-- Fists of Fury
				[119381] = "stun",			-- Leg Sweep
				[115078] = "crowdControl",	-- Paralysis
				[116706] = "root",			-- Disable (root)
				[202162] = "defCD", 		-- Guard
				[216113] = "defCD", 		-- Way of the Crane
				[137639] = "defCD", 		-- Storm, Earth, and Fire

				-- Paladin
				[498] = "defCD", -- Divine Protection
				[642] = "defCD", -- Divine Shield
				[853] = "stun", -- Hammer of Justice
				[1022] = "defCD", -- Blessing of Protection
				[204018] = "defCD", -- Blessing of Spellwarding
				[1044] = "defCD", -- Blessing of Freedom
				[6940] = "defCD", -- Blessing of Sacrifice
				[20066] = "crowdControl", -- Repentance
				[31821] = "defCD", -- Aura Mastery
				[31850] = "defCD", -- Ardent Defender
				[31884] = "offCD", -- Avenging Wrath
				[31935] = "crowdControl", -- Avenger's Shield
				[86659] = "offCD", -- Guardian of Ancient Kings
				[228049] = "defCD", -- Guardian of the Forgotten Queen
				[105809] = "offCD", -- Holy Avenger
				[115750] = "crowdControl", -- Blinding Light 90 * cc get spellID
				[152262] = "offCD", -- Seraphim
				[184662] = "offCD", -- Shield of Vengeance
				[204150] = "offCD", -- Aegis of Light
				[205191] = "offCD", -- Eye for an Eye
				[210256] = "offCD", -- Blessing of Sanctuary
				[210294] = "defCD", -- Divine Favor
				[215652] = "offCD", -- Shield of Virtue
				
				-- Priest
				[586] = "usefulBuffs", -- Fade
				[213602] = "usefulBuffs", -- Greater Fade
				[605] = "crowdControl", -- Mind Control
				[8122] = "crowdControl", -- Psychic Scream
				[9484] = "crowdControl", -- Shackle Undead
				[33206] = "defCD", -- Pain Suppression
				[10060] = "offCD", -- Power Infusion
				[15487] = "silence", -- Silence
				[47536] = "defCD", -- Rapture
				[47585] = "defCD", -- Dispersion
				[47788] = "defCD", -- Guardian Spirit
				[64843] = "defCD", -- Divine Hymn
				[87204] = "crowdControl", -- Sin and Punishment
				[193223] = "offCD", -- Surrender to Madness
				[194249] = "offCD", -- Voidform
				[196762] = "defCD", -- Inner Focus
				[197268] = "defCD", -- Ray of Hope
				[197862] = "defCD", -- Archangel
				[197871] = "offCD", -- Dark Archangel
				[200183] = "defCD", -- Apotheosis
				[200196] = "crowdControl", -- Holy Word: Chastise
				[200200] = "crowdControl", -- Holy Word: Chastise (Stun)
				[205369] = "crowdControl", -- Mind Bomb
				[226943] = "crowdControl", -- Mind Bomb (Stun)
				[213610] = "defCD", -- Holy Ward
				[215769] = "defCD", -- Spirit of Redemption
				[221660] = "defCD", -- Holy Concentration
				
				-- Rogue		
				[5277] = "defCD",			-- Evasion
				[31224] = "defCD",			-- Cloak of Shadows
				[13750] = "offCD",			-- Adrenaline Rush
				[51690] = "offCD",			-- Killing Spree
				[51713] = "offCD",			-- Shadow Dance
				[79140] = "offCD",			-- Vendetta
				[207736] = "offCD", 		-- Shadowy Duel
				[408] = "stun", 			-- Kidney Shot
				[1833] = "stun",			-- Cheap Shot
				[1330] = "silence",			-- Garrote - Silence
				[2094] = "crowdControl", 	-- Blind
				[199743] = "crowdControl", 	-- Parley
				[199754] = "defCD",			-- Riposte
				[1776] = "crowdControl", 	-- Gouge
				[6770] = "crowdControl", 	-- Sap
				
				-- Shaman
				[2825] = "offCD", -- Bloodlust
				[32182] = "offCD", -- Heroism
				[51514] = "crowdControl", -- Hex
				[211015] = "crowdControl", -- Hex (Cockroach)
				[210873] = "crowdControl", -- Hex (Compy)
				[211004] = "crowdControl", -- Hex (Spider)
				[211010] = "crowdControl", -- Hex (Snake)
				[196932] = "crowdControl", -- Voodoo Totem
				[79206] = "defCD", -- Spiritwalker's Grace 60 * OTHER
				[108271] = "defCD", -- Astral Shift
				[210918] = "defCD", -- Ethereal Form
				[108281] = "defCD", -- Ancestral Guidance
				[114050] = "defCD", -- Ascendance (Elemental)
				[114051] = "offCD", -- Ascendance (Enhancement)
				[114052] = "defCD", -- Ascendance (Restoration)
				[118905] = "crowdControl", -- Static Charge
				[197214] = "crowdControl", -- Sundering
				[204293] = "defCD", -- Spirit Link
				[204366] = "offCD", -- Thundercharge
				[204945] = "offCD", -- Doom Winds
				
				-- Warlock
				[5484] = "crowdControl", -- Howl of Terror
				[6358] = "crowdControl", -- Seduction
				[115268] = "crowdControl", -- Mesmerize
				[6789] = "crowdControl", -- Mortal Coil
				[20707] = "defCD", -- Soulstone
				[30283] = "stun", -- Shadowfury
				[89751] = "offCD", -- Felstorm
				[115831] = "offCD", -- Wrathstorm
				[89766] = "stun", -- Axe Toss
				[104773] = "defCD", -- Unending Resolve
				[108416] = "defCD", -- Dark Pact
				[171017] = "stun", -- Meteor Strike
				[196098] = "offCD", -- Soul Harvest
				[212284] = "offCD", -- Firestone
				[212295] = "defCD", -- Nether Ward
				
				-- Warrior
				[871] = "defCD", -- Shield Wall
				[1719] = "offCD", -- Battle Cry
				[5246] = "crowdControl", -- Intimidating Shout
				[12975] = "defCD", -- Last Stand
				[18499] = "usefulBuffs", -- Berserker Rage
				[23920] = "defCD", -- Spell Reflection
				[213915] = "defCD", -- Mass Spell Reflection
				[216890] = "defCD", -- Spell Reflection (Arms, Fury)
				[46968] = "stun", -- Shockwave
				[107574] = "offCD", -- Avatar
				[132169] = "stun", -- Storm Bolt
				[118038] = "defCD", -- Die by the Sword
				[184364] = "defCD", -- Enraged Regeneration
				[197690] = "defCD", -- Defensive Stance
				[213871] = "defCD", -- Bodyguard
				[227847] = "offCD", -- Bladestorm (Arms)
				[46924] = "offCD", -- Bladestorm (Fury)
				[152277] = "defCD", -- Ravager
				[228920] = "defCD", -- Ravager
			},
			["FilteredSpells"] = { --[[This list blocks spells that cause bugs in the casthistory.]]--

					[127797] = "Ursol's Vortex", -- This ability is no channel, but the UNIT_SPELLCAST_SUCCEEDED event fires for it multiple times, if an enemy player stands inside of it.
					[102794] = "Ursol's Vortex",
					[75] = "Auto Shot", -- For every autoshot a hunter casts, the cast history will create a button. So we filter it.
					[107270] = "Spinning Crane Kick",
					[5374] = "Mutilate", -- The real Mutilate-Spell triggers these two spells. We don't need to show all three of them in the CastHistory, so we block them too.
					[27576] = "Mutilate Off-Hand",
					[110745] = "Divine Star (Holy)",
					[122128] = "Divine Star (Shadow)",
					[120692] = "Halo (Holy)",
					[120696] = "Halo (Shadow)",
					[93217] = "Launch Quest",
					[93079] = "Launch Quest",
					[102470] = "Launch Quest",
					[100775] = "Trophy Collector",
					[836] = "LOGINEFFECT",
					[121473] = "Shadow Blade",
					[121474] = "Shadow Blade Off-hand",
					[166646] = "Wind Walking",
					[126137] = "Lightspring Trigger",
					[178293] = "Arena Inbounds Marker",
					[132951] = "Flare",
			},
			["DefensiveCooldowns"] = {
				["DEATHKNIGHT"] = {
					[48707] = 45,		-- Anti-Magic Shell
				},
				["DRUID"] = {
					[22812] = 60,		-- Barkskin
					[61336] = 180,		-- Survival Instincts	
				},
				["HUNTER"] = {
					[19263] = 180		-- Deterrence
				},
				["DEMONHUNTER"] = {
					
				},
				["MAGE"] = {
					[45438] = 300,		-- Ice Block
				},
				["MONK"] = {
					[115203] = 180,		-- Fortifying Brew
				},
				["PALADIN"] = {
					[642] = 300,		-- Divine Shield
				},
				["PRIEST"] = {
					[33206] = 120,			-- Pain Suppression (with Setbonus)
					[47788] = 120,			-- Guardian Spirit
					[47585] = 120,			-- Dispersion (Unglyphed)
				},
				["ROGUE"] = {
					[5277] = 120,			-- Evasion
				},
				["SHAMAN"] = {
					[204331] = 45,			-- Counterstrike Totem
					[108280] = 180,			-- Healing Tide Totem
				},
				["WARRIOR"] = {
					[118038] = 120,			-- Die by the Sword
					[871] = 180,			-- Shield Wall
				},
				["WARLOCK"] = {
					[104773] = 180,			-- Unending Resolve
				},
			},
			["ShownBuffs"] = { -- I've decided to just show certain Buffs on the Buff-frame. Here is the List.
			-- Order is [SpellID] = "Castname",

				--Death Knight
				[48707] = "Anti-Magic Shell",
				[51052] = "Anti-Magic Zone",
				[48263] = "Blood Presence",
				[49222] = "Bone Shield",
				[118009] = "Desecrated Ground",
				[48266] = "Frost Presence",
				[48792] = "Icebound Fortitude",
				[49039] = "Lichborne",
				[51271] = "Pillar of Frost",
				[114556] = "Purgatory",
				[55610] = "Unholy Aura",
				[115989] = "Unholy Blight",
				[49016] = "Unholy Frenzy",
				[48265] = "Unholy Presence",
				[55233] = "Vampiric Blood",


				-- Druid
				[22812] = "Barkskin",
				[5487] = "Bear Form",
				[106951] = "Berserk",
				[50334] = "Berserk",
				[155835] = "Bristling Fur",
				[768] = "Cat Form",
				[102352] = "Cenarion Ward",
				[171745] = "Claws of Shirvallah (Improved Catform)",
				[1850] = "Dash",
				[102560] = "Incarnation: Chosen of Elune",
				[102543] = "Incarnation: King of the Jungle",
				[102558] = "Incarnation: Son of Ursoc",
				[33891] = "Incarnation: Tree of Life",
				[29166] = "Innervate",
				[102342] = "Ironbark",
				[17007] = "Leader of the Pack",
				[33763] = "Lifebloom",
				[59990] = "Lifebloom",
				[94447] = "Lifebloom",
				[1126] = "Mark of the Wild",
				[106922] = "Might of Ursoc",
				[24858] = "Moonkin Form",
				[132158] = "Nature's Swiftness",
				[124974] = "Nature's Vigil",
				[5215] = "Prowl",
				[774] = "Rejuvenation",
				[155777] = "Rejuvenation (Germination)",
				[8936] = "Regrowth",
				[77764] = "Stampeding Roar",
				[77761] = "Stampeding Roar",
				[106898] = "Stampeding Roar",
				[48505] = "Starfall",
				[61336] = "Survival Instincts",
				[5217] = "Tiger's Fury",
				[740] = "Tranquility",
				[783] = "Travel Form",
				
				-- Hunter
				[5118] = "Aspect of the Cheetah",
				[172106] = "Aspect of the Fox",
				[13165] = "Aspect of the Hawk",
				[13159] = "Aspect of the Pack",
				[19574] = "Bestial Wrath",
				[51755] = "Camouflage",
				[19263] = "Deterrence",
				[148467] = "Deterrence (Crouching Tiger, Hidden Chimera)",
				[5384] = "Feign Death",
				[119449] = "Glyph of Camouflage",
				[109260] = "Iron Hawk",
				[62305] = "Master's Call",
				[54216] = "Master's Call",
				[3045] = "Rapid Fire",
				[19506] = "Trueshot Aura",

				
				--Mage
				[110909] = "Alter Time",
				[1459] = "Arcane Brilliance",
				[12042] = "Arcane Power",
				[159916] = "Amplify Magic",
				[57761] = "Brain Freeze",
				[87023] = "Cauterize",
				[61316] = "Dalaran Brilliance",
				[12051] = "Evocation",
				[7302] = "Frost Armor",
				[113862] = "Greater Invisibility",
				[11426] = "Ice Barrier",
				[45438] = "Ice Block",
				[108839] = "Ice Floes",
				[12472] = "Icy Veins",
				[66] = "Invisibility",
				[6117] = "Mage Armor",
				[30482] = "Molten Armor",
				[12043] = "Presence of Mind",

				
				-- Monk
				[157535] = "Breath of the Serpent",
				[122278] = "Dampen Harm",
				[122783] = "Diffuse Magic",
				[116781] = "Legacy of the White Tiger",
				[116849] = "Life Cocoon",
				[137562] = "Nimble Brew",
				[119611] = "Renewing Mist",
				[116844] = "Ring of Peace",
				[152173] = "Serenity",
				[122470] = "Touch of Karma",
				[115176] = "Zen Meditation",
				
				--Paladin 
				[31850] = "Ardent Defender",
				[156910] = "Beacon of Faith",
				[157007] = "Beacon of Insight",
				[53563] = "Beacon of Light",
				[20217] = "Blessing of Kings",
				[19740] = "Blessing of Might",
				[31842] = "Avenging Wrath: Holy",
				[31884] = "Avenging Wrath: Retribution",
				[31821] = "Devotion Aura",
				[31842] = "Divine Favor",
				[54428] = "Divine Plea",
				[498] = "Divine Protection",
				[642] = "Divine Shield",
				[86659] = "Guardian of Ancient Kings (Protection)",
				[1044] = "Hand of Freedom",
				[1022] = "Hand of Protection",
				[114039] = "Hand of Purity",
				[6940] = "Hand of Sacrifice",
				[1038] = "Hand of Salvation",
				[105809] = "Holy Avenger",
				[20925] = "Sacred Shield",
				[105361] = "Seal of Command",
				[20164] = "Seal of Justice",
				[20154] = "Seal of Righteousness",
				[31801] = "Seal of Truth",
				[152262] = "Seraphim",
				[85499] = "Speed of Light",				
				
				
				--Priest
				[121557] = "Angelic Feather",
				[81700] = "Archangel",
				[81209] = "Chakra: Chastise",
				[81206] = "Chakra: Sanctuary",
				[81208] = "Chakra: Serenity",
				[152118] = "Clarity of Will",
				[47585] = "Dispersion",
				[64843] = "Divine Hymn",
				[159630] = "Shadow Magic (Fade Aura Mastery)",
				[6346] = "Fear Ward",
				[45242] = "Focused Will",
				[120587] = "Glyph of Mind Flay",
				[47788] = "Guardian Spirit",
				[33206] = "Pain Suppression",
				[114239] = "Phantasm",
				[10060] = "Power Infusion",
				[81782] = "Power Word: Barrier",
				[21562] = "Power Word: Fortitude",
				[17] = "Power Word: Shield",
				[41637] = "Prayer of Mending",
				[139] = "Renew",
				[15473] = "Shadowform",
				[112833] = "Spectral Guise",
				[27827] = "Spirit of Redemption",
				[109964] = "Spirit Shell",
				[114908] = "Spirit Shell: Absorb",
				[114255] = "Surge of Light",
				
				
				--Rogue
				[13750] = "Adrenaline Rush",
				[108212] = "Burst of Speed",
				[31224] = "Cloak of Shadows",
				[74001] = "Combat Readiness",
				[74002] = "Combat Insight (Combat Readiness Stacks)",
				[3408] = "Crippling Poison",
				[2823] = "Deadly Poison",
				[5277] = "Evasion",
				[1966] = "Feint",
				[51690] = "Killing Spree",
				[108211] = "Leeching Poison",
				[5761] = "Mind-numbing Poison",
				[73651] = "Recuperate",
				[51713] = "Shadow Dance",
				[114018] = "Shroud of Concealment",
				[5171] = "Slice and Dice",
				[2983] = "Sprint",
				[1784] = "Stealth",
				[1856] = "Vanish",
				[8679] = "Wound Poison",
				

				--Shaman
				[108281] = "Ancestral Guidance",
				[16188] = "Ancestral Swiftness",
				[165339] = "Ascendance (Elemental)",
				[165341] = "Ascendance (Enhancement)",
				[165344] = "Ascendance (Restoration)",
				[108271] = "Astral Shift",
				[974] = "Earth Shield",
				[16166] = "Elemental Mastery",
				[119523] = "Healing Stream Totem",
				[324] = "Lightning Shield",
				[61295] = "Riptide",
				[30823] = "Shamanistic Rage",
				[58875] = "Spirit Walk",
				[79206] = "Spiritwalker's Grace",
				[52127] = "Water Shield",
	
				
				--Warlock
				[111397] = "Blood Horror",
				[166928] = "Blood Pact",
				[111400] = "Burning Rush",
				[114168] = "Dark Apotheosis",
				[110913] = "Dark Bargain",
				[109773] = "Dark Intent",
				[108359] = "Dark Regeneration",
				[113858] = "Dark Soul: Instability",
				[113861] = "Dark Soul: Knowledge",
				[113860] = "Dark Soul: Misery",
				[689] = "Drain Life",
				[103103] = "Drain Soul",
				[108503] = "Grimoire of Sacrifice",
				[171975] = "Grimoire of Synergy",
				[119049] = "Kil'jaeden's Cunning",
				[108508] = "Mannoroth's Fury",
				[103958] = "Metamorphosis",
				[79957] = "Soul Link",
				[108416] = "Sacrificial Pact",
				[104773] = "Unending Resolve",

				
				--Warrior
				[107574] = "Avatar",
				[18499] = "Berserker Rage",
				[46924] = "Bladestorm",
				[12292] = "Bloodbath",
				[118038] = "Die by the Sword",
				[55694] = "Enraged Regeneration",
				[3411] = "Intervene",
				[12975] = "Last Stand",
				[114028] = "Mass Spell Reflection",
				[97463] = "Rallying Cry",
				[1719] = "Recklessness",
				[114029] = "Safeguard",
				[125667] = "Second Wind",
				[871] = "Shield Wall",
				[23920] = "Spell Reflection",
				[12328] = "Sweeping Strikes",
				[114030] = "Vigilance",

				
				-- Other:
				[121279] = "Lifeblood",
			},
		["Dispels"] = {
			-- TO DO: SPEC SPECIFIC SPELLS
			["DRUID"] = { 88423, 8 }, 			-- Nature's Cure
			["MAGE"] = { 475, 8 },				-- Remove Curse
			["MONK"] = { 115450, 8 }, 			-- Detox
			["PALADIN"] = { 4987, 8 }, 			-- Cleanse
			["PRIEST"] = { 527, 8 }, 			-- Purify
			["SHAMAN"] = { 51886, 8 }, 			-- Cleanse Spirit
		},
		["Interrupts"] = {
			["DEATHKNIGHT"] = { 47528, 15 },	-- Mind Freeze
			["DRUID"] = { 106839, 15 }, 		-- Skull Bash
			["HUNTER"] = { 147362, 24 },		-- Counter Shot
			["MAGE"] = { 2139, 24 },			-- Counter Spell
			["MONK"] = { 116705, 15 }, 			-- Spear Hand Strike
			["PALADIN"] = { 96231, 15 }, 		-- Rebuke
			["ROGUE"] = { 1766, 15 }, 			-- Kick
			["SHAMAN"] = { 57994, 12 },			-- Wind Shear
			["WARLOCK"] = { 132409, 24 }, 		-- Spell lock Warlock (I use this one for all warlock counters and let them have a shared CD via the "SharedCooldowns" table.
			["WARRIOR"] = { 6552, 15 },			-- Pummel		
		},
		["SharedCooldowns"] = {
				[208683] = { -- PvP-Insignia
					[59752] = 120,			-- Human Racial
					[7744] = 30,			-- Will of the Forsaken
					[20594] = 30,			-- Stoneform
				},
				[59752] = { -- Human Racial
					[208683] = 120,			-- PvP-Insignia
				},
				[7744] = { -- Will of the Forsaken
					[208683] = 30,			-- PvP-Insignia
				},
				[20594] = { -- Stoneform
					[208683] = 30,			-- PvP-Insignia
				},
				[119911] = { -- Optical Blast
					[132409] = 24,				-- Spell lock (Warlock)
				},
				[171140] = { -- Shadowlock
					[132409] = 24,				-- Spell lock (Warlock)
				},
				[119910] = { -- Spell lock
					[132409] = 24,				-- Spell lock (Warlock)
				},
			},
		["DiminishingReturns"] =
			{
				-- Disorients:
				[33786] = "disorient",			-- Cyclone
				
				[31661] = "disorient", 			-- Dragon's Breath
				
				[105421] = "disorient", 		-- Blinding Light
				[10326] = "disorient", 			-- Turn Evil
				
				[8122] = "disorient", 			-- Psychic Scream
				
				[2094] = "disorient", 			-- Blind

				[118699] = "disorient", 		-- Fear
				[5484] = "disorient", 			-- Howl of Terror
				[115268] = "disorient", 		-- Mesmerize
				[6358] = "disorient", 			-- Seduction

				[5246] = "disorient",			-- Intimidating Shout
				[95199] = "disorient", 			-- Intimidating Shout
				
				
				-- Incapacitates:
				[99] = "incapacitate", 			-- Incapacitating Roar
				
				[3355] = "incapacitate", 		-- Freezing Trap
				[19386] = "incapacitate", 		-- Wyvern Sting
				
				[118] = "incapacitate", 		-- Polymorph
				[113724] = "incapacitate", 		-- Ring of Frost
				
				[123407] = "incapacitate",		-- Glyph of Breath of Fire
				[115078] = "incapacitate", 		-- Paralysis
				[137460] = "incapacitate",		-- Ring of Peace
				
				[20066] = "incapacitate", 		-- Repentance
				
				[605] = "incapacitate",			-- Dominate Mind
				[64044] = "incapacitate", 		-- Psychic Horror
				[9484] = "incapacitate", 		-- Shackle Undead (?)				
				
				[1776] = "incapacitate", 		-- Gouge
				[6770] = "incapacitate", 		-- Sap
				
				[51514] = "incapacitate", 		-- Hex
				
				[710] = "incapacitate",			-- Banish
				[137143] = "incapacitate", 		-- Blood Horror
				[6789] = "incapacitate", 		-- Mortal Coil
				
				[107079] = "incapacitate", 		-- Quaking Palm (Racial)
				
				
				-- Roots:
				[96294] = "root", 				-- Chains of Ice
				
				[339] = "root", 				-- Entangling Roots
				[113770] = "root",				-- Entangling Roots (Force of Nature)
				[170855] = "root",				-- Entangling Roots (Nature's Grasp)
				[102359] = "root",				-- Mass Entanglement
				
				[53148] = "root",				-- Charge (Tenacity Pet)
				[64803] = "root",				-- Entrapment (trap-roots)
				[136634] = "root", 				-- Narrow Escape 
				
				[33395] =  "root",  			-- Freeze
				[102051] = {"root", "silence"}, -- Frostjaw
				[122] = "root",  				-- Frost Nova
				[111340] = "root",				-- Ice Ward Root
				
				[116706] = "root",  			-- Disable
				
				[87194] = "root",				-- Glyph of Mindblast
				[114404] = "root", 				-- Void Tendril's Grasp

				[64695] = "root",				-- Earthgrab (Earthgrab Totem)
				[63685] = "root", 				-- Frost Shock (Frozen Power Talent)

				[170996] = "root",				-- Debilitate (Terrorguard)
				
				-- Silences:
				[47476] = "silence", 			-- Strangulate
				
				[114238] = "silence",			-- Fae Silence (Glyph of Fae Silence)
				[81261] = "silence", 			-- Solar Beam
				
				[31935] = "silence", 			-- Avenger's Shield
				
				[15487] = "silence", 			-- Silence
				
				[1330] = "silence", 			-- Garrote - Silence
				
				[129597] = "silence", 			-- Arcane Torrent (Blood Elf Racial)				
				[69179] = "silence",
				[28730] = "silence",
				[80483] = "silence",
				[25046] = "silence",
				[28730] = "silence",
				[28730] = "silence",
				[28730] = "silence",
				[50613] = "silence",
		
				-- Stuns:
				[108194] = "stun", 				-- Asphyxiate
				[91800] = "stun", 				-- Gnaw (Ghoul)
				[91797] = "stun", 				-- Monstrous Blow (Ghoul with Dark Transformation active)
				[115001] = "stun", 				-- Remorseless Winter
				
				[22570] = "stun", 				-- Maim
				[5211] = "stun", 				-- Mighty Bash
				[163505] = "stun", 				-- Rake	
				
				[117526] = "stun",				-- Binding Shot
				[19577] = "stun",				-- Intimidation
				
				[120086] = "stun", 				-- Fists of Fury
				[119381] = "stun", 				-- Leg Sweep
				
				[105593] = "stun", 				-- Fist of Justice
				[853] = "stun",					-- Hammer of Justice
				[119072] = "stun", 				-- Holy Wrath
				
				[1833] = "stun", 				-- Cheap Shot
				[408] = "stun", 				-- Kidney Shot
				
				[118345] = "stun",				-- Pulverize (Primal Earth Elemental)
				[118905] = "stun", 				-- Static Charge (Capacitor Totem)
				
				[89766] = "stun",				-- Axe Toss (Felguard)
				[22703] = "stun",				-- Infernal Awakening
				[30283] = "stun", 				-- Shadowfury
				
				[132168] = "stun", 				-- Shockwave
				[132169] = "stun",				-- Storm Bolt
				
				[20549] = "stun", 				-- War Stomp (Tauren Racial)

				
				-- Knockbacks:
				-- Gorefiend's Grasp
				
				-- Typhoon
				-- Ursol's Vortex
				
				-- Glyph of Explosive Trap
				-- Thunderstorm
				-- Fellash (Shivarra)
				-- Whiplash (Succubus)
			},
	};