local function MyRoutine()
	local Author = 'Restoration Shaman'
	local SpecID = 264 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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
	local CastTargetIfAlly = MainAddon.CastTargetIfAlly;
	local CastCycle = MainAddon.CastCycle;
	local CastAlly = MainAddon.CastAlly;
	local Enemies10ySplash, EnemiesCount10ySplash
	local mathmax    = math.max
	local mathmin    = math.min
	local TANKS, HEALERS, MEMBERS, DPS, PRIORITY;
	local WeaponEnchant = GetWeaponEnchantInfo;



	--ALL SPELLS ARE LOCATED ON Rotations/CLASS_SPELL.lua, if one is missing tells us about it.
	local S = {

		-- Racials
		AncestralCall = Spell(274738),
		BagofTricks = Spell(312411),
		Berserking = Spell(26297),
		BloodFury = Spell(33697),
		Fireblood = Spell(265221),
		-- Abilities
		Bloodlust = MultiSpell(2825, 32182), -- Bloodlust/Heroism
		FlameShock = Spell(470411),
		FlametongueWeapon = Spell(318038),
		FrostShock = Spell(196840),
		HealingSurge = Spell(8004),
		LightningBolt = Spell(188196),
		LightningShield = Spell(192106),
		-- Talents
		AstralShift = Spell(108271),
		CapacitorTotem = Spell(192058),
		ChainLightning = Spell(188443),
		EarthElemental = Spell(198103),
		EarthShield = Spell(974),
		ElementalBlast = Spell(117014),
		ElementalOrbit = Spell(383010),
		LavaBurst = Spell(51505),
		DeeplyRootedElements = Spell(378270),
		NaturesSwiftness = Spell(378081),
		PrimordialWave = Spell(375982),
		SpiritwalkersGrace = Spell(79206),
		TotemicRecall = Spell(108285),
		WindShear = Spell(57994),
		-- Buffs
		EarthShieldOtherBuff = Spell(974),
		EarthShieldSelfBuff = Spell(383648),
		LightningShieldBuff = Spell(192106),
		PrimordialWaveBuff = Spell(375986),
		SpiritwalkersGraceBuff = Spell(79206),
		SplinteredElementsBuff = Spell(382043),
		-- Debuffs
		FlameShockDebuff = Spell(188389),
		LightningRodDebuff = Spell(197209),
		-- Other Class Debuffs
		ChaosBrandDebuff = Spell(1490),
		HuntersMarkDebuff = Spell(257284),
		-- Trinket Effects
		SpymastersReportBuff = Spell(451199), -- Stacking buff from before using Spymaster's Web trinket
		SpymastersWebBuff = Spell(444959), -- Buff from using Spymaster's Web trinket
		-- CUSTOM
		ThunderStorm = Spell(51490),
		Hex = Spell(51514),
		GreaterPurge = Spell(378773),
		Purge = Spell(370),
		CleanseSpirit = Spell(51886),
		TotemicProjection = Spell(108287),
		GhostWolf = Spell(2645),
		HealingStreamTotem = Spell(5394),
		HealingSurge = Spell(8004),
		ThunderShock = Spell(378779),
		EarthShieldBuff = Spell(383648),
		AncestralGuidance = Spell(108281),
		FlametongueWeapon = Spell(318038),
		SkyFury = Spell(462854),


		-- Talents
		AncestralSwiftness = Spell(443454),
		PrimordialCapacity = Spell(443448),
		ElementalReverb = Spell(443418),


		-- Talents
		AmplificationCore = Spell(445029),
		Earthsurge = Spell(455590),
		LivelyTotems = Spell(445034),
		SurgingTotem = Spell(444995),
		TotemicRebound = Spell(445025),

		-- Custom
		PurifySpirit = Spell(77130),
		ImprovedPurifySpirit = Spell(383016),
		ElementalOrbit = Spell(383010),
		HealingSurge = Spell(8004),
		AstralShift = Spell(108271),
		ChainLightning = Spell(188443),
		LavaBurst = Spell(51505),
		ChainHeal = Spell(1064),
		SpiritwalkersGrace = Spell(79206),
		WindShear = Spell(57994),
		TremorTotem = Spell(8143),
		CapacitorTotem = Spell(192058),
		FrostShock = Spell(196840),
		Purge = Spell(370),
		GreaterPurge = Spell(378773),
		Hex = Spell(51514),
		TotemicProjection = Spell(108287),
		EarthgrabTotem = Spell(51485),
		WindRushTotem = Spell(192077),
		SpiritWalk = Spell(58875),
		GustofWind = Spell(192063),
		TotemicRecall = Spell(108285),
		PoisonCleansingTotem = Spell(383013),
		StoneskinTotem = Spell(383017),
		TranquilAirTotem = Spell(383019),
		LightningLasso = Spell(305483),
		Thunderstorm = Spell(51490),
		NaturesSwiftness = Spell(378081),
		EarthShield = Spell(974),
		FlameShock = MultiSpell(188389,470411),
		LightningBolt = Spell(188196),
		PrimalTideCore = Spell(382045),
		ReactiveWarding = Spell(462454),
		Tidewaters = Spell(462424),
		Downpour = Spell(462603),
		DownpourBuff = Spell(462488),
		HealingStreamTotem = Spell(5394),
		Stormkeeper = Spell(383009),
		HealingWave = Spell(77472),
		Riptide = Spell(61295),
		HealingTideTotem = Spell(108280),
		SpiritLinkTotem = Spell(98008),
		PrimordialWave = MultiSpell(375982, 428332),
		UnleashLife = Spell(73685),
		HealingRain = Spell(73920),
		HealingRainBuff = MultiSpell(73920, 456366),
		AcidRain = Spell(378443),
		ManaTideTotem = Spell(16191),
		EarthenWallTotem = Spell(198838),
		AncestralProtectionTotem = Spell(207399),
		CloudburstTotem = Spell(157153),
		EarthlivingWeapon = Spell(382021),
		Wellspring = Spell(197995),
		Ascendance = Spell(114052),
		LavaSurge = Spell(77756),
		Undercurrent = Spell(382194),
		Undulation = Spell(200071),
		RecallCloudburstTotem = Spell(201764),
		Tidebringer = Spell(236501),
		HighTide = Spell(157154),
		WaterShield = Spell(52127),
		AncestralReach = Spell(382732),
		FlowoftheTides = Spell(382039),
		StoneBulwarkTotem = Spell(108270),
		-- Buffs
		UndercurrentBuff = Spell(383235),
		TidalWaves = Spell(53390),
		UndulationBuff = Spell(216251),
		UnleashLifeBuff = Spell(73685),
		PrimordialWaveBuff = Spell(375986),
		WaterShieldBuff = Spell(52127),
		EarthShieldBuff = Spell(383648),
		EarthShieldBuff2 = Spell(974),
		TidebringerBuff = Spell(236502),
		HighTideBuff = Spell(288675),
		CloudburstTotemBuff = Spell(157504),
		StoneskinTotemBuff = Spell(383018),
		TideCallersGaurd = Spell(457481),
	
		-- PvP
		StaticFieldTotem = Spell(355580),
		GroundingTotem = Spell(204336),
		UnleashShield = Spell(356736),
		CounterstrikeTotem = Spell(204331),
		SkyfuryTotem = Spell(204330),
		EtherealForm = Spell(210918),

		-- Debuff
		EnvelopingShadowflame = Spell(451224),
		CurseOfEntropy = Spell(450095),
		CorruptedCoating = Spell(442285),
		VoidRift = Spell(440313),

		--
		MasteroftheElements = Spell(462375),
		MasteroftheElementsBuff = Spell(462377),
		LavaSurgeProc = Spell(77762),
		
	
	}

	local OnUseExcludes = {
		-- I.ItemName:ID(),
	}


	
	local function TargetIsValid()
		return (Player:AffectingCombat() and Target:Exists() and 
		Player:CanAttack(Target) and not Target:IsDeadOrGhost() and 
		(Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	end

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

	MainAddon.Toggle.Special["ForceHeal"] = {
		Icon = MainAddon.GetTexture(S.HealingSurge),
		Name = "Force Heal",
		Description = "Avoid wasting HP on dps spells."
	}
	local function Init()
		message( 'Shammy Sallamy', 1)
		MainAddon:Print('RollfaceX')
	end

	local function TargetFunc(UnitTarget)
		return UnitTarget:HealthPercentage() < 100
	end;

	local function TotemFinder(Totem)
		for i = 1, 6, 1 do
		  local _, TotemName = Player:GetTotemInfo(i)
		  if Totem:Name() == TotemName then
			return true
		  end
		end
	end

	local function EarthShieldFunc()
		local EarthShieldParty = 0;
		for Earth_shield1, Earth_shield2 in pairs(MEMBERS) do
			if (Earth_shield2:BuffUp(S.EarthShieldBuff) or Earth_shield2:BuffUp(S.EarthShieldBuff2)) and not Earth_shield2:IsUnit(Player) then
				EarthShieldParty = EarthShieldParty + 1
			end
		end;
		return EarthShieldParty
	end;

	local function EarthShieldFunc2(UnitTarget)
		return UnitTarget:BuffDown(S.EarthShieldBuff) and UnitTarget:BuffDown(S.EarthShieldBuff)
	end;

	local function RiptideFunc(UnitTarget)
		return UnitTarget:BuffDown(S.Riptide) and UnitTarget:HealthPercentage() <= 100
	end;

	local function HealingWaveFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 75 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating)
	end;

	local function HealingSurgeFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 50 
	end;

	local function UnleashLifeFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 95 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating)
	end;
	
	local function MainRotation()

		if Player:IsCasting() then return end

		TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()

		-- Unit Update
		Enemies10ySplash = Target:GetEnemiesInSplashRange(8)
		if AoEON() then
		  EnemiesCount10ySplash = Target:GetEnemiesInSplashRangeCount(8)
		else
		  EnemiesCount10ySplash = 1
		end
	
		if S.AstralShift:IsCastable() and Player:AffectingCombat() and Player:HealthPercentageFlat() <= 50 then
			if Cast(S.AstralShift) then return end
		end

		if S.EarthElemental:IsCastable() and Player:AffectingCombat() and Player:IsTankingAoE(40) and Player:HealthPercentageFlat() <= 65 then
			if Cast(S.EarthElemental) then return end
		end


		if Player:BuffUp(S.AncestralCall) or Player:BuffUp(S.Ascendance) and Player:AffectingCombat() then
			local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes)
			if ItemToUse and Target:IsInRange(ItemRange) then
			  local DisplayStyle = true
			  if ItemSlot ~= 13 and ItemSlot ~= 14 then DisplayStyle = true end
			  if ((ItemSlot == 13 or ItemSlot == 14) and true) or (ItemSlot ~= 13 and ItemSlot ~= 14 and true) then
				if Cast(ItemToUse) then return "Generic use_items for " .. ItemToUse:Name(); end
			  end
			end

			if S.BloodFury:IsCastable() then
				if Cast(S.BloodFury) then return "blood_fury main 2"; end
			end
		
			if S.Berserking:IsCastable() then
				if Cast(S.Berserking) then return "berserking main 4"; end
			end
		
			if S.Fireblood:IsCastable() then
				if Cast(S.Fireblood) then return "fireblood main 6"; end
			end
			
			if S.AncestralCall:IsCastable() then
				if Cast(S.AncestralCall) then return "ancestral_call main 8"; end
			end
			
			if S.BagofTricks:IsCastable() then
				if Cast(S.BagofTricks) then return "bag_of_tricks main 10"; end
			end

		end

		if Player:BuffDown(S.AncestralGuidance) and 
			Player:BuffDown(S.Ascendance) and 
			not TotemFinder(S.HealingTideTotem) then
				
				if S.AncestralGuidance:IsCastable() and (HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 or HealingEngine:MembersUnderPercentage(85, nil, 30) >= 4) then
					if Cast(S.AncestralGuidance) then return end
			elseif S.Ascendance:IsCastable() and (HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 or HealingEngine:MembersUnderPercentage(85, nil, 30) >= 4) then 
					if Cast(S.Ascendance) then return end
			elseif S.HealingTideTotem:IsCastable() and (HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 or HealingEngine:MembersUnderPercentage(85, nil, 30) >= 4) then
					if Cast(S.HealingTideTotem) then return end
			end
			
		end

		if S.TotemicRecall:IsCastable() and (S.CloudburstTotem:Charges() == 0 or S.HealingStreamTotem:Charges() == 0) and HealingEngine:MembersUnderPercentage(65, nil, 30) >= 3 then
			if Cast(S.TotemicRecall) then return end
		end

		if S.NaturesSwiftness:IsCastable() and Player:BuffDown(S.NaturesSwiftness) and HealingEngine.LowestHP(true, 30) <= 35 then
			if Cast(S.NaturesSwiftness) then return end
		end

		if Player:AffectingCombat() then
			if S.Downpour:IsCastable() and HealingEngine:MembersUnderPercentage(85, nil, 8) >= 3 then
				if Cast(S.Downpour) then return end
			end
		end

		 if Player:AffectingCombat() then
			 if (Player:BuffDown(S.HealingRainBuff)) and MouseOver:Exists()  then
				 if Cast(S.SurgingTotem) then return end
			 end
		 end

		if (HealingEngine:MembersUnderPercentage(85, nil, 30) >= 3 and Player:BuffUp(S.HighTideBuff) or HealingEngine:MembersUnderPercentage(50, nil, 30) >= 3) or 
			(Player:BuffUp(S.HighTideBuff) and (HealingEngine:DebuffTotal(S.EnvelopingShadowflame, 30) >= 3 or HealingEngine:DebuffTotal(S.VoidRift, 30) >= 3 or 
			HealingEngine:DebuffTotal(S.CurseOfEntropy, 30) >= 3 or HealingEngine:DebuffTotal(S.CorruptedCoating, 30) >= 3)) then

			if S.HealingStreamTotem:IsCastable() and S.LivelyTotems:IsAvailable() then
				if Cast(S.HealingStreamTotem) then return end
			end

			if S.CloudburstTotem:IsCastable() and S.LivelyTotems:IsAvailable() and not TotemFinder(S.CloudburstTotem) then
				if Cast(S.CloudburstTotem) then return end
			end

			if S.ChainHeal:IsCastable() and Player:BuffUp(S.TidalWaves) then
				if S.NaturesSwiftness:IsCastable() and Player:BuffDown(S.NaturesSwiftness) and HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 then
					if Cast(S.NaturesSwiftness) then return end
				end
				if MainAddon.CastCycleAlly(S.ChainHeal, MEMBERS, TargetFunc) then return end
			end
		end

		if S.HealingSurge:IsCastable() and Player:BuffUp(S.TidalWaves) then
			if MainAddon.CastCycleAlly(S.HealingSurge, MEMBERS, HealingSurgeFunc) then return end
		end

		-- if S.HealingStreamTotem:IsCastable() and HealingEngine.LowestHP(true, 30) <= 95 and S.HealingStreamTotem:ChargesFractional() >= 1.8 and not Player:BuffUp(S.LivelyTotems)  then
		-- 	if Cast(S.HealingStreamTotem) then return end
		-- end

		if S.CloudburstTotem:IsCastable() and S.CloudburstTotem:ChargesFractional() >= 1.8 and not TotemFinder(S.CloudburstTotem) and HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 then
			if Cast(S.CloudburstTotem) then return end
		end

		if S.UnleashLife:IsCastable() then
			if MainAddon.CastCycleAlly(S.UnleashLife, MEMBERS, UnleashLifeFunc) then return end
		end

		if TargetIsValid() and S.MasteroftheElements:IsAvailable() and HealingEngine:LowestHP() >= 75 then
			if S.LavaBurst:IsReady() and (Player:BuffRemains(S.MasteroftheElementsBuff) <= 8) then
				if Cast(S.LavaBurst) then return end
			end
		end

		if S.HealingWave:IsCastable() and Player:BuffUp(S.TidalWaves) then
			if MainAddon.CastCycleAlly(S.HealingWave, MEMBERS, HealingWaveFunc) then return end
		end

		if S.Riptide:IsCastable() and (Player:AffectingCombat() or HealingEngine:LowestHP() < 100) and Player:BuffDown(S.TidalWaves) then
			if MainAddon.CastCycleAlly(S.Riptide, MEMBERS, RiptideFunc) then return end
		end

		if S.WaterShield:IsCastable() and Player:BuffDown(S.WaterShieldBuff) then
			if Cast(S.WaterShield) then return end
		end

		if S.EarthShield:IsCastable() and Player:BuffDown(S.EarthShieldBuff) then
			if Cast(S.EarthShield, Player) then return end
		end

		if S.EarthShield:IsCastable() and EarthShieldFunc() == 0 then
			if MainAddon.CastCycleAlly(S.EarthShield, TANKS, EarthShieldFunc2) then return end
		end

		if S.EarthlivingWeapon:IsReady(Player) then
			local Weapon1, Weapon2 = WeaponEnchant()
			if not Weapon1 then
				if Cast(S.EarthlivingWeapon) then
					return 
				end
			end
		end

		if TargetIsValid() and not MainAddon.Toggle:GetToggle("ForceHeal") and HealingEngine:LowestHP() >= 75 then
			if S.ChainLightning:IsReady() and EnemiesCount10ySplash >= 2 then
				if Cast(S.ChainLightning) then return end
			end
			if S.FlameShock:IsReady() and Target:DebuffRefreshable(S.FlameShockDebuff) then
				if Cast(S.FlameShock) then return end
			end
			if S.LavaBurst:IsReady() then
				if Cast(S.LavaBurst) then return end
			end
			if S.LightningBolt:IsReady() then 
				if Cast(S.LightningBolt) then return end
			end
		end		
	end

	
	MainAddon.SetCustomAPL(Author, SpecID, MainRotation, Init)

	local IsCastable;
	IsCastable = HL.AddCoreOverride("Spell.IsCastable", function(self, ignoreSettings, ignoreMovement, bypassRecovery, ignoreChannel)
		if Player:IsMoving() and Player:BuffUp(S.SpiritwalkersGrace) then
			ignoreMovement = true
		end;
		if S.Tidebringer:IsAvailable() and self == S.ChainHeal then
			if not Player:BuffUp(S.TidebringerBuff) then
				return false, 'Tidebringer Fail'
			end
		end;
		if MainAddon.Toggle:GetToggle("PrimalTideCorePooling") and S.PrimalTideCore:IsAvailable() and self == S.Riptide then
			return false, 'Pooling for PrimalTideCorePooling'
		end;
		if self == S.HealingSurge or self == S.HealingWave or self == S.ChainHeal then
			if Player:IsCasting(self) then
				return false, "Casting"
			end
		end;
		local BaseCheck, Reason = IsCastable(self, ignoreSettings, ignoreMovement, bypassRecovery, ignoreChannel)
		return BaseCheck, Reason
	end, 264)

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
