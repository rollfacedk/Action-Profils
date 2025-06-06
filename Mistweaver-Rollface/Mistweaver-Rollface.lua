local function MyRoutine()

	-- Mistweaver-Rollface MWRollface
	local Author = 'Mistweaver-Rollface'
	local SpecID = 270 --Unholy --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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

	--ALL SPELLS ARE LOCATED ON Rotations/CLASS_SPELL.lua, if one is missing tells us about it.
	local S = {
	 -- Racials
		AncestralCall = Spell(274738),
		ArcanePulse = Spell(260364),
		ArcaneTorrent = Spell(25046),
		AzeriteSurge = Spell(436344),
		BagofTricks = Spell(312411),
		Berserking = Spell(26297),
		BloodFury = Spell(20572),
		GiftoftheNaaru = Spell(59547),
		Haymaker = Spell(287712),
		Fireblood = Spell(265221),
		LightsJudgment = Spell(255647),
		QuakingPalm = Spell(107079),
		RocketBarrage = Spell(69041),
		Shadowmeld = Spell(58984),
		-- Abilities
		CracklingJadeLightning = Spell(117952),
		ExpelHarm = Spell(322101),
		LegSweep = Spell(119381),
		Provoke = Spell(115546),
		Resuscitate = Spell(115178),
		RisingSunKick = MultiSpell(107428, 467307),
		RushingWingKick = Spell(467307),
		Roll = Spell(109132),
		TigerPalm = Spell(100780),
		TouchofDeath = Spell(322109),
		Transcendence = Spell(101643),
		TranscendenceTransfer = Spell(119996),
		Vivify = Spell(116670),
		-- Talents
		BonedustBrew = Spell(386276),
		Celerity = Spell(115173),
		ChiBurst = Spell(123986),
		ChiTorpedo = Spell(115008),
		ChiWave = Spell(115098),
		DampenHarm = Spell(122278),
		Detox = Spell(218164),
		Disable = Spell(116095),
		DiffuseMagic = Spell(122783),
		EyeoftheTiger = Spell(196607),
		FastFeet = Spell(388809),
		ImpTouchofDeath = Spell(322113),
		InnerStrengthBuff = Spell(261769),
		Paralysis = Spell(115078),
		RingofPeace = Spell(116844),
		RushingJadeWind = Spell(116847),
		SpearHandStrike = Spell(116705),
		StrengthofSpirit = Spell(387276),
		SummonWhiteTigerStatue = Spell(388686),
		TigerTailSweep = Spell(264348),
		TigersLust = Spell(116841),
		-- Buffs
		BonedustBrewBuff = Spell(386276),
		BonedustBrewDebuff = Spell(386276),
		DampenHarmBuff = Spell(122278),
		PressurePointBuff = Spell(393053),
		RushingJadeWindBuff = Spell(116847),
		VivaciousVivificationBuff = Spell(392883),
		-- Debuffs
		-- Item Effects
		CalltoDominanceBuff = Spell(403380), -- Neltharion trinket buff
		DomineeringArroganceBuff = Spell(411661), -- Neltharion trinket buff2
		TheEmperorsCapacitorBuff = Spell(235054),
		-- Misc
		PoolEnergy = Spell(999910),
		StopFoF = Spell(363653),

		-- Talents
		CelestialConduit = Spell(443028),
		StrengthoftheBlackOx = Spell(443110),
		-- Buffs
		StrengthoftheBlackOxBuff = Spell(443112),
		HeartoftheJadeSerpentBuff = Spell(456368),
		HeartoftheJadeSerpentCDRBuff = Spell(443421),
		HeartoftheJadeSerpentCDRCelestialBuff = Spell(443616),

		



		-- Abilities
		EssenceFont = Spell(191837),
		Revival = MultiSpell(115310, 388615),
		SoothingMist = Spell(115175),
		ThunderFocusTea = Spell(116680),
		RenewingMist = Spell(115151),
		EnvelopingMist = Spell(124682),
		BlackoutKick = Spell(100784),
		SpinningCraneKick = Spell(101546),
		ChiBurst = Spell(461404),
		LifeCocoon = Spell(116849),
		Yulonbaby = Spell(389422),
		-- Talents
		InvokeYulonTheJadeSerpent = Spell(322118),
		InvokeChiJiTheRedCrane = Spell(325197),
		SheilunsGift = Spell(399491),
		ManaTea = Spell(115294),
		ChiHarmony = Spell(448392),
		SecretInfusion = Spell(388491),
		RisingMist = Spell(274909),
		JadefireStomp = Spell(388193),
		SummonJadeSerpentStatue = Spell(115313),
		ImprovedTouchofDeath = Spell(322113),
		PeerIntoPeace = Spell(440008),
		-- Buffs
		ZenPulseBuff = Spell(198487),
		InvokeYulonTheJadeSerpentBuff = Spell(322118),
		RenewingMistBuff = Spell(119611),
		AwakenedFaelineBuff = Spell(389387),
		AwakenedFaeline = Spell(388779),


		-- CUSTOM
		TeachingsoftheMonasteryBuff = Spell(202090),
		DanceofChijiBuff = Spell(438443),
		InvokeChiJiBuff = Spell(343820),
		FortifyingBrew = Spell(115203),
		ChiBurst = Spell(123986),
		AspectOfHarmony = Spell(450508),
		AspectOfHarmonyBuff = MultiSpell(450521, 450531),
		UnityWithin = Spell(443591),
		JadeEmpowerment = Spell(467317),
		JadefireTeachingBuff = Spell(388026),
		JadefireTeaching = Spell(467293),
		SecretInfusionHasteBuff = Spell(388497),
		SecretInfusionCritBuff = Spell(388498),
		SecretInfusionVersBuff = Spell( 388500),
		SecretInfusionMasteryBuff = Spell(388499),
		PoolOfMist = Spell(173841),

		--
		VoidRift = Spell(440313),
		EnvelopingShadowflame = Spell(451224),
		CurseOfEntropy = Spell(450095),
		CorruptedCoating = Spell(442285),
		Putridwaters1 = Spell(274911),
		Putridwaters2 = Spell(275014),



	}

	


	local OnUseExcludes = {
		-- I.ItemName:ID(),
	 }
	
	local function TargetIsValid()
		return (Player:AffectingCombat() and Target:Exists() and 
		Player:CanAttack(Target) and not Target:IsDeadOrGhost() and 
		(Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	end

	local function ParseTooltipText(tooltipText)
		local debuffType = "none";
		local tooltipSize = {};
		if(tooltipText) then
		 for t in tooltipText:gmatch("(-?%d[%d%.,]*)") do
			 if (LARGE_NUMBER_SEPERATOR == ",") then
				 t = t:gsub(",", "");
			 else
				 t = t:gsub("%.", "");
				 t = t:gsub(",", ".");
			 end
			 tinsert(tooltipSize, tonumber(t));
		 end
		end
		
		if (#tooltipSize) then
		 return tooltipText, debuffType, unpack(tooltipSize);
		else
		 return tooltipText, debuffType, 0;
		end
	 end
	 
	 local function GetAuraInstanceTooltipInfo(unit, auraInstanceId, filter)
		local tooltipText = ""
		local tooltipData
		if filter == "HELPFUL" then
		 tooltipData = C_TooltipInfo.GetUnitBuffByAuraInstanceID(unit, auraInstanceId, filter)
		else
		 tooltipData = C_TooltipInfo.GetUnitDebuffByAuraInstanceID(unit, auraInstanceId, filter)
		end
		if not tooltipData then
		 return nil, "", "none", 0
		end
		local secondLine = tooltipData.lines[2] -- This is the line we want
		if secondLine and secondLine.leftText then
		 tooltipText = secondLine.leftText
		end
		return tooltipData.dataInstanceID, ParseTooltipText(tooltipText)
	 end
	 
	 local function GetNumberTooltip(spellId)
		local auraInstanceID = 0
		
		local auraData = C_UnitAuras.GetPlayerAuraBySpellID(spellId)
		if auraData then
		 auraInstanceID = auraData.auraInstanceID
		 local _, data, _, tooltip1 = GetAuraInstanceTooltipInfo("player", auraInstanceID, "HELPFUL")
		 
		 if tooltip1 then
			 return tooltip1
		 end
		end
		return 0
	 end
	

	--GUI CONFIG
	local UnholyColor = 'c41f3b'
	local Unholy_Config = {
		--YO CHANGE THIS TO
		key = 'MWRollface',
		title = 'MWRollface',
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
			{ type = 'checkbox', text = 'Cast Weaving (You need Peer into Peace Talent)', key = 'Caster', default = false},
			{ type = 'spacer' },{ type = 'ruler' },{ type = 'spacer' },
			{ type = 'checkbox', text = 'Thunder Focus Tea (Renewing Mist)', key = 'Renewing', default = false},
			{ type = 'checkbox', text = 'Thunder Focus Tea (Enveloping Mist)', key = 'Enveloping', default = true},
			{ type = 'checkbox', text = 'Thunder Focus Tea (Rising Sun Kick)', key = 'Risingsun', default = false},
			
		}
	}
	MainAddon.SetCustomConfig(Author, SpecID, Unholy_Config)

	local function Init()
		message( 'READ: You can use any spec you want with this profile, I combined both my castweaving and fistweaving. Please check my discord for more details.', 1)
		MainAddon:Print('Rolly polly olly')
	end


	MainAddon.Toggle.Special["ForceHeal"] = {
		Icon = MainAddon.GetTexture(S.SoothingMist),
		Name = "Force Heal",
		Description = "Avoid wasting HP on dps spells."
	}



	local function Trinkets()
	
		if true then
		 local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes)
		 if ItemToUse and Target:IsInRange(ItemRange) then
			local DisplayStyle = true
			if ItemSlot ~= 13 and ItemSlot ~= 14 then DisplayStyle = true end
			if ((ItemSlot == 13 or ItemSlot == 14) and true) or (ItemSlot ~= 13 and ItemSlot ~= 14 and true) then
			 if Cast(ItemToUse) then return "Generic use_items for " .. ItemToUse:Name(); end
			end
		 end
		end
	end

	local MW = {}
	MW.Chiji = {}
	MW.Chiji.Active = false
	MW.Chiji.GUID = 0
	MW.Chiji.SummonTime = 0
	HL:RegisterForSelfCombatEvent(
	function(...)
		local destGUID, _, _, _, spellID = select(8, ...)
		if spellID == 325197 then
		MW.Chiji.Active = true
		MW.Chiji.GUID = destGUID
		MW.Chiji.SummonTime = GetTime()
		end
	end
	, "SPELL_SUMMON"
	)

	HL:RegisterForCombatEvent(
	function(...)
		local destGUID = select(8, ...)
		if destGUID == MW.Chiji.GUID then
		MW.Chiji.Active = false
		MW.Chiji.GUID = 0
		MW.Chiji.SummonTime = 0
		end
	end
	, "UNIT_DIED"
	)


	local function Test(UnitTarget)
		return UnitTarget:HealthPercentage() <= 100
	end;

	local function RenewingMistFunc(UnitTarget)
		return UnitTarget:BuffDown(S.RenewingMistBuff, nil, true) 
	end;

	local function VivifyNoSoothingFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 80 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating)
	end;

	local function VivifyFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 75 
	end;
	local function SoothingMistFunc(UnitTarget)
		return UnitTarget:BuffDown(S.SoothingMist) and (UnitTarget:HealthPercentageFlat() <= 100 and Player:AffectingCombat() or UnitTarget:HealthPercentageFlat() <= 99 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating))
	end;
	
	local function LifeCocoonFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 25
	end;

	local function EnvelopingInvokeChiJiBuffFunc(UnitTarget)
		return UnitTarget:BuffDown(S.EnvelopingMist, nil, true) and UnitTarget:HealthPercentageFlat() <= 80
	end;

	local function EnvelopingMistSoothingRAMPFunc(UnitTarget)
		return UnitTarget:BuffDown(S.EnvelopingMist, nil, true)
	end;

	local function VivifySoothingFunc(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 80 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating))
	end;

	local function StrengthoftheBlackOxFunc(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 60 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating))
	end;

	local function StrengthoftheBlackOxTANKFunc(UnitTarget)
		return UnitTarget:BuffDown(S.EnvelopingMist, nil, true) and (UnitTarget:HealthPercentage() <= 80 )
	end;

	local function YulonRaidxFunc(UnitTarget)
		return UnitTarget:BuffDown(S.EnvelopingMist, nil, true) and (UnitTarget:HealthPercentage() <= 80)
	end;

	local function ThunderFocusTeaFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 65 and UnitTarget:BuffDown(S.EnvelopingMist, nil, true)
	end;

	local function EnvelopingMistThunderFocusFunc(UnitTarget)
		return Player:BuffUp(S.ThunderFocusTea) and UnitTarget:BuffDown(S.EnvelopingMist, nil, true) and UnitTarget:HealthPercentage() <= 65
	end;

	local function SoothingMistNotPeerintoMistFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 99 and UnitTarget:BuffDown(S.SoothingMist)
	end;

	local function SoothingMistEmerfencyFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 5
	end;

	--- ===== Rotation Variables =====
	local Enemies5y
	local EnemiesCount5

	S.ThunderFocusTea.offGCD = true
	S.LifeCocoon.offGCD = true
	
	local function MainRotation()


		TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()




		-- Unit Update
		Enemies5y = Player:GetEnemiesInMeleeRange(8) -- Multiple Abilities
		if AoEON() then
		EnemiesCount5 = #Enemies5y
		else
		EnemiesCount5 = 1
		end

		if true then
			-- Calculate fight_remains
			BossFightRemains = HL.BossFightRemains()
			FightRemains = BossFightRemains
			if FightRemains == 11111 then
			 FightRemains = HL.FightRemains(Enemies5y, false)
			end
		
			-- Are we tanking?
			
			-- Update CombatTime, which is used in many spell suggestions
			CombatTime = HL.CombatTime()
		end

		if Player:IsChanneling(S.ManaTea) then
		
			if HealingEngine:LowestHP(true, 40) <= 65 and not Player:IsInRaidArea() or Player:ManaPercentage() >= 90 then
				MainAddon.SetTopColor(1, "Stop Casting")
			end
		
		end

		-- if Player:IsChanneling(S.SoothingMist) and not MainAddon.Toggle:GetToggle("ForceHeal") then
		-- 	if Focus:HealthPercentageFlat() > 99 and Focus:DebuffDown(S.EnvelopingShadowflame) and Focus:DebuffDown(S.VoidRift) and Focus:DebuffDown(S.CurseOfEntropy) and Focus:DebuffDown(S.CorruptedCoating) then
		-- 		if MainAddon.SetTopColor(1, "Stop Casting") then end
		-- 	end
		-- end

		if Player:IsChanneling(S.SoothingMist) and not S.PeerIntoPeace:IsAvailable() then
			if Focus:HealthPercentageFlat() > 99 then
				if MainAddon.SetTopColor(1, "Stop Casting") then end
			end
		end

		if S.UnityWithin:CooldownUp() and HealingEngine:LowestHP(true, 40) <= 50 then
			if Cast(S.CelestialConduit) then return end
		end

		if Player:IsChanneling(S.ManaTea) or 
			Player:IsChanneling(S.CelestialConduit) or 
			Player:IsChanneling(S.CracklingJadeLightning) or 
			(not Player:AffectingCombat() and Player:IsCasting()) then
			return
		end

		if S.LifeCocoon:CooldownUp() and Player:AffectingCombat() then
			if Focus:HealthPercentageFlat() <= 25 then
				if MainAddon.SetTopColor(1, "Stop Casting") then end
			end
			if CastCycleAlly(S.LifeCocoon, MEMBERS, LifeCocoonFunc) then return "" end
		end

		if S.ExpelHarm:CooldownUp() and Player:HealthPercentageFlat() <= 50 and not Player:IsChanneling(S.SoothingMist) then
			if Cast(S.ExpelHarm, Player) then return end
		end

		-- if S.FortifyingBrew:CooldownUp() and Player:HealthPercentageFlat() <= 25 then
		-- 	if Cast(S.FortifyingBrew) then return end
		-- end

		if S.Revival:CooldownUp() and not MW.Chiji.Active and (HealingEngine:MembersUnderPercentage(50, nil, 40) >= 4) then
			if Cast(Spell(115310)) then return end
		end

		if S.EnvelopingMist:CooldownUp() and Player:BuffDown(S.ThunderFocusTea) and Player:IsChanneling(S.SoothingMist) and Player:BuffUp(S.Yulonbaby) and HealingEngine:LowestHP(true, 40) >= 75 then
			if CastCycleAlly(S.EnvelopingMist, MEMBERS, EnvelopingMistSoothingRAMPFunc) then return  end
		end

		if S.EnvelopingMist:IsCastable() and not Player:IsChanneling(S.SoothingMist) and Player:BuffStack(S.InvokeChiJiBuff) >= 3 then
			if CastCycleAlly(S.EnvelopingMist, MEMBERS, EnvelopingInvokeChiJiBuffFunc) then return  end
		end

		if MW.Chiji.Active then
			if TargetIsValid() then

				if S.JadefireStomp:IsReady() and Target:IsInMeleeRange(12) and (Player:BuffDown(S.JadefireTeachingBuff) and S.JadefireTeaching:IsAvailable() or Player:BuffDown(S.JadefireStomp) or Player:BuffDown(S.AwakenedFaelineBuff) and S.AwakenedFaeline:IsAvailable()) then
					if Cast(S.JadefireStomp) then return end
				end

				if S.RisingSunKick:IsReady() and S.RisingMist:IsAvailable() and (Target:IsInMeleeRange(5) or Target:IsInRange(20) and S.RushingWingKick:IsAvailable()) then
					if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Risingsun') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
						if Cast(S.ThunderFocusTea) then return end
					end
					if Cast(S.RisingSunKick) then return end
				end
		
				if EnemiesCount5 >= 4 or Player:BuffUp(S.DanceofChijiBuff) and Target:IsInMeleeRange(8) then
					if S.SpinningCraneKick:IsReady() then
						if Cast(S.SpinningCraneKick) then return end
					end
				end

				if S.RisingSunKick:IsReady() and (Target:IsInMeleeRange(5) or Target:IsInRange(20) and S.RushingWingKick:IsAvailable()) then
					if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Risingsun') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
						if Cast(S.ThunderFocusTea) then return end
					end
					if Cast(S.RisingSunKick) then return end
				end
		
				if S.BlackoutKick:IsReady() and Target:IsInMeleeRange(5) then
					if Cast(S.BlackoutKick) then return end
				end
		
				if S.TigerPalm:IsReady() and Target:IsInMeleeRange(5) then
					if Cast(S.TigerPalm) then return end
				end
			end
		end
		
		if S.RenewingMist:CooldownUp() and ((HealingEngine:LowestHP(true, 40) >= 80 and S.PeerIntoPeace:IsAvailable()) or (not Player:IsChanneling(S.SoothingMist) and not S.PeerIntoPeace:IsAvailable()) or Player:IsMoving()) then
			if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Renewing') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
				if CastCycleAlly(S.ThunderFocusTea, MEMBERS, RenewingMistFunc) then return end
			end
			if CastCycleAlly(S.RenewingMist, MEMBERS, RenewingMistFunc) then return "Renewing2" end
		end
		
		if Player:IsInRaid() then
			if Player:BuffDown(S.Yulonbaby) and not MW.Chiji.Active and 
				HealingEngine:MembersUnderPercentage(80, nil, 40) >= 3 then

				if S.SheilunsGift:CooldownUp() and not Player:IsMoving() and S.SheilunsGift:Count() >= 6 then
					if MainAddon.CastCycleAlly(S.SheilunsGift, MEMBERS, Test) then return  end
				end

				if S.InvokeChiJiTheRedCrane:CooldownUp() then
					if Cast(S.InvokeChiJiTheRedCrane) then return end
				end
				
				if S.InvokeYulonTheJadeSerpent:CooldownUp() then
					if Cast(S.InvokeYulonTheJadeSerpent) then return end
				end

				if S.CelestialConduit:CooldownUp() then
					if Cast(S.CelestialConduit) then return end
				end
			end
		end

		if not Player:IsInRaid() then
			if Player:BuffDown(S.Yulonbaby) and not MW.Chiji.Active and 
				(HealingEngine:MembersUnderPercentage(75, nil, 40) >= 3 or
				HealingEngine:DebuffTotal(S.EnvelopingShadowflame, 30) >= 3 or 
				HealingEngine:DebuffTotal(S.VoidRift, 30) >= 3 or 
				HealingEngine:DebuffTotal(S.CurseOfEntropy, 30) >= 3 or 
				HealingEngine:DebuffTotal(S.CorruptedCoating, 30) >= 3) then

				if S.SheilunsGift:CooldownUp() and HealingEngine:LowestHP(true, 40) >= 25 and not Player:IsMoving() and S.SheilunsGift:Count() >= 6 then
					if MainAddon.CastCycleAlly(S.SheilunsGift, MEMBERS, Test) then return end
				end

				if S.InvokeChiJiTheRedCrane:CooldownUp() then
					if Cast(S.InvokeChiJiTheRedCrane) then return end
				end
				
				if S.InvokeYulonTheJadeSerpent:CooldownUp() then
					if Cast(S.InvokeYulonTheJadeSerpent) then return end
				end

				if S.CelestialConduit:CooldownUp() then
					if Cast(S.CelestialConduit) then return end
				end
			end
		end

		if not MainAddon.Config.GetSetting('MWRollface', 'Caster') then	

			if S.RenewingMist:CooldownUp() and ((HealingEngine:LowestHP(true, 40) >= 80 and S.PeerIntoPeace:IsAvailable()) or (not Player:IsChanneling(S.SoothingMist) and not S.PeerIntoPeace:IsAvailable()) or Player:IsMoving()) then
				if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Renewing') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
					if CastCycleAlly(S.ThunderFocusTea, MEMBERS, RenewingMistFunc) then return end
				end
				if CastCycleAlly(S.RenewingMist, MEMBERS, RenewingMistFunc) then return "Renewing2" end
			end

			if S.RushingWingKick:CooldownUp() and Player:AffectingCombat() and not Target:IsInMeleeRange(5) then
				MainAddon.SetTopColor(1, "Stop Casting")
				if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Risingsun') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
					if Cast(S.ThunderFocusTea) then return end
				end
				if Cast(S.RushingWingKick) then return end
			end

			if S.EnvelopingMist:IsCastable() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffUp(S.Yulonbaby) then
				if MainAddon.CastCycleAlly(S.EnvelopingMist, MEMBERS, YulonRaidxFunc) then return "" end
			end

			if S.EnvelopingMist:IsCastable() and MainAddon.Config.GetSetting('MWRollface', 'Enveloping') then
				if S.ThunderFocusTea:IsCastable() and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
					if MainAddon.CastCycleAlly(S.ThunderFocusTea, MEMBERS, ThunderFocusTeaFunc) then return end
				end
				if MainAddon.CastCycleAlly(S.EnvelopingMist, MEMBERS, EnvelopingMistThunderFocusFunc) then return "" end
			end

			if S.EnvelopingMist:IsCastable() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffUp(S.StrengthoftheBlackOxBuff) and not Player:IsInRaid() then
				if MainAddon.CastCycleAlly(S.EnvelopingMist, MEMBERS, StrengthoftheBlackOxFunc) then return "" end
			end

			if S.EnvelopingMist:IsCastable() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffUp(S.StrengthoftheBlackOxBuff) then
				if MainAddon.CastCycleAlly(S.EnvelopingMist, TANKS, StrengthoftheBlackOxTANKFunc) then return "" end
			end
				
			if S.Vivify:IsCastable() and (not Target:IsInMeleeRange(5) or Player:IsInRaid() or MainAddon.Toggle:GetToggle("ForceHeal") or HealingEngine:LowestHP(true, 40) < 25 and not Player:IsInRaid()) then
				if CastCycleAlly(S.Vivify, MEMBERS, VivifyNoSoothingFunc) then return  end
			end	
			
		end

		if S.ManaTea:CooldownUp() and (HealingEngine:LowestHP(true, 40) > 75 or not Player:IsInParty()) and S.ManaTea:Count() >= 10 and Player:ManaPercentage() <= 75 then
			if Cast(S.ManaTea) then return end
		end

		if S.Vivify:IsCastable() and Player:IsChanneling(S.SoothingMist) and Player:BuffUp(S.VivaciousVivificationBuff) then
			if CastCycleAlly(S.Vivify, MEMBERS, VivifyFunc) then return end
		end

		if not MainAddon.Toggle:GetToggle("ForceHeal") then
			if HealingEngine:LowestHP(true, 40) > 80 or not MainAddon.Config.GetSetting('MWRollface', 'Caster') or Player:IsMoving() then
				if S.RenewingMist:CooldownUp() and not Player:IsChanneling(S.SoothingMist) then
					if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Renewing') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
						if CastCycleAlly(S.ThunderFocusTea, MEMBERS, RenewingMistFunc) then return end
					end
					if CastCycleAlly(S.RenewingMist, MEMBERS, RenewingMistFunc) then return "Renewing2" end
				end
				if TargetIsValid() then
					if not Player:IsMoving() then
						if S.CracklingJadeLightning:CooldownUp() and not Player:PrevGCD(1,S.CracklingJadeLightning) and Target:IsSpellInRange(S.CracklingJadeLightning) and Player:BuffUp(S.JadeEmpowerment) then
							if Cast(S.CracklingJadeLightning) then return end
						end
					end
					
					if S.TouchofDeath:CooldownUp() and Target:IsInMeleeRange(5) and (Target:Health() <= Player:MaxHealth() or Target:HealthPercentage() <= 15 and S.ImprovedTouchofDeath:IsAvailable()) then
						if Cast(S.TouchofDeath) then return end
					end
			
					if S.ChiBurst:CooldownUp() and Target:IsInMeleeRange(8) and not Player:IsMoving() then
						if Cast(S.ChiBurst) then return end
					end
					
					if S.JadefireStomp:CooldownUp() and Target:IsInMeleeRange(12) and (Player:BuffDown(S.JadefireTeachingBuff) and S.JadefireTeaching:IsAvailable() or Player:BuffDown(S.JadefireStomp) or Player:BuffDown(S.AwakenedFaelineBuff) and S.AwakenedFaeline:IsAvailable()) then
						if Cast(S.JadefireStomp) then return end
					end

					if S.RisingSunKick:CooldownUp()  and S.RisingMist:IsAvailable() and (Target:IsInMeleeRange(5) or Target:IsInRange(20) and S.RushingWingKick:IsAvailable()) then
						if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Risingsun') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
							if Cast(S.ThunderFocusTea) then return "Use" end
						end
						if Cast(S.RisingSunKick) then return end
					end
			
					if EnemiesCount5 >= 4 or Player:BuffUp(S.DanceofChijiBuff) and Target:IsInMeleeRange(8) then
						if S.SpinningCraneKick:CooldownUp() then
							if Cast(S.SpinningCraneKick) then return end
						end
					end

					if S.RisingSunKick:CooldownUp() and (Target:IsInMeleeRange(5) or Target:IsInRange(20) and S.RushingWingKick:IsAvailable()) then
						if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Risingsun') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
							if Cast(S.ThunderFocusTea) then return end
						end
						if Cast(S.RisingSunKick) then return end
					end
			
					if S.BlackoutKick:CooldownUp() and Target:IsInMeleeRange(5) and Player:BuffStack(S.TeachingsoftheMonasteryBuff) >= 4 then
						if Cast(S.BlackoutKick) then return end
					end
			
					if S.TigerPalm:CooldownUp() and Target:IsInMeleeRange(5) then
						if Cast(S.TigerPalm) then return end
					end
				end
			end
		end

		-- Soothing Mist
		if S.PeerIntoPeace:IsAvailable() then
			if Player:IsChanneling(S.SpinningCraneKick) and not Player:IsMoving() and HealingEngine:LowestHP(true, 40) < 80 then
				if MainAddon.SetTopColor(1, "Stop Casting") then end	
			end
			if MainAddon.Config.GetSetting('MWRollface', 'Caster') and (HealingEngine:LowestHP(true, 40) > 65 or Player:IsMoving())  then
				if S.RenewingMist:CooldownUp() and Focus:BuffDown(S.RenewingMistBuff) and Focus:IsSpellInRange(S.RenewingMist) then
					if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Renewing') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
						if Cast(S.ThunderFocusTea) then return end
					end
					if Cast(S.RenewingMist, Focus) then return "" end
				end
				if S.RushingWingKick:CooldownUp() and Player:AffectingCombat() then
					if S.ThunderFocusTea:CooldownUp() and MainAddon.Config.GetSetting('MWRollface', 'Risingsun') and Player:AffectingCombat() and Player:BuffDown(S.ThunderFocusTea) and Player:BuffDown(S.SecretInfusionCritBuff) and Player:BuffDown(S.SecretInfusionHasteBuff) and Player:BuffDown(S.SecretInfusionMasteryBuff) and Player:BuffDown(S.SecretInfusionVersBuff) then
						if Cast(S.ThunderFocusTea) then return end
					end
					if Cast(S.RushingWingKick) then return end
				end
			end
			if S.Vivify:CooldownUp() and Player:IsChanneling(S.SoothingMist) then	
				if S.EnvelopingMist:CooldownUp() and Focus:BuffDown(S.EnvelopingMist, nil, true) and Player:IsChanneling(S.SoothingMist) and (Player:BuffUp(S.Yulonbaby)) then
					MainAddon.SetTopTexture(6, "Soothing Mist and Enveloping Mist")
					return
				end	
				if S.EnvelopingMist:CooldownUp() and Focus:BuffDown(S.EnvelopingMist, nil, true) and Player:IsChanneling(S.SoothingMist) and (Focus:HealthPercentage() <= 45 or Focus:DebuffUp(S.EnvelopingShadowflame) or Focus:DebuffUp(S.VoidRift) or Focus:DebuffUp(S.CurseOfEntropy) or Focus:DebuffUp(S.CorruptedCoating) or Focus:DebuffUp(S.Putridwaters1) or Focus:DebuffUp(S.Putridwaters2)) then
					MainAddon.SetTopTexture(6, "Soothing Mist and Enveloping Mist")
					return
				end	
				if S.EnvelopingMist:CooldownUp() and Focus:IsATank() and Focus:BuffDown(S.EnvelopingMist, nil, true) and Player:IsChanneling(S.SoothingMist) and (Focus:HealthPercentage() <= 80 or Player:BuffUp(S.Yulonbaby) or Focus:DebuffUp(S.EnvelopingShadowflame) or Focus:DebuffUp(S.VoidRift) or Focus:DebuffUp(S.CurseOfEntropy) or Focus:DebuffUp(S.CorruptedCoating) or Focus:DebuffUp(S.Putridwaters1) or Focus:DebuffUp(S.Putridwaters2)) then
					MainAddon.SetTopTexture(6, "Soothing Mist and Enveloping Mist")
					return
				end	
				if CastCycleAlly(S.Vivify, MEMBERS, VivifySoothingFunc) then return end
			end
		
			if S.SoothingMist:CooldownUp() and not Player:IsMoving() and not Player:IsChanneling(S.SoothingMist) then
				if CastCycleAlly(S.SoothingMist, MEMBERS, SoothingMistFunc) then return end
			end			
		end

		-- if not S.PeerIntoPeace:IsAvailable() and not Player:IsInRaid() then
			
		-- 	if S.EnvelopingMist:CooldownUp() and Focus:BuffDown(S.EnvelopingMist, nil, true) and Player:IsChanneling(S.SoothingMist) and (Focus:HealthPercentage() <= 75 or Focus:DebuffUp(S.EnvelopingShadowflame) or Focus:DebuffUp(S.VoidRift) or Focus:DebuffUp(S.CurseOfEntropy) or Focus:DebuffUp(S.CorruptedCoating)) then
		-- 		MainAddon.SetTopTexture(6, "Soothing Mist and Enveloping Mist")
		-- 		return 
		-- 	end

		-- 	if S.Vivify:CooldownUp() and Player:IsChanneling(S.SoothingMist) and Focus:HealthPercentage() <= 85 then
		-- 		MainAddon.SetTopTexture(6, "Soothing Mist and Vivify")
		-- 		return
		-- 	end
			
		-- 	if S.SoothingMist:CooldownUp() and not Player:IsMoving() and not Player:IsChanneling(S.SoothingMist) then
		-- 		if CastCycleAlly(S.SoothingMist, MEMBERS, SoothingMistNotPeerintoMistFunc) then return end
		-- 	end				
		
		-- end
	end


	
	MainAddon.SetCustomAPL(Author, SpecID, MainRotation, Init)

	local WWOldIsCastable
 WWOldIsCastable = HL.AddCoreOverride("Spell.IsCastable",
 function(self, ignoreSettings, ignoreMovement, bypassRecovery, ignoreChannel)		
				if self == S.EnvelopingMist then
					if Player:IsMoving() and (Player:BuffUp(S.ThunderFocusTea) or Player:BuffStack(S.InvokeChiJiBuff) == 3) then
						ignoreMovement = true
					end
				end

				-- if self == S.Vivify and Player:IsChanneling(S.SoothingMist) then
				-- 	ignoreChannel = true
				-- end

				-- if self == S.EnvelopingMist and Player:IsChanneling(S.SoothingMist) then
				-- 	ignoreChannel = true
				-- end
				

 local BaseCheck, Reason = WWOldIsCastable(self, ignoreSettings, ignoreMovement, bypassRecovery, ignoreChannel)
 return BaseCheck, Reason
 end
 , 270);

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
