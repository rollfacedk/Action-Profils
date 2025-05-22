local function MyRoutine()
	local Author = 'WASD Series - Beast Master Hunter - Mycopy'
	local SpecID = 253 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

	--HR HEADER
	-- Addon
	local Lib = LibStub("AceAddon-3.0"):GetAddon(Z_AddonName)
	local MainAddon = MainAddon
	-- HeroDBC
	local DBC = HeroDBC.DBC
	-- HeroLib
	local HL = HeroLibEx
	local Cache = HeroCache
	---@type Unit
	local Unit = HL.Unit
	---@type Unit
	local Player = Unit.Player
	---@type Unit
	local Target = Unit.Target
	---@type Unit
	local Arena = Unit.Arena
	---@type Unit
	local Party = Unit.Party
	---@type Pet
	local Pet = Unit.Pet
	---@type Spell
	local Spell = HL.Spell
	local Action = HL.Action
	local MultiSpell = HL.MultiSpell
	local MouseOver = Unit.MouseOver
	local Focus = Unit.Focus
	local Item = HL.Item
	local HealingEngine = MainAddon.HealingEngine
	-- HeroRotation
	local Cast = MainAddon.Cast
	local CastCycle = MainAddon.CastCycle
	local CastTargetIf = MainAddon.CastTargetIf
	local SmartAoE = MainAddon.SmartAoE
	local AoEON = MainAddon.AoEON
	local CDsON = MainAddon.CDsON
	local CastCycleAlly = MainAddon.CastCycleAlly;
	local CastTargetIfAlly = MainAddon.CastTargetIfAlly;
	local CastCycle = MainAddon.CastCycle;
	local CastAlly = MainAddon.CastAlly;
	local Enemies10ySplash, EnemiesCount10ySplash
	local Enemies40y, Enemies40yCount
	local GetSpellBonusDamage  = GetSpellBonusDamage
	local GetWeaponEnchantInfo = GetWeaponEnchantInfo
	local GetTime    = GetTime
	local mathmax    = math.max
	local mathmin    = math.min
	local strmatch   = string.match
	local TANKS, HEALERS, MEMBERS, DPS, PRIORITY;
	local WeaponEnchant = GetWeaponEnchantInfo;
	local Delay      = C_Timer.After
	local function num(val)
		if val then return 1 else return 0 end
	end
	local function bool(val)
		return val ~= 0
	end



	--ALL SPELLS ARE LOCATED ON Rotations/CLASS_SPELL.lua, if one is missing tells us about it.
	local S = {
		ConcussiveShot = Spell(5116),
		--custom 388035
		AspectoftheTurtle                 = Spell(186265),
		SurvivaloftheFittest                = Spell(264735),
		ForitudeoftheBear					= Spell(272679),
		ForitudeoftheBearBuff					= Spell(388035),
		-- Racials
		AncestralCall                         = Spell(274738),
		ArcanePulse                           = Spell(260364),
		ArcaneTorrent                         = Spell(50613),
		BagofTricks                           = Spell(312411),
		Berserking                            = Spell(26297),
		BloodFury                             = Spell(20572),
		Fireblood                             = Spell(265221),
		LightsJudgment                        = Spell(255647),
		-- Abilities
		ArcaneShot                            = Spell(185358),
		Exhilaration                          = Spell(109304),
		Flare                                 = Spell(1543),
		FreezingTrap                          = Spell(187650),
		HuntersMark                           = Spell(257284),
		-- Pet Utility Abilities
		MendPet                               = Spell(136),
		RevivePet                             = Spell(982),
		SummonPet                             = Spell(883),
		SummonPet2                            = Spell(83242),
		SummonPet3                            = Spell(83243),
		SummonPet4                            = Spell(83244),
		SummonPet5                            = Spell(83245),
		-- Talents
		AlphaPredator                         = Spell(269737),
		Barrage                               = Spell(120360),
		BeastMaster                           = Spell(378007),
		CounterShot                           = Spell(147362),
		DeathChakram                          = Spell(375891),
		ExplosiveShot                         = Spell(212431),
		HydrasBite                            = Spell(260241),
		Intimidation                          = Spell(19577),
		KillerInstinct                        = Spell(273887),
		Muzzle                                = Spell(187707),
		PoisonInjection                       = Spell(378014),
		ScareBeast                            = Spell(1513),
		SerpentSting                          = Spell(271788),
		Stampede                              = Spell(201430),
		SteelTrap                             = Spell(162488),
		TarTrap                               = Spell(187698),
		WailingArrow                          = Spell(392060),
		-- Buffs
		BerserkingBuff                        = Spell(26297),
		BloodFuryBuff                         = Spell(20572),
		DeathblowBuff                         = Spell(378770),
		JunkmaestrosBuff                      = Spell(1219661), -- Buff from Junkmaestro's Mega Magnet
		SeethingRageBuff                      = Spell(408835), -- Buff from Djaruun
		-- Debuffs
		HuntersMarkDebuff                     = Spell(257284),
		LatentPoisonDebuff                    = Spell(336903),
		SerpentStingDebuff                    = Spell(271788),
		TarTrapDebuff                         = Spell(135299),
		-- Misc
		PoolFocus                             = Spell(999910),

		-- Abilities
		BlackArrow                            = Spell(466930),
		-- Talents
		BlackArrowTalent                      = Spell(466932),
		BleakArrows                           = Spell(467749),
		BleakArrowsBMAbility                  = Spell(472084),
		BleakArrowsMMAbility                  = Spell(467914),
		BleakPowder                           = Spell(467911),
		PhantomPain                           = Spell(467941),
		PhantomPainAbility                    = Spell(468019),
		ShadowHounds                          = Spell(430707),
		ShadowHoundsAbility                   = Spell(444269),
		WitheringFire                         = Spell(466990),
		WitheringFireBlackArrow               = Spell(468037),
		-- Buffs
		WitheringFireBuff                     = Spell(466991),
		WitheringFireBuildUp                  = Spell(468074),
		WitheringFireReady                    = Spell(468075),
		-- Debuffs
		BlackArrowDebuff                      = Spell(468572),

		-- Talents
		HowlofthePackLeader                   = Spell(471876),
		-- Buffs
		HogstriderBuff                        = Spell(472640),
		HowlofthePackBuff                     = Spell(462515),
		HowlofthePackLeaderCDBuff             = Spell(471877),
		PackCoordinationBuff                  = Spell(445695),
		ScatteredPreyBuff                     = Spell(461866),
		-- Howl of the Pack Leader Summon Buffs
		HowlBearBuff                          = Spell(472325),
		HowlBoarBuff                          = Spell(472324),
		HowlWyvernBuff                        = Spell(471878),



		-- Abilities
		-- Pet Abilities
		Bite                                 = Spell(17253, "Pet"),
		BloodBolt                            = Spell(288962, "Pet"),
		Claw                                 = Spell(16827, "Pet"),
		Growl                                = Spell(2649, "Pet"),
		Smack                                = Spell(49966, "Pet"),
		-- Talents
		AMurderofCrows                        = Spell(131894),
		AnimalCompanion                       = Spell(267116),
		AspectoftheWild                       = Spell(193530),
		BarbedScales                          = Spell(469880),
		BarbedShot                            = Spell(217200),
		BeastCleave                           = Spell(115939),
		BestialWrath                          = Spell(19574),
		Bloodshed                             = Spell(321530),
		BloodyFrenzy                          = Spell(407412),
		CalloftheWild                         = Spell(359844),
		CobraShot                             = Spell(193455),
		DireBeast                             = Spell(120679),
		DireCleave                            = Spell(1217524),
		DireFrenzy                            = Spell(385810),
		HuntmastersCall                       = Spell(459730),
		KillCleave                            = Spell(378207),
		KillCommand                           = Spell(34026),
		KillShot                              = Spell(53351),
		KillerCobra                           = Spell(199532),
		MultiShot                             = Spell(2643),
		OneWithThePack                        = Spell(199528),
		PoisonedBarbs                         = Spell(1217535),
		Savagery                              = Spell(424557),
		ScentofBlood                          = Spell(193532),
		SolitaryCompanion                     = Spell(474746),
		Stomp                                 = Spell(199530),
		ThunderingHooves                      = Spell(459693),
		WildCall                              = Spell(185789),
		WildInstincts                         = Spell(378442),
		-- Buffs
		AspectoftheWildBuff                   = Spell(193530),
		BeastCleavePetBuff                    = Spell(118455, "Pet"),
		BeastCleaveBuff                       = Spell(268877),
		BestialWrathBuff                      = Spell(19574),
		BestialWrathPetBuff                   = Spell(186254, "Pet"),
		CalloftheWildBuff                     = Spell(359844),
		FrenzyPetBuff                         = Spell(272790, "Pet"),
		HuntersPreyBuff                       = Spell(378215),
		HuntmastersCallBuff                   = Spell(459731),
		SolitaryCompanionBuff                 = Spell(474751),
		-- Debuffs
		BarbedShotDebuff                      = Spell(217200),
		LacerationDebuff                      = Spell(459555), -- "laceration_driver"
		LacerationBleedDebuff                 = Spell(459560),
				
	
	}

	local I = {

		-- Trinkets kept for variables
		HouseofCards                          = Item(230027, {13, 14}),
		-- TWW Trinkets
		JunkmaestrosMegaMagnet                = Item(230189, {13, 14}),
		
	}

	local OnUseExcludes = {
		-- I.Item.ID(),
	}

	


	
	-- local function TargetIsValid()
	-- 	return (Player:AffectingCombat() and Target:Exists() and 
	-- 	Player:CanAttack(Target) and not Target:IsDeadOrGhost() and 
	-- 	(Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	-- end

	--GUI CONFIG
	local UnholyColor = 'c41f3b'
	local Unholy_Config = {
		--YO CHANGE THIS TO
		-- key = 'AUTHOR_MyConfigSample',
		-- title = 'Death Knight - Unholy',
		-- subtitle = '1.0',
		-- width = 300,
		-- height = 250,
		-- profiles = true,
		-- config = {
		-- 	{ type = 'header', text = 'Unholy', size = 24, align = 'Center', color = UnholyColor},
		-- 	{ type = 'spacer' },{ type = 'ruler' },{ type = 'spacer' },
		-- 	{ type = 'header', text = 'Defensives',  color = UnholyColor },
		-- 	{ type = 'checkspin', text = 'Death Strike: Smart Use', key = 'smartds', min = 1, max = 100, default = 15},
		-- 	{ type = 'checkspin', text = 'Death Strike: Deficit', key = 'deficitds', min = 1, max = 100, default = 20},
		-- 	{ type = 'checkspin', text = 'Death Strike: Emergency', key = 'dsemergency', min = 1, max = 100, default = 50},
		-- 	{ type = 'checkspin', text = 'Icebound Fortitude', key = 'ibfortitude', min = 1, max = 100, default = 30},
		-- 	{ type = 'checkspin', text = 'Rune Tap', key = 'runetap', min = 1, max = 100, default = 35},
		-- 	{ type = 'checkspin', text = 'Vampiric Blood', key = 'vp', min = 1, max = 100, default = 50},
		-- 	{ type = 'spacer' },
		-- 	{ type = 'header', text = 'Class',  color = UnholyColor },
		-- 	{ type = 'checkbox', text = 'Lichborne (Anti-Fear)', key = 'lichborne', default = true},
		-- }
	}
	MainAddon.SetCustomConfig(Author, SpecID, Unholy_Config)

	TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()
	
	local function Init()
		S.BarbedShotDebuff:RegisterAuraTracking()
		S.SerpentStingDebuff:RegisterAuraTracking()
		message( 'WSAD Beast Master', 1)
		MainAddon:Print('RollfaceX')
	end

	--- ===== Rotation Variables =====
	local BossFightRemains = 11111
	local FightRemains = 11111
	local VarBuffSyncActive = false
	local VarBuffSyncReady = false
	local VarBuffSyncRemains = 0
	local Enemies40y, PetEnemiesMixed, PetEnemiesMixedCount
	local TargetInRange40y, TargetInRange30y
	local TargetInRangePet30y

		--- ===== Trinket Variables =====
	local Trinket1, Trinket2
	local VarTrinket1Spell, VarTrinket2Spell
	local VarTrinket1Range, VarTrinket2Range
	local VarTrinket1CastTime, VarTrinket2CastTime
	local VarTrinket1CD, VarTrinket2CD
	local VarTrinket1Ex, VarTrinket2Ex
	local VarStrongerTrinketSlot
	local VarTrinketFailures = 0
	local function SetTrinketVariables()
	local T1, T2 = Player:GetTrinketData(OnUseExcludes)

	-- If we don't have trinket items, try again in 5 seconds.
	if VarTrinketFailures < 5 and ((T1.ID == 0 or T2.ID == 0) or (T1.SpellID > 0 and not T1.Usable or T2.SpellID > 0 and not T2.Usable)) then
		VarTrinketFailures = VarTrinketFailures + 1
		Delay(5, function()
			SetTrinketVariables()
		end
		)
		return
	end
	Trinket1 = T1.Object
	Trinket2 = T2.Object

	VarTrinket1Spell = T1.Spell
	VarTrinket1Range = T1.Range
	VarTrinket1CastTime = T1.CastTime
	VarTrinket2Spell = T2.Spell
	VarTrinket2Range = T2.Range
	VarTrinket2CastTime = T2.CastTime

	VarTrinket1CD = T1.Cooldown
	VarTrinket2CD = T2.Cooldown

	VarTrinket1Ex = T1.Excluded
	VarTrinket2Ex = T2.Excluded

	-- variable,name=stronger_trinket_slot,op=setif,value=1,value_else=2,condition=!trinket.2.has_cooldown|trinket.1.has_use_buff&(!trinket.2.has_use_buff|trinket.2.cooldown.duration<trinket.1.cooldown.duration|trinket.2.cast_time<trinket.1.cast_time|trinket.2.cast_time=trinket.1.cast_time&trinket.2.cooldown.duration=trinket.1.cooldown.duration)|!trinket.1.has_use_buff&(!trinket.2.has_use_buff&(trinket.2.cooldown.duration<trinket.1.cooldown.duration|trinket.2.cast_time<trinket.1.cast_time|trinket.2.cast_time=trinket.1.cast_time&trinket.2.cooldown.duration=trinket.1.cooldown.duration))
	VarStrongerTrinketSlot = 2
		if not Trinket2:HasCooldown() or Trinket1:HasUseBuff() and (not Trinket2:HasUseBuff() or VarTrinket2CD < VarTrinket1CD or VarTrinket2CastTime < VarTrinket1CastTime or VarTrinket2CastTime == VarTrinket1CastTime and VarTrinket2CD == VarTrinket1CD) or not Trinket1:HasUseBuff() and (not Trinket2:HasUseBuff() and (VarTrinket2CD < VarTrinket1CD or VarTrinket2CastTime < VarTrinket1CastTime or VarTrinket2CastTime == VarTrinket1CastTime and VarTrinket2CD == VarTrinket1CD)) then
			VarStrongerTrinketSlot = 1
		end
	end
	SetTrinketVariables()

	--- ===== Event Registrations =====
	HL:RegisterForEvent(function()
		BossFightRemains = 11111
		FightRemains = 11111
	end, "PLAYER_REGEN_ENABLED")

	HL:RegisterForEvent(function()
		VarTrinketFailures = 0
		SetTrinketVariables()
	end, "PLAYER_EQUIPMENT_CHANGED")

	local function RangedTargetCount(range)
		local EnemiesTable = Player:GetEnemiesInRange(range)
		local TarCount = 1
		for _, Enemy in pairs(EnemiesTable) do
		if Enemy:GUID() ~= Target:GUID() and ((not Enemy:HasPvEImmunity() and Enemy:AffectingCombat() and Enemy:NPCID() ~= 229296) or Enemy:IsDummy()) then
			TarCount = TarCount + 1
		end
		end
		return TarCount
	end

	--- ===== Helper Functions =====
	local function HowlSummonReady()
		return Player:BuffUp(S.HowlBearBuff) or Player:BuffUp(S.HowlBoarBuff) or Player:BuffUp(S.HowlWyvernBuff)
	end

	--- ===== CastTargetIf Filter Functions =====
	local function EvaluateTargetIfFilterBarbedShot(TargetUnit)
		-- target_if=min:dot.barbed_shot.remains
		return (TargetUnit:DebuffRemains(S.BarbedShotDebuff))
	end
	
	local function EvaluateTargetIfFilterKillCommand(TargetUnit)
		-- target_if=max:(target.health.pct<35|!talent.killer_instinct)*2+dot.a_murder_of_crows.refreshable
		return num(TargetUnit:HealthPercentage() < 35 or not S.KillerInstinct:IsAvailable()) * 2 + num(TargetUnit:DebuffRefreshable(S.AMurderofCrows))
	end
	
	local function EvaluateTargetIfFilterSerpentSting(TargetUnit)
		-- target_if=min:dot.serpent_sting.remains
		return (TargetUnit:DebuffRemains(S.SerpentStingDebuff))
	end
	
	--- ===== CastTargetIf Condition Functions =====
	local function EvaluateTargetIfKillShotST(TargetUnit)
		-- if=talent.venoms_bite&(!active_dot.serpent_sting|dot.serpent_sting.refreshable)
		-- Note: venoms_bite handled before CastTargetIf.
		return S.SerpentStingDebuff:AuraActiveCount() == 0 or TargetUnit:DebuffRefreshable(S.SerpentStingDebuff)
	end
	
	local function EvaluateTargetIfBarbedShotST(TargetUnit)
		-- if=talent.wild_call&charges_fractional>1.4|buff.call_of_the_wild.up|full_recharge_time<gcd&cooldown.bestial_wrath.remains|talent.scent_of_blood&(cooldown.bestial_wrath.remains<12+gcd)|talent.furious_assault|talent.black_arrow&(talent.barbed_scales|talent.savagery)|fight_remains<9
		return (S.WildCall:IsAvailable() and S.BarbedShot:ChargesFractional() > 1.4 or Player:BuffUp(S.CalloftheWildBuff) or S.BarbedShot:FullRechargeTime() < Player:GCD() and S.BestialWrath:CooldownDown() or S.ScentofBlood:IsAvailable() and (S.BestialWrath:CooldownRemains() < 12 + Player:GCD()) or S.FuriousAssault:IsAvailable() or S.BlackArrowTalent:IsAvailable() and (S.BarbedScales:IsAvailable() or S.Savagery:IsAvailable()) or BossFightRemains < 9)
	end
	
	local function EvaluateTargetIfBlackArrowST(TargetUnit)
		-- if=talent.venoms_bite&dot.serpent_sting.refreshable
		return TargetUnit:DebuffRefreshable(S.SerpentStingDebuff)
	end

	local function CDs()
		-- invoke_external_buff,name=power_infusion,if=buff.call_of_the_wild.up|talent.bloodshed&(prev_gcd.1.bloodshed)|!talent.call_of_the_wild&(buff.bestial_wrath.up|cooldown.bestial_wrath.remains<30)|fight_remains<16
		-- Note: Not handling external buffs.
		if true then
		  -- berserking,if=buff.call_of_the_wild.up|talent.bloodshed&(prev_gcd.1.bloodshed)|!talent.call_of_the_wild&buff.bestial_wrath.up|fight_remains<13
		  if S.Berserking:IsCastable() and (Player:BuffUp(S.CalloftheWildBuff) or S.Bloodshed:IsAvailable() and Player:PrevGCD(1, S.Bloodshed) or not S.CalloftheWild:IsAvailable() and Player:BuffUp(S.BestialWrathBuff) or FightRemains < 13) then
			if Cast(S.Berserking) then return "berserking cds 2"; end
		  end
		  -- blood_fury,if=buff.call_of_the_wild.up|talent.bloodshed&(prev_gcd.1.bloodshed)|!talent.call_of_the_wild&buff.bestial_wrath.up|fight_remains<16
		  if S.BloodFury:IsCastable() and (Player:BuffUp(S.CalloftheWildBuff) or S.Bloodshed:IsAvailable() and Player:PrevGCD(1, S.Bloodshed) or not S.CalloftheWild:IsAvailable() and Player:BuffUp(S.BestialWrathBuff) or FightRemains < 16) then
			if Cast(S.BloodFury) then return "blood_fury cds 8"; end
		  end
		  -- ancestral_call,if=buff.call_of_the_wild.up|talent.bloodshed&(prev_gcd.1.bloodshed)|!talent.call_of_the_wild&buff.bestial_wrath.up|fight_remains<16
		  if S.AncestralCall:IsCastable() and (Player:BuffUp(S.CalloftheWildBuff) or S.Bloodshed:IsAvailable() and Player:PrevGCD(1, S.Bloodshed) or not S.CalloftheWild:IsAvailable() and Player:BuffUp(S.BestialWrathBuff) or FightRemains < 16) then
			if Cast(S.AncestralCall) then return "ancestral_call cds 10"; end
		  end
		  -- fireblood,if=buff.call_of_the_wild.up|talent.bloodshed&(prev_gcd.1.bloodshed)|!talent.call_of_the_wild&buff.bestial_wrath.up|fight_remains<9
		  if S.Fireblood:IsCastable() and (Player:BuffUp(S.CalloftheWildBuff) or S.Bloodshed:IsAvailable() and Player:PrevGCD(1, S.Bloodshed) or not S.CalloftheWild:IsAvailable() and Player:BuffUp(S.BestialWrathBuff) or FightRemains < 9) then
			if Cast(S.Fireblood) then return "fireblood cds 12"; end
		  end
		end
		-- potion,if=buff.call_of_the_wild.up|talent.bloodshed&(prev_gcd.1.bloodshed)|!talent.call_of_the_wild&!talent.bloodshed&buff.bestial_wrath.up|fight_remains<31
		-- if Settings.Commons.Enabled.Potions and (Player:BuffUp(S.CalloftheWildBuff) or S.Bloodshed:IsAvailable() and Player:PrevGCD(1, S.Bloodshed) or not S.CalloftheWild:IsAvailable() and not S.Bloodshed:IsAvailable() and Player:BuffUp(S.BestialWrathBuff) or BossFightRemains < 31) then
		--   local PotionSelected = Everyone.PotionSelected()
		--   if PotionSelected and PotionSelected:IsReady() then
		-- 	if Cast(PotionSelected, nil, Settings.CommonsDS.DisplayStyle.Potions) then return "potion cds 14"; end
		--   end
		-- end
	end

	local function Cleave()
		-- bestial_wrath,target_if=min:dot.barbed_shot.remains
		if S.BestialWrath:IsCastable() then
		  if CastTargetIf(S.BestialWrath, Enemies40y, "min", EvaluateTargetIfFilterBarbedShot, not TargetInRange40y) then return "bestial_wrath cleave 2"; end
		end
		-- dire_beast,if=talent.huntmasters_call&buff.huntmasters_call.stack=2
		if S.DireBeast:IsCastable() and (S.HuntmastersCall:IsAvailable() and Player:BuffStack(S.HuntmastersCallBuff) == 2) then
		  if Cast(S.DireBeast, not Target:IsSpellInRange(S.DireBeast)) then return "dire_beast cleave 4"; end
		end
		-- black_arrow,if=buff.beast_cleave.remains&buff.withering_fire.up
		if S.BlackArrow:IsReady() and (Pet:BuffUp(S.BeastCleavePetBuff) and Player:BuffUp(S.WitheringFireBuff)) then
		  if Cast(S.BlackArrow, not Target:IsSpellInRange(S.BlackArrow)) then return "black_arrow cleave 6"; end
		end
		-- barbed_shot,target_if=min:dot.barbed_shot.remains,if=full_recharge_time<gcd|charges_fractional>=cooldown.kill_command.charges_fractional|talent.call_of_the_wild&cooldown.call_of_the_wild.ready|howl_summon.ready&full_recharge_time<8
		if S.BarbedShot:IsCastable() and (S.BarbedShot:FullRechargeTime() < Player:GCD() or S.BarbedShot:ChargesFractional() >= S.KillCommand:ChargesFractional() or S.CalloftheWild:IsAvailable() and S.CalloftheWild:CooldownUp() or HowlSummonReady() and S.BarbedShot:FullRechargeTime() < 8) then
		  if CastTargetIf(S.BarbedShot, Enemies40y, "min", EvaluateTargetIfFilterBarbedShot, not Target:IsSpellInRange(S.BarbedShot)) then return "barbed_shot cleave 8"; end
		end
		-- multishot,if=pet.main.buff.beast_cleave.down&(!talent.bloody_frenzy|cooldown.call_of_the_wild.remains)
		if S.MultiShot:IsReady() and (Pet:BuffDown(S.BeastCleavePetBuff) and (not S.BloodyFrenzy:IsAvailable() or S.CalloftheWild:CooldownDown() or not CDsON())) then
		  if Cast(S.MultiShot, not Target:IsSpellInRange(S.MultiShot)) then return "multishot cleave 10"; end
		end
		-- black_arrow,if=buff.beast_cleave.remains
		if S.BlackArrow:IsReady() and (Pet:BuffUp(S.BeastCleavePetBuff)) then
		  if Cast(S.BlackArrow, not Target:IsSpellInRange(S.BlackArrow)) then return "black_arrow cleave 12"; end
		end
		-- call_of_the_wild
		if S.CalloftheWild:IsCastable() then
		  if Cast(S.CalloftheWild) then return "call_of_the_wild cleave 14"; end
		end
		-- bloodshed
		if S.Bloodshed:IsCastable() then
		  if Cast(S.Bloodshed, not Target:IsSpellInRange(S.Bloodshed)) then return "bloodshed cleave 16"; end
		end
		-- dire_beast,if=talent.shadow_hounds|talent.dire_cleave
		if S.DireBeast:IsCastable() and (S.ShadowHounds:IsAvailable() or S.DireCleave:IsAvailable()) then
		  if Cast(S.DireBeast, not Target:IsSpellInRange(S.DireBeast)) then return "dire_beast cleave 18"; end
		end
		-- explosive_shot,if=talent.thundering_hooves
		if S.ExplosiveShot:IsReady() and (S.ThunderingHooves:IsAvailable()) then
		  if Cast(S.ExplosiveShot, not TargetInRange40y) then return "explosive_shot cleave 20"; end
		end
		-- kill_command,target_if=max:(target.health.pct<35|!talent.killer_instinct)*2+dot.a_murder_of_crows.refreshable
		if S.KillCommand:IsReady() then
		  if Cast(S.KillCommand, not Target:IsInRange(50)) then return "kill_command cleave 22"; end
		end
		-- lights_judgment,if=buff.bestial_wrath.down|target.time_to_die<5
		if S.LightsJudgment:IsCastable() and (Player:BuffDown(S.BestialWrathBuff) or Target:TimeToDie() < 5) then
		  if Cast(S.LightsJudgment, not Target:IsInRange(5)) then return "lights_judgment cleave 24"; end
		end
		-- cobra_shot,if=focus.time_to_max<gcd*2|buff.hogstrider.stack>3
		if S.CobraShot:IsReady() and (Player:FocusTimeToMax() < Player:GCD() * 2 or Player:BuffStack(S.HogstriderBuff) > 3) then
		  if Cast(S.CobraShot, not Target:IsSpellInRange(S.CobraShot)) then return "cobra_shot cleave 26"; end
		end
		-- dire_beast
		if S.DireBeast:IsCastable() then
		  if Cast(S.DireBeast, not Target:IsSpellInRange(S.DireBeast)) then return "dire_beast cleave 28"; end
		end
		-- explosive_shot
		if S.ExplosiveShot:IsReady() then
		  if Cast(S.ExplosiveShot, not Target:IsSpellInRange(S.ExplosiveShot)) then return "explosive_shot cleave 30"; end
		end
		-- bag_of_tricks,if=buff.bestial_wrath.down|target.time_to_die<5
		if S.BagofTricks:IsCastable() and (Player:BuffDown(S.BestialWrathBuff) or FightRemains < 5) then
		  if Cast(S.BagofTricks) then return "bag_of_tricks cleave 32"; end
		end
		-- arcane_torrent,if=(focus+focus.regen+30)<focus.max
		if S.ArcaneTorrent:IsCastable() and ((Player:Focus() + Player:FocusRegen() + 30) < Player:FocusMax()) then
		  if Cast(S.ArcaneTorrent) then return "arcane_torrent cleave 34"; end
		end
	end

	local function ST()
		-- dire_beast,if=talent.huntmasters_call
		if S.DireBeast:IsCastable() and (S.HuntmastersCall:IsAvailable()) then
		  if Cast(S.DireBeast, not Target:IsSpellInRange(S.DireBeast)) then return "dire_beast st 2"; end
		end
		-- bestial_wrath
		if S.BestialWrath:IsCastable() then
		  if Cast(S.BestialWrath) then return "bestial_wrath st 4"; end
		end
		-- black_arrow,if=buff.withering_fire.up
		if S.BlackArrow:IsReady() and (Player:BuffUp(S.WitheringFireBuff)) then
		  if Cast(S.BlackArrow, not Target:IsSpellInRange(S.BlackArrow)) then return "black_arrow st 6"; end
		end
		-- barbed_shot,target_if=min:dot.barbed_shot.remains,if=full_recharge_time<gcd|charges_fractional>=cooldown.kill_command.charges_fractional|talent.call_of_the_wild&cooldown.call_of_the_wild.ready|howl_summon.ready&full_recharge_time<8
		if S.BarbedShot:IsCastable() and (S.BarbedShot:FullRechargeTime() < Player:GCD() or S.BarbedShot:ChargesFractional() >= S.KillCommand:ChargesFractional() or S.CalloftheWild:IsAvailable() and S.CalloftheWild:CooldownUp() or HowlSummonReady() and S.BarbedShot:FullRechargeTime() < 8) then
		  if Cast(S.BarbedShot, Target:IsSpellInRange(S.BarbedShot)) then return "barbed_shot cleave 8"; end
		end
		-- Main Target backup
		if S.BarbedShot:IsCastable() and (S.BarbedShot:FullRechargeTime() < Player:GCD() or S.BarbedShot:ChargesFractional() >= S.KillCommand:ChargesFractional() or S.CalloftheWild:IsAvailable() and S.CalloftheWild:CooldownUp() or HowlSummonReady() and S.BarbedShot:FullRechargeTime() < 8) then
		  if Cast(S.BarbedShot, not Target:IsSpellInRange(S.BarbedShot)) then return "barbed_shot st mt_backup 10"; end
		end
		-- call_of_the_wild
		if S.CalloftheWild:IsCastable() then
		  if Cast(S.CalloftheWild) then return "call_of_the_wild st 12"; end
		end
		-- bloodshed
		if S.Bloodshed:IsCastable() then
		  if Cast(S.Bloodshed, not Target:IsSpellInRange(S.Bloodshed)) then return "bloodshed st 14"; end
		end
		-- kill_command
		if S.KillCommand:IsReady() then
		  if Cast(S.KillCommand, not Target:IsSpellInRange(S.KillCommand)) then return "kill_command st 16"; end
		end
		-- black_arrow
		if S.BlackArrow:IsReady() then
		  if Cast(S.BlackArrow, not Target:IsSpellInRange(S.BlackArrow)) then return "black_arrow st 18"; end
		end
		-- explosive_shot,if=talent.thundering_hooves
		if S.ExplosiveShot:IsReady() and (S.ThunderingHooves:IsAvailable()) then
		  if Cast(S.ExplosiveShot, not TargetInRange40y) then return "explosive_shot st 20"; end
		end
		-- lights_judgment,if=buff.bestial_wrath.down|target.time_to_die<5
		if S.LightsJudgment:IsCastable() and (Player:BuffDown(S.BestialWrathBuff) or Target:TimeToDie() < 5) then
		  if Cast(S.LightsJudgment, not Target:IsInRange(5)) then return "lights_judgment st 22"; end
		end
		-- cobra_shot
		if S.CobraShot:IsReady() then
		  if Cast(S.CobraShot, not Target:IsSpellInRange(S.CobraShot)) then return "cobra_shot st 24"; end
		end
		-- dire_beast
		if S.DireBeast:IsCastable() then
		  if Cast(S.DireBeast, not Target:IsSpellInRange(S.DireBeast)) then return "dire_beast st 26"; end
		end
		if true then
		  -- bag_of_tricks,if=buff.bestial_wrath.down|target.time_to_die<5
		  if S.BagofTricks:IsCastable() and (Player:BuffDown(S.BestialWrathBuff) or FightRemains < 5) then
			if Cast(S.BagofTricks) then return "bag_of_tricks st 28"; end
		  end
		  -- arcane_pulse,if=buff.bestial_wrath.down|target.time_to_die<5
		  if S.ArcanePulse:IsCastable() and (Player:BuffDown(S.BestialWrathBuff) or FightRemains < 5) then
			if Cast(S.ArcanePulse) then return "arcane_pulse st 30"; end
		  end
		  -- arcane_torrent,if=(focus+focus.regen+15)<focus.max
		  if S.ArcaneTorrent:IsCastable() and ((Player:Focus() + Player:FocusRegen() + 15) < Player:FocusMax()) then
			if Cast(S.ArcaneTorrent) then return "arcane_torrent st 32"; end
		  end
		end
	end

	local function Trinkets()
		-- variable,name=buff_sync_ready,value=talent.call_of_the_wild&(prev_gcd.1.call_of_the_wild)|talent.bloodshed&(prev_gcd.1.bloodshed)|(!talent.call_of_the_wild&!talent.bloodshed)&(buff.bestial_wrath.up|cooldown.bestial_wrath.remains_guess<5)
		VarBuffSyncReady = S.CalloftheWild:IsAvailable() and Player:PrevGCD(1, S.CalloftheWild) or S.Bloodshed:IsAvailable() and Player:PrevGCD(1, S.Bloodshed) or (not S.CalloftheWild:IsAvailable() and not S.Bloodshed:IsAvailable()) and (Player:BuffUp(S.BestialWrathBuff) or S.BestialWrath:CooldownRemains() < 5)
		-- variable,name=buff_sync_remains,op=setif,value=cooldown.bestial_wrath.remains_guess,value_else=cooldown.call_of_the_wild.remains|cooldown.bloodshed.remains,condition=!talent.call_of_the_wild&!talent.bloodshed
		VarBuffSyncRemains = (not S.CalloftheWild:IsAvailable() and not S.Bloodshed:IsAvailable()) and S.BestialWrath:CooldownRemains() or (S.CalloftheWild:CooldownRemains() or S.Bloodshed:CooldownRemains())
		-- variable,name=buff_sync_active,value=talent.call_of_the_wild&buff.call_of_the_wild.up|talent.bloodshed&prev_gcd.1.bloodshed|(!talent.call_of_the_wild&!talent.bloodshed)&buff.bestial_wrath.up
		VarBuffSyncActive = S.CalloftheWild:IsAvailable() and Player:BuffUp(S.CalloftheWildBuff) or S.Bloodshed:IsAvailable() and Player:PrevGCD(1, S.Bloodshed) or (not S.CalloftheWild:IsAvailable() and not S.Bloodshed:IsAvailable()) and Player:BuffUp(S.BestialWrathBuff)
		-- variable,name=damage_sync_active,value=1
		local VarDamageSyncActive = true
		-- variable,name=damage_sync_remains,value=0
		local VarDamageSyncRemains = 0
		if true then
		  -- use_items,slots=trinket1:trinket2,if=this_trinket.has_use_buff&(variable.buff_sync_ready&(variable.stronger_trinket_slot=this_trinket_slot|other_trinket.cooldown.remains)|!variable.buff_sync_ready&(variable.stronger_trinket_slot=this_trinket_slot&(variable.buff_sync_remains>this_trinket.cooldown.duration%3&fight_remains>this_trinket.cooldown.duration+20|other_trinket.has_use_buff&other_trinket.cooldown.remains>variable.buff_sync_remains-15&other_trinket.cooldown.remains-5<variable.buff_sync_remains&variable.buff_sync_remains+45>fight_remains)|variable.stronger_trinket_slot!=this_trinket_slot&(other_trinket.cooldown.remains&(other_trinket.cooldown.remains-5<variable.buff_sync_remains&variable.buff_sync_remains>=20|other_trinket.cooldown.remains-5>=variable.buff_sync_remains&(variable.buff_sync_remains>this_trinket.cooldown.duration%3|this_trinket.cooldown.duration<fight_remains&(variable.buff_sync_remains+this_trinket.cooldown.duration>fight_remains)))|other_trinket.cooldown.ready&variable.buff_sync_remains>20&variable.buff_sync_remains<other_trinket.cooldown.duration%3)))|!this_trinket.has_use_buff&(this_trinket.cast_time=0|!variable.buff_sync_active)&(!this_trinket.is.junkmaestros_mega_magnet|buff.junkmaestros_mega_magnet.stack>10)&(!other_trinket.has_cooldown&(variable.damage_sync_active|this_trinket.is.junkmaestros_mega_magnet&buff.junkmaestros_mega_magnet.stack>25|!this_trinket.is.junkmaestros_mega_magnet&variable.damage_sync_remains>this_trinket.cooldown.duration%3)|other_trinket.has_cooldown&(!other_trinket.has_use_buff&(variable.stronger_trinket_slot=this_trinket_slot|other_trinket.cooldown.remains)&(variable.damage_sync_active|this_trinket.is.junkmaestros_mega_magnet&buff.junkmaestros_mega_magnet.stack>25|variable.damage_sync_remains>this_trinket.cooldown.duration%3&!this_trinket.is.junkmaestros_mega_magnet|other_trinket.cooldown.remains-5<variable.damage_sync_remains&variable.damage_sync_remains>=20)|other_trinket.has_use_buff&(variable.damage_sync_active|this_trinket.is.junkmaestros_mega_magnet&buff.junkmaestros_mega_magnet.stack>25|!this_trinket.is.junkmaestros_mega_magnet&variable.damage_sync_remains>this_trinket.cooldown.duration%3)&(other_trinket.cooldown.remains>=20|other_trinket.cooldown.remains-5>variable.buff_sync_remains)))|fight_remains<25&(variable.stronger_trinket_slot=this_trinket_slot|other_trinket.cooldown.remains)
		  if Trinket1 and Trinket1:IsReady() and not VarTrinket1Ex and not Player:IsItemBlacklisted(Trinket1) and (Trinket1:HasUseBuff() and (VarBuffSyncReady and (VarStrongerTrinketSlot == 1 or Trinket2:CooldownDown()) or not VarBuffSyncReady and (VarStrongerTrinketSlot == 1 and (VarBuffSyncRemains > VarTrinket1CD / 3 and BossFightRemains > VarTrinket1CD + 20 or Trinket2:HasUseBuff() and Trinket2:CooldownRemains() > VarBuffSyncRemains - 15 and Trinket2:CooldownRemains() - 5 < VarBuffSyncRemains and VarBuffSyncRemains + 45 > BossFightRemains) or VarStrongerTrinketSlot ~= 1 and (Trinket2:CooldownDown() and (Trinket2:CooldownRemains() - 5 < VarBuffSyncRemains and VarBuffSyncRemains >= 20 or Trinket2:CooldownRemains() - 5 >= VarBuffSyncRemains and (VarBuffSyncRemains > VarTrinket1CD / 3 or VarTrinket1CD < BossFightRemains and (VarBuffSyncRemains + VarTrinket1CD > BossFightRemains))) or Trinket2:CooldownUp() and VarBuffSyncRemains > 20 and VarBuffSyncRemains < VarTrinket2CD / 3))) or not Trinket1:HasUseBuff() and (VarTrinket1CastTime == 0 or not VarBuffSyncActive) and (Trinket1:ID() ~= I.JunkmaestrosMegaMagnet:ID() or Player:BuffStack(S.JunkmaestrosBuff) > 10) and (not Trinket2:HasCooldown() and (VarDamageSyncActive or Trinket1:ID() == I.JunkmaestrosMegaMagnet:ID() and Player:BuffStack(S.JunkmaestrosBuff) > 25 or Trinket1:ID() ~= I.JunkmaestrosMegaMagnet:ID() and VarDamageSyncRemains > VarTrinket1CD / 3) or Trinket2:HasCooldown() and (not Trinket2:HasUseBuff() and (VarStrongerTrinketSlot == 1 or Trinket2:CooldownDown()) and (VarDamageSyncActive or Trinket1:ID() == I.JunkmaestrosMegaMagnet:ID() and Player:BuffStack(S.JunkmaestrosBuff) > 25 or VarDamageSyncRemains > VarTrinket1CD / 3 and Trinket1:ID() ~= I.JunkmaestrosMegaMagnet:ID() or Trinket2:CooldownRemains() - 5 < VarDamageSyncRemains and VarDamageSyncRemains >= 20) or Trinket2:HasUseBuff() and (VarDamageSyncActive or Trinket1:ID() == I.JunkmaestrosMegaMagnet:ID() and Player:BuffStack(S.JunkmaestrosBuff) > 25 or Trinket1:ID() ~= I.JunkmaestrosMegaMagnet:ID() and VarDamageSyncRemains > VarTrinket1CD / 3) and (Trinket2:CooldownRemains() >= 20 or Trinket2:CooldownRemains() - 5 > VarBuffSyncRemains))) or BossFightRemains < 25 and (VarStrongerTrinketSlot == 1 or Trinket2:CooldownDown())) then
			if Cast(Trinket1) then return "trinket1 (" .. Trinket1:Name() .. ") trinkets 2"; end
		  end
		  if Trinket2 and Trinket2:IsReady() and not VarTrinket2Ex and not Player:IsItemBlacklisted(Trinket2) and (Trinket2:HasUseBuff() and (VarBuffSyncReady and (VarStrongerTrinketSlot == 2 or Trinket1:CooldownDown()) or not VarBuffSyncReady and (VarStrongerTrinketSlot == 2 and (VarBuffSyncRemains > VarTrinket2CD / 3 and BossFightRemains > VarTrinket2CD + 20 or Trinket1:HasUseBuff() and Trinket1:CooldownRemains() > VarBuffSyncRemains - 15 and Trinket1:CooldownRemains() - 5 < VarBuffSyncRemains and VarBuffSyncRemains + 45 > BossFightRemains) or VarStrongerTrinketSlot ~= 2 and (Trinket1:CooldownDown() and (Trinket1:CooldownRemains() - 5 < VarBuffSyncRemains and VarBuffSyncRemains >= 20 or Trinket1:CooldownRemains() - 5 >= VarBuffSyncRemains and (VarBuffSyncRemains > VarTrinket2CD / 3 or VarTrinket2CD < BossFightRemains and (VarBuffSyncRemains + VarTrinket2CD > BossFightRemains))) or Trinket1:CooldownUp() and VarBuffSyncRemains > 20 and VarBuffSyncRemains < VarTrinket1CD / 3))) or not Trinket2:HasUseBuff() and (VarTrinket2CastTime == 0 or not VarBuffSyncActive) and (Trinket2:ID() ~= I.JunkmaestrosMegaMagnet:ID() or Player:BuffStack(S.JunkmaestrosBuff) > 10) and (not Trinket1:HasCooldown() and (VarDamageSyncActive or Trinket2:ID() == I.JunkmaestrosMegaMagnet:ID() and Player:BuffStack(S.JunkmaestrosBuff) > 25 or Trinket2:ID() ~= I.JunkmaestrosMegaMagnet:ID() and VarDamageSyncRemains > VarTrinket2CD / 3) or Trinket1:HasCooldown() and (not Trinket1:HasUseBuff() and (VarStrongerTrinketSlot == 2 or Trinket1:CooldownDown()) and (VarDamageSyncActive or Trinket2:ID() == I.JunkmaestrosMegaMagnet:ID() and Player:BuffStack(S.JunkmaestrosBuff) > 25 or VarDamageSyncRemains > VarTrinket2CD / 3 and Trinket2:ID() ~= I.JunkmaestrosMegaMagnet:ID() or Trinket1:CooldownRemains() - 5 < VarDamageSyncRemains and VarDamageSyncRemains >= 20) or Trinket1:HasUseBuff() and (VarDamageSyncActive or Trinket2:ID() == I.JunkmaestrosMegaMagnet:ID() and Player:BuffStack(S.JunkmaestrosBuff) > 25 or Trinket2:ID() ~= I.JunkmaestrosMegaMagnet:ID() and VarDamageSyncRemains > VarTrinket2CD / 3) and (Trinket1:CooldownRemains() >= 20 or Trinket1:CooldownRemains() - 5 > VarBuffSyncRemains))) or BossFightRemains < 25 and (VarStrongerTrinketSlot == 2 or Trinket1:CooldownDown())) then
			if Cast(Trinket2) then return "trinket2 (" .. Trinket2:Name() .. ") trinkets 4"; end
		  end
		end
		if true then
		  -- Manually added: use_items for non-trinkets
		  local ItemToUse, _, ItemRange = Player:GetUseableItems(OnUseExcludes, nil, true)
		  if ItemToUse then
			if Cast(ItemToUse) then return "Generic use_items for " .. ItemToUse:Name() .. " trinkets 6"; end
		  end
		end
	end

	-- S.BarbedShot.Range = 40 
	-- S.CobraShot.Range = 40
	-- S.MultiShot.Range = 40
	-- S.BlackArrow.Range = 40

	local function MainRotation()

		

		-- HeroLib SplashData Tracking Update (used as fallback if pet abilities are not in action bars)

		if S.Stomp:IsAvailable() then
			HL.SplashEnemies.ChangeFriendTargetsTracking("Mine Only")
		else
			HL.SplashEnemies.ChangeFriendTargetsTracking("All")
		end;

	  
		-- Enemies Update
		local PetCleaveAbility = (S.BloodBolt:IsPetKnown() and Action.FindBySpellID(S.BloodBolt:ID()) and S.BloodBolt)
		  or (S.Bite:IsPetKnown() and Action.FindBySpellID(S.Bite:ID()) and S.Bite)
		  or (S.Claw:IsPetKnown() and Action.FindBySpellID(S.Claw:ID()) and S.Claw)
		  or (S.Smack:IsPetKnown() and Action.FindBySpellID(S.Smack:ID()) and S.Smack)
		  or nil
		local PetRangeAbility = (S.Growl:IsPetKnown() and Action.FindBySpellID(S.Growl:ID()) and S.Growl) or nil
		if AoEON() then
		  Enemies40y = SmartAoE(40) -- Barbed Shot Cycle
		  Enemies40yCount = RangedTargetCount(40)
		  PetEnemiesMixed = (PetCleaveAbility and SmartAoE(nil, Player:GetEnemiesInSpellActionRange(PetCleaveAbility))) or Target:GetEnemiesInSplashRange(8)
		  PetEnemiesMixedCount = (PetCleaveAbility and #PetEnemiesMixed) or Target:EnemiesAround(8) -- Beast Cleave (through Multi-Shot)
		else
		  Enemies40y = {}
		  Enemies40yCount = 1
		  PetEnemiesMixed = Target or {}
		  PetEnemiesMixedCount = 0
		end
		TargetInRange40y = Target:IsInRange(40) -- Most abilities
		TargetInRange30y = Target:IsInRange(30) -- Stampede
		TargetInRangePet30y = (PetRangeAbility and Target:IsSpellInActionRange(PetRangeAbility)) or Target:IsInRange(30) -- Kill Command
	  
		-- Calculate FightRemains
		if true then
		  -- Calculate fight_remains
		  BossFightRemains = HL.BossFightRemains()
		  FightRemains = BossFightRemains
		  if FightRemains == 11111 then
			FightRemains = HL.FightRemains(Enemies40y, false)
		  end
		end
	  
		-- Defensives
		if 	Player:AffectingCombat() and
			Player:BuffDown(S.SurvivaloftheFittest) and 
			Player:BuffDown(S.ForitudeoftheBearBuff) and 
			Player:BuffDown(S.AspectoftheTurtle) and
			Player:HealthPercentage() <= 30 then

			if S.SurvivaloftheFittest:IsCastable() then
				if Cast(S.SurvivaloftheFittest) then return end
			elseif S.ForitudeoftheBear:IsCastable() then
				if Cast(S.ForitudeoftheBear) then return end
			elseif S.AspectoftheTurtle:IsCastable() then 
				if Cast(S.AspectoftheTurtle) then return end
			end
		end
		-- Exhilaration
		if S.Exhilaration:IsCastable() and Player:HealthPercentage() <= 45 and Player:AffectingCombat() then
		  if Cast(S.Exhilaration) then return "Exhilaration"; end
		end
	  
		-- Pet Management; Conditions handled via override
		-- if S.SummonPet:IsCastable() and not Pet:IsActive() then
		--   if Cast(S.SummonPet) then return "Summon Pet"; end
		-- end
		if S.RevivePet:IsCastable() and Pet:IsDeadOrGhost() then
		  if Cast(S.RevivePet) then return "Revive Pet"; end
		end
		if S.MendPet:IsCastable() and Pet:HealthPercentage() <= 75 and Pet:IsActive() and not Pet:IsDeadOrGhost() then
		  if Cast(S.MendPet) then return "Mend Pet High Priority"; end
		end

		if not Player:AffectingCombat() then
			if S.HuntersMark:IsReady() and Target:DebuffDown(S.HuntersMark) and Target:IsEnemy() and Target:IsInBossList() then
				if Cast(S.HuntersMark) then return end
			end
		end

		if MainAddon.TargetIsValid() and Pet:IsActive() then

			if Target:IsAPlayer() and S.ConcussiveShot:IsReady() and Target:DebuffDown(S.ConcussiveShot) then
				if Cast(S.ConcussiveShot) then return end
			end

			-- if Player:AffectingCombat() and (Target:IsDeadOrGhost() or not Target:IsEnemy()) then
			-- 	MainAddon.SetTopColor(1, "Target Enemy")
			-- end
		  -- Out of Combat
		  -- Interrupts
		  -- auto_shot
		  -- call_action_list,name=cds
		  if true then
			local ShouldReturn = CDs(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- call_action_list,name=trinkets
		  if true then
			local ShouldReturn = Trinkets(); if ShouldReturn then return ShouldReturn; end
		  end
			-- call_action_list,name=st,if=active_enemies<2|!talent.beast_cleave&active_enemies<3
			if Enemies40yCount < 2 or not S.BeastCleave:IsAvailable() and Enemies40yCount < 3 then
				local ShouldReturn = ST(); if ShouldReturn then return ShouldReturn; end
			end
			-- call_action_list,name=cleave,if=active_enemies>2|talent.beast_cleave&active_enemies>1
			if Enemies40yCount > 2 or S.BeastCleave:IsAvailable() and Enemies40yCount > 1 then
				local ShouldReturn = Cleave(); if ShouldReturn then return ShouldReturn; end
			end
		  -- Manually added pet healing
		  -- Conditions handled via Overrides
		--   if S.MendPet:IsCastable() then
		-- 	if Cast(S.MendPet) then return "Mend Pet Low Priority (w/ Target)"; end
		--   end
		  -- Pool Focus if nothing else to do
		end
	  
		-- Note: We have to put it again in case we don't have a target but our pet is dying.
		-- Conditions handled via Overrides
		-- if S.MendPet:IsCastable() and Pet:HealthPercentage() <= 90 then
		--   if Cast(S.MendPet) then return "Mend Pet Low Priority (w/o Target)"; end
		-- end
	end
	MainAddon.SetCustomAPL(Author, SpecID, MainRotation, Init)
	local BMPetBuffRemains;
	BMPetBuffRemains = HL.AddCoreOverride("Pet.BuffRemains", function(self, Spell, AnyCaster, Offset)
		local BaseCheck = BMPetBuffRemains(self, Spell, AnyCaster, Offset)
		if Spell == S.FrenzyPetBuff then
			if Player:IsPrevCastPending() then
				return BaseCheck + (GetTime() - Player:GCDStartTime())
			end
		elseif Spell == S.BeastCleaveBuff then
			BaseCheck = mathmax(BaseCheck, Player:BuffRemains(S.BeastCleaveBuff))
			if Player:IsPrevCastPending() then
				return BaseCheck + (GetTime() - Player:GCDStartTime())
			end
		end;
		return BaseCheck
	end, 253)

	local OldUHIsReady;
	OldUHIsReady = HL.AddCoreOverride("Spell.IsReady", function(self, Range, AoESpell, ThisUnit, BypassRecovery, Offset)
		local BaseCheck2, Reason = OldUHIsReady(self, Range, AoESpell, ThisUnit, BypassRecovery, Offset)
		if self == S.Bloodshed then
			if Target:TimeToDie() < 18 and not Target:IsBoss() then
				return false, "Time To Die too low"
			end
		end;
		if (self == S.KillCommand or self == S.AspectoftheWild or self == S.BestialWrath) and not Pet:IsActive() then
			return false, "Pet not active"
		end;
		if self == S.DireBeast then
			if MainAddon.TTDAverage(SmartAoE) < 18 and Player:BuffStack(S.HuntmastersCallBuff) == 2 then
				return false, "Save Wolf"
			end
		end;
		return BaseCheck2, Reason
	end, 253)
		local OldBMIsCastable
	OldBMIsCastable = HL.AddCoreOverride("Spell.IsCastable",
	function (self, BypassRecovery, Range, AoESpell, ThisUnit, Offset)
	local BaseCheck = OldBMIsCastable(self, BypassRecovery, Range, AoESpell, ThisUnit, Offset)
	
	if self == S.RevivePet then
			return not (Player:IsMounted() or Player:IsInVehicle()) and BaseCheck
		elseif self == S.MendPet then
			return not (Player:IsMounted() or Player:IsInVehicle()) and BaseCheck
		else
			return BaseCheck
		end
	end
, 253)

end

--Loop to wait for the addon to be ready!
local function TryLoading ()
    C_Timer.After(1, function()
		if MainAddon then
			MyRoutine()
		else
			TryLoading()
		end
    end)
end
TryLoading()
