local function MyRoutine()
	local Author = 'Holy Paladin Raid'
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
	local Settings = MainAddon.Config.GetClassSetting;
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
		ConsecrationDebuff = Spell(204242),
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
		LayOnHands = MultiSpell(633, 471195),
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
		AvengingCrusader = Spell(216331), --Multi
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
		Pool                                  = Spell(999910),
	
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
		CorruptedCoating = Spell(442285),
		Aurora = Spell(439760),
		TruthPrevails = Spell(461273),
		VoidRift = Spell(440313),
		Eating = MultiSpell(456574, 167152),
		PutridWaters = Spell(275014),
		BlessedAssuranceBuff = Spell(433019),
		BlessedAssurance = Spell(433015),



		--PVP Debuff
		Imprison = Spell(217832),
		TurnEvil = Spell(10326),
		HammerofJustice = Spell(853),
		Repentance = Spell(20066),
		Polymorph = Spell(118),
		PsychicScream = Spell(8122),
		Fear = Spell(5782),
		HowlofTerror = Spell(5484),
		MortalCoil = Spell(6789),
		FreezingTrap = Spell(187650),
		SleepWalk = Spell(360806),
		Hex = Spell(51514),
		RingofFrost = Spell(113724),
	
	}
	
	local function TargetIsValid()
		return (Player:AffectingCombat() and Target:Exists() and 
		Player:CanAttack(Target) and not Target:IsDeadOrGhost() and 
		(Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	end

	--GUI CONFIG
	--GUI CONFIG
	local UnholyColor = 'f4acba'
	local Unholy_Config = {
		-- --YO CHANGE THIS TO
		-- key = 'AUTHOR_MyConfigSample',
		-- title = 'rollfaceX',
		-- subtitle = '1.0',
		-- width = 300,
		-- height = 250,
		-- profiles = true,
		-- config = {
		-- 	{ type = 'header', text = 'rollfaceX', size = 24, align = 'Center', color = UnholyColor},
		-- 	{ type = 'spacer' },{ type = 'ruler' },{ type = 'spacer' },
		-- 	{ type = 'header', text = 'Defensives',  color = UnholyColor },
		-- 	{ type = 'checkspin', text = 'Divine Protection', key = 'divineprotection', min = 1, max = 100, default = 50},
		-- 	{ type = 'checkspin', text = 'Divine Shield', key = 'divineshield', min = 1, max = 100, default = 30},
		-- 	{ type = 'checkspin', text = 'Blessing of Protection', key = 'bop', min = 1, max = 100, default = 30},
		-- 	{ type = 'checkspin', text = 'LOH Tanks and Healers ONLY', key = 'loh', min = 1, max = 100, default = 30},
		-- 	{ type = 'checkspin', text = 'LOH Everyone', key = 'loh', min = 1, max = 100, default = 30},
		-- 	{ type = 'spacer' },{ type = 'ruler' },{ type = 'spacer' },
		-- 	{ type = 'header', text = 'Single Target Heal',  color = UnholyColor },
		-- 	{ type = 'checkspin', text = 'Holy Shock', key = 'holyshock', min = 1, max = 100, default = 90},
		-- 	{ type = 'checkspin', text = 'Holy Prism / Barrier of Faith', key = 'holyprism', min = 1, max = 100, default = 60},
		-- 	{ type = 'checkspin', text = 'Holy Light', key = 'holylight', min = 1, max = 100, default = 60},
		-- 	{ type = 'checkspin', text = 'Word of Glory Filler', key = 'wordofgloryfil', min = 1, max = 100, default = 80},
		-- 	{ type = 'checkspin', text = 'Word of Glory Emergency', key = 'wordofgloryem', min = 1, max = 100, default = 60},
		-- 	{ type = 'checkspin', text = 'Flash of Light', key = 'flashoflight', min = 1, max = 100, default = 90},
		-- 	{ type = 'spacer' },{ type = 'ruler' },{ type = 'spacer' },
		-- 	{ type = 'header', text = 'AOE Heals / Cds',  color = UnholyColor },
		-- 	{ type = 'checkspin', text = 'Aoe Targets', key = 'aoetargets', min = 1, max = 5, default = 3},
		-- 	{ type = 'checkspin', text = 'Aura Mastery', key = 'auramasteryhp', min = 1, max = 100, default = 60},

		-- -- 	{ type = 'checkspin', text = 'Death Strike: Deficit', key = 'deficitds', min = 1, max = 100, default = 20},
		-- -- 	{ type = 'checkspin', text = 'Death Strike: Emergency', key = 'dsemergency', min = 1, max = 100, default = 50},
		-- -- 	{ type = 'checkspin', text = 'Icebound Fortitude', key = 'ibfortitude', min = 1, max = 100, default = 30},
		-- -- 	{ type = 'checkspin', text = 'Rune Tap', key = 'runetap', min = 1, max = 100, default = 35},
		-- -- 	{ type = 'checkspin', text = 'Vampiric Blood', key = 'vp', min = 1, max = 100, default = 50},
		-- -- 	{ type = 'spacer' },
		-- -- 	{ type = 'header', text = 'Class',  color = UnholyColor },
		-- -- 	{ type = 'checkbox', text = 'Lichborne (Anti-Fear)', key = 'lichborne', default = true},
		-- }
	}
	MainAddon.SetCustomConfig(Author, SpecID, Unholy_Config)

	local function Init()
		message( 'I made this, do you like it?', 1)
		MainAddon:Print('This is my own addon =), Hurray.')
	end

	local function AvengingCrusaderWOG(UnitTarget)
		return UnitTarget:HealthPercentage() <= 35 and UnitTarget:DebuffDown(S.ForberanceDebuff)
	end;

	local function LayOnHandsFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 25 and UnitTarget:DebuffDown(S.ForberanceDebuff)
	end;

	local function HolyShockFunc(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 95)
	end;

	local function WordOfGloryMembersFunc(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 80)
	end;

	local function WordOfGloryMembersFunc2(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 50)
	end;

	local function BlessingOfSacrificeFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 30 and UnitTarget:GUID() ~= Player:GUID()
	end;

	local function BlessingOfProtectionFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 30 and UnitTarget:BuffDown(S.BlessingOfProtection) and UnitTarget:DebuffDown(S.ForberanceDebuff)
	end;

	local function HolyPrismFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 35
	end;

	local function HolyLightFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 50
	end;
	

	S.BlessingOfSummer.offGCD = true
	S.BlessingOfAutumn.offGCD = true
	S.BlessingOfSpring.offGCD = true
	S.BlessingOfWinter.offGCD = true
	S.AvengingCrusader.offGCD = true
	S.AvengingWrath.offGCD = true
	S.DevotionAura.offGCD = true
	S.LayOnHands.offGCD = true

	local function MainRotation()

		TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()

		if Player:IsCasting() then
			if Cast(S.Pool) then return end
		end

		if S.DevotionAura:IsCastable() and Player:BuffDown(S.DevotionAura) then
			if Cast(S.DevotionAura) then return end
		end

		if Player:AffectingCombat() then
			if S.BlessingOfWinter:IsCastable() then
				if Cast(S.BlessingOfWinter, Player) then return end
			end
			if S.BlessingOfSummer:IsCastable() and Target:TimeToDie() > 30 then
				if Cast(S.BlessingOfSummer, Player) then return end
			end

			if S.BlessingOfAutumn:IsCastable() and Target:TimeToDie() > 30 then
				if Cast(S.BlessingOfAutumn, Player) then return end
			end

			if S.BlessingOfSpring:IsCastable() and Target:TimeToDie() > 30 then
				if Cast(S.BlessingOfSpring, Player) then return end
			end
		end

		if Player:AffectingCombat() then

			if S.DivineProtection:IsCastable() and Player:HealthPercentage() <= 45 then
				if Cast(S.DivineProtection) then return end
			end

			if S.DivineShield:IsCastable() and Player:HealthPercentage() <= 30 then
				if Cast(S.DivineShield) then return end
			end

			if S.LayOnHands:IsCastable() then
				if MainAddon.CastCycleAlly(S.LayOnHands, HEALERS, LayOnHandsFunc) then return "LOH TANKS" end
			end

			if S.LayOnHands:IsCastable() then
				if MainAddon.CastCycleAlly(S.LayOnHands, TANKS, LayOnHandsFunc) then return "LOH TANKS" end
			end

			if S.BlessingOfProtection:IsCastable() then
				if MainAddon.CastCycleAlly(S.BlessingOfProtection, HEALERS, BlessingOfProtectionFunc) then return end
			end

			if S.BlessingOfSacrifice:IsCastable() then
				if MainAddon.CastCycleAlly(S.BlessingOfSacrifice, HEALERS, BlessingOfSacrificeFunc) then return end
			end

			if S.BlessingOfSacrifice:IsCastable() then
				if MainAddon.CastCycleAlly(S.BlessingOfSacrifice, TANKS, BlessingOfSacrificeFunc) then return end
			end
		end

		if Player:AffectingCombat() then

			if S.AvengingWrath:IsCastable() and HealingEngine:MembersUnderPercentage(65, nil, 30) >= 4 then
				if Cast(S.AvengingWrath) then return end
			end

			if S.AvengingCrusader:IsCastable() and HealingEngine:MembersUnderPercentage(75, nil, 30) >= 3 then
				if Cast(S.AvengingCrusader) then return end
			end
		end

		if Player:BuffUp(S.AvengingCrusader) then

			if (S.WordOfGlory:IsCastable() or S.EternalFlame:IsCastable()) then
				if MainAddon.CastCycleAlly(S.WordOfGlory, MEMBERS, WordOfGloryMembersFunc2) then return end
			end

			if S.Judgment:IsReady() and TargetIsValid() and Target:IsSpellInRange(S.Judgment) then
				if Cast(S.Judgment) then return end
			end

			if S.ShieldOfTheRighteous:IsReady() and TargetIsValid() and Target:IsInMeleeRange(5) and Player:BuffUp(S.BlessedAssuranceBuff) and S.BlessedAssurance:IsAvailable() then
				if Cast(S.ShieldOfTheRighteous) then return end
			end

			if S.CrusaderStrike:IsReady() and TargetIsValid() and Target:IsInMeleeRange(5) then
				if Cast(S.CrusaderStrike) then return end
			end

			if S.ShieldOfTheRighteous:IsReady() and TargetIsValid() and Target:IsInMeleeRange(5) then
				if Cast(S.ShieldOfTheRighteous) then return end
			end

			if Player:AffectingCombat() and (Player:BuffDown(S.HolyBulwarkBuff) and Player:BuffDown(S.SacredWeaponBuff) or S.HolyBulwark:ChargesFractional() >= 1.9 or S.SacredWeapon:ChargesFractional() >= 1.9)  then
				if S.HolyBulwark:IsCastable() then
					if Cast(S.HolyBulwark, Player) then return end
				end
	
				if S.SacredWeapon:IsCastable() then
					if Cast(S.SacredWeapon, Player) then return end
				end
			end

			if ((Player:HolyPower() <= 4 and Player:BuffDown(S.RisingSunlightBuff) or Player:HolyPower() <= 1))  then
				if S.HolyShock:IsCastable() then
					if MainAddon.CastCycleAlly(S.HolyShock, MEMBERS, HolyShockFunc) then return end
				end 
				if S.HolyShock:IsReady() and TargetIsValid() and Target:IsSpellInRange(S.HolyShock) then
					if MainAddon.SetTopColor(6, "Holy Shock Enemy") then return end
				end
			end
		end

		if Player:BuffDown(S.AvengingCrusader) and HealingEngine:MembersUnderPercentage(75, nil, 40) >= 5 then		
			if S.HolyPrism:IsReady() and (not S.Aurora:IsAvailable() or Player:BuffDown(S.DivinePurposeBuff)) and Target:IsSpellInRange(S.HolyPrism) and TargetIsValid() then
				if MainAddon.SetTopColor(6, "Holy Prism Enemy") then return end
			end
			if S.DivineToll:IsCastable() and Player:HolyPower() <= 2 then
				if Cast(S.DivineToll, Player) then return end
			end
			if S.BeaconOfVirtue:IsCastable() then		
				if Cast(S.BeaconOfVirtue, Player) then return end
			end
		end

		if (S.WordOfGlory:IsCastable() or S.EternalFlame:IsCastable()) then
			if MainAddon.CastCycleAlly(S.WordOfGlory, MEMBERS, WordOfGloryMembersFunc2) then return end
		end

		if S.BarrierOfFaith:IsReady() and (not S.Aurora:IsAvailable() or Player:BuffDown(S.DivinePurposeBuff)) then
			if MainAddon.CastCycleAlly(S.BarrierOfFaith, MEMBERS, WordOfGloryMembersFunc2) then return end
		end

		if Player:AffectingCombat() and (Player:BuffDown(S.HolyBulwarkBuff) and Player:BuffDown(S.SacredWeaponBuff) or S.HolyBulwark:ChargesFractional() >= 1.9 or S.SacredWeapon:ChargesFractional() >= 1.9)  then
			if S.HolyBulwark:IsCastable() then
				if Cast(S.HolyBulwark, Player) then return end
			end

			if S.SacredWeapon:IsCastable() then
				if Cast(S.SacredWeapon, Player) then return end
			end
		end

		if S.Consecration:IsCastable() and Target:IsInMeleeRange(8) and Player:AffectingCombat() and not Player:IsMoving() and Target:DebuffDown(S.ConsecrationDebuff) then
			if Cast(S.Consecration) then return end
		end

		if S.FlashOfLight:IsCastable() and not Target:IsInMeleeRange(5) and Player:BuffUp(S.InfusionOfLightBuff) and not Player:IsMoving() and (Player:HolyPower() <= 4 or not S.TowerOfRadiance:IsAvailable())  then
			if MainAddon.CastCycleAlly(S.FlashOfLight, MEMBERS, HolyLightFunc) then return end
		end

		if S.HolyLight:IsCastable() and not Target:IsInMeleeRange(5) and (Player:BuffUp(S.DivineFavorBuff) and Player:BuffUp(S.InfusionOfLightBuff)) and not Player:IsMoving() and (Player:HolyPower() <= 4 or not S.TowerOfRadiance:IsAvailable()) then
			if MainAddon.CastCycleAlly(S.HolyLight, MEMBERS, WordOfGloryMembersFunc2) then return end
		end

		if ((Player:HolyPower() <= 4 and Player:BuffDown(S.RisingSunlightBuff) or Player:HolyPower() <= 2))  then
			if S.HolyShock:IsCastable() then
				if MainAddon.CastCycleAlly(S.HolyShock, MEMBERS, HolyShockFunc) then return end
			end 
			if S.HolyShock:IsReady() and TargetIsValid() and Target:IsSpellInRange(S.HolyShock) then
				if MainAddon.SetTopColor(6, "Holy Shock Enemy") then return end
			end
		end

		if S.HolyPrism:IsReady() and (not S.Aurora:IsAvailable() or Player:BuffDown(S.DivinePurposeBuff)) then
			if MainAddon.CastCycleAlly(S.HolyPrism, MEMBERS, WordOfGloryMembersFunc2) then return end
		end

		if S.HolyLight:IsCastable() and (Player:BuffUp(S.DivineFavorBuff) and Player:BuffUp(S.InfusionOfLightBuff)) and not Player:IsMoving() and (Player:HolyPower() <= 4 or not S.TowerOfRadiance:IsAvailable()) then
			if MainAddon.CastCycleAlly(S.HolyLight, MEMBERS, WordOfGloryMembersFunc2) then return end
		end

		if S.HammerOfWrath:IsReady() and S.Veneration:IsAvailable() and TargetIsValid() and Target:IsSpellInRange(S.HammerOfWrath) and Player:HolyPower() <= 4  then
			if Cast(S.HammerOfWrath) then return end
		end

		if S.Judgment:IsReady()  and S.TruthPrevails:IsAvailable() and TargetIsValid() and Target:IsSpellInRange(S.Judgment) and Player:HolyPower() <= 4  then
			if Cast(S.Judgment) then return end
		end

		if S.CrusaderStrike:IsReady()  and TargetIsValid() and Target:IsInMeleeRange(5) and Player:HolyPower() <= 4  then
			if Cast(S.CrusaderStrike) then return end
		end

		if S.Judgment:IsReady() and TargetIsValid() and Target:IsSpellInRange(S.Judgment) and Player:HolyPower() <= 4  then
			if Cast(S.Judgment) then return end
		end

		if S.HammerOfWrath:IsReady() and TargetIsValid() and Target:IsSpellInRange(S.HammerOfWrath) and Player:HolyPower() <= 4  then
			if Cast(S.HammerOfWrath) then return end
		end

		if S.Consecration:IsCastable() and Target:IsInMeleeRange(8) and Player:AffectingCombat() and not Player:IsMoving() and Target:DebuffDown(S.ConsecrationDebuff) then
			if Cast(S.Consecration) then return end
		end

		if Player:HolyPower() >= 5 then
			if (S.WordOfGlory:IsCastable() or S.EternalFlame:IsCastable()) then
				if MainAddon.CastCycleAlly(S.WordOfGlory, MEMBERS, WordOfGloryMembersFunc) then return end
			end
			if S.ShieldOfTheRighteous:IsReady() and not MainAddon.Toggle:GetToggle("ForceHeal") and TargetIsValid() and Target:IsInMeleeRange(5) then
				if Cast(S.ShieldOfTheRighteous) then return end
			end
		end

		if S.FlashOfLight:IsCastable() and not Target:IsInMeleeRange(5) and not Player:IsMoving() and (Player:HolyPower() <= 4 or not S.TowerOfRadiance:IsAvailable())  then
			if MainAddon.CastCycleAlly(S.FlashOfLight, MEMBERS, HolyShockFunc) then return end
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
