local function MyRoutine()

	
	local Author = 'Rollface-Disc Priest 11.2--COPY'
	local SpecID = 256 --Unholy --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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

	--ALL SPELLS ARE LOCATED ON Rotations/CLASSSPELL.lua, if one is missing tells us about it.
	local S = {


		-- Racials
		AncestralCall = Spell(274738),
		ArcanePulse = Spell(260364),
		ArcaneTorrent = Spell(50613),
		BagofTricks = Spell(312411),
		Berserking = Spell(26297),
		BerserkingBuff = Spell(26297),
		BloodFury = Spell(20572),
		BloodFuryBuff = Spell(20572),
		Fireblood = Spell(265221),
		LightsJudgment = Spell(255647),
		-- Abilities
		DeathAndMadness = Spell(321291),
		DesperatePrayer = Spell(19236),
		DivineStar = Spell(122121),
		HolyNova = Spell(132157), -- Melee, 12
		MindBlast = Spell(8092),
		MindSear = Spell(48045), -- Splash, 10
		PowerInfusion = Spell(10060),
		PowerWordFortitude = Spell(21562),
		PowerWordShield = Spell(17),
		ShadowWordDeath = Spell(32379),
		ShadowWordPain = Spell(589),
		ShadowWordPainDebuff = Spell(589),
		FlashHeal = Spell(2061),
		Smite = Spell(585),
		Renew = Spell(139),
		-- Talents
		Mindgames = Spell(375901),
		Manipulation = Spell(390996),
		Shadowfiend = MultiSpell(34433, 451235),
		CrystallineReflection = Spell(373457),
		Rhapsody = Spell(390622),
		PowerWordLife = Spell(373481),
		TwistofFate = Spell(390972),
		-- Buffs
		AberrantSpellforgeBuff = Spell(451895),
		PowerWordFortitudeBuff = Spell(21562),
		RhapsodyBuff = Spell(390636),
		SpymastersReportBuff = Spell(451199), -- Stacking buff from before using Spymaster's Web trinket
		SpymastersWebBuff = Spell(444959), -- Buff from using Spymaster's Web trinket
		TwistofFateBuff = Spell(390978),
		-- Debuffs
		-- Other
		Pool = Spell(999910),

		DispelMagic = Spell(528),
		PsychicHorror = Spell(64044),
		ShackleUndead = Spell(9484),
		DominateMind = Spell(205364),
		PsychicScream = Spell(8122),
		VoidTendrils = Spell(108920),
		VampiricEmbrace = Spell(15286),
		MassDispel = Spell(32375),
		Fade = Spell(586),
		AngelicFeather = Spell(121536),
		DominateMind = Spell(205364),
		BodyAndSoul = Spell(64129),
		TwinsoftheSunPriestess = Spell(373466),
		Phantasm = Spell(108942),
		Shadowmeld = Spell(58984),
		-- Custom Buffs
		BodyAndSoulBuff = Spell(65081),
		AngelicFeatherBuff = Spell(121557),
		PowerInfusionBuff = Spell(10060),



		-- Custom
		MassDispel = Spell(32375),
		ImprovedPurify = Spell(390632),
		Fade = Spell(586),
		Shadowmeld = Spell(58984),
		PsychicScream = Spell(8122),
		Phantasm = Spell(108942),
		VoidShift = Spell(108968),
		VoidBlastDisc = Spell(450215),
		
		
		ShieldofAbsolution = Spell(394624),
		DeathAndMadness = Spell(321291),
		DispelMagic = Spell(528),
		DesperatePrayer = Spell(19236),
		HolyNova = Spell(132157),
		MindBlast = Spell(8092),
		PowerInfusion = Spell(10060),
		PowerInfusionBuff = Spell(10060),
		ShadowWordDeath = Spell(32379),
		ShadowWordPain = Spell(589),
		ShadowWordPainDebuff = Spell(589),
		Smite = MultiSpell(585, 450215),
		PowerWordShield = Spell(17),
		PowerWordFortitude = Spell(21562),
		FlashHeal = Spell(2061),
		AngelicFeather = Spell(121536),
		ShadowPenance = Spell(400169),
		ShadowDivineStar = Spell(122121),
		ShadowHalo = Spell(120517),
		Renew = Spell(139),
		Shadowfiend = Spell(34433),
		BodyAndSoul = Spell(64129),
		HarshDiscipline = Spell(373180),
		PowerWordBarrier = Spell(62618),
		PainSuppression = Spell(33206),
		VampiricEmbrace = Spell(15286),
		VoidTendrils = Spell(108920),
		LeapofFaith = Spell(73325),
		Evangelism = Spell(472433),
		LightsWrath = Spell(373178),
		Rhapsody = Spell(390622),
		UltimatePenitence = Spell(421453),
		UltimatePenitenceChannel = Spell(421434),
		InescapableTorment = Spell(373427),
		TwilightEquilibrium = Spell(390705),
		PowerWordFortitudeBuff = Spell(21562),
		AngelicFeatherBuff = Spell(121557),
		BodyAndSoulBuff = Spell(65081),
		HarshDisciplineBuff = Spell(373183),
		SurgeofLightBuff = Spell(114255),
		Atonement = Spell(194384),
		RhapsodyBuff = Spell(390636),
		AscendedNova = Spell(325020),
		BoonoftheAscended = Spell(325013),
		BoonoftheAscendedBuff = Spell(325013),
		FaeGuardians = Spell(327661),
		FaeGuardiansBuff = Spell(327661),
		UnholyNova = Spell(324724),
		FieldofBlossoms = Spell(319191),
		GroveInvigoration = Spell(322721),
		PustuleEruption = Spell(351094),
		VolatileSolvent = Spell(323074),
		VolatileSolventHumanBuff = Spell(323491),
		ScarsofFraternalStrifeBuff4 = Spell(368638),
		TemptationBuff = Spell(234143),
		Pool = Spell(999910),
		Penance = MultiSpell(47540, 400169),
		PowerWordRadiance = Spell(194509),
		Schism = Spell(214621),
		Mindbender = Spell(123040),
		ShadowCovenant = Spell(314867),
		ShadowCovenantBuff = Spell(322105),
		PurgeTheWicked = Spell(204197),
		PurgeTheWickedDebuff = Spell(204213),
		Halo = Spell(120517),
		SpiritShell = Spell(109964),
		PowerWordLife = Spell(373481),
		Rapture = Spell(47536),
		PrayerofMending = Spell(33076),
		PrayerofMendingBuff = Spell(41635),
		DominateMind = Spell(205364),
		PremonitionTalent = Spell(428924),
		PremonitionOfInsight = Spell(428933),
		PremonitionOfPiety = Spell(428930),
		PremonitionOfSolace = Spell(428934),
		PremonitionOfClairvoyance = Spell(440725),
		VoidHeartBuff = Spell(449887),


		-- Abilities
		VoidBlastAbility = Spell(450983),
		VoidWraithAbility = Spell(451235),
		-- Talents
		DepthofShadows = Spell(451308),
		DevourMatter = Spell(451840),
		EntropicRift = Spell(447444),
		InnerQuietus = Spell(448278),
		VoidBlast = Spell(450405),
		VoidEmpowerment = Spell(450138),
		VoidWraith = Spell(451234),



		-- Talents
		PremonitionOfInsight = Spell(428933),
		PremonitionOfPiety = Spell(428930),
		PremonitionOfSolace = Spell(428934),
		PremonitionOfClairvoyance = Spell(440725),
		Wastenotime = Spell(440683),
		WealandWoeBuff = Spell(390787),
		WealandWoe = Spell(390786),

		

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
		message( 'READ READ READ: Only use for 5 man party [M+]. Also you can mouseover to your ally if you want to focus healing, it will spam Flash Heal to your mouseover', 1)
		MainAddon:Print('Enjoy')
	end


	

	local Enemies5y
	local EnemiesCount5
	

	local function FillerFlashHealFunction2(UnitTarget)
		return UnitTarget:HealthPercentage() <= 85
	end;

	
	local function FillerFlashHealFunction(UnitTarget)
		return UnitTarget:HealthPercentage() <= 85 and UnitTarget:BuffRemains(S.Atonement) >= 3
	end;

	local function AttonementBuffFunction(UnitTarget)
		return UnitTarget:BuffRefreshable(S.Atonement) and UnitTarget:HealthPercentage() <= 85 and (Player:AffectingCombat())
	end;


	local function Healing(UnitTarget)
		return UnitTarget:BuffRefreshable(S.PowerWordShield) and UnitTarget:HealthPercentage() <= 75
	end;

	local function Healing2(UnitTarget)
		return UnitTarget:BuffRefreshable(S.PowerWordShield) and UnitTarget:GUID() == Player:GUID()
	end;

	local function Healing3(UnitTarget)
		return UnitTarget:BuffRefreshable(S.PowerWordShield) and UnitTarget:HealthPercentage() <= 65
	end;




	local function Voidweaverstuff(UnitTarget)
		return UnitTarget:BuffRefreshable(S.Atonement) and UnitTarget:HealthPercentage() <= 85
	end;

	local function Voidweaverstuff2(UnitTarget)
		return UnitTarget:BuffRefreshable(S.Atonement) and UnitTarget:BuffRefreshable(S.PowerWordShield) and UnitTarget:HealthPercentage() <= 85
	end;








	local function PainSuppressionFunction(UnitTarget)
		return UnitTarget:BuffRefreshable(S.PainSuppression) and UnitTarget:BuffRefreshable(S.PowerWordShield) and UnitTarget:HealthPercentageFlat() <= 30
	end;

	S.PremonitionOfClairvoyance.offGCD = true
	S.PremonitionOfInsight.offGCD = true
	S.PremonitionOfPiety.offGCD = true
	S.PremonitionOfSolace.offGCD = true
	S.PainSuppression.offGCD = true
	S.PowerWordFortitude.offGCD = true
	S.DesperatePrayer.offGCD = true

	local function MainRotation()
		if Player:IsInRaidArea() then
			MainAddon:Print('Not usable in raid')
		end
		if not Player:IsInRaidArea() then
			if Player:AffectingCombat() and (Target:IsDeadOrGhost() and not Target:IsAPlayer()) then
				MainAddon.SetTopColor(1, "Target Enemy")
			end
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

		


			if Player:ManaPercentage() <= 80 then
				if S.ArcaneTorrent:IsReady() then
					if L_13_(S.ArcaneTorrent) then
						return "Arcane Torrent"
					end
				end
			end

			if Player:IsInPartyOrRaid() then
				if Player:IsTankingAoE(40) or Player:HealthPercentageFlat() <= 65 then
					if S.Fade:IsCastable() then
						if Cast(S.Fade) then
							return 'Fade'
						end
					end
				end
			end
			

			if Player:HealthPercentageFlat() <= 30 and S.DesperatePrayer:IsCastable() then
				if S.Berserking:IsCastable() then
					if Cast(S,Berserking, true) then
						return "Berserking"
					end
				end;
				if S.BloodFury:IsCastable() then
					if Cast(S.BloodFury, true) then
						return "Blood Fury"
					end
				end;
				if Cast(S.DesperatePrayer, true) then
					return "Desperate Prayer"
				end
			end

			if S.PowerInfusion:IsCastable() and Target:TimeToDie() > 20 and Player:AffectingCombat() then
				if HL.Priest:CastPowerInfusion() then
					return "Power Infusion CDs"
				end
			end;
			
			if S.PowerWordFortitude:IsReady(Player) and HealingEngine:LowestHP(true, 40) >= 75 and (Player:BuffDown(S.PowerWordFortitude, true) or MainAddon.GroupBuffMissing(S.PowerWordFortitude)) then
				if Cast(S.PowerWordFortitude) then
					return
				end
			end;
			
			if S.VoidShift:IsCastable() then
				if Player:HealthPercentage() <= 30 then
					if CastTargetIfAlly(S.VoidShift, DPS, "max", Test, Voidshift_Func, true) then
						return "Void Shift"
					end
				end;
			end;



			if HealingEngine:MembersUnderPercentage(75, nil, 40) >= 4 then

				if S.VampiricEmbrace:IsCastable() then	
					if S.Berserking:IsCastable() then
						if Cast(S.Berserking, true) then
							return "Berserking"
						end
					end;
					if S.BloodFury:IsCastable() then
						if Cast(S.BloodFury, true) then
							return "Blood Fury"
						end
					end;
					if Cast(S.VampiricEmbrace, true) then
						return "Vampiric Embrace"
					end
				end
			
			end

			-- CDS

			if HealingEngine:BuffTotalByHealthPercentage(S.Atonement, 40, 85) >= 4 and Player:AffectingCombat() then
				if S.Evangelism:IsCastable() then
					if Cast(S.Evangelism) then return end
				end	
			end


			if HealingEngine:BuffTotalByHealthPercentage(S.Atonement, 40, 85) >= 5 and Player:AffectingCombat() then
				if S.UltimatePenitence:IsCastable() and Player:BuffDown(S.Evangelism) and Player:BuffDown(S.ShadowCovenantBuff) then	
					if S.Berserking:IsCastable() then
						if Cast(S.Berserking, true) then
							return "Berserking"
						end
					end;
					if S.BloodFury:IsCastable() then
						if Cast(S.BloodFury, true) then
							return "Blood Fury"
						end
					end;
					if Cast(S.UltimatePenitence, true) then
						return "Vampiric Embrace"
					end
				end	
			end

			
			if S.PainSuppression:IsCastable() then
				if CastCycleAlly(S.PainSuppression, MEMBERS, PainSuppressionFunction) then return end
			end

			if (HealingEngine:MembersUnderPercentage(85, nil, 40) >= 3) then

				if S.Shadowfiend:IsReady() and MainAddon.TargetIsValid() and S.Penance:IsCastable() then
					if Cast(S.Shadowfiend) then return end
				end

				if Player:BuffDown(S.Wastenotime) and Player:BuffDown(S.PremonitionOfPiety) and Player:BuffDown(S.PremonitionOfInsight) and Player:BuffDown(S.PremonitionOfClairvoyance) and Player:BuffDown(S.PremonitionOfSolace) then		
					if S.PremonitionOfPiety:IsCastable() then
						if Cast(S.PremonitionOfPiety) then return end
					end
					if S.PremonitionOfInsight:IsCastable() then
						if Cast(S.PremonitionOfInsight) then return end
					end
					if S.PremonitionOfClairvoyance:IsCastable() then
						if Cast(S.PremonitionOfClairvoyance) then return end
					end
					if S.PremonitionOfSolace:IsCastable() then
						if Cast(S.PremonitionOfSolace) then return end
					end		
				end

				if S.Halo:IsCastable() then
					if Cast(S.Halo) then return end
				end

			end

			if S.AngelicFeather:IsCastable() and Player:IsMovingFor() >= 1 and Player:AffectingCombat() and Player:BuffDown(S.AngelicFeatherBuff) then
				if Cast(S.AngelicFeather, Player) then return end
			end

			-- Voidweaver
			if S.PowerWordRadiance:IsCastable() and S.EntropicRift:IsAvailable() and (Player:BuffUp(S.VoidHeartBuff) or S.MindBlast:CooldownRemains() <= 2) then	
				if CastCycleAlly(S.PowerWordRadiance, MEMBERS,Voidweaverstuff) then return end
			end

			if Player:BuffUp(S.VoidHeartBuff) then

				if S.FlashHeal:IsCastable() and Player:BuffUp(S.SurgeofLightBuff) then
					if CastCycleAlly(S.FlashHeal, MEMBERS, Voidweaverstuff) then return end
				end

				if S.PowerWordShield:IsCastable() then
					if CastCycleAlly(S.PowerWordShield, MEMBERS, Voidweaverstuff2) then return end
				end
	
				if S.Renew:IsCastable() then
					if CastCycleAlly(S.Renew, MEMBERS, Voidweaverstuff) then return end
				end


				if MainAddon.TargetIsValid() then

					if S.ShadowWordPain:IsReady() and Target:IsSpellInRange(S.ShadowWordPain) and Target:DebuffRefreshable(S.ShadowWordPainDebuff) then
						if Cast(S.ShadowWordPain) then return end
					end
	
					if S.Penance:IsReady() and Target:TimeToDie() >= 2 and Target:IsSpellInRange(S.Penance) then
						if MainAddon.SetTopColor(6, "Penance Enemy") then return end
					end
	
					if S.Smite:IsCastable() and Target:IsSpellInRange(S.Smite) then
						if Cast(S.Smite) then return end
					end
	
				end

			end
			
			-- Atonement
			if S.PowerWordRadiance:IsCastable() and (Player:BuffUp(S.Wastenotime) or HealingEngine:MembersUnderPercentage(85, nil, 40) >= 3) then	
				if Player:IsCasting(S.PowerWordRadiance) then return end
				if CastCycleAlly(S.PowerWordRadiance, MEMBERS, AttonementBuffFunction) then return end
			end


			-- Healing
			if S.Penance:IsCastable() and Player:BuffDown(S.PremonitionOfInsight) then
				if CastCycleAlly(S.Penance, MEMBERS, Healing) then return end
			end

			if S.PowerWordShield:IsCastable() then
				if CastCycleAlly(S.PowerWordShield, MEMBERS, Healing) then return end
			end

			if S.FlashHeal:IsCastable() and Player:BuffUp(S.SurgeofLightBuff) then
				if CastCycleAlly(S.FlashHeal, MEMBERS, Healing) then return end
			end

			if S.PowerWordShield:IsCastable() and Player:AffectingCombat()  then
				if CastCycleAlly(S.PowerWordShield, MEMBERS, Healing2) then return end
			end

			if S.FlashHeal:IsCastable() and not MouseOver:IsDeadOrGhost() and MouseOver:IsAPlayer() and MouseOver:HealthPercentageFlat() <= 85 then
				if Cast(S.FlashHeal, Focus) then return end
			end

			if S.PowerWordRadiance:IsCastable() and S.PowerWordRadiance:ChargesFractional() >= 3 then
				if Player:IsCasting(S.PowerWordRadiance) then return end	
				if CastCycleAlly(S.PowerWordRadiance, MEMBERS, AttonementBuffFunction) then return end
			end

			if S.FlashHeal:IsCastable() then
				if Player:IsCasting(S.FlashHeal) then return end
				if CastCycleAlly(S.FlashHeal, MEMBERS, AttonementBuffFunction) then return end
			end

			if S.Renew:IsCastable() then
				if CastCycleAlly(S.Renew, MEMBERS, AttonementBuffFunction) then return end
			end

			if S.Penance:IsCastable() then
				if CastCycleAlly(S.Penance, MEMBERS, Healing3) then return end
			end

			if S.Penance:IsCastable() and S.PremonitionTalent:IsAvailable() then
				if CastCycleAlly(S.Penance, MEMBERS, Healing) then return end
			end
			



			-- DPS
			if MainAddon.TargetIsValid() then

				if S.ShadowWordPain:IsReady() and Target:IsSpellInRange(S.ShadowWordPain) and Target:DebuffRefreshable(S.ShadowWordPainDebuff) then
					if Cast(S.ShadowWordPain) then return end
				end

				if S.Mindbender:IsReady() and (S.MindBlast:CooldownRemains() <= Player:GCD() * 1 or not S.EntropicRift:IsAvailable()) and Target:IsSpellInRange(S.Mindbender) and MainAddon.TargetIsValid() then
					if Cast(S.Mindbender, "TEEEEE") then return end
				end

				if S.MindBlast:IsCastable() and Target:IsSpellInRange(S.MindBlast) then
					if Cast(S.MindBlast) then return end
				end

				if S.Penance:IsReady() and Target:TimeToDie() >= 2 and Target:IsSpellInRange(S.Penance) then
					if MainAddon.SetTopColor(6, "Penance Enemy") then return end
				end

				if S.Smite:IsCastable() and Target:IsSpellInRange(S.Smite) then
					if Cast(S.Smite) then return end
				end

			end

			-- Fillers

			if S.FlashHeal:IsCastable() and not Player:AffectingCombat() then
				if CastCycleAlly(S.FlashHeal, MEMBERS, FillerFlashHealFunction2) then return end
			end
		end

	end
	MainAddon.SetCustomAPL(Author, SpecID, MainRotation, Init)
	local IsCastable;
	IsCastable = HL.AddCoreOverride("Spell.IsCastable", 
		function(self, BypassRecovery, Range, AoESpell, ThisUnit, Offset)

			if self == S.FlashHeal then
				if Player:IsCasting(S.FlashHeal) then
					return false
				end
			end;

			if self == S.Smite then
				if Player:IsCasting(S.Smite) then
					return false
				end
			end;

			if self == S.PowerWordRadiance then
				if Player:IsCasting(S.PowerWordRadiance) then
					return false
				end
			end;

		local BaseCheck, Reason = IsCastable(self, BypassRecovery, Range, AoESpell, ThisUnit, Offset)
		return BaseCheck, Reason
	end, 256)
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