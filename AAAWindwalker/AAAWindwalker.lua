local function MyRoutine()

	-- Mistweaver-Rollface MWRollface
	local Author = 'SimC WindWalker Rollface'
	local SpecID = 269 --Unholy --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

	--HR HEADER
	-- Addon
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
	local MultiSpell = HL.MultiSpell
	local MouseOver = Unit.MouseOver
	local Focus = Unit.Focus
	local Item = HL.Item
	local HealingEngine = MainAddon.HealingEngine
	-- HeroRotation
	local Cast = MainAddon.Cast
	local CastCycle = MainAddon.CastCycle
	local CastTargetIf = MainAddon.CastTargetIf
	local AoEON = MainAddon.AoEON
	local CDsON = MainAddon.CDsON
	local CastCycleAlly = MainAddon.CastCycleAlly;
	local ForceCastAlly = MainAddon.ForceCastAlly;
	local CastTargetIfAlly = MainAddon.CastTargetIfAlly;
	local CastCycle = MainAddon.CastCycle;
	local CastAlly = MainAddon.CastAlly;
	local mathmax = math.max
	local mathmin = math.min
	local TANKS, HEALERS, MEMBERS, DPS, PRIORITY;
	local Utils         = HL.Utils
	


	local function TargetIsValid()
		return (Player:AffectingCombat() and Target:Exists() and 
		Player:CanAttack(Target) and not Target:IsDeadOrGhost() and 
		(Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	end

	--ALL SPELLS ARE LOCATED ON Rotations/CLASS_SPELL.lua, if one is missing tells us about it.
	local S = {

		-- Abilities
		BlackoutKick                          = Spell(100784),
		FlyingSerpentKick                     = Spell(101545),
		FlyingSerpentKickLand                 = Spell(115057),
		SpinningCraneKick                     = Spell(101546),
		-- Talents
		CourageousImpulse                     = Spell(451495),
		CraneVortex                           = Spell(388848),
		EnergyBurst                           = Spell(451498),
		GaleForce                             = Spell(451580),
		JadefireHarmony                       = Spell(391412),
		JadefireStomp                         = Spell(388193),
		FistsofFury                           = Spell(113656),
		GloryoftheDawn                        = Spell(392958),
		HitCombo                              = Spell(196740),
		InnerPeace                            = Spell(397768),
		InvokeXuenTheWhiteTiger               = Spell(123904),
		KnowledgeoftheBrokenTemple            = Spell(451529),
		MemoryoftheMonastery                  = Spell(454969),
		OrderedElements                       = Spell(451463),
		RevolvingWhirl                        = Spell(451524),
		SequencedStrikes                      = Spell(451515),
		ShadowboxingTreads                    = Spell(392982),
		SingularlyFocusedJade                 = Spell(451573),
		StormEarthAndFire                     = Spell(137639),
		StormEarthAndFireFixate               = Spell(221771),
		StrikeoftheWindlord                   = Spell(392983),
		TeachingsoftheMonastery               = Spell(116645),
		WhirlingDragonPunch                   = Spell(152175),
		XuensBattlegear                       = Spell(392993),
		XuensBond                             = Spell(392986),
		-- Defensive
		FortifyingBrew                        = Spell(243435),
		TouchofKarma                          = Spell(122470),
		-- Buffs
		BlackoutKickBuff                      = Spell(116768),
		ChiEnergyBuff                         = Spell(393057),
		DanceofChijiBuff                      = Spell(325202),
		HiddenMastersForbiddenTouchBuff       = Spell(213114),
		InvokersDelightBuff                   = Spell(388663),
		MemoryoftheMonasteryBuff              = Spell(454970),
		OrderedElementsBuff                   = Spell(451462),
		StormEarthAndFireBuff                 = Spell(137639),
		TeachingsoftheMonasteryBuff           = Spell(202090),
		-- Debuffs
		AcclamationDebuff                     = Spell(451433),
		MarkoftheCraneDebuff                  = Spell(228287),
		-- Tier 31 Effects
		BlackoutReinforcementBuff             = Spell(424454),

		-- Racials
		AncestralCall                         = Spell(274738),
		ArcanePulse                           = Spell(260364),
		ArcaneTorrent                         = Spell(25046),
		AzeriteSurge                          = Spell(436344),
		BagofTricks                           = Spell(312411),
		Berserking                            = Spell(26297),
		BloodFury                             = Spell(20572),
		GiftoftheNaaru                        = Spell(59547),
		Haymaker                              = Spell(287712),
		Fireblood                             = Spell(265221),
		LightsJudgment                        = Spell(255647),
		QuakingPalm                           = Spell(107079),
		RocketBarrage                         = Spell(69041),
		Shadowmeld                            = Spell(58984),
		-- Abilities
		CracklingJadeLightning                = Spell(117952),
		ExpelHarm                             = Spell(322101),
		LegSweep                              = Spell(119381),
		Provoke                               = Spell(115546),
		Resuscitate                           = Spell(115178),
		RisingSunKick                         = Spell(107428),
		Roll                                  = Spell(109132),
		TigerPalm                             = Spell(100780),
		TouchofDeath                          = Spell(322109),
		Transcendence                         = Spell(101643),
		TranscendenceTransfer                 = Spell(119996),
		Vivify                                = Spell(116670),
		-- Talents
		BonedustBrew                          = Spell(386276),
		Celerity                              = Spell(115173),
		ChiBurst                              = Spell(123986),
		ChiTorpedo                            = Spell(115008),
		ChiWave                               = Spell(115098),
		DampenHarm                            = Spell(122278),
		Detox                                 = Spell(218164),
		Disable                               = Spell(116095),
		DiffuseMagic                          = Spell(122783),
		EyeoftheTiger                         = Spell(196607),
		FastFeet                              = Spell(388809),
		ImpTouchofDeath                       = Spell(322113),
		InnerStrengthBuff                     = Spell(261769),
		Paralysis                             = Spell(115078),
		RingofPeace                           = Spell(116844),
		RushingJadeWind                       = Spell(116847),
		SpearHandStrike                       = Spell(116705),
		StrengthofSpirit                      = Spell(387276),
		SummonWhiteTigerStatue                = Spell(388686),
		TigerTailSweep                        = Spell(264348),
		TigersLust                            = Spell(116841),
		-- Buffs
		BonedustBrewBuff                      = Spell(386276),
		BonedustBrewDebuff                    = Spell(386276),
		DampenHarmBuff                        = Spell(122278),
		PressurePointBuff                     = Spell(393053),
		RushingJadeWindBuff                   = Spell(116847),
		-- Debuffs
		-- Item Effects
		CalltoDominanceBuff                   = Spell(403380), -- Neltharion trinket buff
		DomineeringArroganceBuff              = Spell(411661), -- Neltharion trinket buff2
		TheEmperorsCapacitorBuff              = Spell(235054),
		-- Misc
		PoolEnergy                            = Spell(999910),
		StopFoF                               = Spell(363653),

		-- Talents
		CelestialConduit                      = Spell(443028),
		-- Buffs
		HeartoftheJadeSerpentBuff             = Spell(456368),
		HeartoftheJadeSerpentCDRBuff          = Spell(443421),
		HeartoftheJadeSerpentCDRCelestialBuff = Spell(443616),

		-- Talents
		FlurryStrikes                         = Spell(450615),
		WisdomoftheWall                       = Spell(450994),
		-- Buffs
		WisdomoftheWallFlurryBuff             = Spell(452688),


	}

	local I = {
		-- DF Trinkets
		AlgetharPuzzleBox                     = Item(193701, {13, 14}),
		BeacontotheBeyond                     = Item(203963, {13, 14}),
		DragonfireBombDispenser               = Item(202610, {14, 14}),
		EruptingSpearFragment                 = Item(193769, {13, 14}),
		ManicGrieftorch                       = Item(194308, {13, 14}),
		-- TWW Trinkets
		ImperfectAscendancySerum              = Item(225654, {13, 14}),
		MadQueensMandate                      = Item(212454, {13, 14}),
		TreacherousTransmitter                = Item(221023, {13, 14}),
		-- Other On-Use Items
		Djaruun                               = Item(202569, {16}),
	}

	local OnUseExcludes = {
		-- DF Trinkets
		I.AlgetharPuzzleBox:ID(),
		I.BeacontotheBeyond:ID(),
		I.DragonfireBombDispenser:ID(),
		I.EruptingSpearFragment:ID(),
		I.ManicGrieftorch:ID(),
		-- TWW Trinkets
		I.ImperfectAscendancySerum:ID(),
		I.MadQueensMandate:ID(),
		I.TreacherousTransmitter:ID(),
		-- DF Other Items
		I.Djaruun:ID(),
	}
	
	
	--GUI CONFIG
	local UnholyColor = 'c41f3b'
	local Unholy_Config = {
		--YO CHANGE THIS TO
		key = 'RollfaceXMW',
		title = 'RollfaceXMW',
		-- subtitle = '1.0',
		-- width = 300,
		-- height = 250,
		-- profiles = true,
		config = {
		-- 	{ type = 'header', text = 'Unholy', size = 24, align = 'Center', color = UnholyColor},
		-- 	{ type = 'spacer' },{ type = 'ruler' },{ type = 'spacer' },
		-- 	{ type = 'header', text = 'Defensives', color = UnholyColor },
		-- 	{ type = 'checkspin', text = 'Death Strike: Smart Use', key = 'smartds', min = 1, max = 100, default = 15},
		-- 	{ type = 'checkspin', text = 'Death Strike: Deficit', key = 'deficitds', min = 1, max = 100, default = 20},
		-- 	{ type = 'checkspin', text = 'Death Strike: Emergency', key = 'dsemergency', min = 1, max = 100, default = 50},
		-- 	{ type = 'checkspin', text = 'Icebound Fortitude', key = 'ibfortitude', min = 1, max = 100, default = 30},
		-- 	{ type = 'checkspin', text = 'Rune Tap', key = 'runetap', min = 1, max = 100, default = 35},
		-- 	{ type = 'checkspin', text = 'Vampiric Blood', key = 'vp', min = 1, max = 100, default = 50},
		-- 	{ type = 'spacer' },
		-- 	{ type = 'header', text = 'Class', color = UnholyColor },
			
		}
	}
	MainAddon.SetCustomConfig(Author, SpecID, Unholy_Config)

	local function Init()
		message( 'Enjoy', 1)
		MainAddon:Print('Rolly polly olly')
	end

	-- Track Xuen, the White Tiger
	local WW = {}
	WW.Xuen = {}
	WW.Xuen.Active = false
	WW.Xuen.GUID = 0
	WW.Xuen.SummonTime = 0
	HL:RegisterForSelfCombatEvent(
	function(...)
	local destGUID, _, _, _, spellID = select(8, ...)
	if spellID == 123904 then
		WW.Xuen.Active = true
		WW.Xuen.GUID = destGUID
		WW.Xuen.SummonTime = GetTime()
	end
	end
	, "SPELL_SUMMON"
	)

	HL:RegisterForCombatEvent(
	function(...)
	local destGUID = select(8, ...)
	if destGUID == WW.Xuen.GUID then
		WW.Xuen.Active = false
		WW.Xuen.GUID = 0
		WW.Xuen.SummonTime = 0
	end
	end
	, "UNIT_DIED"
	)

	--- ===== Rotation Variables =====
	local VarTotMMaxStacks = 4
	local MotCCount, MotCMinTime
	local Enemies5y, Enemies8y, EnemiesCount8y
	local BossFightRemains = 11111
	local FightRemains = 11111

	--- ===== Trinket Item Objects =====
	local Trinket1, Trinket2
	local VarTrinket1ID, VarTrinket2ID
	local VarTrinket1Spell, VarTrinket2Spell
	local VarTrinket1Range, VarTrinket2Range
	local VarTrinket1CastTime, VarTrinket2CastTime
	local VarTrinket1CD, VarTrinket2CD
	local VarTrinket1Ex, VarTrinket2Ex
	local VarTrinketFailures = 0

	local function SetTrinketVariables()
		local T1, T2 = Player:GetTrinketData(OnUseExcludes)
		if VarTrinketFailures < 5 and ((T1.ID == 0 or T2.ID == 0) or (T1.SpellID > 0 and not T1.Usable or T2.SpellID > 0 and not T2.Usable)) then
		  VarTrinketFailures = VarTrinketFailures + 1
		  Delay(5, function()
			  SetTrinketVariables()
			end
		  )
		end
	  
		Trinket1 = T1.Object
		Trinket2 = T2.Object
	  
		VarTrinket1ID = T1.ID
		VarTrinket2ID = T2.ID
	  
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
	end
	SetTrinketVariables()

	--- ===== Event Registrations =====
	HL:RegisterForEvent(function()
	VarFoPPreChan = 0
	BossFightRemains = 11111
	FightRemains = 11111
	end, "PLAYER_REGEN_ENABLED")

	
	HL:RegisterForEvent(function()
	VarTrinketFailures = 0
	SetTrinketVariables()
	end, "PLAYER_EQUIPMENT_CHANGED")

	--- ===== Helper Functions =====
	local function ComboStrike(SpellObject)
	return (not Player:PrevGCD(1, SpellObject))
	end

	local function MotCMinTimeCheck()
	local MinTime = 999
	for _, CycleUnit in pairs(Enemies8y) do
		local UnitTime = CycleUnit:DebuffRemains(S.MarkoftheCraneDebuff)
		if CycleUnit:DebuffUp(S.MarkoftheCraneDebuff) and UnitTime < MinTime then
		MinTime = UnitTime
		end
	end
	if MinTime == 999 then return 0 end
	return MinTime
	end

	local function MotCCastSwitcher(SpellToCast, Enemies, Mode, ETIF, ETI, Range)
	if MotCCount < mathmin(0, EnemiesCount8y) or MotCMinTime < 0 then
		return CastTargetIf(SpellToCast, Enemies, Mode, ETIF, ETI)
	else
		return Cast(SpellToCast)
	end
	end

	local function SCKMax()
	local Count = MotCCount
	if (EnemiesCount8y == Count or Count >= 5) then return true end
	return false
	end

	local function ToDTarget()
	if not (S.TouchofDeath:CooldownUp() or Player:BuffUp(S.HiddenMastersForbiddenTouchBuff)) then return nil end
	local BestUnit, BestConditionValue = nil
	for _, CycleUnit in pairs(Enemies5y) do
		if not CycleUnit:IsFacingBlacklisted() and not CycleUnit:IsUserCycleBlacklisted() and (CycleUnit:AffectingCombat() or CycleUnit:IsDummy()) and (S.ImpTouchofDeath:IsAvailable() and CycleUnit:HealthPercentage() <= 15 or CycleUnit:Health() < Player:Health()) and (not BestConditionValue or Utils.CompareThis("max", CycleUnit:Health(), BestConditionValue)) then
		BestUnit, BestConditionValue = CycleUnit, CycleUnit:Health()
		end
	end
	if BestUnit and BestUnit == Target then
		if not S.TouchofDeath:IsReady() then return nil; end
	end
	return BestUnit
	end

	--- ===== CastTargetIf Filter Functions =====
	local function EvaluateTargetIfFilterAcclamation(TargetUnit)
		return TargetUnit:DebuffRemains(S.AcclamationDebuff)
	end
	
	local function EvaluateTargetIfFilterMarkoftheCrane(TargetUnit)
		return TargetUnit:DebuffRemains(S.MarkoftheCraneDebuff)
	end
	
	local function EvaluateTargetIfFilterTTD(TargetUnit)
		return TargetUnit:TimeToDie()
	end
	
	--- ===== CastTargetIf Condition Functions =====
	local function EvaluateTargetIfInvokeXuenCDs(TargetUnit)
		return (TargetUnit:TimeToDie() > 14 and not Player:IsInDungeonArea() or TargetUnit:TimeToDie() > 22) and (EnemiesCount8y > 2 or TargetUnit:DebuffUp(S.AcclamationDebuff) or not S.OrderedElements:IsAvailable() and HL.CombatTime() < 5)
	end
	
	local function EvaluateTargetIfTigerPalmCDs(TargetUnit)
		return TargetUnit:TimeToDie() > 14 and not Player:IsInDungeonArea() or TargetUnit:TimeToDie() > 22
	end

	local function Trinkets()	
		-- algethar_puzzle_box,if=(pet.xuen_the_white_tiger.active|!talent.invoke_xuen_the_white_tiger)&!buff.storm_earth_and_fire.up|fight_remains<25
		if I.AlgetharPuzzleBox:IsEquippedAndReady() and ((WW.Xuen.Active or not S.InvokeXuenTheWhiteTiger:IsAvailable()) and Player:BuffDown(S.StormEarthAndFireBuff) or BossFightRemains < 25) then
			if Cast(I.AlgetharPuzzleBox) then return "algethar_puzzle_box trinkets 2"; end
		end
		-- erupting_spear_fragment,if=buff.storm_earth_and_fire.up
		if Target:IsInRange(40) and I.EruptingSpearFragment:IsEquippedAndReady() and (Player:BuffUp(S.StormEarthAndFireBuff)) then
			if Cast(I.EruptingSpearFragment) then return "erupting_spear_fragment trinkets 4"; end
		end
		-- use_item,manic_grieftorch,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff&!buff.storm_earth_and_fire.up&!pet.xuen_the_white_tiger.active|(trinket.1.has_use_buff|trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30|fight_remains<5
		if I.ManicGrieftorch:IsEquippedAndReady() and (not Trinket1:HasUseBuff() and not Trinket2:HasUseBuff() and Player:BuffDown(S.StormEarthAndFireBuff) and not WW.Xuen.Active or (Trinket1:HasUseBuff() or Trinket2:HasUseBuff()) and S.InvokeXuenTheWhiteTiger:CooldownRemains() > 30 or BossFightRemains < 5) then
			if Cast(I.ManicGrieftorch) then return "manic_grieftorch trinkets 6"; end
		end
		-- beacon_to_the_beyond,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff&!buff.storm_earth_and_fire.up&!pet.xuen_the_white_tiger.active|(trinket.1.has_use_buff|trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30|fight_remains<10
		if Target:IsInRange(45) and I.BeacontotheBeyond:IsEquippedAndReady() and (not Trinket1:HasUseBuff() and not Trinket2:HasUseBuff() and Player:BuffDown(S.StormEarthAndFireBuff) and not WW.Xuen.Active or (Trinket1:HasUseBuff() or Trinket2:HasUseBuff()) and S.InvokeXuenTheWhiteTiger:CooldownRemains() > 30 or BossFightRemains < 10) then
			if Cast(I.BeacontotheBeyond) then return "beacon_to_the_beyond trinkets 8"; end
		end

		-- djaruun_pillar_of_the_elder_flame,if=cooldown.fists_of_fury.remains<2&cooldown.invoke_xuen_the_white_tiger.remains>10|fight_remains<12
		if Target:IsInRange(100) and I.Djaruun:IsEquippedAndReady() and (S.FistsofFury:CooldownRemains() < 2 and S.InvokeXuenTheWhiteTiger:CooldownRemains() > 10 or BossFightRemains < 12) then
			if Cast(I.Djaruun) then return "djaruun_pillar_of_the_elder_flame trinkets 10"; end
		end
	
		-- dragonfire_bomb_dispenser,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff|(trinket.1.has_use_buff|trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>10|fight_remains<10
		if Target:IsInRange(46) and I.DragonfireBombDispenser:IsEquippedAndReady() and (not Trinket1:HasUseBuff() and not Trinket2:HasUseBuff() or (Trinket1:HasUseBuff() or Trinket2:HasUseBuff()) and S.InvokeXuenTheWhiteTiger:CooldownRemains() > 10 or BossFightRemains < 10) then
			if Cast(I.DragonfireBombDispenser) then return "dragonfire_bomb_dispenser trinkets 12"; end
		end
		-- imperfect_ascendancy_serum,use_off_gcd=1,if=pet.xuen_the_white_tiger.active
		if I.ImperfectAscendancySerum:IsEquippedAndReady() and (WW.Xuen.Active) then
			if Cast(I.ImperfectAscendancySerum) then return "imperfect_ascendancy_serum trinkets 14"; end
		end
		-- mad_queens_mandate,target_if=min:time_to_die,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff|(trinket.1.has_use_buff|trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30
		if Target:IsInRange(50) and I.MadQueensMandate:IsEquippedAndReady() and (not Trinket1:HasUseBuff() and not Trinket2:HasUseBuff() or (Trinket1:HasUseBuff() or Trinket2:HasUseBuff()) and S.InvokeXuenTheWhiteTiger:CooldownRemains() > 30) then
			if CastTargetIf(I.MadQueensMandate, Enemies8y, "min", EvaluateTargetIfFilterTTD) then return "mad_queens_mandate trinkets 15"; end
		end
		-- treacherous_transmitter,if=!fight_style.dungeonslice&(cooldown.invoke_xuen_the_white_tiger.remains<4|talent.xuens_bond&pet.xuen_the_white_tiger.active)|fight_style.dungeonslice&((fight_style.DungeonSlice&active_enemies=1&(time<10|talent.xuens_bond&talent.celestial_conduit)|!fight_style.dungeonslice|active_enemies>1)&cooldown.storm_earth_and_fire.ready&(target.time_to_die>14&!fight_style.dungeonroute|target.time_to_die>22)&(active_enemies>2|debuff.acclamation.up|!talent.ordered_elements&time<5)&(chi>2&talent.ordered_elements|chi>5|chi>3&energy<50|energy<50&active_enemies=1|prev.tiger_palm&!talent.ordered_elements&time<5)|fight_remains<30)|buff.invokers_delight.up
		local DungeonSlice = Player:IsInDungeonArea()
		if I.TreacherousTransmitter:IsEquippedAndReady() and (not DungeonSlice and (S.InvokeXuenTheWhiteTiger:CooldownRemains() < 4 or S.XuensBond:IsAvailable() and WW.Xuen.Active) or DungeonSlice and ((DungeonSlice and EnemiesCount8y == 1 and (HL.CombatTime() < 10 or S.XuensBond:IsAvailable() and S.CelestialConduit:IsAvailable()) or not DungeonSlice or EnemiesCount8y > 1) and S.StormEarthAndFire:CooldownUp() and (Target:TimeToDie() > 14 and not DungeonSlice or Target:TimeToDie() > 22) and (EnemiesCount8y > 2 or Target:DebuffUp(S.AcclamationDebuff) or not S.OrderedElements:IsAvailable() and HL.CombatTime() < 5) and (Player:Chi() > 2 and S.OrderedElements:IsAvailable() or Player:Chi() > 5 or Player:Chi() > 3 and Player:Energy() < 50 or Player:Energy() < 50 and EnemiesCount8y == 1 or Player:PrevGCD(1, S.TigerPalm) and not S.OrderedElements:IsAvailable() and HL.CombatTime() < 5) or BossFightRemains < 30) or Player:BuffUp(S.InvokersDelightBuff)) then
			if Cast(I.TreacherousTransmitter) then return "treacherous_transmitter trinkets 16"; end
		end
		-- ITEM_STAT_BUFF,if=pet.xuen_the_white_tiger.active
		if Target:IsInRange(VarTrinket1Range) and Trinket1:IsReady() and not VarTrinket1Ex and not Player:IsItemBlacklisted(Trinket1) and Trinket1:HasUseBuff() and (WW.Xuen.Active) then
			if Cast(Trinket1) then return "Generic use_items for " .. Trinket1:Name() .. " (trinkets stat_buff trinket1)"; end
		end
		if Target:IsInRange(VarTrinket2Range) and Trinket2:IsReady() and not VarTrinket2Ex and not Player:IsItemBlacklisted(Trinket2) and Trinket2:HasUseBuff() and (WW.Xuen.Active) then
			if Cast(Trinket2) then return "Generic use_items for " .. Trinket2:Name() .. " (trinkets stat_buff trinket2)"; end
		end
		-- ITEM_DMG_BUFF,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff|(trinket.1.has_use_buff|trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30
		if Target:IsInRange(VarTrinket1Range) and Trinket1:IsReady() and not VarTRinket1Ex and not Player:IsItemBlacklisted(Trinket1) and (not Trinket1:HasUseBuff() and not Trinket2:HasUseBuff() or (Trinket1:HasUseBuff() or Trinket2:HasUseBuff()) and S.InvokeXuenTheWhiteTiger:CooldownRemains() > 30) then
			if Cast(Trinket1) then return "Generic use_items for " .. Trinket1:Name() .. " (trinkets dmg_buff trinket1)"; end
		end
		if Target:IsInRange(VarTrinket2Range) and Trinket2:IsReady() and not VarTrinket2Ex and not Player:IsItemBlacklisted(Trinket2) and (not Trinket1:HasUseBuff() and not Trinket2:HasUseBuff() or (Trinket1:HasUseBuff() or Trinket2:HasUseBuff()) and S.InvokeXuenTheWhiteTiger:CooldownRemains() > 30) then
			if Cast(Trinket2) then return "Generic use_items for " .. Trinket2:Name() .. " (trinkets dmg_buff trinket2)"; end
		end
	end

	local function Cooldowns()
		-- invoke_external_buff,name=power_infusion,if=pet.xuen_the_white_tiger.active&(!buff.bloodlust.up|buff.bloodlust.up&cooldown.strike_of_the_windlord.remains)
		-- Note: Not handling external buffs.
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=(target.time_to_die>14&!fight_style.dungeonroute|target.time_to_die>22)&!cooldown.invoke_xuen_the_white_tiger.remains&(chi<5&!talent.ordered_elements|chi<3)&(combo_strike|!talent.hit_combo)
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (S.InvokeXuenTheWhiteTiger:CooldownUp() and (Player:Chi() < 5 and not S.OrderedElements:IsAvailable() or Player:Chi() < 3) and (ComboStrike(S.TigerPalm) or not S.HitCombo:IsAvailable())) then
		   if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane, EvaluateTargetIfTigerPalmCDs) then return "tiger_palm cooldowns 2"; end
		end
		-- invoke_xuen_the_white_tiger,target_if=max:target.time_to_die,if=(fight_style.DungeonSlice&active_enemies=1&(time<10|talent.xuens_bond&talent.celestial_conduit)|!fight_style.dungeonslice|active_enemies>1)&cooldown.storm_earth_and_fire.ready&(target.time_to_die>14&!fight_style.dungeonroute|target.time_to_die>22)&(active_enemies>2|debuff.acclamation.up|!talent.ordered_elements&time<5)&(chi>2&talent.ordered_elements|chi>5|chi>3&energy<50|energy<50&active_enemies=1|prev.tiger_palm&!talent.ordered_elements&time<5)|fight_remains<30
		if Target:IsInRange(40) and S.InvokeXuenTheWhiteTiger:IsCastable() and ((Player:IsInDungeonArea() and EnemiesCount8y == 1 and (HL.CombatTime() < 10 or S.XuensBond:IsAvailable() and S.CelestialConduit:IsAvailable()) or not Player:IsInDungeonArea() or EnemiesCount8y > 1) and S.StormEarthAndFire:CooldownUp() and (Player:Chi() > 2 and S.OrderedElements:IsAvailable() or Player:Chi() > 5 or Player:Chi() > 3 and Player:Energy() < 50 or Player:Energy() < 50 and EnemiesCount8y == 1 or Player:PrevGCD(1, S.TigerPalm) and not S.OrderedElements:IsAvailable() and HL.CombatTime() < 5) or BossFightRemains < 30) then
		  if CastTargetIf(S.InvokeXuenTheWhiteTiger, Enemies8y, "max", EvaluateTargetIfFilterTTD, EvaluateTargetIfInvokeXuenCDs) then return "invoke_xuen_the_white_tiger cooldowns 4"; end
		end
		-- storm_earth_and_fire,target_if=max:target.time_to_die,if=(target.time_to_die>14&!fight_style.dungeonroute|target.time_to_die>22)&(active_enemies>2|cooldown.rising_sun_kick.remains|!talent.ordered_elements)&((buff.invokers_delight.remains>10&!buff.bloodlust.up|buff.bloodlust.up&cooldown.storm_earth_and_fire.full_recharge_time<1)|cooldown.storm_earth_and_fire.full_recharge_time<cooldown.invoke_xuen_the_white_tiger.remains&!buff.bloodlust.up&(active_enemies>1|cooldown.strike_of_the_windlord.remains<2&(talent.flurry_strikes|buff.heart_of_the_jade_serpent.up))&(chi>3|chi>1&talent.ordered_elements)|cooldown.storm_earth_and_fire.full_recharge_time<10&(chi>3|chi>1&talent.ordered_elements))|fight_remains<30|prev.invoke_xuen_the_white_tiger|buff.invokers_delight.remains>10&fight_style.dungeonslice&(cooldown.rising_sun_kick.remains|!talent.ordered_elements|active_enemies>2)
		if S.StormEarthAndFire:IsCastable() and ((Target:TimeToDie() > 14 and not Player:IsInDungeonArea() or Target:TimeToDie() > 22) and (EnemiesCount8y > 2 or S.RisingSunKick:CooldownDown() or not S.OrderedElements:IsAvailable()) and ((Player:BuffRemains(S.InvokersDelightBuff) > 10 and Player:BloodlustDown() or Player:BloodlustUp() and S.StormEarthAndFire:FullRechargeTime() < 1) or S.StormEarthAndFire:FullRechargeTime() < S.InvokeXuenTheWhiteTiger:CooldownRemains() and Player:BloodlustDown() and (EnemiesCount8y > 1 or S.StrikeoftheWindlord:CooldownRemains() < 2 and (S.FlurryStrikes:IsAvailable() or Player:BuffUp(S.HeartoftheJadeSerpentBuff))) and (Player:Chi() > 3 or Player:Chi() > 1 and S.OrderedElements:IsAvailable()) or S.StormEarthAndFire:FullRechargeTime() < 10 and (Player:Chi() > 3 or Player:Chi() > 1 and S.OrderedElements:IsAvailable())) or BossFightRemains < 30 or Player:PrevGCD(1, S.InvokeXuenTheWhiteTiger) or Player:BuffRemains(S.InvokersDelightBuff) > 10 and Player:IsInDungeonArea() and (S.RisingSunKick:CooldownDown() or not S.OrderedElements:IsAvailable() or EnemiesCount8y > 2)) then
		  if Cast(S.StormEarthAndFire) then return "storm_earth_and_fire cooldowns 6"; end
		end
		-- touch_of_karma
		if Target:IsInRange(20) and S.TouchofKarma:IsCastable() then
		  if Cast(S.TouchofKarma) then return "touch_of_karma cooldowns 8"; end
		end
		if S.InvokeXuenTheWhiteTiger:CooldownRemains() > 30 or BossFightRemains < 20 then
		  -- ancestral_call,if=cooldown.invoke_xuen_the_white_tiger.remains>30|fight_remains<20
		  if S.AncestralCall:IsCastable() then
			if Cast(S.AncestralCall) then return "ancestral_call cooldowns 10"; end
		  end
		  -- blood_fury,if=cooldown.invoke_xuen_the_white_tiger.remains>30|fight_remains<20
		  if S.BloodFury:IsCastable() then
			if Cast(S.BloodFury) then return "blood_fury cooldowns 12"; end
		  end
		end
		-- fireblood,if=cooldown.invoke_xuen_the_white_tiger.remains>30|fight_remains<10
		if S.Fireblood:IsCastable() and (S.InvokeXuenTheWhiteTiger:CooldownRemains() > 30 or BossFightRemains < 10) then
		  if Cast(S.Fireblood) then return "fireblood cooldowns 14"; end
		end
		-- berserking,if=cooldown.invoke_xuen_the_white_tiger.remains>60|fight_remains<15
		if S.Berserking:IsCastable() and (S.InvokeXuenTheWhiteTiger:CooldownRemains() > 60 or BossFightRemains < 15) then
		  if Cast(S.Berserking) then return "berserking cooldowns 16"; end
		end
		if Player:BuffDown(S.StormEarthAndFireBuff) then
		  -- bag_of_tricks,if=buff.storm_earth_and_fire.down
		  if S.BagofTricks:IsCastable() then
			if Cast(S.BagofTricks) then return "bag_of_tricks cooldowns 18"; end
		  end
		  -- lights_judgment,if=buff.storm_earth_and_fire.down
		  if S.LightsJudgment:IsCastable() then
			if Cast(S.LightsJudgment) then return "lights_judgment cooldowns 20"; end
		  end
		  -- haymaker,if=buff.storm_earth_and_fire.down
		  if S.Haymaker:IsCastable() then
			if Cast(S.Haymaker) then return "haymaker cooldowns 22"; end
		  end
		  -- rocket_barrage,if=buff.storm_earth_and_fire.down
		  if S.RocketBarrage:IsCastable() then
			if Cast(S.RocketBarrage) then return "rocket_barrage cooldowns 24"; end
		  end
		  -- azerite_surge,if=buff.storm_earth_and_fire.down
		  if S.AzeriteSurge:IsCastable() then
			if Cast(S.AzeriteSurge) then return "azerite_surge cooldowns 26"; end
		  end
		  -- arcane_pulse,if=buff.storm_earth_and_fire.down
		  if S.ArcanePulse:IsCastable() then
			if Cast(S.ArcanePulse) then return "arcane_pulse cooldowns 28"; end
		  end
		end
	end

	local function AoEOpener()
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=chi<6
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (Player:Chi() < 6) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm aoe_opener 2"; end
		end
	end
	  
	local function NormalOpener()
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=chi<6&combo_strike
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (Player:Chi() < 6 and ComboStrike(S.TigerPalm)) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm normal_opener 2"; end
		end
		-- rising_sun_kick,target_if=max:debuff.acclamation.stack,if=talent.ordered_elements
		if S.RisingSunKick:IsReady() and (S.OrderedElements:IsAvailable()) then
		  if CastTargetIf(S.RisingSunKick, Enemies8y, "max", EvaluateTargetIfFilterAcclamation, not Target:IsInMeleeRange(5)) then return "rising_sun_kick normal_opener 4"; end
		end
	end

	local function DefaultAoE()
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=(energy>55&talent.inner_peace|energy>60&!talent.inner_peace)&combo_strike&chi.max-chi>=2&buff.teachings_of_the_monastery.stack<buff.teachings_of_the_monastery.max_stack&(talent.energy_burst&!buff.bok_proc.up)&!buff.ordered_elements.up|(talent.energy_burst&!buff.bok_proc.up)&!buff.ordered_elements.up&!cooldown.fists_of_fury.remains&chi<3|(prev.strike_of_the_windlord|cooldown.strike_of_the_windlord.remains)&cooldown.celestial_conduit.remains<2&buff.ordered_elements.up&chi<5&combo_strike
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and ((Player:Energy() > 55 and S.InnerPeace:IsAvailable() or Player:Energy() > 60 and not S.InnerPeace:IsAvailable()) and ComboStrike(S.TigerPalm) and Player:ChiDeficit() >= 2 and Player:BuffStack(S.TeachingsoftheMonasteryBuff) < VarTotMMaxStacks and (S.EnergyBurst:IsAvailable() and Player:BuffDown(S.BlackoutReinforcementBuff)) and Player:BuffDown(S.OrderedElementsBuff) or (S.EnergyBurst:IsAvailable() and Player:BuffDown(S.BlackoutKickBuff)) and Player:BuffDown(S.OrderedElementsBuff) and S.FistsofFury:CooldownUp() and Player:Chi() < 3 or (Player:PrevGCD(1, S.StrikeoftheWindlord) or S.StrikeoftheWindlord:CooldownDown()) and S.CelestialConduit:CooldownRemains() < 2 and Player:BuffUp(S.OrderedElementsBuff) and Player:Chi() < 5 and ComboStrike(S.TigerPalm)) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_aoe 2"; end
		end
		-- touch_of_death
		if Target:IsInMeleeRange(5) and S.TouchofDeath:CooldownUp() then
		  local ToDTar = ToDTarget()
		  if ToDTar then
			if ToDTar:GUID() == Target:GUID() then
			  if Cast(S.TouchofDeath) then return "touch_of_death default_aoe 4"; end
			end
		  end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=buff.dance_of_chiji.stack=2&combo_strike
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&buff.chi_energy.stack>29&cooldown.fists_of_fury.remains<5
		-- Note: Combining both lines and using Cast instead of CastTargetIf, since SCK hits all targets in range anyway.
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and ((Player:BuffStack(S.DanceofChijiBuff) == 2 and ComboStrike(S.SpinningCraneKick)) or (ComboStrike(S.SpinningCraneKick) and Player:BuffStack(S.ChiEnergyBuff) > 29 and S.FistsofFury:CooldownRemains() < 5)) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_aoe 8"; end
		end
		-- celestial_conduit,target_if=max:debuff.acclamation.stack,if=buff.storm_earth_and_fire.up&cooldown.strike_of_the_windlord.remains&(talent.xuens_bond|!talent.xuens_bond&buff.invokers_delight.up)|fight_remains<15
		if Target:IsInMeleeRange(15) and S.CelestialConduit:IsReady() and (Player:BuffUp(S.StormEarthAndFireBuff) and S.StrikeoftheWindlord:CooldownDown() and (S.XuensBond:IsAvailable() or not S.XuensBond:IsAvailable() and Player:BuffUp(S.InvokersDelightBuff)) or BossFightRemains < 15) then
		  if Cast(S.CelestialConduit) then return "celestial_conduit default_aoe 10"; end
		end
		-- rising_sun_kick,target_if=max:target.time_to_die,if=!talent.xuens_battlegear&!cooldown.whirling_dragon_punch.remains&cooldown.fists_of_fury.remains>1&(!talent.revolving_whirl|talent.revolving_whirl&buff.dance_of_chiji.stack<2&active_enemies>2)|!buff.storm_earth_and_fire.up&buff.pressure_point.up
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (not S.XuensBattlegear:IsAvailable() and S.WhirlingDragonPunch:CooldownUp() and S.FistsofFury:CooldownRemains() > 1 and (not S.RevolvingWhirl:IsAvailable() or S.RevolvingWhirl:IsAvailable() and Player:BuffStack(S.DanceofChijiBuff) < 2 and EnemiesCount8y > 2) or Player:BuffDown(S.StormEarthAndFireBuff) and Player:BuffUp(S.PressurePointBuff)) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterTTD) then return "rising_sun_kick default_aoe 12"; end
		end
		-- whirling_dragon_punch,target_if=max:target.time_to_die,if=!talent.revolving_whirl|talent.revolving_whirl&buff.dance_of_chiji.stack<2&active_enemies>2
		if Target:IsInMeleeRange(5) and S.WhirlingDragonPunch:IsReady() and (not S.RevolvingWhirl:IsAvailable() or S.RevolvingWhirl:IsAvailable() and Player:BuffStack(S.DanceofChijiBuff) < 2 and EnemiesCount8y > 2) then
		  if CastTargetIf(S.WhirlingDragonPunch, Enemies5y, "max", EvaluateTargetIfFilterTTD) then return "whirling_dragon_punch default_aoe 14"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&buff.bok_proc.up&chi<2&talent.energy_burst&energy<55
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and (ComboStrike(S.BlackoutKick) and Player:BuffUp(S.BlackoutKickBuff) and Player:Chi() < 2 and S.EnergyBurst:IsAvailable() and Player:Energy() < 55) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_aoe 16"; end
		end
		-- strike_of_the_windlord,target_if=max:target.time_to_die,if=time>5&(cooldown.invoke_xuen_the_white_tiger.remains>15|talent.flurry_strikes)
		if Target:IsInMeleeRange(9) and S.StrikeoftheWindlord:IsReady() and (HL.CombatTime() > 5 and (S.InvokeXuenTheWhiteTiger:CooldownRemains() > 15 or S.FlurryStrikes:IsAvailable())) then
		  if CastTargetIf(S.StrikeoftheWindlord, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "strike_of_the_windlord default_aoe 18"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.teachings_of_the_monastery.stack=8&talent.shadowboxing_treads
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) == 8 and S.ShadowboxingTreads:IsAvailable()) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_aoe 20"; end
		end
		-- crackling_jade_lightning,target_if=max:target.time_to_die,if=buff.the_emperors_capacitor.stack>19&combo_strike&talent.power_of_the_thunder_king
		if Target:IsSpellInRange(S.CracklingJadeLightning) and S.CracklingJadeLightning:IsReady() and (Player:BuffStack(S.TheEmperorsCapacitorBuff) > 19 and ComboStrike(S.CracklingJadeLightning) and S.PoweroftheThunderKing:IsAvailable()) then
		  if CastTargetIf(S.CracklingJadeLightning, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "crackling_jade_lightning default_aoe 22"; end
		end
		-- fists_of_fury,target_if=max:target.time_to_die
		if Target:IsInMeleeRange(8) and S.FistsofFury:IsReady() then
		  if CastTargetIf(S.FistsofFury, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "fists_of_fury default_aoe 24"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&buff.wisdom_of_the_wall_flurry.up&chi<6
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (ComboStrike(S.TigerPalm) and Player:EnergyTimeToMax() <= Player:GCD() * 3 and S.FlurryStrikes:IsAvailable() and Player:BuffUp(S.WisdomoftheWallFlurryBuff) and Player:Chi() < 6) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_aoe 26"; end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&chi>5
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&buff.dance_of_chiji.up&buff.chi_energy.stack>29&cooldown.fists_of_fury.remains<5
		-- Note: Combining both lines and using Cast instead of CastTargetIf, since SCK hits all targets in range anyway.
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and ((ComboStrike(S.SpinningCraneKick) and Player:Chi() > 5) or (ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.DanceofChijiBuff) and Player:BuffStack(S.ChiEnergyBuff) > 29 and S.FistsofFury:CooldownRemains() < 5)) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_aoe 28"; end
		end
		-- rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.pressure_point.up&cooldown.fists_of_fury.remains>2
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (Player:BuffUp(S.PressurePointBuff) and S.FistsofFury:CooldownRemains() > 2) then
		  if MotCCastSwitcher(S.RisingSunKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "rising_sun_kick default_aoe 30"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=talent.shadowboxing_treads&talent.courageous_impulse&combo_strike&buff.bok_proc.stack=2
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and (S.ShadowboxingTreads:IsAvailable() and S.CourageousImpulse:IsAvailable() and ComboStrike(S.BlackoutKick) and Player:BuffStack(S.BlackoutKickBuff) == 2) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_aoe 31"; end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&buff.dance_of_chiji.up&spinning_crane_kick.max
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&buff.ordered_elements.up&talent.crane_vortex&active_enemies>2&spinning_crane_kick.max
		-- Note: Combining both lines and using Cast instead of CastTargetIf, since SCK hits all targets in range anyway.
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and ((ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.DanceofChijiBuff) and SCKMax()) or (ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.OrderedElementsBuff) and S.CraneVortex:IsAvailable() and EnemiesCount8y > 3 and SCKMax())) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_aoe 32"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&buff.ordered_elements.up
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&chi.deficit>=2&(!buff.ordered_elements.up|energy.time_to_max<=gcd.max*3)
		-- Note: Combining both lines.
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and ((ComboStrike(S.TigerPalm) and Player:EnergyTimeToMax() <= Player:GCD() * 3 and S.FlurryStrikes:IsAvailable() and Player:BuffUp(S.OrderedElementsBuff)) or (ComboStrike(S.TigerPalm) and Player:ChiDeficit() >= 2 and (Player:BuffDown(S.OrderedElementsBuff) or Player:EnergyTimeToMax() <= Player:GCD() * 3))) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_aoe 34"; end
		end
		-- jadefire_stomp,target_if=max:target.time_to_die,if=talent.Singularly_Focused_Jade|talent.jadefire_harmony
		if Target:IsInRange(30) and S.JadefireStomp:IsCastable() and (S.SingularlyFocusedJade:IsAvailable() or S.JadefireHarmony:IsAvailable()) then
		  if CastTargetIf(S.JadefireStomp, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "jadefire_stomp default_aoe 36"; end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&!buff.ordered_elements.up&talent.crane_vortex&active_enemies>2&chi>4&spinning_crane_kick.max
		-- Note: Using Cast instead of CastTargetIf, since SCK hits all targets in range anyway.
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffDown(S.OrderedElementsBuff) and S.CraneVortex:IsAvailable() and EnemiesCount8y > 2 and Player:Chi() > 4 and SCKMax()) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_aoe 38"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&cooldown.fists_of_fury.remains&(buff.teachings_of_the_monastery.stack>3|buff.ordered_elements.up)&(talent.shadowboxing_treads|buff.bok_proc.up)
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&!cooldown.fists_of_fury.remains&chi<3
		-- Note: Combining both lines.
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and ((ComboStrike(S.BlackoutKick) and S.FistsofFury:CooldownDown() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) > 3 or Player:BuffUp(S.OrderedElementsBuff)) and (S.ShadowboxingTreads:IsAvailable() or Player:BuffUp(S.BlackoutKickBuff))) or (ComboStrike(S.BlackoutKick) and S.FistsofFury:CooldownUp() and Player:Chi() < 3)) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_aoe 40"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=talent.shadowboxing_treads&talent.courageous_impulse&combo_strike&buff.bok_proc.up
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and (S.ShadowboxingTreads:IsAvailable() and S.CourageousImpulse:IsAvailable() and ComboStrike(S.BlackoutKick) and Player:BuffUp(S.BlackoutKickBuff)) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_aoe 41"; end
		end
		-- spinning_crane_kick,if=combo_strike&(chi>3|energy>55)
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and (Player:Chi() > 3 or Player:Energy() > 55)) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_aoe 42"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&(buff.ordered_elements.up|buff.bok_proc.up&chi.deficit>=1&talent.energy_burst)&cooldown.fists_of_fury.remains
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&cooldown.fists_of_fury.remains&(chi>2|energy>60|buff.bok_proc.up)
		-- Note: Combining both lines.
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and ((ComboStrike(S.BlackoutKick) and (Player:BuffUp(S.OrderedElementsBuff) or Player:BuffUp(S.BlackoutKickBuff) and Player:ChiDeficit() >= 1 and S.EnergyBurst:IsAvailable()) and S.FistsofFury:CooldownDown()) or (ComboStrike(S.BlackoutKick) and S.FistsofFury:CooldownDown() and (Player:Chi() > 2 or Player:Energy() > 60 or Player:BuffUp(S.BlackoutKickBuff)))) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_aoe 44"; end
		end
		-- jadefire_stomp,target_if=max:debuff.acclamation.stack
		if Target:IsInRange(30) and S.JadefireStomp:IsCastable() then
		  if CastTargetIf(S.JadefireStomp, Enemies8y, "max", EvaluateTargetIfFilterAcclamation) then return "jadefire_stomp default_aoe 46"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&buff.ordered_elements.up&chi.deficit>=1
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (ComboStrike(S.TigerPalm) and Player:BuffUp(S.OrderedElementsBuff) and Player:ChiDeficit() >= 1) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_aoe 48"; end
		end
		-- chi_burst,if=!buff.ordered_elements.up
		if Target:IsInRange(40) and S.ChiBurst:IsCastable() and (Player:BuffDown(S.OrderedElementsBuff)) then
		  if Cast(S.ChiBurst) then return "chi_burst default_aoe 50"; end
		end
		-- chi_burst
		if Target:IsInRange(40) and S.ChiBurst:IsCastable() then
		  if Cast(S.ChiBurst) then return "chi_burst default_aoe 52"; end
		end
		-- spinning_crane_kick,if=combo_strike&buff.ordered_elements.up&talent.hit_combo&spinning_crane_kick.max
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.OrderedElementsBuff) and S.HitCombo:IsAvailable() and SCKMax()) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_aoe 54"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.ordered_elements.up&!talent.hit_combo&cooldown.fists_of_fury.remains
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and (Player:BuffUp(S.OrderedElementsBuff) and not S.HitCombo:IsAvailable() and S.FistsofFury:CooldownDown()) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_aoe 56"; end
		end
		-- tiger_palm,if=prev.tiger_palm&chi<3&!cooldown.fists_of_fury.remains
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (Player:PrevGCD(1, S.TigerPalm) and Player:Chi() < 3 and S.FistsofFury:CooldownUp()) then
		  if Cast(S.TigerPalm) then return "tiger_palm default_aoe 58"; end
		end
		-- Manually added: tiger_palm,if=chi=0 (avoids a potential profile stall)
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (Player:Chi() == 0) then
		  if Cast(S.TigerPalm) then return "tiger_palm default_aoe 60"; end
		end
	end

	local function DefaultCleave()
		-- rising_sun_kick,target_if=max:target.time_to_die,if=buff.pressure_point.up&active_enemies<4&cooldown.fists_of_fury.remains>4
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (Player:BuffUp(S.PressurePointBuff) and EnemiesCount8y < 4 and S.FistsofFury:CooldownRemains() > 4) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterTTD) then return "rising_sun_kick default_cleave 2"; end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&buff.dance_of_chiji.stack=2&active_enemies>3
		-- Note: Using Cast instead of the CastTargetIf, since SCK hits all targets anyway.
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffStack(S.DanceofChijiBuff) == 2 and EnemiesCount8y > 3) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_cleave 4"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=(energy>55&talent.inner_peace|energy>60&!talent.inner_peace)&combo_strike&chi.max-chi>=2&buff.teachings_of_the_monastery.stack<buff.teachings_of_the_monastery.max_stack&(talent.energy_burst&!buff.bok_proc.up|!talent.energy_burst)&!buff.ordered_elements.up|(talent.energy_burst&!buff.bok_proc.up|!talent.energy_burst)&!buff.ordered_elements.up&!cooldown.fists_of_fury.remains&chi<3|(prev.strike_of_the_windlord|cooldown.strike_of_the_windlord.remains)&cooldown.celestial_conduit.remains<2&buff.ordered_elements.up&chi<5&combo_strike|(!buff.heart_of_the_jade_serpent_cdr.up|!buff.heart_of_the_jade_serpent_cdr_celestial.up)&combo_strike&chi.deficit>=2&!buff.ordered_elements.up
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and ((Player:Energy() > 55 and S.InnerPeace:IsAvailable() or Player:Energy() > 60 and not S.InnerPeace:IsAvailable()) and ComboStrike(S.TigerPalm) and Player:ChiDeficit() >= 2 and Player:BuffStack(S.TeachingsoftheMonasteryBuff) < VarTotMMaxStacks and (S.EnergyBurst:IsAvailable() and Player:BuffDown(S.BlackoutKickBuff) or not S.EnergyBurst:IsAvailable()) and Player:BuffDown(S.OrderedElementsBuff) or (S.EnergyBurst:IsAvailable() and Player:BuffDown(S.BlackoutKickBuff) or not S.EnergyBurst:IsAvailable()) and Player:BuffDown(S.OrderedElementsBuff) and S.FistsofFury:CooldownUp() and Player:Chi() < 3 or (Player:PrevGCD(1, S.StrikeoftheWindlord) or S.StrikeoftheWindlord:CooldownDown()) and S.CelestialConduit:CooldownRemains() < 2 and Player:BuffUp(S.OrderedElementsBuff) and Player:Chi() < 5 and ComboStrike(S.TigerPalm) or (Player:BuffDown(S.HeartoftheJadeSerpentCDRBuff) or Player:BuffDown(S.HeartoftheJadeSerpentCDRCelestialBuff)) and ComboStrike(S.TigerPalm) and Player:ChiDeficit() >= 2 and Player:BuffDown(S.OrderedElementsBuff)) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_cleave 6"; end
		end
		-- touch_of_death
		if S.TouchofDeath:CooldownUp() and Target:IsInMeleeRange(5) then
		  local ToDTar = ToDTarget()
		  if ToDTar then
			if ToDTar:GUID() == Target:GUID() then
			  if Cast(S.TouchofDeath) then return "touch_of_death default_cleave 8"; end
			end
		  end
		end
		-- celestial_conduit,target_if=max:debuff.acclamation.stack,if=buff.storm_earth_and_fire.up&cooldown.strike_of_the_windlord.remains&(talent.xuens_bond|!talent.xuens_bond&buff.invokers_delight.up)|fight_remains<15
		if Target:IsInMeleeRange(15) and S.CelestialConduit:IsReady() and (Player:BuffUp(S.StormEarthAndFireBuff) and S.StrikeoftheWindlord:CooldownDown() and (S.XuensBond:IsAvailable() or not S.XuensBond:IsAvailable() and Player:BuffUp(S.InvokersDelightBuff)) or BossFightRemains < 15) then
		  if Cast(S.CelestialConduit) then return "celestial_conduit default_cleave 12"; end
		end
		-- rising_sun_kick,target_if=max:target.time_to_die,if=!pet.xuen_the_white_tiger.active&prev.tiger_palm&time<5|buff.heart_of_the_jade_serpent_cdr_celestial.up&buff.pressure_point.up
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (not WW.Xuen.Active and Player:PrevGCD(1, S.TigerPalm) and HL.CombatTime() < 5 or Player:BuffUp(S.HeartoftheJadeSerpentCDRCelestialBuff) and Player:BuffUp(S.PressurePointBuff)) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterTTD) then return "rising_sun_kick default_cleave 14"; end
		end
		-- fists_of_fury,target_if=max:target.time_to_die,if=buff.heart_of_the_jade_serpent_cdr_celestial.up
		if Target:IsInMeleeRange(8) and S.FistsofFury:IsReady() and (Player:BuffUp(S.HeartoftheJadeSerpentCDRCelestialBuff)) then
		  if CastTargetIf(S.FistsofFury, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "fists_of_fury default_cleave 16"; end
		end
		-- whirling_dragon_punch,target_if=max:target.time_to_die,if=buff.heart_of_the_jade_serpent_cdr_celestial.up
		if Target:IsInMeleeRange(5) and S.WhirlingDragonPunch:IsReady() and (Player:BuffUp(S.HeartoftheJadeSerpentCDRCelestialBuff)) then
		  if CastTargetIf(S.WhirlingDragonPunch, Enemies5y, "max", EvaluateTargetIfFilterTTD) then return "whirling_dragon_punch default_cleave 18"; end
		end
		-- strike_of_the_windlord,target_if=max:target.time_to_die,if=talent.gale_force&buff.invokers_delight.up&(buff.bloodlust.up|cooldown.celestial_conduit.remains&!buff.heart_of_the_jade_serpent_cdr_celestial.up)
		if Target:IsInMeleeRange(9) and S.StrikeoftheWindlord:IsReady() and (S.GaleForce:IsAvailable() and Player:BuffUp(S.InvokersDelightBuff) and (Player:BloodlustUp() or S.CelestialConduit:CooldownDown() and Player:BuffDown(S.HeartoftheJadeSerpentCDRCelestialBuff))) then
		  if CastTargetIf(S.StrikeoftheWindlord, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "strike_of_the_windlord default_cleave 20"; end
		end
		-- fists_of_fury,target_if=max:target.time_to_die,if=buff.power_infusion.up&buff.bloodlust.up
		if Target:IsInMeleeRange(8) and S.FistsofFury:IsReady() and (Player:PowerInfusionUp() and Player:BloodlustUp()) then
		  if CastTargetIf(S.FistsofFury, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "fists_of_fury default_cleave 22"; end
		end
		-- rising_sun_kick,target_if=max:target.time_to_die,if=buff.power_infusion.up&buff.bloodlust.up&active_enemies<3
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (Player:PowerInfusionUp() and Player:BloodlustUp() and EnemiesCount8y < 3) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterTTD) then return "rising_sun_kick default_cleave 24"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.teachings_of_the_monastery.stack=8&(active_enemies<3|talent.shadowboxing_treads)
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) == 8 and (EnemiesCount8y < 3 or S.ShadowboxingTreads:IsAvailable())) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_cleave 26"; end
		end
		-- whirling_dragon_punch,target_if=max:target.time_to_die,if=!talent.revolving_whirl|talent.revolving_whirl&buff.dance_of_chiji.stack<2&active_enemies>2|active_enemies<3
		if Target:IsInMeleeRange(5) and S.WhirlingDragonPunch:IsReady() and (not S.RevolvingWhirl:IsAvailable() or S.RevolvingWhirl:IsAvailable() and Player:BuffStack(S.DanceofChijiBuff) < 2 and EnemiesCount8y > 2 or EnemiesCount8y < 3) then
		  if CastTargetIf(S.WhirlingDragonPunch, Enemies5y, "max", EvaluateTargetIfFilterTTD) then return "whirling_dragon_punch default_cleave 28"; end
		end
		-- strike_of_the_windlord,target_if=max:debuff.acclamation.stack,if=time>5&(cooldown.invoke_xuen_the_white_tiger.remains>15|talent.flurry_strikes)
		if Target:IsInMeleeRange(9) and S.StrikeoftheWindlord:IsReady() and (HL.CombatTime() > 5 and (S.InvokeXuenTheWhiteTiger:CooldownRemains() > 15 or S.FlurryStrikes:IsAvailable())) then
		  if CastTargetIf(S.StrikeoftheWindlord, Enemies8y, "max", EvaluateTargetIfFilterAcclamation) then return "strike_of_the_windlord default_cleave 30"; end
		end
		-- crackling_jade_lightning,target_if=max:target.time_to_die,if=buff.the_emperors_capacitor.stack>19&combo_strike&talent.power_of_the_thunder_king
		if Target:IsSpellInRange(S.CracklingJadeLightning) and S.CracklingJadeLightning:IsReady() and (Player:BuffStack(S.TheEmperorsCapacitorBuff) > 19 and ComboStrike(S.CracklingJadeLightning) and S.PoweroftheThunderKing:IsAvailable()) then
		  if CastTargetIf(S.CracklingJadeLightning, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "crackling_jade_lightning default_cleave 32"; end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&buff.dance_of_chiji.stack=2
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffStack(S.DanceofChijiBuff) == 2) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_cleave 34"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&active_enemies<5&buff.wisdom_of_the_wall_flurry.up&active_enemies<4
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (ComboStrike(S.TigerPalm) and Player:EnergyTimeToMax() <= Player:GCD() * 3 and S.FlurryStrikes:IsAvailable() and EnemiesCount8y < 5 and Player:BuffUp(S.WisdomoftheWallFlurryBuff) and EnemiesCount8y < 4) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_cleave 36"; end
		end
		-- fists_of_fury,target_if=max:target.time_to_die
		if Target:IsInMeleeRange(8) and S.FistsofFury:IsReady() then
		  if CastTargetIf(S.FistsofFury, Enemies8y, "max", EvaluateTargetIfFilterTTD) then return "fists_of_fury default_cleave 38"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&active_enemies<5&buff.wisdom_of_the_wall_flurry.up
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (ComboStrike(S.TigerPalm) and Player:EnergyTimeToMax() <= Player:GCD() * 3 and S.FlurryStrikes:IsAvailable() and EnemiesCount8y < 5 and Player:BuffUp(S.WisdomoftheWallFlurryBuff)) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_cleave 40"; end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&buff.dance_of_chiji.up&buff.chi_energy.stack>29
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.DanceofChijiBuff) and Player:BuffStack(S.ChiEnergyBuff) > 29) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_cleave 42"; end
		end
		-- rising_sun_kick,target_if=max:target.time_to_die,if=chi>4&(active_enemies<3|talent.glory_of_the_dawn)|chi>2&energy>50&(active_enemies<3|talent.glory_of_the_dawn)|cooldown.fists_of_fury.remains>2&(active_enemies<3|talent.glory_of_the_dawn)
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (Player:Chi() > 4 and (EnemiesCount8y < 3 or S.GloryoftheDawn:IsAvailable()) or Player:Chi() > 2 and Player:Energy() > 50 and (EnemiesCount8y < 3 or S.GloryoftheDawn:IsAvailable()) or S.FistsofFury:CooldownRemains() > 2 and (EnemiesCount8y < 3 or S.GloryoftheDawn:IsAvailable())) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterTTD) then return "rising_sun_kick default_cleave 44"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=talent.shadowboxing_treads&talent.courageous_impulse&combo_strike&buff.bok_proc.stack=2
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and (S.ShadowboxingTreads:IsAvailable() and S.CourageousImpulse:IsAvailable() and ComboStrike(S.BlackoutKick) and Player:BuffStack(S.BlackoutKickBuff) == 2) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_cleave 45"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.teachings_of_the_monastery.stack=4&!talent.knowledge_of_the_broken_temple&talent.shadowboxing_treads&active_enemies<3
		if Target:IsInMeleeRange(5) and S.BlackoutKick:IsReady() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) == 4 and not S.KnowledgeoftheBrokenTemple:IsAvailable() and S.ShadowboxingTreads:IsAvailable() and EnemiesCount8y < 3) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_cleave 46"; end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&buff.dance_of_chiji.up
		-- Note: Using Cast instead of CastTargetIf, since SCK hits all viable targets.
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.DanceofChijiBuff)) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_cleave 48"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=talent.shadowboxing_treads&talent.courageous_impulse&combo_strike&buff.bok_proc.up
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (S.ShadowboxingTreads:IsAvailable() and S.CourageousImpulse:IsAvailable() and ComboStrike(S.BlackoutKick) and Player:BuffUp(S.BlackoutKickBuff)) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_cleave 49"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&active_enemies<5
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&chi.deficit>=2&(!buff.ordered_elements.up|energy.time_to_max<=gcd.max*3)
		-- Note: Combining both lines.
		if Target:IsInMeleeRange(8) and S.TigerPalm:IsReady() and ((ComboStrike(S.TigerPalm) and Player:EnergyTimeToMax() <= Player:GCD() * 3 and S.FlurryStrikes:IsAvailable() and EnemiesCount8y < 5) or (ComboStrike(S.TigerPalm) and Player:ChiDeficit() >= 2 and (Player:BuffDown(S.OrderedElementsBuff) or Player:EnergyTimeToMax() <= Player:GCD() * 3))) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_cleave 50"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&cooldown.fists_of_fury.remains&buff.teachings_of_the_monastery.stack>3&cooldown.rising_sun_kick.remains
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (ComboStrike(S.BlackoutKick) and S.FistsofFury:CooldownDown() and Player:BuffStack(S.TeachingsoftheMonasteryBuff) > 3 and S.RisingSunKick:CooldownDown()) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_cleave 52"; end
		end
		-- jadefire_stomp,target_if=max:debuff.acclamation.stack,if=talent.Singularly_Focused_Jade|talent.jadefire_harmony
		if Target:IsInRange(30) and S.JadefireStomp:IsReady() and (S.SingularlyFocusedJade:IsAvailable() or S.JadefireHarmony:IsAvailable()) then
		  if CastTargetIf(S.JadefireStomp, Enemies8y, "max", EvaluateTargetIfFilterAcclamation) then return "jadefire_stomp default_cleave 54"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&cooldown.fists_of_fury.remains&(buff.teachings_of_the_monastery.stack>3|buff.ordered_elements.up)&(talent.shadowboxing_treads|buff.bok_proc.up|buff.ordered_elements.up)
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (ComboStrike(S.BlackoutKick) and S.FistsofFury:CooldownDown() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) > 3 or Player:BuffUp(S.OrderedElementsBuff)) and (S.ShadowboxingTreads:IsAvailable() or Player:BuffUp(S.BlackoutKickBuff) or Player:BuffUp(S.OrderedElementsBuff))) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_cleave 56"; end
		end
		-- spinning_crane_kick,target_if=max:target.time_to_die,if=combo_strike&!buff.ordered_elements.up&talent.crane_vortex&active_enemies>2&chi>4
		-- Note: Using Cast instead of CastTargetIf, since SCK hits all targets in range anyway.
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffDown(S.OrderedElementsBuff) and S.CraneVortex:IsAvailable() and EnemiesCount8y > 2 and Player:Chi() > 4) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_cleave 58"; end
		end
		-- chi_burst,if=!buff.ordered_elements.up
		if Target:IsInRange(40) and S.ChiBurst:IsCastable() and (Player:BuffDown(S.OrderedElementsBuff)) then
		  if Cast(S.ChiBurst) then return "chi_burst default_cleave 60"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&(buff.ordered_elements.up|buff.bok_proc.up&chi.deficit>=1&talent.energy_burst)&cooldown.fists_of_fury.remains
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&cooldown.fists_of_fury.remains&(chi>2|energy>60|buff.bok_proc.up)
		-- Note: Combining both lines.
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and ((ComboStrike(S.BlackoutKick) and (Player:BuffUp(S.OrderedElementsBuff) or Player:BuffUp(S.BlackoutKickBuff) and Player:ChiDeficit() >= 1 and S.EnergyBurst:IsAvailable()) and S.FistsofFury:CooldownDown()) or (ComboStrike(S.BlackoutKick) and S.FistsofFury:CooldownDown() and (Player:Chi() > 2 or Player:Energy() > 60 or Player:BuffUp(S.BlackoutKickBuff)))) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_cleave 62"; end
		end
		-- jadefire_stomp,target_if=max:debuff.acclamation.stack
		if Target:IsInRange(30) and S.JadefireStomp:IsCastable() then
		  if CastTargetIf(S.JadefireStomp, Enemies8y, "max", EvaluateTargetIfFilterAcclamation) then return "jadefire_stomp default_cleave 64"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&buff.ordered_elements.up&chi.deficit>=1
		if Target:IsInMeleeRange(8) and S.TigerPalm:IsReady() and (ComboStrike(S.TigerPalm) and Player:BuffUp(S.OrderedElementsBuff) and Player:ChiDeficit() >= 1) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_cleave 66"; end
		end
		-- chi_burst
		if Target:IsInRange(40) and S.ChiBurst:IsCastable() then
		  if Cast(S.ChiBurst) then return "chi_burst default_cleave 68"; end
		end
		-- spinning_crane_kick,if=combo_strike&buff.ordered_elements.up&talent.hit_combo
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.OrderedElementsBuff) and S.HitCombo:IsAvailable()) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_cleave 70"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.ordered_elements.up&!talent.hit_combo&cooldown.fists_of_fury.remains
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (Player:BuffUp(S.OrderedElementsBuff) and not S.HitCombo:IsAvailable() and S.FistsofFury:CooldownDown()) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_cleave 72"; end
		end
		-- tiger_palm,if=prev.tiger_palm&chi<3&!cooldown.fists_of_fury.remains
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (Player:PrevGCD(1, S.TigerPalm) and Player:Chi() < 3 and S.FistsofFury:CooldownUp()) then
		  if Cast(S.TigerPalm) then return "tiger_palm default_cleave 74"; end
		end
	end

	local function DefaultST()
		-- rising_sun_kick,if=buff.pressure_point.up|buff.ordered_elements.remains<=gcd.max*3&buff.storm_earth_and_fire.up
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (Player:BuffUp(S.PressurePointBuff) or Player:BuffRemains(S.OrderedElementsBuff) <= Player:GCD() * 3 and Player:BuffUp(S.StormEarthAndFireBuff)) then
		  if Cast(S.RisingSunKick) then return "rising_sun_kick default_st 2"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=(energy>55&talent.inner_peace|energy>60&!talent.inner_peace)&combo_strike&chi.max-chi>=2&buff.teachings_of_the_monastery.stack<buff.teachings_of_the_monastery.max_stack&(talent.energy_burst&!buff.bok_proc.up|!talent.energy_burst)&!buff.ordered_elements.up|(talent.energy_burst&!buff.bok_proc.up|!talent.energy_burst)&!buff.ordered_elements.up&!cooldown.fists_of_fury.remains&chi<3|(prev.strike_of_the_windlord|cooldown.strike_of_the_windlord.remains)&cooldown.celestial_conduit.remains<2&buff.ordered_elements.up&chi<5&combo_strike|(!buff.heart_of_the_jade_serpent_cdr.up|!buff.heart_of_the_jade_serpent_cdr_celestial.up)&combo_strike&chi.deficit>=2&!buff.ordered_elements.up
		if Target:IsInMeleeRange(8) and S.TigerPalm:IsReady() and ((Player:Energy() > 55 and S.InnerPeace:IsAvailable() or Player:Energy() > 60 and not S.InnerPeace:IsAvailable()) and ComboStrike(S.TigerPalm) and Player:ChiDeficit() >= 2 and Player:BuffStack(S.TeachingsoftheMonasteryBuff) < VarTotMMaxStacks and (S.EnergyBurst:IsAvailable() and Player:BuffDown(S.BlackoutKickBuff) or not S.EnergyBurst:IsAvailable()) and Player:BuffDown(S.OrderedElementsBuff) or (S.EnergyBurst:IsAvailable() and Player:BuffDown(S.BlackoutKickBuff) or not S.EnergyBurst:IsAvailable()) and Player:BuffDown(S.OrderedElementsBuff) and S.FistsofFury:CooldownUp() and Player:Chi() < 3 or (Player:PrevGCD(1, S.StrikeoftheWindlord) or S.StrikeoftheWindlord:CooldownDown()) and S.CelestialConduit:CooldownRemains() < 2 and Player:BuffUp(S.OrderedElementsBuff) and Player:Chi() < 5 and ComboStrike(S.TigerPalm) or (Player:BuffDown(S.HeartoftheJadeSerpentCDRBuff) or Player:BuffDown(S.HeartoftheJadeSerpentCDRCelestialBuff)) and ComboStrike(S.TigerPalm) and Player:ChiDeficit() >= 2 and Player:BuffDown(S.OrderedElementsBuff)) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_st 4"; end
		end
		-- touch_of_death
		if S.TouchofDeath:CooldownUp() and Target:IsInMeleeRange(5) then
		  local ToDTar = nil
		  if AoEON() then
			ToDTar = ToDTarget()
		  else
			if S.TouchofDeath:IsReady() then
			  ToDTar = Target
			end
		  end
		  if ToDTar then
			if ToDTar:GUID() == Target:GUID() then
			  if Cast(S.TouchofDeath) then return "touch_of_death default_st 6"; end
			end
		  end
		end
		-- rising_sun_kick,target_if=max:debuff.acclamation.stack,if=buff.invokers_delight.up&!buff.storm_earth_and_fire.up&talent.ordered_elements
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (Player:BuffUp(S.InvokersDelightBuff) and Player:BuffDown(S.StormEarthAndFireBuff) and S.OrderedElements:IsAvailable()) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterAcclamation) then return "rising_sun_kick default_st 9"; end
		end
		-- celestial_conduit,if=buff.storm_earth_and_fire.up&(!talent.ordered_elements|buff.ordered_elements.up)&cooldown.strike_of_the_windlord.remains&(talent.xuens_bond|!talent.xuens_bond&buff.invokers_delight.up)|fight_remains<15
		if Target:IsInMeleeRange(15) and S.CelestialConduit:IsReady() and (Player:BuffUp(S.StormEarthAndFireBuff) and (not S.OrderedElements:IsAvailable() or Player:BuffUp(S.OrderedElementsBuff)) and S.StrikeoftheWindlord:CooldownDown() and (S.XuensBond:IsAvailable() or not S.XuensBond:IsAvailable() and Player:BuffUp(S.InvokersDelightBuff)) or BossFightRemains < 15) then
		  if Cast(S.CelestialConduit) then return "celestial_conduit default_st 10"; end
		end
		-- rising_sun_kick,target_if=max:debuff.acclamation.stack,if=!pet.xuen_the_white_tiger.active&prev.tiger_palm&time<5|buff.storm_earth_and_fire.up&talent.ordered_elements
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (not WW.Xuen.Active and Player:PrevGCD(1, S.TigerPalm) and HL.CombatTime() < 5 or Player:BuffUp(S.StormEarthAndFireBuff) and S.OrderedElements:IsAvailable()) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterAcclamation) then return "rising_sun_kick default_st 12"; end
		end
		-- strike_of_the_windlord,if=talent.gale_force&buff.invokers_delight.up&(buff.bloodlust.up|cooldown.celestial_conduit.remains&!buff.heart_of_the_jade_serpent_cdr_celestial.up)
		if Target:IsInMeleeRange(9) and S.StrikeoftheWindlord:IsReady() and (S.GaleForce:IsAvailable() and Player:BuffUp(S.InvokersDelightBuff) and (Player:BloodlustUp() or S.CelestialConduit:CooldownDown() and Player:BuffDown(S.HeartoftheJadeSerpentCDRCelestialBuff))) then
		  if Cast(S.StrikeoftheWindlord) then return "strike_of_the_windlord default_st 14"; end
		end
		-- rising_sun_kick,target_if=max:debuff.acclamation.stack,if=buff.power_infusion.up&buff.bloodlust.up
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (Player:PowerInfusionUp() and Player:BloodlustUp()) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterAcclamation) then return "rising_sun_kick default_st 16"; end
		end
		-- fists_of_fury,target_if=max:debuff.acclamation.stack,if=buff.power_infusion.up&buff.bloodlust.up
		if Target:IsInMeleeRange(8) and S.FistsofFury:IsReady() and (Player:PowerInfusionUp() and Player:BloodlustUp()) then
		  if CastTargetIf(S.FistsofFury, Enemies8y, "max", EvaluateTargetIfFilterAcclamation) then return "fists_of_fury default_st 18"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.teachings_of_the_monastery.stack>3&buff.ordered_elements.up&cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>2
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) > 3 and Player:BuffUp(S.OrderedElementsBuff) and S.RisingSunKick:CooldownRemains() > 1 and S.FistsofFury:CooldownRemains() > 2) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 20"; end
		end
		-- spinning_crane_kick,if=buff.dance_of_chiji.stack=2&combo_strike&buff.power_infusion.up&buff.bloodlust.up
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (Player:BuffStack(S.DanceofChijiBuff) == 2 and ComboStrike(S.SpinningCraneKick) and Player:PowerInfusionUp() and Player:BloodlustUp()) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_st 22"; end
		end
		-- whirling_dragon_punch,if=buff.power_infusion.up&buff.bloodlust.up
		if Target:IsInMeleeRange(5) and S.WhirlingDragonPunch:IsReady() and (Player:PowerInfusionUp() and Player:BloodlustUp()) then
		  if Cast(S.WhirlingDragonPunch) then return "whirling_dragon_punch default_st 24"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&buff.power_infusion.up&buff.bloodlust.up
		if Target:IsInMeleeRange(8) and S.TigerPalm:IsReady() and (ComboStrike(S.TigerPalm) and Player:EnergyTimeToMax() <= Player:GCD() * 3 and S.FlurryStrikes:IsAvailable() and Player:PowerInfusionUp() and Player:BloodlustUp()) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_st 26"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.teachings_of_the_monastery.stack>4&cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>2
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) > 4 and S.RisingSunKick:CooldownRemains() > 1 and S.FistsofFury:CooldownRemains() > 2) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 28"; end
		end
		-- whirling_dragon_punch,if=!buff.heart_of_the_jade_serpent_cdr_celestial.up&!buff.dance_of_chiji.stack=2|buff.ordered_elements.up|talent.knowledge_of_the_broken_temple
		if Target:IsInMeleeRange(5) and S.WhirlingDragonPunch:IsReady() and (Player:BuffDown(S.HeartoftheJadeSerpentCDRCelestialBuff) and Player:BuffStack(S.DanceofChijiBuff) ~= 2 or Player:BuffUp(S.OrderedElementsBuff) or S.KnowledgeoftheBrokenTemple:IsAvailable()) then
		  if Cast(S.WhirlingDragonPunch) then return "whirling_dragon_punch default_st 30"; end
		end
		-- strike_of_the_windlord,if=time>5&(cooldown.invoke_xuen_the_white_tiger.remains>15|talent.flurry_strikes)
		if Target:IsInMeleeRange(9) and S.StrikeoftheWindlord:IsReady() and (HL.CombatTime() > 5 and (S.InvokeXuenTheWhiteTiger:CooldownRemains() > 15 or S.FlurryStrikes:IsAvailable())) then
		  if Cast(S.StrikeoftheWindlord) then return "strike_of_the_windlord default_st 32"; end
		end
		-- rising_sun_kick,target_if=max:debuff.acclamation.stack,if=chi>4|chi>2&energy>50|cooldown.fists_of_fury.remains>2
		if Target:IsInMeleeRange(5) and S.RisingSunKick:IsReady() and (Player:Chi() > 4 or Player:Chi() > 2 and Player:Energy() > 50 or S.FistsofFury:CooldownRemains() > 2) then
		  if CastTargetIf(S.RisingSunKick, Enemies5y, "max", EvaluateTargetIfFilterAcclamation) then return "rising_sun_kick default_st 34"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&buff.wisdom_of_the_wall_flurry.up
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&chi.deficit>=2&energy.time_to_max<=gcd.max*3
		-- Note: Combining both lines.
		if Target:IsInMeleeRange(8) and S.TigerPalm:IsReady() and ((ComboStrike(S.TigerPalm) and Player:EnergyTimeToMax() <= Player:GCD() * 3 and S.FlurryStrikes:IsAvailable() and Player:BuffUp(S.WisdomoftheWallFlurryBuff)) or (ComboStrike(S.TigerPalm) and Player:ChiDeficit() >= 2 and Player:EnergyTimeToMax() <= Player:GCD() * 3)) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_st 36"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.teachings_of_the_monastery.stack>7&talent.memory_of_the_monastery&!buff.memory_of_the_monastery.up&cooldown.fists_of_fury.remains
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) > 7 and S.MemoryoftheMonastery:IsAvailable() and Player:BuffDown(S.MemoryoftheMonasteryBuff) and S.FistsofFury:CooldownDown()) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 38"; end
		end
		-- fists_of_fury
		if Target:IsInMeleeRange(8) and S.FistsofFury:IsReady() then
		  if Cast(S.FistsofFury) then return "fists_of_fury default_st 40"; end
		end
		-- spinning_crane_kick,if=(buff.dance_of_chiji.stack=2|buff.dance_of_chiji.remains<2&buff.dance_of_chiji.up)&combo_strike&!buff.ordered_elements.up
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and ((Player:BuffStack(S.DanceofChijiBuff) == 2 or Player:BuffRemains(S.DanceofChijiBuff) < 2 and Player:BuffUp(S.DanceofChijiBuff)) and ComboStrike(S.SpinningCraneKick) and Player:BuffDown(S.OrderedElementsBuff)) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_st 42"; end
		end
		-- whirling_dragon_punch
		if Target:IsInMeleeRange(5) and S.WhirlingDragonPunch:IsReady() then
		  if Cast(S.WhirlingDragonPunch) then return "whirling_dragon_punch default_st 44"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.teachings_of_the_monastery.stack=4&!talent.knowledge_of_the_broken_temple&cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>2
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (Player:BuffStack(S.TeachingsoftheMonasteryBuff) == 4 and not S.KnowledgeoftheBrokenTemple:IsAvailable() and S.RisingSunKick:CooldownRemains() > 1 and S.FistsofFury:CooldownRemains() > 2) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 46"; end
		end
		-- spinning_crane_kick,if=buff.dance_of_chiji.stack=2&combo_strike
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (Player:BuffStack(S.DanceofChijiBuff) == 2 and ComboStrike(S.SpinningCraneKick)) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_st 48"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=talent.courageous_impulse&combo_strike&buff.bok_proc.stack=2
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (S.CourageousImpulse:IsAvailable() and ComboStrike(S.BlackoutKick) and Player:BuffStack(S.BlackoutKickBuff) == 2) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 49"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&buff.ordered_elements.up&cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>2
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (ComboStrike(S.BlackoutKick) and Player:BuffUp(S.OrderedElementsBuff) and S.RisingSunKick:CooldownRemains() > 1 and S.FistsofFury:CooldownRemains() > 2) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 50"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes
		if Target:IsInMeleeRange(8) and S.TigerPalm:IsReady() and (ComboStrike(S.TigerPalm) and Player:EnergyTimeToMax() <= Player:GCD() * 3 and S.FlurryStrikes:IsAvailable()) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_st 52"; end
		end
		-- spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&(buff.ordered_elements.up|energy.time_to_max>=gcd.max*3&talent.sequenced_strikes&talent.energy_burst|!talent.sequenced_strikes|!talent.energy_burst|buff.dance_of_chiji.remains<=gcd.max*3)
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.DanceofChijiBuff) and (Player:BuffUp(S.OrderedElementsBuff) or Player:EnergyTimeToMax() >= Player:GCD() * 3 and S.SequencedStrikes:IsAvailable() and S.EnergyBurst:IsAvailable() or not S.SequencedStrikes:IsAvailable() or not S.EnergyBurst:IsAvailable() or Player:BuffRemains(S.DanceofChijiBuff) <= Player:GCD() * 3)) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_st 54"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes
		-- Note: Duplicate from 2 lines above. Skipping...
		-- jadefire_stomp,if=talent.Singularly_Focused_Jade|talent.jadefire_harmony
		if Target:IsInRange(30) and S.JadefireStomp:IsCastable() and (S.SingularlyFocusedJade:IsAvailable() and S.JadefireHarmony:IsAvailable()) then
		  if Cast(S.JadefireStomp) then return "jadefire_stomp default_st 56"; end
		end
		-- chi_burst,if=!buff.ordered_elements.up
		if Target:IsInRange(40) and S.ChiBurst:IsCastable() and (Player:BuffDown(S.OrderedElementsBuff)) then
		  if Cast(S.ChiBurst) then return "chi_burst default_st 58"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&(buff.ordered_elements.up|buff.bok_proc.up&chi.deficit>=1&talent.energy_burst)&cooldown.fists_of_fury.remains
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (ComboStrike(S.BlackoutKick) and (Player:BuffUp(S.OrderedElementsBuff) or Player:BuffUp(S.BlackoutKickBuff) and Player:ChiDeficit() >= 1 and S.EnergyBurst:IsAvailable()) and S.FistsofFury:CooldownDown()) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 60"; end
		end
		-- crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&!buff.ordered_elements.up&combo_strike
		if Target:IsSpellInRange(S.CracklingJadeLightning) and S.CracklingJadeLightning:IsReady() and (Player:BuffStack(S.TheEmperorsCapacitorBuff) > 19 and Player:BuffDown(S.OrderedElementsBuff) and ComboStrike(S.CracklingJadeLightning)) then
		  if Cast(S.CracklingJadeLightning) then return "crackling_jade_lightning default_st 62"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&cooldown.fists_of_fury.remains&(chi>2|energy>60|buff.bok_proc.up)
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (ComboStrike(S.BlackoutKick) and S.FistsofFury:CooldownDown() and (Player:Chi() > 2 or Player:Energy() > 60 or Player:BuffUp(S.BlackoutKickBuff))) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 64"; end
		end
		-- jadefire_stomp
		if Target:IsInRange(30) and S.JadefireStomp:IsCastable() then
		  if Cast(S.JadefireStomp) then return "jadefire_stomp default_st 66"; end
		end
		-- tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=combo_strike&buff.ordered_elements.up&chi.deficit>=1
		if Target:IsInMeleeRange(8) and S.TigerPalm:IsReady() and (ComboStrike(S.TigerPalm) and Player:BuffUp(S.OrderedElementsBuff) and Player:ChiDeficit() >= 1) then
		  if MotCCastSwitcher(S.TigerPalm, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "tiger_palm default_st 68"; end
		end
		-- chi_burst
		if Target:IsInRange(40) and S.ChiBurst:IsCastable() then
		  if Cast(S.ChiBurst) then return "chi_burst default_st 70"; end
		end
		-- spinning_crane_kick,if=combo_strike&buff.ordered_elements.up&talent.hit_combo
		if Target:IsInMeleeRange(8) and S.SpinningCraneKick:IsReady() and (ComboStrike(S.SpinningCraneKick) and Player:BuffUp(S.OrderedElementsBuff) and S.HitCombo:IsAvailable()) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick default_st 72"; end
		end
		-- blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=buff.ordered_elements.up&!talent.hit_combo&cooldown.fists_of_fury.remains
		if Target:IsInMeleeRange(8) and S.BlackoutKick:IsReady() and (Player:BuffUp(S.OrderedElementsBuff) and not S.HitCombo:IsAvailable() and S.FistsofFury:CooldownDown()) then
		  if MotCCastSwitcher(S.BlackoutKick, Enemies8y, "min", EvaluateTargetIfFilterMarkoftheCrane) then return "blackout_kick default_st 74"; end
		end
		-- tiger_palm,if=prev.tiger_palm&chi<3&!cooldown.fists_of_fury.remains
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (Player:PrevGCD(1, S.TigerPalm) and Player:Chi() < 3 and S.FistsofFury:CooldownUp()) then
		  if Cast(S.TigerPalm) then return "tiger_palm default_st 76"; end
		end
		-- Manually added: tiger_palm,if=chi=0 (avoids a potential profile stall)
		if Target:IsInMeleeRange(5) and S.TigerPalm:IsReady() and (Player:Chi() == 0) then
		  if Cast(S.TigerPalm) then return "tiger_palm default_st 78"; end
		end
	end

	local function Init()
		S.MarkoftheCraneDebuff:RegisterAuraTracking()
	end

	local function MainRotation()
		-- TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()

		Enemies5y = Player:GetEnemiesInMeleeRange(5) -- Multiple Abilities
  		Enemies8y = Player:GetEnemiesInMeleeRange(8) -- Multiple Abilities

		if AoEON() then
		EnemiesCount8y = #Enemies8y
		else
		EnemiesCount8y = 1
		end

		
		-- Calculate fight_remains
		BossFightRemains = HL.BossFightRemains()
		FightRemains = BossFightRemains
		if FightRemains == 11111 then
			FightRemains = HL.FightRemains(Enemies8y, false)
		end
	
		-- Check MotC Status
		MotCCount = S.MarkoftheCraneDebuff:AuraActiveCount()
		MotCMinTime = MotCMinTimeCheck()
	

		if TargetIsValid() then
			-- Precombat
			-- auto_attack
			-- roll,if=movement.distance>5
			-- chi_torpedo,if=movement.distance>5
			-- flying_serpent_kick,if=movement.distance>5
			-- Note: Not handling movement abilities
			-- Manually added: Force landing from FSK
			--if not Settings.Windwalker.IgnoreFSK and Player:PrevGCD(1, S.FlyingSerpentKick) then
			  --if Cast(S.FlyingSerpentKickLand) then return "flying_serpent_kick land"; end
			--end
			-- spear_hand_strike,if=target.debuff.casting.react
			-- Manually added: fortifying_brew
			if S.FortifyingBrew:IsReady() and Player:HealthPercentage() <= 25 then
			  if Cast(S.FortifyingBrew) then return "fortifying_brew main 2"; end
			end
			-- potion handling
			-- if Settings.Commons.Enabled.Potions then
			--   local PotionSelected = Everyone.PotionSelected()
			--   if PotionSelected and PotionSelected:IsReady() then
			-- 	if S.InvokeXuenTheWhiteTiger:IsAvailable() then
			-- 	  -- potion,if=buff.storm_earth_and_fire.up&pet.xuen_the_white_tiger.active|fight_remains<=30
			-- 	  if Player:BuffUp(S.StormEarthAndFireBuff) and WW.Xuen.Active or BossFightRemains <= 30 then
			-- 		if Cast(PotionSelected, Settings.CommonsDS.DisplayStyle.Potions) then return "potion with xuen main 4"; end
			-- 	  end
			-- 	else
			-- 	  -- potion,if=buff.storm_earth_and_fire.up|fight_remains<=30
			-- 	  if Player:BuffUp(S.StormEarthAndFireBuff) or BossFightRemains <= 30 then
			-- 		if Cast(PotionSelected, Settings.CommonsDS.DisplayStyle.Potions) then return "potion without xuen main 6"; end
			-- 	  end
			-- 	end
			--   end
			-- end
			-- variable,name=has_external_pi,value=cooldown.invoke_power_infusion_0.duration>0
			-- Note: Not handling external buffs.
			-- call_action_list,name=trinkets
			local ShouldReturn = Trinkets(); if ShouldReturn then return ShouldReturn; end
			
			-- call_action_list,name=aoe_opener,if=time<3&active_enemies>2
			if HL.CombatTime() < 3 and EnemiesCount8y > 2 then
			  local ShouldReturn = AoEOpener(); if ShouldReturn then return ShouldReturn; end
			end
			-- call_action_list,name=normal_opener,if=time<4&active_enemies<3
			if HL.CombatTime() < 4 and EnemiesCount8y < 3 then
			  local ShouldReturn = NormalOpener(); if ShouldReturn then return ShouldReturn; end
			end
			-- call_action_list,name=cooldowns,if=talent.storm_earth_and_fire
			if S.StormEarthAndFire:IsAvailable() then
			  local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
			end
			-- call_action_list,name=default_aoe,if=active_enemies>=5
			if AoEON() and EnemiesCount8y >= 5 then
			  local ShouldReturn = DefaultAoE(); if ShouldReturn then return ShouldReturn; end
			end
			-- call_action_list,name=default_cleave,if=active_enemies>1&(time>7|!talent.celestial_conduit)&active_enemies<5
			if AoEON() and EnemiesCount8y > 1 and (HL.CombatTime() > 7 or not S.CelestialConduit:IsAvailable()) and EnemiesCount8y < 5 then
			  local ShouldReturn = DefaultCleave(); if ShouldReturn then return ShouldReturn; end
			end
			-- call_action_list,name=default_st,if=active_enemies<2
			if not AoEON() or EnemiesCount8y < 2 then
			  local ShouldReturn = DefaultST(); if ShouldReturn then return ShouldReturn; end
			end
			-- Manually added Pool filler
			if Cast(S.PoolEnergy) then return "Pool Energy"; end
		end

	end

	local WWOldSpellIsCastable
	WWOldSpellIsCastable = HL.AddCoreOverride ("Spell.IsCastable",
	function (self, BypassRecovery, Range, AoESpell, ThisUnit, Offset)
		local BaseCheck = WWOldSpellIsCastable(self, BypassRecovery, Range, AoESpell, ThisUnit, Offset)
		if self == S.ChiBurst then
		return BaseCheck and not Player:IsCasting(self)
		else
		return BaseCheck
		end
	end
	, 269)
	
	MainAddon.SetCustomAPL(Author, SpecID, MainRotation, Init)

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