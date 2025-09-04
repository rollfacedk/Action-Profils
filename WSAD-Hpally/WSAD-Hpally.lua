local function MyRoutine()
	local Author = 'Rollface - Holy Paladin 11.2 | v1.0'
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
		ConsecrationDebuff = Spell(204242),
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
		WordOfGlory = MultiSpell(85673, 156322),
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
		DivineGuidance = Spell(460822),
		ImprovedCleanse = Spell(393024),
		HallowedGround = Spell(377043),
		LayONHands = MultiSpell(633, 471195),
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
		TyrSDeliveranceBuff = Spell(200654),
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
		SunSear = Spell(431413),
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
		VenomVolley = Spell(432227),
		SignetOfPrioryBuff = Spell(443531),


		DebuffsNeedsHealing = MultiSpell(443969, 1218308),
		HolyArmament = Spell(432459),
		RiteofAdjuration                     = Spell(433583),
  		RiteofSanctification                 = Spell(433568),
		RiteofAdjurationBuff                 = Spell(433584),
		RiteofSanctificationBuff             = Spell(433550),
	

	
	}
	
	local I = { SignetOfPriory = Item(219308, {13, 14}),}
	local OnUseExcludes = {
	
	}


	
	local function RollyfaceTargetIsValid()
		return (Player:AffectingCombat() and Target:Exists() and 
		Player:CanAttack(Target) and not Target:IsDeadOrGhost() and 
		(Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	end

	local function TargetOk()
		return RollyfaceTargetIsValid() and Target:NPCID() == 210271 or MainAddon.TargetIsValid()
	end

	local function DuringAvengingCrusader()
		return Player:BuffUp(S.AvengingCrusader) and ((S.CrusaderStrike:IsReady() and Target:IsInMeleeRange(5)) or (S.Judgment:IsReady() and Target:IsSpellInRange(S.Judgment)))
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
		message( 'v1.0 Update: Optimized Avenging Crusader Talent', 1)
		MainAddon:Print('This is my own addon =), Hurray.')
	end

	-- --- ===== Trinket Variables =====
	-- local Trinket1, Trinket2
	-- local VarTrinket1Range, VarTrinket2Range
	-- local VarTrinketFailures = 0
	-- local function SetTrinketVariables()
	-- local T1, T2 = Player:GetTrinketData(OnUseExcludes)

	-- -- If we don't have trinket items, try again in 5 seconds.
	-- if VarTrinketFailures < 5 and ((T1.ID == 0 or T2.ID == 0) or (T1.SpellID > 0 and not T1.Usable or T2.SpellID > 0 and not T2.Usable)) then
	-- 	VarTrinketFailures = VarTrinketFailures + 1
	-- 	Delay(5, function()
	-- 		SetTrinketVariables()
	-- 	end
	-- 	)
	-- 	return
	-- end
	

	-- Trinket1 = T1.Object
	-- Trinket2 = T2.Object

	-- VarTrinket1Range = T1.Range
	-- VarTrinket2Range = T2.Range
	-- end
	-- SetTrinketVariables()

	-- --- ===== Event Registrations =====
	-- HL:RegisterForEvent(function()
	-- 	VarTrinketFailures = 0
	-- 	SetTrinketVariables()
	-- end, "PLAYER_EQUIPMENT_CHANGED")

	TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()

	local function LowestHealthTarget(UnitTarget)
		return UnitTarget:HealthPercentage() <= 95
	end;

	local function LayOnHandsFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 20 and UnitTarget:BuffDown(S.BlessingOfProtection) and UnitTarget:BuffDown(S.BlessingOfSacrifice) 
	end;

	local function TEST(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 100)
	end;

	local function MustHeal(UnitTarget)
		return (UnitTarget:HealthPercentage() <= 75)
	end;

	local function MustHeal2(UnitTarget)
		return (UnitTarget:HealthPercentageFlat() <= 65)
	end;

	local function FillerHeal(UnitTarget)
		return (UnitTarget:HealthPercentageFlat() <= 90)
	end;

	local function BlessingOfSacrificeFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 35 and UnitTarget:GUID() ~= Player:GUID() and UnitTarget:BuffDown(S.BlessingOfProtection) and UnitTarget:BuffDown(S.BlessingOfSacrifice)
	end;

	local function BlessingOfProtectionFunc(UnitTarget)
		return UnitTarget:HealthPercentageFlat() <= 25 and UnitTarget:BuffDown(S.BlessingOfProtection) and UnitTarget:BuffDown(S.BlessingOfSacrifice) and UnitTarget:DebuffDown(S.ForberanceDebuff)
	end;

	local function Beacons(UnitTarget)
		return UnitTarget:HealthPercentage() <= 100 and UnitTarget:BuffDown(S.BeaconOfLightBuff) and UnitTarget:BuffDown(S.BeaconOfFaithBuff)
	end;

	local function MainRotation()
		if not Player:AffectingCombat() and S.HolyArmament:IsAvailable() then
			if S.RiteofAdjuration:IsCastable() and S.RiteofAdjuration:IsAvailable() and Player:BuffDown(S.RiteofAdjurationBuff) then
				MainAddon.SetTopColor(1, "Rite of Adjuration/Sanctification")
			end

			if S.RiteofSanctification:IsCastable() and S.RiteofSanctification:IsAvailable() and Player:BuffDown(S.RiteofSanctificationBuff) then
				MainAddon.SetTopColor(1, "Rite of Adjuration/Sanctification")
			end
		end
		
		-- if Player:AffectingCombat() then
		-- 	MainAddon.SetTopColor(1, "Target Enemy")
		-- end
		
		TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()

		if S.DevotionAura:IsCastable() and Player:BuffDown(S.DevotionAura) then
			if Cast(S.DevotionAura) then return end
		end

		-- utility defensive
		if Player:AffectingCombat() then

			if Player:BuffDown(S.DivineProtection) and Player:BuffDown(S.DivineShield) and Player:HealthPercentage() <= 40 then
				if S.DivineProtection:IsCastable() then
					if Cast(S.DivineProtection) then return end
				end 

				if S.DivineShield:IsCastable() then
					if Cast(S.DivineShield) then return end
				end
			end

			if S.LayONHands:IsCastable() then
				if MainAddon.CastCycleAlly(S.LayONHands , MEMBERS, LayOnHandsFunc) then return "LOH TANKS" end
			end

			if S.BlessingOfSacrifice:IsCastable() then
				if MainAddon.CastCycleAlly(S.BlessingOfSacrifice, TANKS, BlessingOfSacrificeFunc) then return end
			end

		end

		-- CDS
	


		-- local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes)
		--   if ItemToUse then
		-- 	local DisplayStyle = true
		-- 	local IsTrinket = ItemSlot == 13 or ItemSlot == 14
		-- 	if not IsTrinket then DisplayStyle = true end
		-- 	if (IsTrinket and true) or (not IsTrinket and true) then
		-- 		if Cast(ItemToUse, DisplayStyle, not Target:IsInRange(ItemRange)) then return "Generic use_items for " .. ItemToUse:Name() .. " main 8"; end
		-- 	end
		-- end
		
	


		if Player:AffectingCombat() and HealingEngine:MembersUnderPercentage(75, nil, 40) >= 4  then
			if S.AvengingWrath:IsCastable() then
				if Cast(S.AvengingWrath) then return end
			end
			if S.AuraMastery:IsCastable() then
				if Cast(S.AuraMastery) then return end
			end
		end
		
		-- During Avenging Crusader rotation
		if Player:BuffUp(S.AvengingCrusader) then
			if S.Judgment:IsReady() and TargetOk() and Target:IsSpellInRange(S.Judgment) then
				if Cast(S.Judgment) then return end
			end
			if S.CrusaderStrike:IsReady() and TargetOk() and Target:IsInMeleeRange(5) then
				if Cast(S.CrusaderStrike) then return end
			end
			if Player:AffectingCombat() and (Player:BuffDown(S.HolyBulwarkBuff) and Player:BuffDown(S.SacredWeaponBuff) or S.HolyBulwark:ChargesFractional() >= 1.8 or S.SacredWeapon:ChargesFractional() >= 1.75)  then
				if S.HolyBulwark:IsCastable() then
					if Cast(S.HolyBulwark, Player) then return end
				end
				if S.SacredWeapon:IsCastable() then
					if Cast(S.SacredWeapon, Player) then return end
				end
			end
		end

		if AoEON() and Player:BuffDown(S.AvengingCrusader) and (Player:BuffDown(S.BeaconOfVirtue) or not S.BeaconOfVirtue:IsAvailable()) then
			if HealingEngine:MembersUnderPercentage(75, nil, 40) >= 2 then	
						
				if S.BeaconOfVirtue:IsCastable() then		
					if Cast(S.BeaconOfVirtue, Player) then return end
				end	

			end

			if HealingEngine:MembersUnderPercentage(75, nil, 40) >= 3 then
				
				if (Player:BuffDown(S.DivinePurposeBuff) or not S.Aurora:IsAvailable()) then
					if S.HolyPrism:IsReady() then
						if MainAddon.SetTopColor(6, "Holy Prism Enemy") then return end
					end
				end

				if S.DivineToll:IsReady() and Player:HolyPower() < 3 then
					if MainAddon.CastCycleAlly(S.DivineToll, MEMBERS, MustHeal) then return end
				end

				if S.AvengingCrusader:IsCastable() then
					if Cast(S.AvengingCrusader) then return end
				end

			end
		
		end

		-- Healing
		if Player:IsInRaid() and HealingEngine:MembersUnderPercentage(85, nil, 40) >= 5  then
			if S.LightOfDawn:IsCastable() then
				if Cast(S.LightOfDawn) then return end
			end
		end

		if S.FlashOfLight:IsCastable() and Player:BuffUp(S.InfusionOfLightBuff) and ((Player:HolyPower() <= 4 and S.TowerOfRadiance:IsAvailable()) or not S.TowerOfRadiance:IsAvailable())  then
			if MainAddon.CastCycleAlly(S.FlashOfLight, MEMBERS, MustHeal) then return end
		end

		if (Player:HolyPower() <= 2 and Player:BuffUp(S.RisingSunlightBuff)) then
			if S.HolyShock:IsCastable() then
				if MainAddon.CastCycleAlly(S.HolyShock, MEMBERS, MustHeal) then return end
			end 
		end

		if S.HolyLight:IsCastable() and Player:BuffUp(S.DivineFavorBuff) and Player:BuffUp(S.InfusionOfLightBuff) and not Player:IsMoving() and (Player:HolyPower() <= 4 or not S.TowerOfRadiance:IsAvailable()) then
			if MainAddon.CastCycleAlly(S.HolyLight, MEMBERS, MustHeal) then return end
		end


		if (S.WordOfGlory:IsCastable()) then
			if MainAddon.CastCycleAlly(S.WordOfGlory, MEMBERS, MustHeal) then return end
		end

		if (Player:BuffDown(S.DivinePurposeBuff) or not S.Aurora:IsAvailable()) then
			if S.HolyPrism:IsReady() and HealingEngine:MembersUnderPercentage(75, nil, 40) >= 3 then
				if MainAddon.SetTopColor(6, "Holy Prism Enemy") then return end
			end

			if S.HolyPrism:IsReady() then
				if MainAddon.CastCycleAlly(S.HolyPrism, MEMBERS, MustHeal2) then return end
			end

			if S.BarrierOfFaith:IsReady() then
				if MainAddon.CastCycleAlly(S.BarrierOfFaith, MEMBERS, MustHeal2) then return end
			end
		end

		if S.DivineToll:IsReady() then
			if MainAddon.CastCycleAlly(S.DivineToll, MEMBERS, MustHeal2) then return end
		end

		if S.BlessingOfProtection:IsCastable() then
			if MainAddon.CastCycleAlly(S.BlessingOfProtection, HEALERS, BlessingOfProtectionFunc) then return end
		end
		
		if S.BlessingOfProtection:IsCastable() then
			if MainAddon.CastCycleAlly(S.BlessingOfProtection, DPS, BlessingOfProtectionFunc) then return end
		end


		-- Sacred weapons
		if Player:AffectingCombat() and (Player:BuffDown(S.HolyBulwarkBuff) and Player:BuffDown(S.SacredWeaponBuff) or S.HolyBulwark:ChargesFractional() >= 1.8 or S.SacredWeapon:ChargesFractional() >= 1.75)  then
			if S.HolyBulwark:IsCastable() then
				if Cast(S.HolyBulwark, Player) then return end
			end
			if S.SacredWeapon:IsCastable() then
				if Cast(S.SacredWeapon, Player) then return end
			end
		end


		if S.Judgment:IsReady() and TargetOk() and Target:IsSpellInRange(S.Judgment) and (Player:HolyPower() <= 3 or Player:HolyPower() <= 4 and Player:BuffDown(S.InfusionOfLightBuff))  then
			if Cast(S.Judgment) then return end
		end

		if S.HolyShock:IsCastable() then
			if (Player:HolyPower() <= 4) and Player:BuffDown(S.RisingSunlightBuff) then
				if MainAddon.CastCycleAlly(S.HolyShock, MEMBERS, MustHeal) then return end	
			end

			if ((Player:HolyPower() <= 4 or (Player:HolyPower() <= 2 and Player:BuffUp(S.RisingSunlightBuff)))) then 
				if TargetOk() and Target:IsSpellInRange(S.HolyShock) then
					if MainAddon.SetTopColor(6, "Holy Shock Enemy") then return end
				end
			end
		end
		
		if S.HammerOfWrath:IsReady() and S.Veneration:IsAvailable() and TargetOk() and Target:IsSpellInRange(S.HammerOfWrath) and Player:HolyPower() <= 4  then
			if Cast(S.HammerOfWrath) then return end
		end

		if S.CrusaderSMight:IsAvailable() then
			if S.CrusaderStrike:IsReady() and TargetOk() and Target:IsInMeleeRange(5) and Player:HolyPower() <= 4  then
				if Cast(S.CrusaderStrike) then return end
			end
		end

		if S.HammerOfWrath:IsReady() and TargetOk() and Target:IsSpellInRange(S.HammerOfWrath) and Player:HolyPower() <= 4  then
			if Cast(S.HammerOfWrath) then return end
		end


		if S.CrusaderStrike:IsReady() and TargetOk() and Target:IsInMeleeRange(5) and Player:HolyPower() <= 4  then
			if Cast(S.CrusaderStrike) then return end
		end

		if S.Consecration:IsCastable() and (Player:BuffStack(S.DivineGuidance) == 5) and TargetOk() and Target:IsInMeleeRange(5) then
			if Cast(S.Consecration) then return end
		end

		if Player:HolyPower() == 5 or (Player:BuffUp(S.InfusionOfLightBuff) and S.Judgment:CooldownRemains() <= 1 * Player:GCD() and Player:HolyPower() >= 4) or (Player:BuffUp(S.RisingSunlightBuff) and S.HolyShock:CooldownRemains() <= 1 * Player:GCD() and Player:HolyPower() >= 3) then
			if S.ShieldOfTheRighteous:IsCastable() then
				if Cast(S.ShieldOfTheRighteous) then return end
			end
		end
	
		if S.FlashOfLight:IsCastable() and Player:BuffDown(S.InfusionOfLightBuff) and ((Player:HolyPower() <= 4 or not S.TowerOfRadiance:IsAvailable()) and not Target:IsInMeleeRange(5))  then
			if Player:IsCasting() then return end
			if MainAddon.CastCycleAlly(S.FlashOfLight, MEMBERS, FillerHeal) then return end
		end

		if S.Consecration:IsCastable() and (Target:BuffDown(S.ConsecrationDebuff)) and TargetOk() and Target:IsInMeleeRange(5) then
			if Cast(S.Consecration) then return end
		end

	end

	
	MainAddon.SetCustomAPL(Author, SpecID, MainRotation, Init)
	local IsCastable;
	IsCastable = HL.AddCoreOverride("Spell.IsCastable", 
		function(self, ignoreSettings, ignoreMovement, bypassRecovery, ignoreChannel)		
			if self == S.FlashOfLight then
				if Player:IsCasting(S.FlashOfLight) then
					return false, "Already casting it."
				end
			end;
			if self == S.HolyLight then
				if Player:IsCasting(S.HolyLight) then
					return false, "Already casting it."
				end
			end;
			if self == S.RiteofAdjuration then
				if Player:IsCasting(S.RiteofAdjuration) then
					return false, "Already casting it."
				end
			end;
			if self == S.RiteofSanctification then
				if Player:IsCasting(S.RiteofSanctification) then
					return false, "Already casting it."
				end
			end;
		local BaseCheck, Reason = IsCastable(self, ignoreSettings, ignoreMovement, bypassRecovery, ignoreChannel)
		return BaseCheck, Reason
	end, 65)

	
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
