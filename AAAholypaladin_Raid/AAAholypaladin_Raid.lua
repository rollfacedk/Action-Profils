local function MyRoutine()
	local Author = 'Holy Paladin Raiding'
	local SpecID = 65 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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
	local TANKS, HEALERS, MEMBERS, DPS, PRIORITY;


	--ALL SPELLS ARE LOCATED ON Rotations/CLASS_SPELL.lua, if one is missing tells us about it.
	local S = {
		
		-- Racials
		AncestralCall = Spell(274738),
		ArcanePulse = Spell(260364),
		ArcaneTorrent = Spell(50613),
		BagofTricks = Spell(312411),
		Berserking = Spell(26297),
		BloodFury = Spell(20572),
		Fireblood = Spell(265221),
		GiftoftheNaaru = Spell(59542),
		LightsJudgment = Spell(255647),
	
		-- Common
		AvengingWrath = Spell(31884),
		BlessingOfFreedom = Spell(1044),
		BlessingOfProtection = Spell(1022),
		BlessingOfSacrifice = Spell(6940),
		BlindingLight = Spell(115750),
		ConcentrationAura = Spell(317920),
		Consecration = Spell(26573),
		ConsecrationBuff = Spell(188370),
		CrusaderAura = Spell(32223),
		CrusaderStrike = Spell(35395),
		DevotionAura = Spell(465),
		DivineShield = Spell(642),
		DivineSteed = Spell(190784),
		FlashOfLight = Spell(19750),
		HammerOfJustice = Spell(853),
		HammerOfWrath = Spell(24275),
		HandOfReckoning = Spell(62124),
		Intercession = Spell(391054),
		Judgment = Spell(275773),
		Redemption = Spell(7328),
		RetributionAura = Spell(183435),
		SenseUndead = Spell(5502),
		ShieldOfTheRighteous = Spell(415091),
		WordOfGlory = Spell(85673),
		Absolution = Spell(212056),
		AuraMastery = Spell(31821),
		BeaconOfLight = Spell(53563),
		Cleanse = Spell(4987),
		DivineFavor = Spell(460422),
		DivineFavorBuff = Spell(210294),
		DivineProtection = Spell(498),
		DivineToll = Spell(375576),
		HolyLight = Spell(82326),
		HolyShock = Spell(20473),
		LightOfDawn = Spell(85222),
		LightOfTheMartyr = Spell(183998), --OTHER
		LightOfTheMartyrDebuff = Spell(448005),
		JudgmentDebuff = Spell(197277),
	
		-- Paladin
		ImprovedCleanse = Spell(393024),
		HallowedGround = Spell(377043),
		LayOnHands = Spell(633),
		Repentance = Spell(20066), --Multi
		AurasOfTheResolute = Spell(385633),
		AurasOfSwiftVengeance = Spell(385639),
		FistOfJustice = Spell(234299),
		Rebuke = Spell(96231),
		Cavalier = Spell(230332),
		SacrificeOfTheJust = Spell(384820), --Multi
		Recompense = Spell(384914), --Multi
		JudgmentOfLight = Spell(183778),
		HolyAegis = Spell(385515),
		GoldenPath = Spell(377128),
		SealOfMercy = Spell(384897),
		SealOfClarity = Spell(384815),
		Afterimage = Spell(385414),
		UnbreakableSpirit = Spell(114154),
		ImprovedBlessingOfProtection = Spell(384909),
		DivinePurpose = Spell(223817), --Multi
		HolyAvenger = Spell(105809), --Multi
		SealOfAlacrity = Spell(385425),
		Seraphim = Spell(152262), --Multi
		SealOfMight = Spell(385450),
		AspirationOfDivinity = Spell(385416),
		SealOfOrder = Spell(385129),
		OfDuskAndDawn = Spell(385125),
		ZealotSParagon = Spell(391142),
		SealOfTheCrusader = Spell(385728),
		Obduracy = Spell(385427),
		Incandescence = Spell(385464), --Multi
		TouchOfLight = Spell(385349), --Multi
		SealOfReprisal = Spell(377053),
		TurnEvil = Spell(10326),
		SeasonedWarhorse = Spell(376996), --Multi
		SealOfTheTemplar = Spell(377016), --Multi
		GreaterJudgment = Spell(231644),
	
		-- Holy
		Daybreak = Spell(414170),
		HandOfDivinity = Spell(414273),
		BeaconOfFaith = Spell(156910), --Multi
		BeaconOfVirtue = Spell(200025), --Multi
		EchoingBlessings = Spell(387801),
		ImbuedInfusions = Spell(392961),
		BarrierOfFaith = Spell(148039),
		MaraadSDyingBreath = Spell(388018),
		UntemperedDedication = Spell(387814),
		RuleOfLaw = Spell(214202),
		SavedByTheLight = Spell(157047),
		UnendingLight = Spell(387998), --Multi
		BestowFaith = Spell(223306), --Multi
		UnwaveringSpirit = Spell(392911), --Multi
		ProtectionOfTyr = Spell(200430), --Multi
		MomentOfCompassion = Spell(387786), --Multi
		ResplendentLight = Spell(392902), --Multi
		Illumination = Spell(387993), --Multi
		DivineInsight = Spell(392914), --Multi
		TirionSDevotion = Spell(392928),
		RadiantOnslaught = Spell(231667),
		EmpyrealWard = Spell(387791),
		ShiningSavior = Spell(388005),
		LightSHammer = Spell(114158), --Multi
		HolyPrism = Spell(114165), --Multi
		DivineRevelations = Spell(387808),
		CommandingLight = Spell(387781),
		Veneration = Spell(392938),
		BreakingDawn = Spell(387879),
		SecondSunrise = Spell(200482),
		AvengingCrusader = MultiSpell(216331, 31884), --Multi
		DivineGlimpse = Spell(387805),
		TowerOfRadiance = Spell(231642),
		BoundlessSalvation = Spell(392951),
		TyrSDeliverance = Spell(200652),
		PowerOfTheSilverHand = Spell(200474),
		RelentlessInquisitor = Spell(383388),
		InflorescenceOfTheSunwell = Spell(392907), --Multi
		EmpyreanLegacy = Spell(387170), --Multi
		Awakening = Spell(248033),
		BlessingOfSummer = Spell(388007),
		CrusaderSMight = Spell(196926),
		GlimmerOfLight = Spell(287269),
		DivineResonance = Spell(387893),
	
		--Buffs
		InfusionOfLightBuff = Spell(54149),
		EmpyreanLegacyBuff = Spell(387178),
		BeaconOfFaithBuff = Spell(156910),
		BeaconOfLightBuff = Spell(53563),
		DivinePurposeBuff = Spell(223819),
		GlimmerBuff = Spell(287280),
		OfDuskandDawn = Spell(385125),
		UnendingLightBuff = Spell(394709),
		DawnBuff = Spell(385127),
		DuskBuff = Spell(385126),
		BlessingOfAutumn = Spell(388010),
		BlessingOfWinter = Spell(388011),
		BlessingOfSpring = Spell(388013),
	
		--Debuffs
		ForberanceDebuff = Spell(25771),
		RisingSunlightBuff = Spell(414204),
		WardOfFacelessIereBuff = Spell(401238),
		RighteousJudgment = Spell(414113),
		HolyInfusion = Spell(414214),
		EternalFlame = Spell(156322),
		HolyBulwark = Spell(432459),
		HolyBulwarkBuff = Spell(432496),
		SacredWeapon = Spell(432472),
		SacredWeaponBuff = Spell(432502),
		EnvelopingShadowflame = Spell(451224),
		CurseOfEntropy = Spell(450095),
		Aurora = Spell(439760),
		
	}
	
	local function TargetIsValid()
		return (Player:AffectingCombat() and Target:Exists() and Player:CanAttack(Target) and not Target:IsDeadOrGhost() and (Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
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
		message( 'I made this, do you like it?', 1)
		MainAddon:Print('This is my own addon =), Hurray.')
	end

	local function HealingAbsorbList()
		return (Player:DebuffUp(S.EnvelopingShadowflame) or Player:DebuffUp(S.CurseOfEntropy))
	end

	local function TrueFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 100
	end;

	local function HolyBulwarkFunc(UnitTarget)
		return UnitTarget:BuffDown(S.HolyBulwarkBuff)
	end;

	local function SacredWeaponFunc(UnitTarget)
		return UnitTarget:BuffDown(S.SacredWeaponBuff)
	end;

	local function LayOnHandsFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 25
	end;

	local function HolyShockFunc(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 85 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.CurseOfEntropy))
	end;

	local function WordOfGloryMembersFunc(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 65 or UnitTarget:DebuffUp(S.EnvelopingShadowflame) or UnitTarget:DebuffUp(S.CurseOfEntropy))
	end;

	local function BlessingOfSacrificeFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 35 and UnitTarget:BuffDown(S.BlessingOfProtection) and UnitTarget:BuffDown(S.WardOfFacelessIereBuff) and UnitTarget:BuffDown(S.BlessingOfSacrifice) and UnitTarget:GUID() ~= Player:GUID()
	end;

	local function BlessingOfProtectionFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 35 and UnitTarget:BuffDown(S.BlessingOfProtection) and UnitTarget:BuffDown(S.WardOfFacelessIereBuff) and UnitTarget:BuffDown(S.BlessingOfSacrifice)
	end;

	local function FlashOfLightFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 85 or UnitTarget:DebuffUp(S.EnvelopingShadowflame, 30) or UnitTarget:DebuffUp(S.CurseOfEntropy, 30)
	end;

	local function BeaconOfFaithFunc(UnitTarget)
		return UnitTarget:BuffDown(S.BeaconOfFaithBuff)
	end;

	local function BeaconOfLightFunc(UnitTarget)
		return UnitTarget:BuffDown(S.BeaconOfLightBuff)
	end;

	local function HolyPrismFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 35
	end;
	

	S.BlessingOfSummer.offGCD = true
	S.BlessingOfAutumn.offGCD = true
	S.BlessingOfSpring.offGCD = true
	S.BlessingOfWinter.offGCD = true
	S.AvengingCrusader.offGCD = true
	S.AvengingWrath.offGCD = true
	S.DevotionAura.offGCD = true

	local function MainRotation()

		TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()

		if S.DevotionAura:IsCastable() and Player:BuffDown(S.DevotionAura) then
			if Cast(S.DevotionAura) then return end
		end

		if Player:AffectingCombat() then

			if S.AvengingWrath:IsCastable() and HealingEngine:MembersUnderPercentage(60, nil, 30) >= 4 then
				if Cast(S.AvengingWrath) then return end
			end

			if S.AvengingCrusader:IsCastable() and HealingEngine:MembersUnderPercentage(60, nil, 30) >= 4 then
				if Cast(S.AvengingCrusader) then return end
			end

			if S.HolyBulwark:IsCastable() then
				if MainAddon.CastCycleAlly(S.HolyBulwark, TANKS, HolyBulwarkFunc) then return end
			end

			if S.SacredWeapon:IsCastable() then
				if MainAddon.CastCycleAlly(S.SacredWeapon, DPS, SacredWeaponFunc) then return end
			end

		end

		-- Party Defensive
		if Player:AffectingCombat() then

			if S.DivineProtection:IsCastable() and Player:HealthPercentage() <= 45 then
				if Cast(S.DivineProtection) then return end
			end

			if S.DivineShield:IsCastable() and Player:HealthPercentage() <= 30 then
				if Cast(S.DivineShield) then return end
			end

			if S.LayOnHands:IsCastable() then
				if MainAddon.CastCycleAlly(S.LayOnHands, HEALERS, LayOnHandsFunc) then return end
			end

			if S.LayOnHands:IsCastable() then
				if MainAddon.CastCycleAlly(S.LayOnHands, TANKS, LayOnHandsFunc) then return end
			end

			if S.BlessingOfProtection:IsCastable() then
				if MainAddon.CastCycleAlly(S.BlessingOfProtection, DPS, BlessingOfProtectionFunc) then return end
			end

			if S.BlessingOfProtection:IsCastable() then
				if MainAddon.CastCycleAlly(S.BlessingOfProtection, HEALERS, BlessingOfProtectionFunc) then return end
			end

			if S.BlessingOfSacrifice:IsCastable() then
				if MainAddon.CastCycleAlly(S.BlessingOfSacrifice, MEMBERS, BlessingOfSacrificeFunc) then return end
			end
		end

		if Player:AffectingCombat() then
			if S.BlessingOfWinter:IsCastable() then
				if Cast(S.BlessingOfWinter, Player) then return end
			end
			if S.BlessingOfSummer:IsCastable() then
				if Cast(S.BlessingOfSummer, Player) then return end
			end

			if S.BlessingOfAutumn:IsCastable() then
				if Cast(S.BlessingOfAutumn, Player) then return end
			end

			if S.BlessingOfSpring:IsCastable() then
				if Cast(S.BlessingOfSpring, Player) then return end
			end
		end

		-- if HealingEngine.IsHealingNPC(MouseOver) and not HealingEngine.IsHealingNPC(Focus) then
		-- 	MainAddon.SetTopColor(1, "Focus Mouseover")
		-- end;
		-- if HealingEngine.IsHealingNPC(Focus) and Focus:HealthPercentage() < 100 then

		-- 	if S.HolyShock:IsCastable(Focus) and (Player:HolyPower() <= 4 and Player:BuffDown(S.RisingSunlightBuff) or Player:HolyPower() <= 2) then
		-- 		if MainAddon.CastAlly(S.HolyShock, Focus) then
		-- 			return 
		-- 		end
		-- 	end

		-- 	if S.WordOfGlory:IsCastable(Focus) then
		-- 		if MainAddon.CastAlly(S.WordOfGlory, Focus) then
		-- 			return 
		-- 		end
		-- 	end
			
		-- end

		-- Healing	

		if S.BeaconOfVirtue:IsCastable() and (HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 or HealingEngine:DebuffTotal(S.EnvelopingShadowflame, 30) >= 3 or HealingEngine:DebuffTotal(S.CurseOfEntropy, 30) >= 3) then		
			if Cast(S.BeaconOfVirtue, Player) then return end
		end

		if S.BeaconOfFaith:IsCastable() then
			if MainAddon.CastCycleAlly(S.BeaconOfFaith, TANKS, BeaconOfFaithFunc) then return end
		end

		if S.BeaconOfLight:IsCastable() then
			if MainAddon.CastCycleAlly(S.BeaconOfLight, HEALERS, BeaconOfLightFunc) then return end
		end

		if S.HolyPrism:IsReady() and (not S.Aurora:IsAvailable() or Player:BuffDown(S.DivinePurposeBuff)) and Target:IsSpellInRange(S.HolyPrism) and TargetIsValid() and (HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 or HealingEngine:DebuffTotal(S.EnvelopingShadowflame, 30) >= 3 or HealingEngine:DebuffTotal(S.CurseOfEntropy, 30) >= 3) then
			if MainAddon.SetTopColor(6, "Holy Prism Enemy") then return end
		end

		if S.DivineToll:IsCastable() and (HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 and Player:HolyPower() <= 2 or HealingEngine:DebuffTotal(S.EnvelopingShadowflame, 30) >= 3 or HealingEngine:DebuffTotal(S.CurseOfEntropy, 30) >= 3) then
			if Cast(S.DivineToll, Player) then return end
		end

		if (S.WordOfGlory:IsCastable() or S.EternalFlame:IsCastable()) and Player:DebuffUp(S.LightOfTheMartyrDebuff) and Player:HealthPercentage() <= 80 then
			if S.Consecration:IsCastable() and Player:AffectingCombat() and not Player:IsMoving() and Player:BuffDown(S.ConsecrationBuff) then
				if Cast(S.Consecration) then return end
			end
			if Cast(S.WordOfGlory, Player) then return end
		end
		
		if S.HolyShock:IsCastable() and ((Player:HolyPower() <= 4 and Player:BuffDown(S.RisingSunlightBuff) or Player:HolyPower() <= 2) or HealingAbsorbList()) then
			if MainAddon.CastCycleAlly(S.HolyShock, MEMBERS, HolyShockFunc) then return end
		end

		if (S.WordOfGlory:IsCastable() or S.EternalFlame:IsCastable()) then
			if S.Consecration:IsCastable() and Player:AffectingCombat() and not Player:IsMoving() and Player:BuffDown(S.ConsecrationBuff) then
				if Cast(S.Consecration) then return end
			end
			if MainAddon.CastCycleAlly(S.WordOfGlory, MEMBERS, WordOfGloryMembersFunc) then return end
		end

		if S.HolyPrism:IsReady() and (not S.Aurora:IsAvailable() or Player:BuffDown(S.DivinePurposeBuff)) then
			if MainAddon.CastCycleAlly(S.HolyPrism, MEMBERS, HolyPrismFunc) then return end
		end

		if (S.WordOfGlory:IsCastable() or S.EternalFlame:IsCastable()) then
			if S.Consecration:IsCastable() and Player:AffectingCombat() and not Player:IsMoving() and Player:BuffDown(S.ConsecrationBuff) then
				if Cast(S.Consecration) then return end
			end
			if MainAddon.CastCycleAlly(S.WordOfGlory, MEMBERS, WordOfGloryMembersFunc) then return end
		end

		if TargetIsValid() then
			if Player:HolyPower() >= 5 then
				if S.ShieldOfTheRighteous:IsReady() and Target:IsInMeleeRange(5) then
					if S.Consecration:IsCastable() and Player:AffectingCombat() and not Player:IsMoving() and Player:BuffDown(S.ConsecrationBuff) then
						if Cast(S.Consecration) then return end
					end
					if Cast(S.ShieldOfTheRighteous) then return end
				end
			end
		end

		if TargetIsValid() then

			if S.HammerOfWrath:IsReady() and Target:IsSpellInRange(S.HammerOfWrath) and Player:HolyPower() <= 4 then
				if Cast(S.HammerOfWrath) then return end
			end

			if S.HolyShock:IsReady() and Target:IsSpellInRange(S.HolyShock) and (Player:HolyPower() <= 4 and Player:BuffDown(S.RisingSunlightBuff) or Player:HolyPower() <= 2) and S.HolyShock:ChargesFractional() >= 1.8 then
				if MainAddon.SetTopColor(6, "Holy Shock Enemy") then return end
			end

			if S.CrusaderStrike:IsReady() and Target:IsInMeleeRange(5) and Player:HolyPower() <= 4 then
				if Cast(S.CrusaderStrike) then return end
			end

			if S.Judgment:IsReady() and Target:IsSpellInRange(S.Judgment) and Player:HolyPower() <= 4 then
				if Cast(S.Judgment) then return end
			end

			-- if S.HolyShock:IsReady() and Target:IsSpellInRange(S.HolyShock) and (Player:HolyPower() <= 4 and Player:BuffDown(S.RisingSunlightBuff) or Player:HolyPower() <= 2) then
			-- 	if MainAddon.SetTopColor(6, "Holy Shock Enemy") then return end
			-- end
			
		end

		if S.FlashOfLight:IsCastable() and not Target:IsInMeleeRange(5) and not Player:IsMoving() and (Player:HolyPower() <= 4 or not S.TowerOfRadiance:IsAvailable()) then
			if MainAddon.CastCycleAlly(S.FlashOfLight, MEMBERS, FlashOfLightFunc) then return end
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
