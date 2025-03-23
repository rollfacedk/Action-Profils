local function MyRoutine()
	local Author = 'WASD Series - Enhancement Shaman'
	local SpecID = 263 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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
	local CastTargetIfAlly = MainAddon.CastTargetIfAlly;
	local CastCycle = MainAddon.CastCycle;
	local CastAlly = MainAddon.CastAlly;
	local Enemies10ySplash, EnemiesCount10ySplash
	local Enemies40y
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

		-- Custom
		SurgingTotem2 = Spell(1221348),
		GhostWolf = Spell(2645),
		StoneBulwarkTotem = Spell(108270),

		-- Abilities
		VoltaicBlazeAbility                   = Spell(470057),
		Windstrike                            = Spell(115356),
		-- Talents
		AlphaWolf                             = Spell(198434),
		Ascendance                            = Spell(114051),
		AshenCatalyst                         = Spell(390370),
		ConvergingStorms                      = Spell(384363),
		CrashLightning                        = Spell(187874),
		CrashingStorms                        = Spell(334308),
		DoomWinds                             = Spell(384352),
		ElementalAssault                      = Spell(210853),
		ElementalSpirits                      = Spell(262624),
		FeralSpirit                           = Spell(51533),
		FireNova                              = Spell(333974),
		FlowingSpirits                        = Spell(469314),
		Hailstorm                             = Spell(334195),
		HotHand                               = Spell(201900),
		IceStrike                             = MultiSpell(342240, 470194),
		LashingFlames                         = Spell(334046),
		LavaLash                              = Spell(60103),
		LegacyoftheFrostWitch                 = Spell(384450),
		MoltenAssault                         = Spell(334033),
		OverflowingMaelstrom                  = Spell(384149),
		PrimordialStorm                       = Spell(1218047),
		PrimordialStormAbility                = Spell(1218090),
		RagingMaelstrom                       = Spell(384143),
		StaticAccumulation                    = Spell(384411),
		Stormblast                            = Spell(319930),
		Stormflurry                           = Spell(344357),
		Stormstrike                           = Spell(17364),
		Sundering                             = Spell(197214),
		SwirlingMaelstrom                     = Spell(384359),
		ThorimsInvocation                     = Spell(384444),
		UnrelentingStorms                     = Spell(470490),
		UnrulyWinds                           = Spell(390288),
		VoltaicBlaze                          = Spell(470053),
		WindfuryTotem                         = Spell(8512),
		WindfuryWeapon                        = Spell(33757),
		WitchDoctorsAncestry                  = Spell(384447),
		-- Buffs
		AscendanceBuff                        = Spell(114051),
		AshenCatalystBuff                     = Spell(390371),
		ConvergingStormsBuff                  = Spell(198300),
		CracklingThunderBuff                  = Spell(409834),
		CrashLightningBuff                    = Spell(187878),
		CLCrashLightningBuff                  = Spell(333964),
		DoomWindsBuff                         = Spell(466772),
		EarthenWeaponBuff                     = Spell(392375),
		ElectrostaticWagerBuff                = Spell(1223410), -- TWW S2 4pc
		ElectrostaticWagerDmg                 = Spell(1223332), -- TWW S2 4pc
		FeralSpiritBuff                       = Spell(333957),
		GatheringStormsBuff                   = Spell(198300),
		HailstormBuff                         = Spell(334196),
		HotHandBuff                           = Spell(215785),
		IceStrikeBuff                         = Spell(384357),
		LegacyoftheFrostWitchBuff             = Spell(384451),
		MaelstromWeaponBuff                   = Spell(344179),
		PrimordialStormBuff                   = Spell(1218125),
		StormblastBuff                        = Spell(470466),
		StormsurgeBuff                        = Spell(201846),
		WindfuryTotemBuff                     = Spell(327942),
		WinningStreakBuff                     = Spell(1218616), -- TWW S2 2pc
		-- Debuffs
		LashingFlamesDebuff                   = Spell(334168),
		-- Elemental Spirits Buffs
		CracklingSurgeBuff                    = Spell(224127),
		IcyEdgeBuff                           = Spell(224126),
		MoltenWeaponBuff                      = Spell(224125),
		-- Tier 29 Buffs
		MaelstromofElementsBuff               = Spell(394677),
		-- Tier 30 Buffs
		VolcanicStrengthBuff                  = Spell(409833),

		-- Racials
		AncestralCall                         = Spell(274738),
		BagofTricks                           = Spell(312411),
		Berserking                            = Spell(26297),
		BloodFury                             = Spell(33697),
		Fireblood                             = Spell(265221),
		-- Abilities
		Bloodlust                             = MultiSpell(2825,32182), -- Bloodlust/Heroism
		FlameShock                            = MultiSpell(188389,470411),
		FlametongueWeapon                     = Spell(318038),
		FrostShock                            = Spell(196840),
		HealingSurge                          = Spell(8004),
		LightningBolt                         = Spell(188196),
		LightningShield                       = Spell(192106),
		-- Talents
		AstralShift                           = Spell(108271),
		CapacitorTotem                        = Spell(192058),
		ChainLightning                        = Spell(188443),
		EarthElemental                        = Spell(198103),
		EarthShield                           = Spell(974),
		ElementalBlast                        = Spell(117014),
		ElementalOrbit                        = Spell(383010),
		LavaBurst                             = Spell(51505),
		DeeplyRootedElements                  = Spell(378270),
		NaturesSwiftness                      = Spell(378081),
		PrimordialWave                        = Spell(375982),
		SpiritwalkersGrace                    = Spell(79206),
		TotemicRecall                         = Spell(108285),
		WindShear                             = Spell(57994),
		-- Buffs
		EarthShieldOtherBuff                  = Spell(974),
		EarthShieldSelfBuff                   = Spell(383648),
		LightningShieldBuff                   = Spell(192106),
		PrimordialWaveBuff                    = Spell(375986),
		SpiritwalkersGraceBuff                = Spell(79206),
		SplinteredElementsBuff                = Spell(382043),
		-- Debuffs
		FlameShockDebuff                      = Spell(188389),
		LightningRodDebuff                    = Spell(197209),
		-- Other Class Debuffs
		ChaosBrandDebuff                      = Spell(1490),
		HuntersMarkDebuff                     = Spell(257284),
		-- Trinket Effects
		SpymastersReportBuff                  = Spell(451199), -- Stacking buff from before using Spymaster's Web trinket
		SpymastersWebBuff                     = Spell(444959), -- Buff from using Spymaster's Web trinket
		-- Misc
		Pool                                  = Spell(999910),


		-- Abilities
		TempestAbility                        = Spell(452201),
		TempestOverload                       = Spell(463351),
		-- Talents
		ArcDischarge                          = Spell(455096),
		AwakeningStorms                       = Spell(455129),
		RollingThunder                        = Spell(454026),
		Supercharge                           = Spell(455110),
		Tempest                               = Spell(454009),
		-- Buffs
		ArcDischargeBuff                      = Spell(455097),
		AwakeningStormsBuff                   = Spell(462131),
		TempestBuff                           = Spell(454015),


		-- Talents
		AmplificationCore                     = Spell(445029),
		Earthsurge                            = Spell(455590),
		LivelyTotems                          = Spell(445034),
		SurgingTotem                          = Spell(444995),
		TotemicRebound                        = Spell(445025),
		-- Buffs
		LivelyTotemsBuff                      = Spell(461242),
		TotemicReboundBuff                    = Spell(458269),
		WhirlingAirBuff                       = Spell(453409),
		WhirlingEarthBuff                     = Spell(453406),
		WhirlingFireBuff                      = Spell(453405),
	
		
	
	}

	local I = {
		-- DF Trinkets
		AlgetharPuzzleBox                     = Item(193701, {13, 14}),
		BeacontotheBeyond                     = Item(203963, {13, 14}),
		ElementiumPocketAnvil                 = Item(202617, {13, 14}),
		ManicGrieftorch                       = Item(194308, {13, 14}),

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
		S.FlameShockDebuff:RegisterAuraTracking()
		message( 'WSAD Enhancement', 1)
		MainAddon:Print('RollfaceX')
	end

		--- ===== Rotation Variables =====
	local HasMainHandEnchant, HasOffHandEnchant
	local MHEnchantTimeRemains, OHEnchantTimeRemains
	local MHEnchantID, OHEnchantID
	local MaelstromStacks
	local MaxMaelstromStacks = S.RagingMaelstrom:IsAvailable() and 10 or 5
	local MaxAshenCatalystStacks = 8
	local MaxConvergingStormsStacks = 6
	local MaxTempestStacks = 2
	local VarMinTalentedCDRemains = 1000
	local VarTargetNatureMod, VarExpectedLBFunnel, VarExpectedCLFunnel
	local EnemiesMelee, EnemiesMeleeCount, Enemies40yCount
	local MaxEBCharges = S.LavaBurst:IsAvailable() and 2 or 1
	local TIAction = S.LightningBolt
	local BossFightRemains = 11111
	local FightRemains = 11111

	--- ===== Trinket Variables =====
	local Trinket1, Trinket2
	local VarTrinket1ID, VarTrinket2ID
	local VarTrinket1Spell, VarTrinket2Spell
	local VarTrinket1Range, VarTrinket2Range
	local VarTrinket1CastTime, VarTrinket2CastTime
	local VarTrinket1CD, VarTrinket2CD
	local VarTrinket1Ex, VarTrinket2Ex
	local VarTrinket1IsWeird, VarTrinket2IsWeird
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

		-- Note: Just setting to false. Variable references all old DF trinkets.
		VarTrinket1IsWeird = false
		VarTrinket2IsWeird = false
	end
	SetTrinketVariables()

	--- ===== Event Registrations =====
	HL:RegisterForEvent(function()
		MaxEBCharges = S.LavaBurst:IsAvailable() and 2 or 1
	end, "SPELLS_CHANGED", "LEARNED_SPELL_IN_TAB")
	
	HL:RegisterForEvent(function()
		VarTrinketFailures = 0
		SetTrinketVariables()
	end, "PLAYER_EQUIPMENT_CHANGED")
	
	HL:RegisterForEvent(function()
		TIAction = S.LightningBolt
		BossFightRemains = 11111
		FightRemains = 11111
	end, "PLAYER_REGEN_ENABLED")
  
	--- ===== Helper Functions =====
	local function RangedTargetCount(range)
		local EnemiesTable = Player:GetEnemiesInRange(range)
		local TarCount = 1
		for _, Enemy in pairs(EnemiesTable) do
		if Enemy:GUID() ~= Target:GUID() and (Enemy:AffectingCombat() or Enemy:IsDummy()) then
			TarCount = TarCount + 1
		end
		end
		return TarCount
	end
	
	local function TotemFinder(Totem, ReturnTime)
		for i = 1, 6, 1 do
		local TotemActive, TotemName, StartTime, Duration = Player:GetTotemInfo(i)
		if Totem:Name() == TotemName then
			if ReturnTime then
			return mathmax(Duration - (GetTime() - StartTime), 0)
			else
			return true
			end
		end
		end
	end

	local function AlphaWolfMinRemains()
		if not S.AlphaWolf:IsAvailable() or Player:BuffDown(S.FeralSpiritBuff) then return 0 end
		local AWStart = mathmin(S.CrashLightning:TimeSinceLastCast(), S.ChainLightning:TimeSinceLastCast())
		if AWStart > 8 or AWStart > S.FeralSpirit:TimeSinceLastCast() then return 0 end
		return 8 - AWStart
	end

	--- ===== Register Damage Formulas =====
	S.LightningBolt:RegisterDamageFormula(
		function()
		return
			-- Spell Power
			GetSpellBonusDamage(4) *
			-- 131.1% modifier
			1.311 *
			-- Mastery bonus
			(1 + Player:MasteryPct() / 100) *
			-- 3% bonus from Amplification Core if Surging Totem is active
			((S.AmplificationCore:IsAvailable() and TotemFinder(S.SurgingTotem)) and 1.03 or 1)
		end
	)

	S.ChainLightning:RegisterDamageFormula(
	function()
		local MaxTargets = S.CrashingStorms:IsAvailable() and 5 or 3
		return
		-- Spell Power
		GetSpellBonusDamage(4) *
		-- 73.025% modifier
		0.73025 *
		-- Mastery bonus
		(1 + Player:MasteryPct() / 100) *
		-- Crashing Storms bonus
		(S.CrashingStorms:IsAvailable() and 1.4 or 1) *
		-- 3% bonus from Amplification Core if Surging Totem is active
		((S.AmplificationCore:IsAvailable() and TotemFinder(S.SurgingTotem)) and 1.03 or 1) *
		-- Targets
		mathmin(EnemiesMeleeCount, MaxTargets)
	end
	)

	TremorGUID = {}

    local function UpdateTremorData(_, Event, _, SourceGUID, _, _, _, DestGUID, _, _, _, SpellID)
        if SpellID == 455622 then
            TremorGUID[DestGUID] = true
            C_Timer.After(5, function()
                TremorGUID[DestGUID] = nil
            end)
        end

    end

    HL:RegisterForCombatEvent(UpdateTremorData, "SPELL_DAMAGE", "SPELL_PERIODIC_DAMAGE", "SPELL_AURA_APPLIED", "SPELL_AURA_REFRESH", "SPELL_AURA_APPLIED_DOSE")

	--- ===== CastTargetIf Filter Functions =====
	local function EvaluateTargetIfFilterLightningRodRemains(TargetUnit)
		-- target_if=min:debuff.lightning_rod.remains
		return TargetUnit:DebuffRemains(S.LightningRodDebuff)
	end
	
	local function EvaluateTargetIfFilterPrimordialWave(TargetUnit)
		return TargetUnit:DebuffRemains(S.FlameShockDebuff)
	end
	
	--- ===== CastTargetIf Condition Functions =====
	local function EvaluateTargetIfPrimordialWave(TargetUnit)
		return Player:BuffDown(S.PrimordialWaveBuff)
	end
	
	local function EvaluateTargetIfFilterLavaLash(TargetUnit)
		return TargetUnit:DebuffRemains(S.LashingFlamesDebuff)
	end
	
	--- ===== CastCycle Functions =====
	local function EvaluateCycleFlameShock(TargetUnit)
		return TargetUnit:DebuffRefreshable(S.FlameShockDebuff)
	end
	

	S.SurgingTotem2.offGCD = true;
	S.Ascendance.offGCD = true;

	local function SingleOpen()
		-- flame_shock,if=!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock single_open 2"; end
		end
		-- voltaic_blaze,if=active_dot.flame_shock<3&!buff.ascendance.up
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) and (S.FlameShockDebuff:AuraActiveCount() < 3 and Player:BuffDown(S.AscendanceBuff)) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze single_open 4"; end
		end
		-- primordial_wave,if=(buff.maelstrom_weapon.stack>=4)&dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) and ((MaelstromStacks >= 4) and Target:DebuffUp(S.FlameShockDebuff) and (S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6))) then
		  if Cast(S.PrimordialWave) then return "primordial_wave single_open 6"; end
		end
		if Player:BuffUp(S.LegacyoftheFrostWitchBuff) then
		  -- feral_spirit,if=buff.legacy_of_the_frost_witch.up
		  if S.FeralSpirit:IsCastable() then
			if Cast(S.FeralSpirit) then return "feral_spirit single_open 8"; end
		  end
		  -- doom_winds,if=buff.legacy_of_the_frost_witch.up
		  if S.DoomWinds:IsReady() and Target:IsInMeleeRange(5) then
			if Cast(S.DoomWinds) then return "doom_winds single_open 10"; end
		  end
		  -- ascendance,if=buff.legacy_of_the_frost_witch.up
		  if S.Ascendance:IsCastable() then
			if Cast(S.Ascendance) then return "ascendance single_open 12"; end
		  end
		end
		-- primordial_storm,if=(buff.maelstrom_weapon.stack>=9)&(buff.legacy_of_the_frost_witch.up|!talent.legacy_of_the_frost_witch.enabled)
		if S.PrimordialStormAbility:IsCastable() and Target:IsInRange(45) and ((MaelstromStacks >= 9) and (Player:BuffUp(S.LegacyoftheFrostWitchBuff) or not S.LegacyoftheFrostWitch:IsAvailable())) then
		  if Cast(S.PrimordialStormAbility) then return "primordial_storm single_open 14"; end
		end
		-- windstrike
		if S.Windstrike:IsCastable() and Target:IsInRange(30) then
		  if Cast(S.Windstrike) then return "windstrike single_open 16"; end
		end
		if MaelstromStacks >= 5 then
		  -- elemental_blast,if=buff.maelstrom_weapon.stack>=5
		  if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) then
			if Cast(S.ElementalBlast) then return "elemental_blast single_open 18"; end
		  end
		  -- tempest,if=buff.maelstrom_weapon.stack>=5
		  if S.TempestAbility:IsReady() and Target:IsInRange(40) then
			if Cast(S.TempestAbility) then return "tempest single_open 20"; end
		  end
		  -- lightning_bolt,if=buff.maelstrom_weapon.stack>=5
		  if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) then
			if Cast(S.LightningBolt) then return "lightning_bolt single_open 22"; end
		  end
		end
		-- stormstrike
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) then
		  if Cast(S.Stormstrike) then return "stormstrike single_open 24"; end
		end
		-- crash_lightning,if=set_bonus.tww2_4pc
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (Player:HasTier("TWW2", 4)) then
		  if Cast(S.CrashLightning) then return "crash_lightning single_open 26"; end
		end
		-- voltatic_blaze
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze single_open 28"; end
		end
		-- lava_lash,if=talent.elemental_assault.enabled&talent.molten_assault.enabled&dot.flame_shock.ticking
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and (S.ElementalAssault:IsAvailable() and S.MoltenAssault:IsAvailable() and Target:DebuffUp(S.FlameShockDebuff)) then
		  if Cast(S.LavaLash) then return "lava_lash single_open 30"; end
		end
		-- ice_strike
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) then
		  if Cast(S.IceStrike) then return "ice_strike single_open 32"; end
		end
	end

	local function Single()
		-- run_action_list,name=single_open,if=time<15
		if HL.CombatTime() < 15 then
		  local ShouldReturn = SingleOpen(); if ShouldReturn then return ShouldReturn; end
		  if Cast(S.Pool) then return "Wait for SingleOpen()"; end
		end
		-- primordial_storm,if=(buff.maelstrom_weapon.stack>=10|buff.primordial_storm.remains<=4&buff.maelstrom_weapon.stack>=5)
		if S.PrimordialStormAbility:IsCastable() and Target:IsInRange(45) and (MaelstromStacks >= 10 or Player:BuffRemains(S.PrimordialStormBuff) <= 4 and MaelstromStacks >= 5) then
		  if Cast(S.PrimordialStormAbility) then return "primordial_storm single 2"; end
		end
		-- flame_shock,if=!ticking&(talent.ashen_catalyst.enabled|talent.primordial_wave.enabled|talent.lashing_flames.enabled)
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff) and (S.AshenCatalyst:IsAvailable() or S.PrimordialWave:IsAvailable() or S.LashingFlames:IsAvailable())) then
		  if Cast(S.FlameShock) then return "flame_shock single 4"; end
		end
		-- feral_spirit,if=(cooldown.doom_winds.remains>30|cooldown.doom_winds.remains<7)
		if S.FeralSpirit:IsCastable() and (S.DoomWinds:CooldownRemains() > 30 or S.DoomWinds:CooldownRemains() < 7) then
		  if Cast(S.FeralSpirit) then return "feral_spirit single 6"; end
		end
		-- windstrike,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0&ti_lightning_bolt
		if S.Windstrike:IsCastable() and Target:IsInRange(30) and (S.ThorimsInvocation:IsAvailable() and MaelstromStacks > 0 and TIAction == S.LightningBolt) then
		  if Cast(S.Windstrike) then return "windstrike single 8"; end
		end
		-- doom_winds,if=buff.legacy_of_the_frost_witch.up&(cooldown.feral_spirit.remains>30|cooldown.feral_spirit.remains<2)
		if S.DoomWinds:IsReady() and Target:IsInMeleeRange(5) and (Player:BuffUp(S.LegacyoftheFrostWitchBuff) and (S.FeralSpirit:CooldownRemains() > 30 or S.FeralSpirit:CooldownRemains() < 2)) then
		  if Cast(S.DoomWinds) then return "doom_winds single 10"; end
		end
		-- primordial_wave,if=dot.flame_shock.ticking&(raid_event.adds.in>action.primordial_wave.cooldown|raid_event.adds.in<6)
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.PrimordialWave) then return "primordial_wave single 12"; end
		end
		-- ascendance,if=(dot.flame_shock.ticking|!talent.primordial_wave.enabled|!talent.ashen_catalyst.enabled)
		if S.Ascendance:IsCastable() and (Target:DebuffUp(S.FlameShockDebuff) or not S.PrimordialWave:IsAvailable() or not S.AshenCatalyst:IsAvailable()) then
		  if Cast(S.Ascendancee) then return "ascendance single 14"; end
		end
		-- windstrike,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0&ti_lightning_bolt
		-- Note: Duplicate of windstrike single 8.
		-- elemental_blast,if=((!talent.overflowing_maelstrom.enabled&buff.maelstrom_weapon.stack>=5)|(buff.maelstrom_weapon.stack>=9))&charges_fractional>=1.8
		if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) and (((not S.OverflowingMaelstrom:IsAvailable() and MaelstromStacks >= 5) or (MaelstromStacks >= 9)) and S.ElementalBlast:ChargesFractional() >= 1.8) then
		  if Cast(S.ElementalBlast) then return "elemental_blast single 16"; end
		end
		-- tempest,if=(buff.tempest.stack=buff.tempest.max_stack&(tempest_mael_count>30|buff.awakening_storms.stack=3)&buff.maelstrom_weapon.stack>=9)
		if S.TempestAbility:IsReady() and Target:IsInRange(40) and (Player:BuffStack(S.TempestBuff) == MaxTempestStacks and (Shaman.TempestMaelstrom > 30 or Player:BuffStack(S.AwakeningStormsBuff) == 3) and MaelstromStacks >= 9) then
		  if Cast(S.TempestAbility) then return "tempest single 18"; end
		end
		-- lightning_bolt,if=buff.maelstrom_weapon.stack>=9&!buff.primordial_storm.up&buff.arc_discharge.stack>1
		if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) and (MaelstromStacks >= 9 and Player:BuffDown(S.PrimordialStormBuff) and Player:BuffStack(S.ArcDischargeBuff) > 1) then
		  if Cast(S.LightningBolt) then return "lightning_bolt single 20"; end
		end
		-- elemental_blast,if=((!talent.overflowing_maelstrom.enabled&buff.maelstrom_weapon.stack>=5)|(buff.maelstrom_weapon.stack>=9))
		if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) and ((not S.OverflowingMaelstrom:IsAvailable() and MaelstromStacks >= 5) or (MaelstromStacks >= 9)) then
		  if Cast(S.ElementalBlast) then return "elemental_blast single 22"; end
		end
		-- tempest,if=buff.maelstrom_weapon.stack>=9
		if S.TempestAbility:IsReady() and Target:IsInRange(40) and (MaelstromStacks >= 9) then
		  if Cast(S.TempestAbility) then return "tempest single 24"; end
		end
		-- lightning_bolt,if=buff.maelstrom_weapon.stack>=9
		if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) and (MaelstromStacks >= 9) then
		  if Cast(S.LightningBolt) then return "lightning_bolt single 26"; end
		end
		-- lava_lash,if=(buff.hot_hand.up&(buff.ashen_catalyst.stack=buff.ashen_catalyst.max_stack))|(dot.flame_shock.remains<=2&!talent.voltaic_blaze.enabled)|(talent.lashing_flames.enabled&(debuff.lashing_flames.down))
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and ((Player:BuffUp(S.HotHandBuff) and (Player:BuffStack(S.AshenCatalystBuff) == MaxAshenCatalystStacks)) or (Target:DebuffRemains(S.FlameShockDebuff) <= 2 and not S.VoltaicBlaze:IsAvailable()) or (S.LashingFlames:IsAvailable() and (Target:DebuffDown(S.LashingFlamesDebuff)))) then
		  if Cast(S.LavaLash) then return "lava_lash single 28"; end
		end
		-- crash_lightning,if=(buff.doom_winds.up&buff.electrostatic_wager.stack>1)|buff.electrostatic_wager.stack>8
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and ((Player:BuffUp(S.DoomWindsBuff) and Player:BuffStack(S.ElectrostaticWagerBuff) > 1) or Player:BuffStack(S.ElectrostaticWagerBuff) > 8) then
		  if Cast(S.CrashLightning) then return "crash_lightning single 30"; end
		end
		-- stormstrike,if=buff.doom_winds.up|buff.stormblast.stack>0
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffUp(S.DoomWindsBuff) or Player:BuffUp(S.StormblastBuff)) then
		  if Cast(S.Stormstrike) then return "stormstrike single 32"; end
		end
		-- crash_lightning,if=talent.unrelenting_storms.enabled&talent.alpha_wolf.enabled&alpha_wolf_min_remains=0
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.UnrelentingStorms:IsAvailable() and S.AlphaWolf:IsAvailable() and AlphaWolfMinRemains() == 0) then
		  if Cast(S.CrashLightning) then return "crash_lightning single 34"; end
		end
		-- lava_lash,if=buff.hot_hand.up
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and (Player:BuffUp(S.HotHandBuff)) then
		  if Cast(S.LavaLash) then return "lava_lash single 36"; end
		end
		-- crash_lightning,if=set_bonus.tww2_4pc
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (Player:HasTier("TWW2", 4)) then
		  if Cast(S.CrashLightning) then return "crash_lightning single 38"; end
		end
		-- voltaic_blaze
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze single 40"; end
		end
		-- stormstrike
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) then
		  if Cast(S.Stormstrike) then return "stormstrike single 42"; end
		end
		-- lava_lash,if=talent.elemental_assault.enabled&talent.molten_assault.enabled&dot.flame_shock.ticking
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and (S.ElementalAssault:IsAvailable() and S.MoltenAssault:IsAvailable() and Target:DebuffUp(S.FlameShockDebuff)) then
		  if Cast(S.LavaLash) then return "lava_lash single 44"; end
		end
		-- ice_strike
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) then
		  if Cast(S.IceStrike) then return "ice_strike single 46"; end
		end
		-- lightning_bolt,if=buff.maelstrom_weapon.stack>=5&!buff.primordial_storm.up
		if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) and (MaelstromStacks >= 5 and Player:BuffDown(S.PrimordialStormBuff)) then
		  if Cast(S.LightningBolt) then return "lightning_bolt single 48"; end
		end
		-- frost_shock,if=buff.hailstorm.up
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (Player:BuffUp(S.HailstormBuff)) then
		  if Cast(S.FrostShock) then return "frost_shock single 50"; end
		end
		-- flame_shock,if=!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock single 52"; end
		end
		-- sundering,if=raid_event.adds.in>=action.sundering.cooldown
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) then
		  if Cast(S.Sundering) then return "sundering single 54"; end
		end
		-- crash_lightning
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.CrashLightning) then return "crash_lightning single 56"; end
		end
		-- frost_shock
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) then
		  if Cast(S.FrostShock) then return "frost_shock single 58"; end
		end
		-- fire_nova,if=active_dot.flame_shock
		if S.FireNova:IsReady() and (Target:DebuffUp(S.FlameShockDebuff)) then
		  if Cast(S.FireNova) then return "fire_nova single 60"; end
		end
		-- earth_elemental
		-- if S.EarthElemental:IsCastable() then
		--   if Cast(S.EarthElemental) then return "earth_elemental single 62"; end
		-- end
		-- flame_shock
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) then
		  if Cast(S.FlameShock) then return "flame_shock single 64"; end
		end
	end

	local function SingleTotemicOpen()
		-- flame_shock,if=!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock single_totemic_open 2"; end
		end
		-- lava_lash,if=!pet.surging_totem.active&talent.lashing_flames.enabled&debuff.lashing_flames.down
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and (not TotemFinder(S.SurgingTotem) and S.LashingFlames:IsAvailable() and Target:DebuffDown(S.LashingFlamesDebuff)) then
		  if Cast(S.LavaLash) then return "lava_lash single_totemic_open 4"; end
		end
		-- surging_totem
		if S.SurgingTotem:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.SurgingTotem) then return "surging_totem single_totemic_open 6"; end
		end
		-- primordial_wave
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) then
		  if Cast(S.PrimordialWave) then return "primordial_wave single_totemic_open 8"; end
		end
		if Player:BuffUp(S.LegacyoftheFrostWitchBuff) then
		  -- feral_spirit,if=buff.legacy_of_the_frost_witch.up
		  if S.FeralSpirit:IsCastable() then
			if Cast(S.FeralSpirit) then return "feral_spirit single_totemic_open 10"; end
		  end
		  -- doom_winds,if=buff.legacy_of_the_frost_witch.up
		  if S.DoomWinds:IsReady() and Target:IsInMeleeRange(5) then
			if Cast(S.DoomWinds) then return "doom_winds single_totemic_open 12"; end
		  end
		  -- primordial_storm,if=(buff.maelstrom_weapon.stack>=10)&buff.legacy_of_the_frost_witch.up
		  if S.PrimordialStormAbility:IsCastable() and Target:IsInRange(45) and (MaelstromStacks >= 10) then
			if Cast(S.PrimordialStormAbility) then return "primordial_storm single_totemic_open 14"; end
		  end
		end
		-- lava_lash,if=buff.hot_hand.up
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and (Player:BuffUp(S.HotHandBuff)) then
		  if Cast(S.LavaLash) then return "lava_lash single_totemic_open 16"; end
		end
		if Player:BuffUp(S.LegacyoftheFrostWitchBuff) then
		  -- stormstrike,if=buff.doom_winds.up&buff.legacy_of_the_frost_witch.up
		  if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffUp(S.DoomWindsBuff)) then
			if Cast(S.Stormstrike) then return "stormstrike single_totemic_open 18"; end
		  end
		  -- sundering,if=buff.legacy_of_the_frost_witch.up
		  if S.Sundering:IsReady() and Target:IsInMeleeRange(11) then
			if Cast(S.Sundering) then return "sundering single_totemic_open 20"; end
		  end
		end
		if MaelstromStacks == 10 then
		  -- elemental_blast,if=buff.maelstrom_weapon.stack=10
		  if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) then
			if Cast(S.ElementalBlast) then return "elemental_blast single_totemic_open 22"; end
		  end
		  -- lightning_bolt,if=buff.maelstrom_weapon.stack=10
		  if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) then
			if Cast(S.LightningBolt) then return "lightning_bolt single_totemic_open 24"; end
		  end
		end
		-- stormstrike
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) then
		  if Cast(S.Stormstrike) then return "stormstrike single_totemic_open 26"; end
		end
		-- lava_lash
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) then
		  if Cast(S.LavaLash) then return "lava_lash single_totemic_open 28"; end
		end
	end

	local function SingleTotemic()
		-- run_action_list,name=single_totemic_open,if=time<20
		if HL.CombatTime() < 20 then
		  local ShouldReturn = SingleTotemicOpen(); if ShouldReturn then return ShouldReturn; end
		  if Cast(S.Pool) then return "Wait for SingleTotemicOpen()"; end
		end
		-- surging_totem
		if S.SurgingTotem:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.SurgingTotem) then return "surging_totem single_totemic 2"; end
		end
		-- ascendance,if=ti_lightning_bolt&pet.surging_totem.remains>4&(buff.totemic_rebound.stack>=3|buff.maelstrom_weapon.stack>0)
		if CDsON() and S.Ascendance:IsCastable() and (TIAction == S.LightningBolt and TotemFinder(S.SurgingTotem, true) > 4 and (Player:BuffStack(S.TotemicReboundBuff) >= 3 or MaelstromStacks > 0)) then
		  if Cast(S.Ascendance) then return "ascendance single_totemic 4"; end
		end
		-- flame_shock,if=!ticking&(talent.ashen_catalyst.enabled|talent.primordial_wave.enabled)
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff) and (S.AshenCatalyst:IsAvailable() or S.PrimordialWave:IsAvailable())) then
		  if Cast(S.FlameShock) then return "flame_shock single_totemic 6"; end
		end
		-- lava_lash,if=buff.hot_hand.up
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and (Player:BuffUp(S.HotHandBuff)) then
		  if Cast(S.LavaLash) then return "lava_lash single_totemic 8"; end
		end
		-- feral_spirit,if=((cooldown.doom_winds.remains>23|cooldown.doom_winds.remains<7)&(cooldown.primordial_wave.remains<20|buff.primordial_storm.up|!talent.primordial_storm.enabled))
		if S.FeralSpirit:IsCastable() and ((S.DoomWinds:CooldownRemains() > 23 or S.DoomWinds:CooldownRemains() < 7) and (S.PrimordialWave:CooldownRemains() < 20 or Player:BuffUp(S.PrimordialStormBuff) or not S.PrimordialStorm:IsAvailable())) then
		  if Cast(S.FeralSpirit) then return "feral_spirit single_totemic 10"; end
		end
		-- primordial_wave,if=dot.flame_shock.ticking&(raid_event.adds.in>action.primordial_wave.cooldown)|raid_event.adds.in<6
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) and (Target:DebuffUp(S.FlameShockDebuff)) then
		  if Cast(S.PrimordialWave) then return "primordial_wave single_totemic 12"; end
		end
		-- doom_winds,if=buff.legacy_of_the_frost_witch.up
		if S.DoomWinds:IsReady() and Target:IsInMeleeRange(5) and (Player:BuffUp(S.LegacyoftheFrostWitchBuff)) then
		  if Cast(S.DoomWinds) then return "doom_winds single_totemic 14"; end
		end
		-- primordial_storm,if=(buff.maelstrom_weapon.stack>=10)&(buff.legacy_of_the_frost_witch.up|!talent.legacy_of_the_frost_witch.enabled)&(cooldown.doom_winds.remains>=15|buff.doom_winds.up)
		if S.PrimordialStormAbility:IsCastable() and Target:IsInRange(45) and ((MaelstromStacks >= 10) and (Player:BuffUp(S.LegacyoftheFrostWitchBuff) or not S.LegacyoftheFrostWitch:IsAvailable()) and (S.DoomWinds:CooldownRemains() >= 15 or Player:BuffUp(S.DoomWindsBuff))) then
		  if Cast(S.PrimordialStormAbility) then return "primordial_storm single_totemic 16"; end
		end
		-- sundering,if=buff.ascendance.up&pet.surging_totem.active&talent.earthsurge.enabled&buff.legacy_of_the_frost_witch.up&buff.totemic_rebound.stack>=5&buff.earthen_weapon.stack>=2
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) and (Player:BuffUp(S.AscendanceBuff) and TotemFinder(S.SurgingTotem) and S.Earthsurge:IsAvailable() and Player:BuffUp(S.LegacyoftheFrostWitchBuff) and Player:BuffStack(S.TotemicReboundBuff) >= 5 and Player:BuffStack(S.EarthenWeaponBuff) >= 2) then
		  if Cast(S.Sundering) then return "sundering single_totemic 18"; end
		end
		-- windstrike,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0&ti_lightning_bolt
		if S.Windstrike:IsCastable() and Target:IsInRange(30) and (S.ThorimsInvocation:IsAvailable() and MaelstromStacks > 0 and TIAction == S.LightningBolt) then
		  if Cast(S.Windstrike) then return "windstrike single_totemic 20"; end
		end
		-- sundering,if=buff.legacy_of_the_frost_witch.up&((cooldown.ascendance.remains>=10&talent.ascendance.enabled)|!talent.ascendance.enabled)&pet.surging_totem.active&buff.totemic_rebound.stack>=3&!buff.ascendance.up
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) and (Player:BuffUp(S.LegacyoftheFrostWitchBuff) and ((S.Ascendance:CooldownRemains() >= 10 and S.Ascendance:IsAvailable()) or not S.Ascendance:IsAvailable()) and TotemFinder(S.SurgingTotem) and Player:BuffStack(S.TotemicReboundBuff) >= 3 and Player:BuffDown(S.AscendanceBuff)) then
		  if Cast(S.Sundering) then return "sundering single_totemic 22"; end
		end
		-- crash_lightning,if=talent.unrelenting_storms.enabled&talent.alpha_wolf.enabled&alpha_wolf_min_remains=0
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.UnrelentingStorms:IsAvailable() and S.AlphaWolf:IsAvailable() and AlphaWolfMinRemains() == 0) then
		  if Cast(S.CrashLightning) then return "crash_lightning single_totemic 24"; end
		end
		-- lava_burst,if=!talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>=10&buff.whirling_air.down
		if S.LavaBurst:IsReady() and Target:IsSpellInRange(S.LavaBurst) and (not S.ThorimsInvocation:IsAvailable() and MaelstromStacks >= 10 and Player:BuffDown(S.WhirlingAirBuff)) then
		  if Cast(S.LavaBurst) then return "lava_burst single_totemic 28"; end
		end
		-- elemental_blast,if=(buff.maelstrom_weapon.stack>=10)&(buff.primordial_storm.down|buff.primordial_storm.remains>4)
		if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) and ((MaelstromStacks >= 10) and (Player:BuffDown(S.PrimordialStormBuff) or Player:BuffRemains(S.PrimordialStormBuff) > 4)) then
		  if Cast(S.ElementalBlast) then return "elemental_blast single_totemic 30"; end
		end
		-- stormstrike,if=buff.doom_winds.up&buff.legacy_of_the_frost_witch.up
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffUp(S.DoomWindsBuff) and Player:BuffUp(S.LegacyoftheFrostWitchBuff)) then
		  if Cast(S.Stormstrike) then return "stormstrike single_totemic 32"; end
		end
		-- lightning_bolt,if=(buff.maelstrom_weapon.stack>=10)&(buff.primordial_storm.down|buff.primordial_storm.remains>4)
		if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) and ((MaelstromStacks >= 10) and (Player:BuffDown(S.PrimordialStormBuff) or Player:BuffRemains(S.PrimordialStormBuff) > 4)) then
		  if Cast(S.LightningBolt) then return "lightning_bolt single_totemic 34"; end
		end
		-- crash_lightning,if=buff.electrostatic_wager.stack>4
		if S.CrashLightning:IsReady() and Target:IsSpellInRange(S.LightningBolt) and (Player:BuffStack(S.ElectrostaticWagerBuff) > 4) then
		  if Cast(S.CrashLightning) then return "crash_lightning single_totemic 36"; end
		end
		-- stormstrike,if=buff.doom_winds.up|buff.stormblast.stack>1
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffUp(S.DoomWindsBuff) or Player:BuffStack(S.StormblastBuff) > 1) then
		  if Cast(S.Stormstrike) then return "stormstrike single_totemic 38"; end
		end
		-- lava_lash,if=buff.whirling_fire.up|buff.ashen_catalyst.stack>=8
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) and (Player:BuffUp(S.WhirlingFireBuff) or Player:BuffStack(S.AshenCatalystBuff) >= 8) then
		  if Cast(S.LavaLash) then return "lava_lash single_totemic 40"; end
		end
		-- windstrike
		if S.Windstrike:IsCastable() and Target:IsInRange(30) then
		  if Cast(S.Windstrike) then return "windstrike single_totemic 42"; end
		end
		-- stormstrike
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) then
		  if Cast(S.Stormstrike) then return "stormstrike single_totemic 44"; end
		end
		-- lava_lash
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) and (S.MoltenAssault:IsAvailable()) then
		  if Cast(S.LavaLash) then return "lava_lash single_totemic 46"; end
		end
		-- crash_lightning,if=set_bonus.tww2_4pc
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (Player:HasTier("TWW2", 4)) then
		  if Cast(S.CrashLightning) then return "crash_lightning single_totemic 48"; end
		end
		-- voltaic_blaze
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze single_totemic 50"; end
		end
		-- crash_lightning,if=talent.unrelenting_storms.enabled
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.UnrelentingStorms:IsAvailable()) then
		  if Cast(S.CrashLightning) then return "crash_lightning single_totemic 52"; end
		end
		-- ice_strike,if=!buff.ice_strike.up
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) and (Player:BuffDown(S.IceStrikeBuff)) then
		  if Cast(S.IceStrike) then return "ice_strike single_totemic 54"; end
		end
		-- crash_lightning
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.CrashLightning) then return "crash_lightning single_totemic 56"; end
		end
		-- frost_shock
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) then
		  if Cast(S.FrostShock) then return "frost_shock single_totemic 58"; end
		end
		-- fire_nova,if=active_dot.flame_shock
		if S.FireNova:IsReady() and (Target:DebuffUp(S.FlameShockDebuff)) then
		  if Cast(S.FireNova) then return "fire_nova single_totemic 60"; end
		end
		-- earth_elemental
		-- if S.EarthElemental:IsCastable() then
		--   if Cast(S.EarthElemental) then return "earth_elemental single_totemic 62"; end
		-- end
		-- flame_shock,if=!talent.voltaic_blaze.enabled
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (not S.VoltaicBlaze:IsAvailable()) then
		  if Cast(S.FlameShock) then return "flame_shock single_totemic 64"; end
		end
	end

	local function AoeOpen()
		-- flame_shock,if=!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock aoe_open 2"; end
		end
		-- crash_lightning,if=(buff.electrostatic_wager.stack>9&buff.doom_winds.up)|!buff.crash_lightning.up
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and ((Player:BuffStack(S.ElectrostaticWagerBuff) > 9 and Player:BuffUp(S.DoomWindsBuff)) or Player:BuffDown(S.CrashLightningBuff)) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_open 4"; end
		end
		-- voltaic_blaze,if=active_dot.flame_shock<3
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) and (S.FlameShockDebuff:AuraActiveCount() < 3) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze aoe_open 6"; end
		end
		-- lava_lash,if=talent.molten_assault.enabled&(talent.primordial_wave.enabled|talent.fire_nova.enabled)&dot.flame_shock.ticking&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<3
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) and (S.MoltenAssault:IsAvailable() and (S.PrimordialWave:IsAvailable() or S.FireNova:IsAvailable()) and S.FlameShockDebuff:AuraActiveCount() > 0 and (S.FlameShockDebuff:AuraActiveCount() < EnemiesMeleeCount) and S.FlameShockDebuff:AuraActiveCount() < 3) then
		  if Cast(S.LavaLash) then return "lava_lash aoe_open 8"; end
		end
		-- primordial_wave,if=(buff.maelstrom_weapon.stack>=4)&dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) and ((MaelstromStacks >= 4) and Target:DebuffUp(S.FlameShockDebuff) and (S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6))) then
		  if Cast(S.PrimordialWave) then return "primordial_wave aoe_open 10"; end
		end
		if MaelstromStacks >= 9 then
		  -- feral_spirit,if=buff.maelstrom_weapon.stack>=9
		  if S.FeralSpirit:IsCastable() then
			if Cast(S.FeralSpirit) then return "feral_spirit aoe_open 12"; end
		  end
		  -- doom_winds,if=buff.maelstrom_weapon.stack>=9
		  if S.DoomWinds:IsCastable() and Target:IsInMeleeRange(5) then
			if Cast(S.DoomWinds) then return "doom_winds aoe_open 14"; end
		  end
		end
		-- ascendance,if=(dot.flame_shock.ticking|!talent.molten_assault.enabled)&ti_chain_lightning&(buff.legacy_of_the_frost_witch.up|!talent.legacy_of_the_frost_witch.enabled)&!buff.doom_winds.up
		if S.Ascendance:IsCastable() and ((S.FlameShockDebuff:AuraActiveCount() > 0 or not S.MoltenAssault:IsAvailable()) and TIAction == S.ChainLightning and (Player:BuffUp(S.LegacyoftheFrostWitchBuff) or not S.LegacyoftheFrostWitch:IsAvailable()) and Player:BuffDown(S.DoomWindsBuff)) then
		  if Cast(S.Ascendance) then return "ascendance aoe_open 16"; end
		end
		-- primordial_storm,if=(buff.maelstrom_weapon.stack>=9)&(buff.legacy_of_the_frost_witch.up|!talent.legacy_of_the_frost_witch.enabled)
		if S.PrimordialStormAbility:IsCastable() and Target:IsInRange(45) and ((MaelstromStacks >= 9) and (Player:BuffUp(S.LegacyoftheFrostWitchBuff) or not S.LegacyoftheFrostWitch:IsAvailable())) then
		  if Cast(S.PrimordialStormAbility) then return "primordial_storm aoe_open 18"; end
		end
		-- tempest,target_if=min:debuff.lightning_rod.remains,if=buff.maelstrom_weapon.stack>=9&!buff.arc_discharge.stack>0
		if S.TempestAbility:IsReady() and (MaelstromStacks >= 9 and Player:BuffDown(S.ArcDischargeBuff)) then
		  if Target:IsSpellInRange(S.TempestAbility) then
			if Cast(S.TempestAbility) then return "tempest aoe_open 20 (forced MT)"; end
		  else
			if CastTargetIf(S.TempestAbility, EnemiesMelee, "min", EvaluateTargetIfFilterLightningRodRemains) then return "tempest aoe_open 20"; end
		  end
		end
		-- crash_lightning,if=(buff.electrostatic_wager.stack>4)
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (Player:BuffStack(S.ElectrostaticWagerBuff) > 4) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_open 22"; end
		end
		-- windstrike,target_if=min:debuff.lightning_rod.remains,if=talent.thorims_invocation.enabled&ti_chain_lightning
		if S.Windstrike:IsCastable() and Target:IsInRange(30) and (S.ThorimsInvocation:IsAvailable() and TIAction == S.ChainLightning) then
		  if CastTargetIf(S.Windstrike, EnemiesMelee, "min", EvaluateTargetIfFilterLightningRodRemains) then return "windstrike aoe_open 24"; end
		end
		-- chain_lightning,target_if=min:debuff.lightning_rod.remains,if=buff.maelstrom_weapon.stack>=5&(!buff.primordial_storm.up|!buff.legacy_of_the_frost_witch.up)&buff.doom_winds.up
		-- chain_lightning,target_if=min:debuff.lightning_rod.remains,if=buff.maelstrom_weapon.stack>=9&(!buff.primordial_storm.up|!buff.legacy_of_the_frost_witch.up)
		if S.ChainLightning:IsReady() and Target:IsSpellInRange(S.ChainLightning) and (Player:BuffDown(S.PrimordialStormBuff) or not S.LegacyoftheFrostWitch:IsAvailable()) and (
		  (MaelstromStacks >= 5 and Player:BuffUp(S.DoomWindsBuff)) or
		  (MaelstromStacks >= 9)
		) then
		  if CastTargetIf(S.ChainLightning, EnemiesMelee, "min", EvaluateTargetIfFilterLightningRodRemains) then return "chain_lightning aoe_open 26"; end
		end
		-- stormstrike,if=buff.converging_storms.stack=6&buff.stormblast.stack>1
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffStack(S.ConvergingStormsBuff) == 6 and Player:BuffStack(S.StormblastBuff) > 1) then
		  if Cast(S.Stormstrike) then return "stormstrike aoe_open 28"; end
		end
		-- crash_lightning
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_open 30"; end
		end
		-- voltaic_blaze
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze aoe_open 32"; end
		end
		-- stormstrike
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) then
		  if Cast(S.Stormstrike) then return "stormstrike aoe_open 34"; end
		end
	end

	local function Aoe()
		-- feral_spirit,if=talent.elemental_spirits.enabled|talent.alpha_wolf.enabled
		if S.FeralSpirit:IsCastable() and (S.ElementalSpirits:IsAvailable() or S.AlphaWolf:IsAvailable()) then
		  if Cast(S.FeralSpirit) then return "feral_spirit aoe 2"; end
		end
		-- run_action_list,name=aoe_open,if=time<15
		if HL.CombatTime() < 15 then
		  local ShouldReturn = AoeOpen(); if ShouldReturn then return ShouldReturn; end
		  if Cast(S.Pool) then return "Wait for AoeOpen()"; end
		end
		-- flame_shock,if=talent.molten_assault.enabled&!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (S.MoltenAssault:IsAvailable() and Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock aoe 4"; end
		end
		-- ascendance,if=(dot.flame_shock.ticking|!talent.molten_assault.enabled)&ti_chain_lightning
		if CDsON() and S.Ascendance:IsCastable() and ((S.FlameShockDebuff:AuraActiveCount() > 0 or not S.MoltenAssault:IsAvailable()) and TIAction == S.ChainLightning) then
		  if Cast(S.Ascendance) then return "ascendance aoe 6"; end
		end
		-- tempest,target_if=min:debuff.lightning_rod.remains,if=!buff.arc_discharge.stack>=1&((buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&!talent.raging_maelstrom.enabled)|(buff.maelstrom_weapon.stack>=9))|(buff.maelstrom_weapon.stack>=5&(tempest_mael_count>30))
		if S.TempestAbility:IsReady() and (Player:BuffDown(S.ArcDischargeBuff) and ((MaelstromStacks == MaxMaelstromStacks and not S.RagingMaelstrom:IsAvailable()) or (MaelstromStacks >= 9)) or (MaelstromStacks >= 5 and (Shaman.TempestMaelstrom > 30))) then
		  if Target:IsSpellInRange(S.TempestAbility) then
			if Cast(S.TempestAbility) then return "tempest aoe 8 (forced MT)"; end
		  else
			if CastTargetIf(S.TempestAbility, EnemiesMelee, "min", EvaluateTargetIfFilterLightningRodRemains) then return "tempest aoe 8"; end
		  end
		end
		-- feral_spirit,if=(cooldown.doom_winds.remains>30|cooldown.doom_winds.remains<7)
		if S.FeralSpirit:IsCastable() and (S.DoomWinds:CooldownRemains() > 30 or S.DoomWinds:CooldownRemains() < 7) then
		  if Cast(S.FeralSpirit) then return "feral_spirit aoe 10"; end
		end
		-- doom_winds
		if S.DoomWinds:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.DoomWinds) then return "doom_winds aoe 12"; end
		end
		-- primordial_wave,if=dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) and (S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6)) then
		  if Cast(S.PrimordialWave) then return "primordial_wave aoe 14"; end
		end
		-- primordial_storm,if=(buff.maelstrom_weapon.stack>=10)&(buff.doom_winds.up|cooldown.doom_winds.remains>15|buff.primordial_storm.remains<3)
		if S.PrimordialStormAbility:IsCastable() and Target:IsInRange(45) and ((MaelstromStacks >= 10) and (Player:BuffUp(S.DoomWindsBuff) or S.DoomWinds:CooldownRemains() > 15 or Player:BuffRemains(S.PrimordialStormBuff) < 3)) then
		  if Cast(S.PrimordialStormAbility) then return "primordial_storm aoe 16"; end
		end
		-- crash_lightning,if=talent.converging_storms.enabled&buff.electrostatic_wager.stack>6|!buff.crash_lightning.up
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.ConvergingStorms:IsAvailable() and Player:BuffStack(S.ElectrostaticWagerBuff) > 6 or Player:BuffDown(S.CrashLightningBuff)) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe 18"; end
		end
		-- windstrike,target_if=min:debuff.lightning_rod.remains,if=talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0&ti_chain_lightning
		if S.Windstrike:IsCastable() and Target:IsInRange(30) and (S.ThorimsInvocation:IsAvailable() and MaelstromStacks > 0 and TIAction == S.ChainLightning) then
		  if CastTargetIf(S.Windstrike, EnemiesMelee, "min", EvaluateTargetIfFilterLightningRodRemains) then return "windstrike aoe 20"; end
		end
		-- crash_lightning,if=talent.converging_storms.enabled&talent.alpha_wolf.enabled
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.ConvergingStorms:IsAvailable() and S.AlphaWolf:IsAvailable()) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe 22"; end
		end
		-- stormstrike,if=buff.converging_storms.stack=6&buff.stormblast.stack>0&buff.legacy_of_the_frost_witch.up&buff.maelstrom_weapon.stack<=8
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffStack(S.ConvergingStormsBuff) == 6 and Player:BuffUp(S.StormblastBuff) and Player:BuffUp(S.LegacyoftheFrostWitchBuff) and MaelstromStacks <= 8) then
		  if Cast(S.Stormstrike) then return "stormstrike aoe 24"; end
		end
		-- crash_lightning,if=buff.maelstrom_weapon.stack<=8
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (MaelstromStacks <= 8) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe 26"; end
		end
		-- voltaic_blaze,if=buff.maelstrom_weapon.stack<=8
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) and (MaelstromStacks <= 8) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze aoe 28"; end
		end
		-- chain_lightning,target_if=min:debuff.lightning_rod.remains,if=buff.maelstrom_weapon.stack>=5&!buff.primordial_storm.up&(cooldown.crash_lightning.remains>=1|!talent.alpha_wolf.enabled)
		if S.ChainLightning:IsReady() and Target:IsSpellInRange(S.ChainLightning) and (MaelstromStacks >= 5 and Player:BuffDown(S.PrimordialStormBuff) and (S.CrashLightning:CooldownRemains() >= 1 or not S.AlphaWolf:IsAvailable())) then
		  if CastTargetIf(S.ChainLightning, EnemiesMelee, "min", EvaluateTargetIfFilterLightningRodRemains) then return "chain_lightning aoe 30"; end
		end
		-- fire_nova,if=active_dot.flame_shock=6|(active_dot.flame_shock>=4&active_dot.flame_shock=active_enemies)
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() == 6 or (S.FlameShockDebuff:AuraActiveCount() >= 4 and S.FlameShockDebuff:AuraActiveCount() >= EnemiesMeleeCount)) then
		  if Cast(S.FireNova) then return "fire_nova aoe 32"; end
		end
		-- stormstrike,if=talent.stormblast.enabled&talent.stormflurry.enabled
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (S.Stormblast:IsAvailable() and S.Stormflurry:IsAvailable()) then
		  if Cast(S.Stormstrike) then return "stormstrike aoe 34"; end
		end
		-- voltaic_blaze
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze aoe 36"; end
		end
		-- lava_lash,target_if=min:debuff.lashing_flames.remains,if=talent.lashing_flames.enabled|talent.molten_assault.enabled&dot.flame_shock.ticking
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) and (S.LashingFlames:IsAvailable() or S.MoltenAssault:IsAvailable() and S.FlameShockDebuff:AuraActiveCount() > 0) then
		  if CastTargetIf(S.LavaLash, EnemiesMelee, "min", EvaluateTargetIfFilterLavaLash) then return "lava_lash aoe 38"; end
		end
		-- ice_strike,if=talent.hailstorm.enabled&!buff.ice_strike.up
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) and (S.Hailstorm:IsAvailable() and Player:BuffDown(S.IceStrikeBuff)) then
		  if Cast(S.IceStrike) then return "ice_strike aoe 40"; end
		end
		-- frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (S.Hailstorm:IsAvailable() and Player:BuffUp(S.HailstormBuff)) then
		  if Cast(S.FrostShock) then return "frost_shock aoe 42"; end
		end
		-- sundering
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) then
		  if Cast(S.Sundering) then return "sundering aoe 44"; end
		end
		-- flame_shock,if=talent.molten_assault.enabled&!ticking
		-- Note: Duplicate of flame_shock aoe 4.
		-- flame_shock,target_if=min:dot.flame_shock.remains,if=(talent.fire_nova.enabled|talent.primordial_wave.enabled)&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and ((S.FireNova:IsAvailable() or S.PrimordialWave:IsAvailable()) and (S.FlameShockDebuff:AuraActiveCount() < EnemiesMeleeCount) and S.FlameShockDebuff:AuraActiveCount() < 6) then
		  if CastCycle(S.FlameShock, EnemiesMelee) then return "flame_shock aoe 46"; end
		end
		-- fire_nova,if=active_dot.flame_shock>=3
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() >= 3) then
		  if Cast(S.FireNova) then return "fire_nova aoe 48"; end
		end
		-- stormstrike,if=buff.crash_lightning.up&(talent.deeply_rooted_elements.enabled|buff.converging_storms.stack=buff.converging_storms.max_stack)
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffUp(S.CrashLightningBuff) and (S.DeeplyRootedElements:IsAvailable() or Player:BuffStack(S.ConvergingStormsBuff) == MaxConvergingStormsStacks)) then
		  if Cast(S.Stormstrike) then return "stormstrike aoe 50"; end
		end
		-- crash_lightning,if=talent.crashing_storms.enabled&buff.cl_crash_lightning.up
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.CrashingStorms:IsAvailable() and Player:BuffUp(S.CLCrashLightningBuff)) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe 52"; end
		end
		-- windstrike
		if S.Windstrike:IsReady() and Target:IsInRange(30) then
		  if Cast(S.Windstrike) then return "windstrike aoe 54"; end
		end
		-- stormstrike
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) then
		  if Cast(S.Stormstrike) then return "stormstrike aoe 56"; end
		end
		-- ice_strike
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) then
		  if Cast(S.IceStrike) then return "ice_strike aoe 58"; end
		end
		-- lava_lash
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) then
		  if Cast(S.LavaLash) then return "lava_lash aoe 60"; end
		end
		-- crash_lightning
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe 62"; end
		end
		-- fire_nova,if=active_dot.flame_shock>=2
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() >= 2) then
		  if Cast(S.FireNova) then return "fire_nova aoe 64"; end
		end
		-- chain_lightning,target_if=min:debuff.lightning_rod.remains,if=buff.maelstrom_weapon.stack>=5&!buff.primordial_storm.up
		if S.ChainLightning:IsReady() and Target:IsSpellInRange(S.ChainLightning) and (MaelstromStacks >= 5 and Player:BuffDown(S.PrimordialStormBuff)) then
		  if CastTargetIf(S.ChainLightning, EnemiesMelee, "min", EvaluateTargetIfFilterLightningRodRemains) then return "chain_lightning aoe 66"; end
		end
		-- flame_shock,if=!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock aoe 68"; end
		end
		-- frost_shock,if=!talent.hailstorm.enabled
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (not S.Hailstorm:IsAvailable()) then
		  if Cast(S.FrostShock) then return "frost_shock aoe 70"; end
		end
	end

	local function AoeTotemicOpen()
		-- surging_totem
		if S.SurgingTotem:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.SurgingTotem) then return "surging_totem aoe_totemic_open 2"; end
		end
		-- flame_shock,if=!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock aoe_totemic_open 4"; end
		end
		-- fire_nova,if=talent.swirling_maelstrom.enabled&dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)
		if S.FireNova:IsReady() and (S.SwirlingMaelstrom:IsAvailable() and S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6)) then
		  if Cast(S.FireNova) then return "fire_nova aoe_totemic_open 6"; end
		end
		-- primordial_wave,if=dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) and (S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6)) then
		  if Cast(S.PrimordialWave) then return "primordial_wave aoe_totemic_open 8"; end
		end
		-- feral_spirit,if=buff.maelstrom_weapon.stack>=8
		if S.FeralSpirit:IsCastable() and (MaelstromStacks >= 8) then
		  if Cast(S.FeralSpirit) then return "feral_spirit aoe_totemic_open 10"; end
		end
		-- crash_lightning,if=(buff.electrostatic_wager.stack>9&buff.doom_winds.up)|!buff.crash_lightning.up
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and ((Player:BuffStack(S.ElectrostaticWagerBuff) > 9 and Player:BuffUp(S.DoomWindsBuff)) or Player:BuffDown(S.CrashLightningBuff)) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_totemic_open 12"; end
		end
		-- doom_winds,if=buff.maelstrom_weapon.stack>=8
		if S.DoomWinds:IsCastable() and Target:IsInMeleeRange(5) and (MaelstromStacks >= 8) then
		  if Cast(S.DoomWinds) then return "doom_winds aoe_totemic_open 14"; end
		end
		-- primordial_storm,if=(buff.maelstrom_weapon.stack>=10)&buff.legacy_of_the_frost_witch.up
		if S.PrimordialStormAbility:IsCastable() and Target:IsInRange(45) and (MaelstromStacks >= 10 and Player:BuffUp(S.LegacyoftheFrostWitchBuff)) then
		  if Cast(S.PrimordialStormAbility) then return "primordial_storm aoe_totemic_open 16"; end
		end
		-- lava_lash,if=buff.hot_hand.up|(buff.legacy_of_the_frost_witch.up&buff.whirling_fire.up)
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and (Player:BuffUp(S.HotHandBuff) or Player:BuffUp(S.LegacyoftheFrostWitchBuff) and Player:BuffUp(S.WhirlingFireBuff)) then
		  if Cast(S.LavaLash) then return "lava_lash aoe_totemic_open 18"; end
		end
		-- sundering,if=buff.legacy_of_the_frost_witch.up
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) and (Player:BuffUp(S.LegacyoftheFrostWitchBuff)) then
		  if Cast(S.Sundering) then return "sundering aoe_totemic_open 20"; end
		end
		if MaelstromStacks >= 10 then
		  -- elemental_blast,if=buff.maelstrom_weapon.stack>=10
		  if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) then
			if Cast(S.ElementalBlast) then return "elemental_blast aoe_totemic_open 22"; end
		  end
		  -- chain_lightning,if=buff.maelstrom_weapon.stack>=10
		  if S.ChainLightning:IsReady() and Target:IsSpellInRange(S.ChainLightning) then
			if Cast(S.ChainLightning) then return "chain_lightning aoe_totemic_open 24"; end
		  end
		end
		-- frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up&pet.searing_totem.active
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (S.Hailstorm:IsAvailable() and Player:BuffUp(S.HailstormBuff) and Shaman.SearingTotemActive) then
		  if Cast(S.FrostShock) then return "frost_shock aoe_totemic_open 26"; end
		end
		-- fire_nova,if=pet.searing_totem.active&dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)
		if S.FireNova:IsReady() and (Shaman.SearingTotemActive and S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6)) then
		  if Cast(S.FireNova) then return "fire_nova aoe_totemic_open 28"; end
		end
		-- ice_strike
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) then
		  if Cast(S.IceStrike) then return "ice_strike aoe_totemic_open 30"; end
		end
		-- stormstrike,if=buff.maelstrom_weapon.stack<10&!buff.legacy_of_the_frost_witch.up
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (MaelstromStacks < 10 and Player:BuffDown(S.LegacyoftheFrostWitchBuff)) then
		  if Cast(S.Stormstrike) then return "stormstrike aoe_totemic_open 32"; end
		end
		-- lava_lash
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) then
		  if Cast(S.LavaLash) then return "lava_lash aoe_totemic_open 34"; end
		end
	end

	local function AoeTotemic()
		-- surging_totem
		if S.SurgingTotem:IsReady() then
		  if Cast(S.SurgingTotem) then return "surging_totem aoe_totemic 2"; end
		end
		-- run_action_list,name=aoe_totemic_open,if=(cooldown.doom_winds.remains=0|cooldown.sundering.remains=0|!buff.hot_hand.up)&time<15
		if (S.DoomWinds:CooldownUp() or S.Sundering:CooldownUp() or Player:BuffDown(S.HotHandBuff)) and HL.CombatTime() < 15 then
		  local ShouldReturn = AoeTotemicOpen(); if ShouldReturn then return ShouldReturn; end
		  if Cast(S.Pool) then return "Wait for AoeTotemicOpen()"; end
		end
		-- ascendance,if=ti_chain_lightning
		if S.Ascendance:IsCastable() and (TIAction == S.ChainLightning) then
		  if Cast(S.Ascendance) then return "ascendance aoe_totemic 4"; end
		end
		-- flame_shock,if=!ticking&(talent.ashen_catalyst.enabled|talent.primordial_wave.enabled)
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff) and (S.AshenCatalyst:IsAvailable() or S.PrimordialWave:IsAvailable())) then
		  if Cast(S.FlameShock) then return "flame_shock aoe_totemic 6"; end
		end
		-- crash_lightning,if=talent.crashing_storms.enabled&(active_enemies>=15-5*talent.unruly_winds.enabled)
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.CrashingStorms:IsAvailable() and (EnemiesMeleeCount >= 15 - 5 * num(S.UnrulyWinds:IsAvailable()))) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_totemic 8"; end
		end
		-- feral_spirit,if=((cooldown.doom_winds.remains>30|cooldown.doom_winds.remains<7)&(cooldown.primordial_wave.remains<2|buff.primordial_storm.up|!talent.primordial_storm.enabled))
		if S.FeralSpirit:IsCastable() and ((S.DoomWinds:CooldownRemains() > 30 or S.DoomWinds:CooldownRemains() < 7) and (S.PrimordialWave:CooldownRemains() < 2 or Player:BuffUp(S.PrimordialStormBuff) or not S.PrimordialStorm:IsAvailable())) then
		  if Cast(S.FeralSpirit) then return "feral_spirit aoe_totemic 10"; end
		end
		-- doom_winds,if=!talent.elemental_spirits.enabled
		if S.DoomWinds:IsCastable() and Target:IsInMeleeRange(5) and (not S.ElementalSpirits:IsAvailable()) then
		  if Cast(S.DoomWinds) then return "doom_winds aoe_totemic 12"; end
		end
		-- primordial_storm,if=(buff.maelstrom_weapon.stack>=10)&(cooldown.doom_winds.remains>3)
		if S.PrimordialStormAbility:IsCastable() and Target:IsInRange(45) and ((MaelstromStacks >= 10) and (S.DoomWinds:CooldownRemains() > 3)) then
		  if Cast(S.PrimordialStormAbility) then return "primordial_storm aoe_totemic 14"; end
		end
		-- primordial_wave,if=dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) and (S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6)) then
		  if Cast(S.PrimordialWave) then return "primordial_wave aoe_totemic 16"; end
		end
		-- windstrike
		if S.Windstrike:IsCastable() and Target:IsInRange(30) then
		  if Cast(S.Windstrike) then return "windstrike aoe_totemic 18"; end
		end
		-- elemental_blast,if=(!talent.elemental_spirits.enabled|(talent.elemental_spirits.enabled&(charges=max_charges|feral_spirit.active>=2)))&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!talent.crashing_storms.enabled|active_enemies<=3)
		if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) and ((not S.ElementalSpirits:IsAvailable() or (S.ElementalSpirits:IsAvailable() and (S.ElementalBlast:Charges() == S.ElementalBlast:MaxCharges() or Shaman.FeralSpiritCount >= 2))) and MaelstromStacks == MaxMaelstromStacks and (not S.CrashingStorms:IsAvailable() or EnemiesMeleeCount <= 3)) then
		  if Cast(S.ElementalBlast) then return "elemental_blast aoe_totemic 20"; end
		end
		-- lava_lash,if=buff.hot_hand.up
		if S.LavaLash:IsCastable() and Target:IsSpellInRange(S.LavaLash) and (Player:BuffUp(S.HotHandBuff)) then
		  if Cast(S.LavaLash) then return "lava_lash aoe_totemic 22"; end
		end
		-- crash_lightning,if=buff.electrostatic_wager.stack>8
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (Player:BuffStack(S.ElectrostaticWagerBuff) > 8) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_totemic 24"; end
		end
		-- sundering,if=buff.doom_winds.up|talent.earthsurge.enabled&(buff.legacy_of_the_frost_witch.up|!talent.legacy_of_the_frost_witch.enabled)&pet.surging_totem.active
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) and (Player:BuffUp(S.DoomWindsBuff) or S.Earthsurge:IsAvailable() and (Player:BuffUp(S.LegacyoftheFrostWitchBuff) or not S.LegacyoftheFrostWitch:IsAvailable()) and TotemFinder(S.SurgingTotem)) then
		  if Cast(S.Sundering) then return "sundering aoe_totemic 26"; end
		end
		-- chain_lightning,if=buff.maelstrom_weapon.stack>=10&buff.electrostatic_wager.stack>4&!buff.cl_crash_lightning.up&buff.doom_winds.up
		if S.ChainLightning:IsReady() and Target:IsSpellInRange(S.ChainLightning) and (MaelstromStacks >= 10 and Player:BuffStack(S.ElectrostaticWagerBuff) > 4 and Player:BuffDown(S.CLCrashLightningBuff) and Player:BuffUp(S.DoomWindsBuff)) then
		  if Cast(S.ChainLightning) then return "chain_lightning aoe_totemic 28"; end
		end
		-- elemental_blast,if=(buff.maelstrom_weapon.stack>=10)
		if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) and (MaelstromStacks >= 10) then
		  if Cast(S.ElementalBlast) then return "elemental_blast aoe_totemic 30"; end
		end
		-- chain_lightning,if=buff.maelstrom_weapon.stack>=10&!buff.primordial_storm.up
		if S.ChainLightning:IsReady() and Target:IsSpellInRange(S.ChainLightning) and (MaelstromStacks >= 10 and Player:BuffDown(S.PrimordialStormBuff)) then
		  if Cast(S.ChainLightning) then return "chain_lightning aoe_totemic 32"; end
		end
		-- crash_lightning,if=buff.doom_winds.up|!buff.crash_lightning.up|(talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0)
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (Player:BuffUp(S.DoomWindsBuff) or Player:BuffDown(S.CrashLightningBuff) or (S.AlphaWolf:IsAvailable() and Player:BuffUp(S.FeralSpiritBuff) and AlphaWolfMinRemains() == 0)) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_totemic 34"; end
		end
		-- voltaic_blaze
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze aoe_totemic 36"; end
		end
		-- fire_nova,if=(dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6))&pet.searing_totem.active
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6) and Shaman.SearingTotemActive) then
		  if Cast(S.FireNova) then return "fire_nova aoe_totemic 38"; end
		end
		-- lava_lash,if=talent.molten_assault.enabled&dot.flame_shock.ticking
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) and (S.MoltenAssault:IsAvailable() and Target:DebuffUp(S.FlameShockDebuff)) then
		  if Cast(S.LavaLash) then return "lava_lash aoe_totemic 40"; end
		end
		-- frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up&pet.searing_totem.active
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (S.Hailstorm:IsAvailable() and Player:BuffUp(S.HailstormBuff) and Shaman.SearingTotemActive) then
		  if Cast(S.FrostShock) then return "frost_shock aoe_totemic 42"; end
		end
		-- crash_lightning,if=talent.crashing_storms.enabled
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.CrashingStorms:IsAvailable()) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_totemic 44"; end
		end
		-- fire_nova,if=dot.flame_shock.ticking&(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() == mathmin(EnemiesMeleeCount, 6)) then
		  if Cast(S.FireNova) then return "fire_nova aoe_totemic 46"; end
		end
		-- frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (S.Hailstorm:IsAvailable() and Player:BuffUp(S.HailstormBuff)) then
		  if Cast(S.FrostShock) then return "frost_shock aoe_totemic 48"; end
		end
		-- crash_lightning
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_totemic 50"; end
		end
		-- ice_strike,if=talent.hailstorm.enabled&!buff.ice_strike.up
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) and (S.Hailstorm:IsAvailable() and Player:BuffDown(S.IceStrikeBuff)) then
		  if Cast(S.IceStrike) then return "ice_strike aoe_totemic 52"; end
		end
		if MaelstromStacks >= 5 and Player:BuffDown(S.PrimordialStormBuff) then
		  -- elemental_blast,if=buff.maelstrom_weapon.stack>=5&!buff.primordial_storm.up
		  if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) then
			if Cast(S.ElementalBlast) then return "elemental_blast aoe_totemic 54"; end
		  end
		  -- chain_lightning,if=buff.maelstrom_weapon.stack>=5&!buff.primordial_storm.up
		  if S.ChainLightning:IsReady() and Target:IsSpellInRange(S.ChainLightning) then
			if Cast(S.ChainLightning) then return "chain_lightning aoe_totemic 56"; end
		  end
		end
		-- stormstrike
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) then
		  if Cast(S.Stormstrike) then return "stormstrike aoe_totemic 58"; end
		end
		-- sundering,if=buff.doom_winds.up|talent.earthsurge.enabled&(buff.legacy_of_the_frost_witch.up|!talent.legacy_of_the_frost_witch.enabled)&pet.surging_totem.active
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) and (Player:BuffUp(S.DoomWindsBuff) or S.Earthsurge:IsAvailable() and (Player:BuffUp(S.LegacyoftheFrostWitchBuff) or not S.LegacyoftheFrostWitch:IsAvailable()) and TotemFinder(S.SurgingTotem)) then
		  if Cast(S.Sundering) then return "sundering aoe_totemic 60"; end
		end
		-- fire_nova,if=active_dot.flame_shock=6|(active_dot.flame_shock>=4&active_dot.flame_shock=active_enemies)
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() == 6 or (S.FlameShockDebuff:AuraActiveCount() >= 4 and S.FlameShockDebuff:AuraActiveCount() >= EnemiesMeleeCount)) then
		  if Cast(S.FireNova) then return "fire_nova aoe_totemic 62"; end
		end
		-- voltaic_blaze
		if S.VoltaicBlazeAbility:IsReady() and Target:IsSpellInRange(S.VoltaicBlazeAbility) then
		  if Cast(S.VoltaicBlazeAbility) then return "voltaic_blaze aoe_totemic 64"; end
		end
		-- ice_strike,if=talent.hailstorm.enabled&!buff.ice_strike.up
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) and (S.Hailstorm:IsAvailable() and Player:BuffDown(S.IceStrikeBuff)) then
		  if Cast(S.IceStrike) then return "ice_strike aoe_totemic 66"; end
		end
		-- frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (S.Hailstorm:IsAvailable() and Player:BuffUp(S.HailstormBuff)) then
		  if Cast(S.FrostShock) then return "frost_shock aoe_totemic 68"; end
		end
		-- sundering,if=(buff.legacy_of_the_frost_witch.up|!talent.legacy_of_the_frost_witch.enabled)&pet.surging_totem.active
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) and ((Player:BuffUp(S.LegacyoftheFrostWitchBuff) or not S.LegacyoftheFrostWitch:IsAvailable()) and TotemFinder(S.SurgingTotem)) then
		  if Cast(S.Sundering) then return "sundering aoe_totemic 70"; end
		end
		-- flame_shock,if=talent.molten_assault.enabled&!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (S.MoltenAssault:IsAvailable() and Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock aoe_totemic 72"; end
		end
		-- fire_nova,if=active_dot.flame_shock>=3
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() >= 3) then
		  if Cast(S.FireNova) then return "fire_nova aoe_totemic 74"; end
		end
		-- ice_strike
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike)  then
		  if Cast(S.IceStrike) then return "ice_strike aoe_totemic 76"; end
		end
		-- lava_lash
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) then
		  if Cast(S.LavaLash) then return "lava_lash aoe_totemic 78"; end
		end
		-- crash_lightning
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.CrashLightning) then return "crash_lightning aoe_totemic 80"; end
		end
		-- flame_shock,if=!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock aoe_totemic 82"; end
		end
	end

	local function Funnel()
		-- feral_spirit,if=talent.elemental_spirits.enabled
		if S.FeralSpirit:IsCastable() and (S.ElementalSpirits:IsAvailable()) then
		  if Cast(S.FeralSpirit) then return "feral_spirit funnel 2"; end
		end
		-- surging_totem
		if S.SurgingTotem:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.SurgingTotem) then return "surging_totem funnel 4"; end
		end
		-- ascendance
		if S.Ascendance:IsCastable() then
		  if Cast(S.Ascendance) then return "ascendance funnel 6"; end
		end
		-- windstrike,if=(talent.thorims_invocation.enabled&buff.maelstrom_weapon.stack>0)|buff.converging_storms.stack=buff.converging_storms.max_stack
		if S.Windstrike:IsCastable() and Target:IsInRange(30) and ((S.ThorimsInvocation:IsAvailable() and MaelstromStacks > 0) or Player:BuffStack(S.ConvergingStormsBuff) == MaxConvergingStormsStacks) then
		  if Cast(S.Windstrike) then return "windstrike funnel 8"; end
		end
		-- tempest,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack|(buff.maelstrom_weapon.stack>=5&(tempest_mael_count>30|buff.awakening_storms.stack=2))
		if S.TempestAbility:IsReady() and Target:IsInRange(40) and (MaelstromStacks == MaxMaelstromStacks or (MaelstromStacks >= 5 and (Shaman.TempestMaelstrom > 30 or Player:BuffStack(S.AwakeningStormsBuff) == 2))) then
		  if Cast(S.TempestAbility) then return "tempest funnel 10"; end
		end
		-- lightning_bolt,if=(active_dot.flame_shock=active_enemies|active_dot.flame_shock=6)&buff.primordial_wave.up&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(!buff.splintered_elements.up|fight_remains<=12|raid_event.adds.remains<=gcd)
		if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) and ((S.FlameShockDebuff:AuraActiveCount() >= EnemiesMeleeCount or S.FlameShockDebuff:AuraActiveCount() >= 6) and Player:BuffUp(S.PrimordialWaveBuff) and MaelstromStacks == MaxMaelstromStacks and (Player:BuffDown(S.SplinteredElementsBuff) or FightRemains <= 12)) then
		  if Cast(S.LightningBolt) then return "lightning_bolt funnel 12"; end
		end
		-- elemental_blast,if=buff.maelstrom_weapon.stack>=5&talent.elemental_spirits.enabled&feral_spirit.active>=4
		if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) and (MaelstromStacks >= 5 and S.ElementalSpirits:IsAvailable() and Shaman.FeralSpiritCount >= 4) then
		  if Cast(S.ElementalBlast) then return "elemental_blast funnel 14"; end
		end
		-- lightning_bolt,if=talent.supercharge.enabled&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(variable.expected_lb_funnel>variable.expected_cl_funnel)
		if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) and (S.Supercharge:IsAvailable() and MaelstromStacks == MaxMaelstromStacks and (VarExpectedLBFunnel > VarExpectedCLFunnel)) then
		  if Cast(S.LightningBolt) then return "lightning_bolt funnel 16"; end
		end
		-- chain_lightning,if=(talent.supercharge.enabled&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack)|buff.arc_discharge.up&buff.maelstrom_weapon.stack>=5
		if S.ChainLightning:IsCastable() and Target:IsSpellInRange(S.ChainLightning) and ((S.Supercharge:IsAvailable() and MaelstromStacks == MaxMaelstromStacks) or Player:BuffUp(S.ArcDischargeBuff) and MaelstromStacks >= 5) then
		  if Cast(S.ChainLightning) then return "chain_lightning funnel 18"; end
		end
		-- lava_lash,if=(talent.molten_assault.enabled&dot.flame_shock.ticking&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6)|(talent.ashen_catalyst.enabled&buff.ashen_catalyst.stack=buff.ashen_catalyst.max_stack)
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) and ((S.MoltenAssault:IsAvailable() and Target:DebuffUp(S.FlameShockDebuff) and (S.FlameShockDebuff:AuraActiveCount() < EnemiesMeleeCount) and S.FlameShockDebuff:AuraActiveCount() < 6) or (S.AshenCatalyst:IsAvailable() and Player:BuffStack(S.AshenCatalystBuff) == MaxAshenCatalystStacks)) then
		  if Cast(S.LavaLash) then return "lava_lash funnel 20"; end
		end
		-- primordial_wave,target_if=min:dot.flame_shock.remains,if=!buff.primordial_wave.up
		if S.PrimordialWave:IsReady() and Target:IsInRange(45) and (Player:BuffDown(S.PrimordialWaveBuff)) then
		  if CastTargetIf(S.PrimordialWave, EnemiesMelee, "min", EvaluateTargetIfFilterPrimordialWave) then return "primordial_wave funnel 22"; end
		end
		-- elemental_blast,if=(!talent.elemental_spirits.enabled|(talent.elemental_spirits.enabled&(charges=max_charges|buff.feral_spirit.up)))&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack
		if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) and ((not S.ElementalSpirits:IsAvailable() or (S.ElementalSpirits:IsAvailable() and (S.ElementalBlast:Charges() == S.ElementalBlast:MaxCharges() or Player:BuffUp(S.FeralSpiritBuff)))) and MaelstromStacks == MaxMaelstromStacks) then
		  if Cast(S.ElementalBlast) then return "elemental_blast funnel 24"; end
		end
		-- feral_spirit
		if S.FeralSpirit:IsCastable() then
		  if Cast(S.FeralSpiritt) then return "feral_spirit funnel 26"; end
		end
		-- doom_winds
		if S.DoomWinds:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.DoomWinds) then return "doom_winds funnel 28"; end
		end
		-- stormstrike,if=buff.converging_storms.stack=buff.converging_storms.max_stack
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffStack(S.ConvergingStormsBuff) == MaxConvergingStormsStacks) then
		  if Cast(S.Stormstrike) then return "stormstrike funnel 30"; end
		end
		-- lava_burst,if=(buff.molten_weapon.stack>buff.crackling_surge.stack)&buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack
		if S.LavaBurst:IsReady() and Target:IsSpellInRange(S.LavaBurst) and ((Shaman.MoltenWeaponStacks > Shaman.CracklingSurgeStacks) and MaelstromStacks == MaxMaelstromStacks) then
		  if Cast(S.LavaBurst) then return "lava_burst funnel 32"; end
		end
		-- lightning_bolt,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack&(variable.expected_lb_funnel>variable.expected_cl_funnel)
		if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) and (MaelstromStacks == MaxMaelstromStacks and (VarExpectedLBFunnel > VarExpectedCLFunnel)) then
		  if Cast(S.LightningBolt) then return "lightning_bolt funnel 34"; end
		end
		-- chain_lightning,if=buff.maelstrom_weapon.stack=buff.maelstrom_weapon.max_stack
		if S.ChainLightning:IsCastable() and Target:IsSpellInRange(S.ChainLightning) and (MaelstromStacks == MaxMaelstromStacks) then
		  if Cast(S.ChainLightning) then return "chain_lightning funnel 36"; end
		end
		-- crash_lightning,if=buff.doom_winds.up|!buff.crash_lightning.up|(talent.alpha_wolf.enabled&feral_spirit.active&alpha_wolf_min_remains=0)|(talent.converging_storms.enabled&buff.converging_storms.stack<buff.converging_storms.max_stack)
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (Player:BuffUp(S.DoomWindsBuff) or Player:BuffDown(S.CrashLightningBuff) or (S.AlphaWolf:IsAvailable() and Player:BuffUp(S.FeralSpiritBuff) and AlphaWolfMinRemains() == 0) or (S.ConvergingStorms:IsAvailable() and Player:BuffStack(S.ConvergingStormsBuff) < MaxConvergingStormsStacks)) then
		  if Cast(S.CrashLightning) then return "crash_lightning funnel 38"; end
		end
		-- sundering,if=buff.doom_winds.up|talent.earthsurge.enabled
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) and (Player:BuffUp(S.DoomWindsBuff) or S.Earthsurge:IsAvailable()) then
		  if Cast(S.Sundering) then return "sundering funnel 40"; end
		end
		-- fire_nova,if=active_dot.flame_shock=6|(active_dot.flame_shock>=4&active_dot.flame_shock=active_enemies)
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() >= 6 or (S.FlameShockDebuff:AuraActiveCount() >= 4 and S.FlameShockDebuff:AuraActiveCount() >= EnemiesMeleeCount)) then
		  if Cast(S.FireNova) then return "fire_nova funnel 42"; end
		end
		-- ice_strike,if=talent.hailstorm.enabled&!buff.ice_strike.up
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) and (S.Hailstorm:IsAvailable() and Player:BuffDown(S.IceStrikeBuff)) then
		  if Cast(S.IceStrike) then return "ice_strike funnel 44"; end
		end
		-- frost_shock,if=talent.hailstorm.enabled&buff.hailstorm.up
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (S.Hailstorm:IsAvailable() and Player:BuffUp(S.HailstormBuff)) then
		  if Cast(S.FrostShock) then return "frost_shock funnel 46"; end
		end
		-- sundering
		if S.Sundering:IsReady() and Target:IsInMeleeRange(11) then
		  if Cast(S.Sundering) then return "sundering funnel 48"; end
		end
		-- flame_shock,if=talent.molten_assault.enabled&!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (S.MoltenAssault:IsAvailable() and Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock funnel 50"; end
		end
		-- flame_shock,target_if=min:dot.flame_shock.remains,if=(talent.fire_nova.enabled|talent.primordial_wave.enabled)&(active_dot.flame_shock<active_enemies)&active_dot.flame_shock<6
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and ((S.FireNova:IsAvailable() or S.PrimordialWave:IsAvailable()) and (S.FlameShockDebuff:AuraActiveCount() < EnemiesMeleeCount) and S.FlameShockDebuff:AuraActiveCount() < 6) then
		  if Cast(S.FlameShock) then return "flame_shock funnel 52"; end
		end
		-- fire_nova,if=active_dot.flame_shock>=3
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() >= 3) then
		  if Cast(S.FireNova) then return "fire_nova funnel 54"; end
		end
		-- stormstrike,if=buff.crash_lightning.up&talent.deeply_rooted_elements.enabled
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) and (Player:BuffUp(S.CrashLightningBuff) and S.DeeplyRootedElements:IsAvailable()) then
		  if Cast(S.Stormstrike) then return "stormstrike funnel 56"; end
		end
		-- crash_lightning,if=talent.crashing_storms.enabled&buff.cl_crash_lightning.up&active_enemies>=4
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) and (S.CrashingStorms:IsAvailable() and Player:BuffUp(S.CLCrashLightningBuff) and EnemiesMeleeCount >= 4) then
		  if Cast(S.CrashLightning) then return "crash_lightning funnel 58"; end
		end
		-- windstrike
		if S.Windstrike:IsCastable() and Target:IsInRange(30) then
		  if Cast(S.Windstrike) then return "windstrike funnel 60"; end
		end
		-- stormstrike
		if S.Stormstrike:IsReady() and Target:IsSpellInRange(S.Stormstrike) then
		  if Cast(S.Stormstrike) then return "stormstrike funnel 62"; end
		end
		-- ice_strike
		if S.IceStrike:IsReady() and Target:IsSpellInRange(S.IceStrike) then
		  if Cast(S.IceStrike) then return "ice_strike funnel 64"; end
		end
		-- lava_lash
		if S.LavaLash:IsReady() and Target:IsSpellInRange(S.LavaLash) then
		  if Cast(S.LavaLash) then return "lava_lash funnel 66"; end
		end
		-- crash_lightning
		if S.CrashLightning:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.CrashLightning) then return "crash_lightning funnel 68"; end
		end
		-- fire_nova,if=active_dot.flame_shock>=2
		if S.FireNova:IsReady() and (S.FlameShockDebuff:AuraActiveCount() >= 2) then
		  if Cast(S.FireNova) then return "fire_nova funnel 70"; end
		end
		-- elemental_blast,if=(!talent.elemental_spirits.enabled|(talent.elemental_spirits.enabled&(charges=max_charges|buff.feral_spirit.up)))&buff.maelstrom_weapon.stack>=5
		if S.ElementalBlast:IsReady() and Target:IsSpellInRange(S.ElementalBlast) and ((not S.ElementalSpirits:IsAvailable() or (S.ElementalSpirits:IsAvailable() and (S.ElementalBlast:Charges() == S.ElementalBlast:MaxCharges() or Player:BuffUp(S.FeralSpiritBuff)))) and MaelstromStacks >= 5) then
		  if Cast(S.ElementalBlast) then return "elemental_blast funnel 72"; end
		end
		-- lava_burst,if=(buff.molten_weapon.stack>buff.crackling_surge.stack)&buff.maelstrom_weapon.stack>=5
		if S.LavaBurst:IsReady() and Target:IsSpellInRange(S.LavaBurst) and ((Shaman.MoltenWeaponStacks > Shaman.CracklingSurgeStacks) and MaelstromStacks >= 5) then
		  if Cast(S.LavaBurst) then return "lava_burst funnel 74"; end
		end
		-- lightning_bolt,if=buff.maelstrom_weapon.stack>=5&(variable.expected_lb_funnel>variable.expected_cl_funnel)
		if S.LightningBolt:IsCastable() and Target:IsSpellInRange(S.LightningBolt) and (MaelstromStacks >= 5 and (VarExpectedLBFunnel > VarExpectedCLFunnel)) then
		  if Cast(S.LightningBolt) then return "lightning_bolt funnel 76"; end
		end
		-- chain_lightning,if=buff.maelstrom_weapon.stack>=5
		if S.ChainLightning:IsReady() and Target:IsSpellInRange(S.ChainLightning) and (MaelstromStacks >= 5) then
		  if Cast(S.ChainLightning) then return "chain_lightning funnel 78"; end
		end
		-- flame_shock,if=!ticking
		if S.FlameShock:IsReady() and Target:IsSpellInRange(S.FlameShock) and (Target:DebuffDown(S.FlameShockDebuff)) then
		  if Cast(S.FlameShock) then return "flame_shock funnel 80"; end
		end
		-- frost_shock,if=!talent.hailstorm.enabled
		if S.FrostShock:IsReady() and Target:IsSpellInRange(S.FrostShock) and (not S.Hailstorm:IsAvailable()) then
		  if Cast(S.FrostShock) then return "frost_shock funnel 82"; end
		end
	end
	
	local function MainRotation()

		if MainAddon.TargetIsValid() then
			MainAddon:Print('RollfaceX')
		end

		if Player:AffectingCombat() and (Target:IsDeadOrGhost() or not Target:IsEnemy()) then
			MainAddon.SetTopColor(1, "Target Enemy")
		end

		-- Unit Update
		EnemiesMelee = Player:GetEnemiesInMeleeRange(10)
		if AoEON() then
		  EnemiesMeleeCount = #EnemiesMelee
		  Enemies40yCount = RangedTargetCount(40)
		else
		  EnemiesMeleeCount = 1
		  Enemies40yCount = 1
		end
	  
		-- Calculate fight_remains
		if true then
		  -- Calculate fight_remains
		  BossFightRemains = HL.BossFightRemains()
		  FightRemains = BossFightRemains
		  if FightRemains == 11111 then
			FightRemains = HL.FightRemains(EnemiesMelee, false)
		  end
	  
		  -- Check our Maelstrom Weapon buff stacks
		  MaelstromStacks = Player:BuffStack(S.MaelstromWeaponBuff)
	  
		  -- Variables from Precombat
		  -- variable,name=min_talented_cd_remains,value=((cooldown.feral_spirit.remains%(4*talent.witch_doctors_ancestry.enabled))+1000*!talent.feral_spirit.enabled)>?(cooldown.doom_winds.remains+1000*!talent.doom_winds.enabled)>?(cooldown.ascendance.remains+1000*!talent.ascendance.enabled)
		  VarMinTalentedCDRemains = mathmin(((S.FeralSpirit:CooldownRemains() / (4 * num(S.WitchDoctorsAncestry:IsAvailable()))) + 1000 * num(not S.FeralSpirit:IsAvailable())), (S.DoomWinds:CooldownRemains() + 1000 * num(not S.DoomWinds:IsAvailable())), (S.Ascendance:CooldownRemains() + 1000 * num(not S.Ascendance:IsAvailable())))
		  -- variable,name=target_nature_mod,value=(1+debuff.chaos_brand.up*debuff.chaos_brand.value)*(1+(debuff.hunters_mark.up*target.health.pct>=80)*debuff.hunters_mark.value)
		  VarTargetNatureMod = (1 + num(Target:DebuffUp(S.ChaosBrandDebuff)) * 0.05) * (1 + num(Target:DebuffUp(S.HuntersMarkDebuff) and Target:HealthPercentage() >= 80) * 0.05)
		  -- variable,name=expected_lb_funnel,value=action.lightning_bolt.damage*(1+debuff.lightning_rod.up*variable.target_nature_mod*(1+buff.primordial_wave.up*active_dot.flame_shock*buff.primordial_wave.value)*debuff.lightning_rod.value)
		  local PWValue = 1.75 * S.LightningBolt:Damage()
		  local LRValue = 0.2 * S.LightningBolt:Damage() * (Target:DebuffUp(S.LightningRodDebuff) and 1.75 or 1)
		  VarExpectedLBFunnel = S.LightningBolt:Damage() * (1 + num(Target:DebuffUp(S.LightningRodDebuff)) * VarTargetNatureMod * (1 + num(Player:BuffUp(S.PrimordialWaveBuff)) * S.FlameShockDebuff:AuraActiveCount() * PWValue) * LRValue)
		  -- variable,name=expected_cl_funnel,value=action.chain_lightning.damage*(1+debuff.lightning_rod.up*variable.target_nature_mod*(active_enemies>?(3+2*talent.crashing_storms.enabled))*debuff.lightning_rod.value)
		  VarExpectedCLFunnel = S.ChainLightning:Damage() * (1 + num(Target:DebuffUp(S.LightningRodDebuff)) * VarTargetNatureMod * mathmin(EnemiesMeleeCount, 3 + 2 * num(S.CrashingStorms:IsAvailable())) * LRValue)
		end
	  
		-- Update Thorim's Invocation
		if Player:AffectingCombat() then
		  if Player:PrevGCD(1, S.ChainLightning) then
			TIAction = S.ChainLightning
		  elseif Player:PrevGCD(1, S.LightningBolt) then
			TIAction = S.LightningBolt
		  end
		end
	  
	   -- Shield Handling
		-- if true then
		--   local EarthShieldBuff = (S.ElementalOrbit:IsAvailable()) and S.EarthShieldSelfBuff or S.EarthShieldOtherBuff
		--   if ((S.ElementalOrbit:IsAvailable()) and S.EarthShield:IsCastable() and (Player:BuffDown(EarthShieldBuff) or (not Player:AffectingCombat() and Player:BuffStack(EarthShieldBuff) < 5))) then
		-- 	if Cast(S.EarthShield) then return "earth_shield shields 2"; end
		--   elseif (S.ElementalOrbit:IsAvailable()) and S.LightningShield:IsCastable() and Player:BuffDown(S.LightningShield) then
		-- 	if Cast(S.LightningShield) then return "lightning_shield shields 4"; end
		--   end
		-- end

		if Player:BuffDown(S.LightningShieldBuff) then
			if Cast(S.LightningShield) then return end
		end
	  
		-- Weapon Buff Handling
		if true then
		  -- Check weapon enchants
		  HasMainHandEnchant, MHEnchantTimeRemains, _, MHEnchantID, HasOffHandEnchant, OHEnchantTimeRemains, _, OHEnchantID = GetWeaponEnchantInfo()
		  -- windfury_weapon
		  if (not HasMainHandEnchant or MHEnchantTimeRemains < 600000 or MHEnchantID ~= 5401) and S.WindfuryWeapon:IsCastable() then
			if Cast(S.WindfuryWeapon) then return "windfury_weapon enchants 2"; end
		  end
		  -- flametongue_weapon
		  if (not HasOffHandEnchant or OHEnchantTimeRemains < 600000 or OHEnchantID ~= 5400) and S.FlametongueWeapon:IsCastable() then
			if Cast(S.FlametongueWeapon) then return "flametongue_weapon enchants 4"; end
		  end
		end

		if Player:AffectingCombat() and Player:HealthPercentageFlat() <= 35 and
			Player:BuffDown(S.AstralShift) and Player:BuffDown(S.StoneBulwarkTotem) then

			if S.AstralShift:IsCastable()  then
				if Cast(S.AstralShift) then return end
			end
			if S.StoneBulwarkTotem:IsCastable()  then
				if Cast(S.StoneBulwarkTotem) then return end
			end

		end

		if S.EarthElemental:IsCastable() and Player:AffectingCombat() and Player:IsTankingAoE(40) and Player:HealthPercentageFlat() <= 80 then
			if Cast(S.EarthElemental) then return end
		end

		-- Manually added: Heal based on user setting values. If *EITHER* setting is set to 0, healing suggestions will be disabled.
		if S.HealingSurge:IsCastable() and (MaelstromStacks >= 5 and Player:HealthPercentage() < 50) then
			if Cast(S.HealingSurge) then return "self healing required"; end
		end

		if S.SurgingTotem2:IsCastable() and Target:IsInMeleeRange(5) and not Player:IsMoving() and MainAddon.TargetIsValid() then
			if Cast(S.SurgingTotem2) then return end
		end

		if not MainAddon.TargetIsValid() then
			if S.GhostWolf:IsCastable() and Player:IsMoving() and Player:BuffDown(S.GhostWolf) then 
				if Cast(S.GhostWolf) then return end
			end
		end
	  
		if MainAddon.TargetIsValid() then
		  -- bloodlust,line_cd=600
		  -- Not adding this, as when to use Bloodlust will vary fight to fight
		  -- potion,if=(buff.ascendance.up|buff.feral_spirit.up|buff.doom_winds.up|(fight_remains%%300<=30)|(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))
		  -- wind_shear
		  -- auto_attack
		  if Target:IsInMeleeRange(5) then
				-- use_item,name=elementium_pocket_anvil,use_off_gcd=1
				-- use_item,name=algethar_puzzle_box,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)|(talent.ascendance.enabled&(cooldown.ascendance.remains<2*action.stormstrike.gcd))|(fight_remains%%180<=30)
				-- Note: Skipping these trinkets. They're old DF trinkets that nobody would be using in 11.1.
				-- use_item,slot=trinket1,if=!variable.trinket1_is_weird&trinket.1.has_use_buff&(buff.ascendance.up|buff.feral_spirit.up|buff.doom_winds.up|(fight_remains%%trinket.1.cooldown.duration<=trinket.1.buff.any.duration)|(variable.min_talented_cd_remains>=trinket.1.cooldown.duration)|(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))
				if Trinket1 and Target:IsInRange(VarTrinket1Range) and Trinket1:IsReady() and not VarTrinket1Ex and not Player:IsItemBlacklisted(Trinket1) and (not VarTrinket1IsWeird and Trinket1:HasUseBuff() and (Player:BuffUp(S.AscendanceBuff) or Player:BuffUp(S.FeralSpiritBuff) or Player:BuffUp(S.DoomWindsBuff) or (FightRemains % VarTrinket1CD <= Trinket1:BuffDuration()) or (VarMinTalentedCDRemains >= VarTrinket1CD) or (not S.Ascendance:IsAvailable() and not S.FeralSpirit:IsAvailable() and not S.DoomWinds:IsAvailable()))) then
				if Cast(Trinket1) then return "trinket1 main 8"; end
				end
				-- use_item,slot=trinket2,if=!variable.trinket2_is_weird&trinket.2.has_use_buff&(buff.ascendance.up|buff.feral_spirit.up|buff.doom_winds.up|(fight_remains%%trinket.2.cooldown.duration<=trinket.2.buff.any.duration)|(variable.min_talented_cd_remains>=trinket.2.cooldown.duration)|(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))
				if Trinket2 and Target:IsInRange(VarTrinket2Range) and Trinket2:IsReady() and not VarTrinket2Ex and not Player:IsItemBlacklisted(Trinket2) and (not VarTrinket2IsWeird and Trinket2:HasUseBuff() and (Player:BuffUp(S.AscendanceBuff) or Player:BuffUp(S.FeralSpiritBuff) or Player:BuffUp(S.DoomWindsBuff) or (FightRemains % VarTrinket2CD <= Trinket2:BuffDuration()) or (VarMinTalentedCDRemains >= VarTrinket2CD) or (not S.Ascendance:IsAvailable() and not S.FeralSpirit:IsAvailable() and not S.DoomWinds:IsAvailable()))) then
				if Cast(Trinket2) then return "trinket2 main 10"; end
				end
				-- use_item,name=beacon_to_the_beyond,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)|(fight_remains%%150<=5)
				-- use_item,name=manic_grieftorch,use_off_gcd=1,if=(!buff.ascendance.up&!buff.feral_spirit.up&!buff.doom_winds.up)|(fight_remains%%120<=5)
				-- Note: More old DF trinkets.
				-- use_item,slot=trinket1,if=!variable.trinket1_is_weird&!trinket.1.has_use_buff
				if Trinket1 and Target:IsInRange(VarTrinket1Range) and Trinket1:IsReady() and not VarTrinket1Ex and not Player:IsItemBlacklisted(Trinket1) and (not VarTrinket1IsWeird and not Trinket1:HasUseBuff()) then
				if Cast(Trinket1) then return "trinket1 main 16"; end
				end
				-- use_item,slot=trinket2,if=!variable.trinket2_is_weird&!trinket.2.has_use_buff
				if Trinket2 and Target:IsInRange(VarTrinket2Range) and Trinket2:IsReady() and not VarTrinket2Ex and not Player:IsItemBlacklisted(Trinket2) and (not VarTrinket2IsWeird and not Trinket2:HasUseBuff()) then
				if Cast(Trinket2) then return "trinket2 main 18"; end
				end
		  end
		  if (CDsON()) then
			-- blood_fury,if=(buff.ascendance.up|buff.feral_spirit.up|buff.doom_winds.up|(fight_remains%%action.blood_fury.cooldown<=action.blood_fury.duration)|(variable.min_talented_cd_remains>=action.blood_fury.cooldown)|(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))
			if S.BloodFury:IsCastable() and (Player:BuffUp(S.AscendanceBuff) or Player:BuffUp(S.FeralSpiritBuff) or Player:BuffUp(S.DoomWindsBuff) or (FightRemains % 120 <= 15) or (VarMinTalentedCDRemains >= 120) or (not S.Ascendance:IsAvailable() and not S.FeralSpirit:IsAvailable() and not S.DoomWinds:IsAvailable())) then
			  if Cast(S.BloodFury) then return "blood_fury racial"; end
			end
			-- berserking,if=(buff.ascendance.up|buff.feral_spirit.up|buff.doom_winds.up|(fight_remains%%action.berserking.cooldown<=action.berserking.duration)|(variable.min_talented_cd_remains>=action.berserking.cooldown)|(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))
			if S.Berserking:IsCastable() and (Player:BuffUp(S.AscendanceBuff) or Player:BuffUp(S.FeralSpiritBuff) or Player:BuffUp(S.DoomWindsBuff) or (FightRemains % 180 <= 12) or (VarMinTalentedCDRemains >= 180) or (not S.Ascendance:IsAvailable() and not S.FeralSpirit:IsAvailable() and not S.DoomWinds:IsAvailable())) then
			  if Cast(S.Berserking) then return "berserking racial"; end
			end
			-- fireblood,if=(buff.ascendance.up|buff.feral_spirit.up|buff.doom_winds.up|(fight_remains%%action.fireblood.cooldown<=action.fireblood.duration)|(variable.min_talented_cd_remains>=action.fireblood.cooldown)|(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))
			if S.Fireblood:IsCastable() and (Player:BuffUp(S.AscendanceBuff) or Player:BuffUp(S.FeralSpiritBuff) or Player:BuffUp(S.DoomWindsBuff) or (FightRemains % 120 <= 8) or (VarMinTalentedCDRemains >= 120) or (not S.Ascendance:IsAvailable() and not S.FeralSpirit:IsAvailable() and not S.DoomWinds:IsAvailable())) then
			  if Cast(S.Fireblood) then return "fireblood racial"; end
			end
			-- ancestral_call,if=(buff.ascendance.up|buff.feral_spirit.up|buff.doom_winds.up|(fight_remains%%action.ancestral_call.cooldown<=action.ancestral_call.duration)|(variable.min_talented_cd_remains>=action.ancestral_call.cooldown)|(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))
			if S.AncestralCall:IsCastable() and (Player:BuffUp(S.AscendanceBuff) or Player:BuffUp(S.FeralSpiritBuff) or Player:BuffUp(S.DoomWindsBuff) or (FightRemains % 120 <= 15) or (VarMinTalentedCDRemains >= 120) or (not S.Ascendance:IsAvailable() and not S.FeralSpirit:IsAvailable() and not S.DoomWinds:IsAvailable())) then
			  if Cast(S.AncestralCall) then return "ancestral_call racial"; end
			end
		  end
		  -- invoke_external_buff,name=power_infusion,if=(buff.ascendance.up|buff.feral_spirit.up|buff.doom_winds.up|(fight_remains%%120<=20)|(variable.min_talented_cd_remains>=120)|(!talent.ascendance.enabled&!talent.feral_spirit.enabled&!talent.doom_winds.enabled))
		  -- Note: Not handling external PI.
		  -- call_action_list,name=single,if=active_enemies=1&!talent.surging_totem.enabled
		  if EnemiesMeleeCount < 2 and not S.SurgingTotem:IsAvailable() then
			local ShouldReturn = Single(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- call_action_list,name=single_totemic,if=active_enemies=1&talent.surging_totem.enabled
		  if EnemiesMeleeCount < 2 and S.SurgingTotem:IsAvailable() then
			local ShouldReturn = SingleTotemic(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- call_action_list,name=aoe,if=active_enemies>1&(rotation.standard|rotation.simple)&!talent.surging_totem.enabled
		  -- call_action_list,name=aoe_totemic,if=active_enemies>1&(rotation.standard|rotation.simple)&talent.surging_totem.enabled
		  -- call_action_list,name=funnel,if=active_enemies>1&rotation.funnel
		  if AoEON() and EnemiesMeleeCount > 1 then
			if true then
			  if not S.SurgingTotem:IsAvailable() then
				local ShouldReturn = Aoe(); if ShouldReturn then return ShouldReturn; end
			  else
				local ShouldReturn = AoeTotemic(); if ShouldReturn then return ShouldReturn; end
			  end
			else
			--   local ShouldReturn = Funnel(); if ShouldReturn then return ShouldReturn; end
			end
		  end
		  -- If nothing else to do, show the Pool icon
		  if Cast(S.Pool) then return "Wait/Pool Resources"; end
		end
	end
	

	
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
