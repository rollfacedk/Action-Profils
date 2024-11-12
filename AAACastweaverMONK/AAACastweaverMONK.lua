local function MyRoutine()
	local Author = 'Castweaver'
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




	
	local function MainRotation()

		TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()

		if S.EnvelopingMist:IsCastable() and Player:IsChanneling(S.SoothingMist) then
			if Cast(S.EnvelopingMist, Player) then return "EnvelopingMist" end
		end

		if S.Vivify:IsCastable() and Player:IsChanneling(S.SoothingMist) then
			if Cast(S.Vivify, Player) then return "EnvelopingMist" end
		end

		if S.SoothingMist:IsCastable() and not Player:IsChanneling(S.SoothingMist) then
			if Cast(S.SoothingMist, Player) then return "SoothingMist" end
		end
		
	end

	
	MainAddon.SetCustomAPL(Author, SpecID, MainRotation, Init)

	    local WWOldIsCastable
    WWOldIsCastable = HL.AddCoreOverride("Spell.IsCastable",
            function(self, ignoreSettings, ignoreMovement, bypassRecovery, ignoreChannel)
            
                if self:ID() == S.Vivify:ID() then
                    ignoreChannel = true
                end

				if self:ID() == S.EnvelopingMist:ID() then
                    ignoreChannel = true
                end

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
