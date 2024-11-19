local function MyRoutine()
	local Author = 'Cast Weaving'
	local SpecID = 270 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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
	local mathmax    = math.max
	local mathmin    = math.min
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
		RisingSunKick = Spell(107428),
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
		Revival = Spell(115310),
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
		-- Buffs
		ZenPulseBuff = Spell(198487),
		InvokeYulonTheJadeSerpentBuff = Spell(322118),
		RenewingMistBuff = Spell(119611),
		AwakenedFaelineBuff = Spell(389387),


		-- CUSTOM
		TeachingsoftheMonasteryBuff  = Spell(202090),
		DanceofChijiBuff = Spell(438443),
		InvokeChiJiBuff = Spell(343820),
		FortifyingBrew = Spell(115203),
		ChiBurst = Spell(123986),
		RushingWindKick = Spell(467307),

		--
		VoidRift = Spell(440313),
		EnvelopingShadowflame = Spell(451224),
		CurseOfEntropy = Spell(450095),
		CorruptedCoating = Spell(442285),
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

	local function Init()
		message( 'RollfaceX', 1)
		MainAddon:Print('Rolly polly olly')
	end


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
	MW.Yulon = {}
	MW.Yulon.Active = false
	MW.Yulon.GUID = 0
	MW.Yulon.SummonTime = 0
	HL:RegisterForSelfCombatEvent(
	function(...)
		local destGUID, _, _, _, spellID = select(8, ...)
		if spellID == 322118 then
		MW.Yulon.Active = true
		MW.Yulon.GUID = destGUID
		MW.Yulon.SummonTime = GetTime()
		end
	end
	, "SPELL_SUMMON"
	)

	HL:RegisterForCombatEvent(
	function(...)
		local destGUID = select(8, ...)
		if destGUID == MW.Yulon.GUID then
		MW.Yulon.Active = false
		MW.Yulon.GUID = 0
		MW.Yulon.SummonTime = 0
		end
	end
	, "UNIT_DIED"
	)

	local function  Test(UnitTarget)
		return Player:HealthPercentage() <= 100 and UnitTarget:BuffDown(S.EnvelopingMist)
	end;

	local function RenewingMistFunc(UnitTarget)
		return UnitTarget:BuffDown(S.RenewingMistBuff)
	end;

	local function VivifyFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 65 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating)
	end;

	local function SoothingMistFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 90 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating)

	end;

	local function LifeCocoonFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 25
	end;

	-----

	local function VivifyEmergencyFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 25
	end;

	local function EnvelopingMistSoothingFunc(UnitTarget)
		return UnitTarget:BuffDown(S.EnvelopingMist) and (UnitTarget:HealthPercentage() <= 65 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating))
	end;

	local function VivifySoothingFunc(UnitTarget)
		return  (UnitTarget:HealthPercentage() <= 85 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.VoidRift) or UnitTarget:DebuffUp(S.CurseOfEntropy) or UnitTarget:DebuffUp(S.CorruptedCoating))
	end;



	--- ===== Rotation Variables =====
	local Enemies5y
	local EnemiesCount5

	S.ThunderFocusTea.offGCD = true
	S.LifeCocoon.offGCD = true
	S.EnvelopingMist.offGCD = true
	
	local function MainRotation()

		TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()


		-- Unit Update
		Enemies5y = Player:GetEnemiesInMeleeRange(5) -- Multiple Abilities
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
			if not Player:IsInRaidArea() then
				if HealingEngine.LowestHP(true, 40) <= 50 or Player:ManaPercentage() >= 95 then
					MainAddon.SetTopColor(1, "Stop Casting")
				end
			end;
		end

		if Player:IsChanneling(S.ManaTea) or Player:IsChanneling(S.CelestialConduit) or Player:IsChanneling(S.SpinningCraneKick) then
			return
		end

		-- if Player:IsCasting(S.Vivify) or Player:IsCasting(S.EnvelopingMist) then
		-- 	MainAddon.SetTopColor(1, "Stop Casting")
		-- end

		-- if Player:IsChanneling(S.SoothingMist)then
		-- 	if (Focus:HealthPercentage() > 99) then
		-- 		if MainAddon.SetTopColor(1, "Stop Casting") then end
		-- 	end
		-- end

		if S.LifeCocoon:CooldownUp() and Player:AffectingCombat() then
			if CastCycleAlly(S.LifeCocoon, MEMBERS, LifeCocoonFunc) then return "" end
		end

		if S.ExpelHarm:CooldownUp() and Player:HealthPercentageFlat() <= 65 then
			if  Cast(S.ExpelHarm, Player) then return end
		end

		if S.FortifyingBrew:CooldownUp() and Player:HealthPercentageFlat() <= 35 then
			if Cast(S.FortifyingBrew) then return end
		end

		if S.Revival:CooldownUp() and not MW.Yulon.Active and (HealingEngine:MembersUnderPercentage(45, nil, 40) >= 4 or HealingEngine:MembersUnderPercentage(35, nil, 40) >= 3) then
			if  Cast(S.Revival) then return end
		end

		if S.ManaTea:CooldownUp() and (HealingEngine:LowestHP() > 75 or not Player:IsInParty()) and S.ManaTea:Count() >= 10 and Player:ManaPercentage() <= 75 then
			if  Cast(S.ManaTea) then return end
		end

		if S.RenewingMist:CooldownUp() and (HealingEngine:LowestHP() > 65 or Player:IsMoving()) then
			if S.ThunderFocusTea:CooldownUp() and Player:AffectingCombat() then
				if Cast(S.ThunderFocusTea) then return end
			end
			if CastCycleAlly(S.RenewingMist, MEMBERS, RenewingMistFunc) then return end
		end

		if Player:BuffDown(S.Yulonbaby) and (HealingEngine:MembersUnderPercentage(85, nil, 40) >= 3 or HealingEngine:DebuffTotal(S.EnvelopingShadowflame, 30) >= 3 or HealingEngine:DebuffTotal(S.VoidRift, 30) >= 3 or HealingEngine:DebuffTotal(S.CurseOfEntropy, 30) >= 3 or HealingEngine:DebuffTotal(S.CorruptedCoating, 30) >= 3) then
	
			if S.SheilunsGift:CooldownUp() and not Player:IsMoving() and S.SheilunsGift:Count() >= 10 and HealingEngine:LowestHP() >= 30 then
				if  Cast(S.SheilunsGift, Player) then return end
			end
			
			if S.InvokeYulonTheJadeSerpent:CooldownUp() then
				if  Cast(S.InvokeYulonTheJadeSerpent) then return end
			end

			if S.CelestialConduit:CooldownUp() then
				if Cast(S.CelestialConduit) then return end
			end
		end

		if TargetIsValid() and Target:IsInMeleeRange(5) and HealingEngine:LowestHP() > 75  then

			if Player:IsChanneling(S.SoothingMist)then			
				if MainAddon.SetTopColor(1, "Stop Casting") then end			
			end
	
			if S.TouchofDeath:IsReady() then
				if Cast(S.TouchofDeath) then return end
			end
	
			if S.ChiBurst:CooldownUp() then
				if  Cast(S.ChiBurst) then return end
			end
	
			if EnemiesCount5 >= 4 or Player:BuffUp(S.DanceofChijiBuff) then
				if S.SpinningCraneKick:IsReady() then
					if  Cast(S.SpinningCraneKick) then return end
				end
			end
	
			if S.RisingSunKick:IsReady() then
				if  Cast(S.RisingSunKick) then return end
			end
	
			if S.BlackoutKick:IsReady() and Player:BuffStack(S.TeachingsoftheMonasteryBuff) >= 4 then
				if  Cast(S.BlackoutKick) then return end
			end
	
			if S.TigerPalm:IsReady() then
				if  Cast(S.TigerPalm) then return end
			end
		end

		if S.SoothingMist:IsCastable() and not Player:IsChanneling(S.SoothingMist) then
			if CastCycleAlly(S.SoothingMist, MEMBERS, SoothingMistFunc) then return end
		end

		if S.Vivify:CooldownUp() and Player:IsMoving() and Player:BuffUp(S.VivaciousVivificationBuff) then
			if CastCycleAlly(S.Vivify, MEMBERS, VivifyFunc) then return "vivify" end
		end

		if S.Vivify:CooldownUp() and Player:IsChanneling(S.SoothingMist) then
			if CastCycleAlly(S.Vivify, MEMBERS, VivifyEmergencyFunc) then return "vivify" end
		end
		
		if S.EnvelopingMist:CooldownUp() and Player:IsChanneling(S.SoothingMist) and S.EnvelopingMist:TimeSinceLastDisplay() >= S.EnvelopingMist:MaxDuration() then
			if CastCycleAlly(S.EnvelopingMist, MEMBERS, Test) then return "vivify" end
		end
		
		if S.Vivify:CooldownUp() and Player:IsChanneling(S.SoothingMist) then
			if CastCycleAlly(S.Vivify, MEMBERS, VivifySoothingFunc) then return "vivify" end
		end
	
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

				-- if self == S.Vivify and Player:IsChanneling(S.SoothingMist)  then
				-- 	ignoreChannel = true
				-- end

				-- if self == S.EnvelopingMist and Player:IsChanneling(S.SoothingMist)  then
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
