local function MyRoutine()
	local Author = 'Protection Paladin M+'
	local SpecID = 66 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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
		AncestralCall                         = Spell(274738),
		ArcanePulse                           = Spell(260364),
		ArcaneTorrent                         = Spell(50613),
		BagofTricks                           = Spell(312411),
		Berserking                            = Spell(26297),
		BloodFury                             = Spell(20572),
		Fireblood                             = Spell(265221),
		GiftoftheNaaru                        = Spell(59542),
		LightsJudgment                        = Spell(255647),
		-- Abilities
		Consecration                          = Spell(26573),
		CrusaderStrike                        = Spell(35395),
		DivineShield                          = Spell(642),
		DivineSteed                           = Spell(190784),
		FlashofLight                          = Spell(19750),
		HammerofJustice                       = Spell(853),
		HandofReckoning                       = Spell(62124),
		Judgment                              = Spell(20271),
		Rebuke                                = Spell(96231),
		ShieldoftheRighteous                  = Spell(53600),
		WordofGlory                           = Spell(85673),
		-- Talents
		AvengingWrath                         = Spell(31884),
		HammerofWrath                         = Spell(24275),
		HolyAvenger                           = Spell(105809),
		LayonHands 			      =	MultiSpell(633, 471195),
		OfDuskandDawn                         = Spell(409441),
		Seraphim                              = Spell(152262),
		VengefulWrath                         = Spell(406835),
		ZealotsParagon                        = Spell(391142),
		-- Auras
		ConcentrationAura                     = Spell(317920),
		CrusaderAura                          = Spell(32223),
		DevotionAura                          = Spell(465),
		RetributionAura                       = Spell(183435),
		-- Buffs
		AvengingWrathBuff                     = Spell(31884),
		BlessingofDawnBuff                    = Spell(385127),
		BlessingofDuskBuff                    = Spell(385126),
		ConsecrationBuff                      = Spell(188370),
		DivinePurposeBuff                     = Spell(223819),
		HolyAvengerBuff                       = Spell(105809),
		SeraphimBuff                          = Spell(152262),
		ShieldoftheRighteousBuff              = Spell(132403),
		-- Debuffs
		ConsecrationDebuff                    = Spell(204242),
		JudgmentDebuff                        = Spell(197277),
		MarkofFyralathDebuff                  = Spell(414532),
		-- Pool
		Pool                                  = Spell(999910),




		-- Abilities
		HolyBulwark                          = Spell(432459),
		SacredWeapon                         = Spell(432472),
		-- Talents
		HolyArmaments                        = Spell(432459),
		RiteofAdjuration                     = Spell(433583),
		RiteofSanctification                 = Spell(433568),
		-- Buffs
		BlessedAssuranceBuff                 = Spell(433019),
		RiteofAdjurationBuff                 = Spell(433584),
		RiteofSanctificationBuff             = Spell(433550),
		SacredWeaponBuff                     = Spell(432502),
		BlessingOfSacrifice = Spell(6940),
		BlessingOfProtection = Spell(1022),




		-- Talents
		HammerofLight                        = Spell(427453),
		LightsDeliverance                    = Spell(425518),
		LightsGuidance                       = Spell(427445),
		-- Buffs
		LightsDeliveranceBuff                = Spell(433674),
		ShaketheHeavensBuff                  = Spell(431536),

		-- Abilities
		Judgment                              = Spell(275779),
		-- Talents
		ArdentDefender                        = Spell(31850),
		AvengersShield                        = Spell(31935),
		BastionofLight                        = Spell(378974),
		BlessedHammer                         = Spell(204019),
		BulwarkofRighteousFury                = Spell(386653),
		CrusadersJudgment                     = Spell(204023),
		DivineToll                            = Spell(375576),
		EyeofTyr                              = Spell(387174),
		GuardianofAncientKings                = MultiSpell(86659,212641),
		HammeroftheRighteous                  = Spell(53595),
		InmostLight                           = Spell(405757),
		MomentofGlory                         = Spell(327193),
		Redoubt                               = Spell(280373),
		RighteousProtector                    = Spell(204074),
		Sentinel                              = Spell(389539),
		-- Buffs
		ArdentDefenderBuff                    = Spell(31850),
		BastionofLightBuff                    = Spell(378974),
		BulwarkofRighteousFuryBuff            = Spell(386652),
		GuardianofAncientKingsBuff            = MultiSpell(86659,212641),
		MomentofGloryBuff                     = Spell(327193),
		RedoubtBuff                           = Spell(280375),
		SanctificationBuff                    = Spell(424616), -- T31, 2pc
		SanctificationEmpowerBuff             = Spell(424622), -- T31, 2pc
		SentinelBuff                          = Spell(389539),
		ShiningLightFreeBuff                  = Spell(327510),
		BlessedAssurance                     = Spell(433015),
		DivineGuidanceBuff                   = Spell(433106),
		Hammerfall                           = Spell(432463),
		ForberanceDebuff = Spell(25771),
	
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
		message( 'I made this, do you like it?', 1)
		MainAddon:Print('This is my own addon =), Hurray.')
	end

	--- ===== Rotation Variables =====
	local ActiveMitigationNeeded
	local IsTanking
	local Enemies8y, Enemies30y
	local EnemiesCount8y, EnemiesCount30y
	local VarSanctificationMaxStack = 5

	local function WordofGloryFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 60
	end;

	local function LayonHANDSFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 25
	end;

	local function LayonHANDSFunc2(UnitTarget)
		return UnitTarget:HealthPercentage() <= 25 and UnitTarget:DebuffDown(S.ForberanceDebuff) and UnitTarget:GUID() == Player:GUID()
	end;

	local function BlessingOfSacrificeFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 30 and UnitTarget:GUID() ~= Player:GUID()
	end;

	local function BlessingOfProtectionFunc(UnitTarget)
		return UnitTarget:HealthPercentage() <= 30 and UnitTarget:BuffDown(S.BlessingOfProtection) and UnitTarget:DebuffDown(S.ForberanceDebuff)
	end;

	--- ===== Helper Functions =====
	local function HammerfallICD()
		if not S.Hammerfall:IsAvailable() then return 0 end
		local LastCast = mathmin(S.ShieldoftheRighteous:TimeSinceLastCast(), S.WordofGlory:TimeSinceLastCast())
		return mathmax(0, 1 - LastCast)
	end
	
	local function HPGTo2Dawn()
		if not S.OfDuskandDawn:IsAvailable() then return -1 end
		return 6 - Paladin.HPGCount - (Player:BuffStack(S.BlessingofDawnBuff) * 3)
	end
	
	local function MissingAura()
		return (Player:BuffDown(S.RetributionAura) and Player:BuffDown(S.DevotionAura) and Player:BuffDown(S.ConcentrationAura) and Player:BuffDown(S.CrusaderAura))
	end
	
	--- ===== CastTargetIf Filter Functions =====
	local function EvaluateTargetIfFilterJudgment(TargetUnit)
		return TargetUnit:DebuffRemains(S.JudgmentDebuff)
	end
	-- Pull mob

	local function Pullmobfunc(TargetUnit)
		return TargetUnit:DebuffRemains(S.JudgmentDebuff) and not TargetUnit:AffectingCombat() and not TargetUnit:IsAPlayer()
	end

	local function Defensives()
		TANKS, HEALERS, MEMBERS, DPS, PRIORITY = HealingEngine:Fetch()	
		-- ardent_defender
		-- Note: This is now in the APL, but we are handling it as we have been.

		if S.BlessingOfSacrifice:IsCastable() then
			if MainAddon.CastCycleAlly(S.BlessingOfSacrifice, MEMBERS, BlessingOfSacrificeFunc) then return end
		end

		if S.LayonHands:IsCastable() and S.DivineShield:CooldownRemains() >= 25 then
			if MainAddon.CastCycleAlly(S.LayonHands, TANKS, LayonHANDSFunc2) then return end
		end

		if S.LayonHands:IsCastable() then
			if MainAddon.CastCycleAlly(S.LayonHands, HEALERS, LayonHANDSFunc) then return end
		end

		if S.LayonHands:IsCastable() then
			if MainAddon.CastCycleAlly(S.LayonHands, DPS, LayonHANDSFunc) then return end
		end

		if S.BlessingOfProtection:IsCastable() then
			if MainAddon.CastCycleAlly(S.BlessingOfProtection, HEALERS, BlessingOfProtectionFunc) then return end
		end

		if S.BlessingOfProtection:IsCastable() then
			if MainAddon.CastCycleAlly(S.BlessingOfProtection, DPS, BlessingOfProtectionFunc) then return end
		end

		if S.GuardianofAncientKings:IsCastable() and (Player:HealthPercentage() <= 50 and Player:BuffDown(S.ArdentDefenderBuff)) then
		  if Cast(S.GuardianofAncientKings) then return "guardian_of_ancient_kings defensive 4"; end
		end

		if S.ArdentDefender:IsCastable() and (Player:HealthPercentage() <= 50 and Player:BuffDown(S.GuardianofAncientKingsBuff)) then
		  if Cast(S.ArdentDefender) then return "ardent_defender defensive 6"; end
		end

		if S.WordofGlory:IsCastable() and (Player:HealthPercentage() <= 60) then
		  if (Player:BuffUp(S.DivinePurposeBuff) or Player:BuffUp(S.ShiningLightFreeBuff)) then
			if Cast(S.WordofGlory) then return "word_of_glory defensive 8"; end
		  end
		end

		if S.ShieldoftheRighteous:IsReady() and (Player:BuffRefreshable(S.ShieldoftheRighteousBuff) and (ActiveMitigationNeeded)) then
		  if Cast(S.ShieldoftheRighteous) then return "shield_of_the_righteous defensive 14"; end
		end

		if S.DivineShield:IsCastable() and Player:HealthPercentage() <= 30 then
			if Cast(S.DivineShield) then return end
		end

		if S.WordofGlory:IsCastable() and Player:HealthPercentage() > 85 then
			if (Player:BuffUp(S.DivinePurposeBuff) or Player:BuffUp(S.ShiningLightFreeBuff)) then
				if MainAddon.CastCycleAlly(S.WordofGlory, MEMBERS, WordofGloryFunc) then return end
			end
		end

    if S.Consecration:IsCastable() and (Player:BuffDown(S.ConsecrationBuff)) then
		  if Cast(S.Consecration) then return "consecration Defensive"; end
		end

	end

	local function Cooldowns()
		-- lights_judgment,if=spell_targets.lights_judgment>=2|!raid_event.adds.exists|raid_event.adds.in>75|raid_event.adds.up
		if S.LightsJudgment:IsCastable() and Target:IsSpellInRange(S.LightsJudgment) then
		  if Cast(S.LightsJudgment) then return "lights_judgment cooldowns 2"; end
		end
		-- avenging_wrath
		if S.AvengingWrath:IsCastable() then
		  if Cast(S.AvengingWrath) then return "avenging_wrath cooldowns 4"; end
		end
		-- Manually added: sentinel
		-- Note: Simc has back-end code for Protection Paladin to replace AW with Sentinel when talented.
		if S.Sentinel:IsCastable() then
		  if Cast(S.Sentinel) then return "sentinel cooldowns 6"; end
		end
		-- potion,if=buff.avenging_wrath.up
		-- moment_of_glory,if=(buff.avenging_wrath.remains<15|(time>10))
		if S.MomentofGlory:IsCastable() and (Player:BuffRemains(S.AvengingWrathBuff) < 15 or HL.CombatTime() > 10) then
		  if Cast(S.MomentofGlory) then return "moment_of_glory cooldowns 10"; end
		end
		-- divine_toll,if=spell_targets.shield_of_the_righteous>=3
		if S.DivineToll:IsCastable() and (EnemiesCount8y >= 3) then
		  if Cast(S.DivineToll) then return "divine_toll cooldowns 12"; end
		end
		-- bastion_of_light,if=buff.avenging_wrath.up|cooldown.avenging_wrath.remains<=30
		if S.BastionofLight:IsCastable() and (Player:BuffUp(S.AvengingWrathBuff) or S.AvengingWrath:CooldownRemains() <= 30) then
		  if Cast(S.BastionofLight) then return "bastion_of_light cooldowns 14"; end
		end
		-- invoke_external_buff,name=power_infusion,if=buff.avenging_wrath.up
		-- Note: Not handling external buffs.
		-- fireblood,if=buff.avenging_wrath.remains>8
		if S.Fireblood:IsCastable() and (Player:BuffRemains(S.AvengingWrathBuff) > 8) then
		  if Cast(S.Fireblood) then return "fireblood cooldowns 16"; end
		end
	end

	local function HammerofLight()
		-- hammer_of_light,if=(buff.blessing_of_dawn.stack>0|!talent.of_dusk_and_dawn.enabled)|spell_targets.shield_of_the_righteous>=5
		if S.HammerofLight:IsReady() and Target:IsInRange(12) and ((Player:BuffUp(S.BlessingofDawnBuff) or not S.OfDuskandDawn:IsAvailable()) or EnemiesCount8y >= 5) then
		  if Cast(S.HammerofLight) then return "hammer_of_light hammer_of_light 2"; end
		end
		-- eye_of_tyr,if=hpg_to_2dawn=5|!talent.of_dusk_and_dawn.enabled
		if S.EyeofTyr:IsCastable() and Target:IsInMeleeRange(5) and (HPGTo2Dawn() == 5 or not S.OfDuskandDawn:IsAvailable()) then
		  if Cast(S.EyeofTyr) then return "eye_of_tyr hammer_of_light 4"; end
		end
		-- shield_of_the_righteous,if=hpg_to_2dawn=4
		if S.ShieldoftheRighteous:IsReady() and (HPGTo2Dawn() == 4) then
		  if Cast(S.ShieldoftheRighteous) then return "shield_of_the_righteous standard 6"; end
		end
		-- eye_of_tyr,if=hpg_to_2dawn=1|buff.blessing_of_dawn.stack>0
		if S.EyeofTyr:IsCastable() and Target:IsInMeleeRange(5) and (HPGTo2Dawn() == 1 or Player:BuffUp(S.BlessingofDawnBuff)) then
		  if Cast(S.EyeofTyr) then return "eye_of_tyr hammer_of_light 8"; end
		end
		-- hammer_of_wrath
		if S.HammerofWrath:IsReady() and Target:IsSpellInRange(S.HammerofWrath) then
		  if Cast(S.HammerofWrath) then return "hammer_of_wrath hammer_of_light 10"; end
		end
		-- judgment
		if S.Judgment:IsReady() and Target:IsSpellInRange(S.Judgment) then
		  if Cast(S.Judgment) then return "judgment hammer_of_light 12"; end
		end
		-- blessed_hammer
		if S.BlessedHammer:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.BlessedHammer) then return "blessed_hammer hammer_of_light 14"; end
		end
		-- hammer_of_the_righteous
		if S.HammeroftheRighteous:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.HammeroftheRighteous) then return "hammer_of_the_righteous hammer_of_light 16"; end
		end
		-- crusader_strike
		if S.CrusaderStrike:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.CrusaderStrike) then return "crusader_strike hammer_of_light 18"; end
		end
		-- divine_toll
		if S.DivineToll:IsReady() and Target:IsInRange(30) then
		  if Cast(S.DivineToll) then return "divine_toll hammer_of_light 20"; end
		end
	end

	local function Standard()
		-- call_action_list,name=hammer_of_light,if=talent.lights_guidance.enabled&(cooldown.eye_of_tyr.remains<2|buff.hammer_of_light_ready.up)&(!talent.redoubt.enabled|buff.redoubt.stack>=2|!talent.bastion_of_light.enabled)&!buff.hammer_of_light_free.up
		if S.LightsGuidance:IsAvailable() and (S.EyeofTyr:CooldownRemains() < 2 or S.HammerofLight:IsLearned()) and (not S.Redoubt:IsAvailable() or Player:BuffStack(S.RedoubtBuff) >= 2 or not S.BastionofLight:IsAvailable()) and S.HammerofLight:Cost() > 0 then
		  local ShouldReturn = HammerofLight(); if ShouldReturn then return ShouldReturn; end
		end
		-- hammer_of_light,if=buff.hammer_of_light_free.remains<2|buff.shake_the_heavens.duration<1|!buff.shake_the_heavens.up|cooldown.eye_of_tyr.remains<1.5|fight_remains<2
		if S.HammerofLight:IsReady() and Target:IsInRange(12) and (Player:BuffRemains(S.LightsDeliveranceBuff) < 2 or Player:BuffRemains(S.ShaketheHeavensBuff) < 1 or Player:BuffDown(S.ShaketheHeavensBuff) or S.EyeofTyr:CooldownRemains() < 1.5 or BossFightRemains < 2) then
		  if Cast(S.HammerofLight) then return "hammer_of_light standard 2"; end
		end
		-- shield_of_the_righteous,if=(!talent.righteous_protector.enabled|cooldown.righteous_protector_icd.remains=0)&!buff.hammer_of_light_ready.up
		local RighteousProtectorICD = 999
		if S.RighteousProtector:IsAvailable() then
		  local LastCast = mathmin(S.ShieldoftheRighteous:TimeSinceLastCast(), S.WordofGlory:TimeSinceLastCast())
		  RighteousProtectorICD = mathmax(0, 1 - mathmin(S.ShieldoftheRighteous:TimeSinceLastCast(), S.WordofGlory:TimeSinceLastCast()))
		end
		if S.ShieldoftheRighteous:IsReady() and ((not S.RighteousProtector:IsAvailable() or RighteousProtectorICD == 0) and not S.HammerofLight:IsLearned()) then
		  if Cast(S.ShieldoftheRighteous) then return "shield_of_the_righteous standard 4"; end
		end
		-- holy_armaments,if=next_armament=sacred_weapon&(!buff.sacred_weapon.up|(buff.sacred_weapon.remains<6&!buff.avenging_wrath.up&cooldown.avenging_wrath.remains<=30))
		if S.SacredWeapon:IsCastable() and (Player:BuffDown(S.SacredWeaponBuff) or (Player:BuffRemains(S.SacredWeaponBuff) < 6 and Player:BuffDown(S.AvengingWrathBuff) and S.AvengingWrath:CooldownRemains() <= 30)) then
		  if Cast(S.SacredWeapon) then return "holy_armaments standard 6"; end
		end
		-- judgment,target_if=min:debuff.judgment.remains,if=spell_targets.shield_of_the_righteous>3&buff.bulwark_of_righteous_fury.stack>=3&holy_power<3
		if S.Judgment:IsReady() and Target:IsSpellInRange(S.Judgment) and (EnemiesCount8y > 3 and Player:BuffStack(S.BulwarkofRighteousFuryBuff) >= 3 and Player:HolyPower() < 3) then
		  if CastTargetIf(S.Judgment, Enemies30y, "min", EvaluateTargetIfFilterJudgment) then return "judgment standard 8"; end
		end
		-- avengers_shield,if=!buff.bulwark_of_righteous_fury.up&talent.bulwark_of_righteous_fury.enabled&spell_targets.shield_of_the_righteous>=3
		if S.AvengersShield:IsCastable() and Target:IsSpellInRange(S.AvengersShield) and (Player:BuffDown(S.BulwarkofRighteousFuryBuff) and S.BulwarkofRighteousFury:IsAvailable() and EnemiesCount8y >= 3) then
		  if Cast(S.AvengersShield) then return "avengers_shield standard 16"; end
		end
		if Player:BuffUp(S.BlessedAssuranceBuff) and EnemiesCount8y < 3 and Player:BuffDown(S.AvengingWrathBuff) then
		  -- hammer_of_the_righteous,if=buff.blessed_assurance.up&spell_targets.shield_of_the_righteous<3&!buff.avenging_wrath.up
		  if S.HammeroftheRighteous:IsCastable() and Target:IsInMeleeRange(5) then
			if Cast(S.HammeroftheRighteous) then return "hammer_of_the_righteous standard 12"; end
		  end
		  -- blessed_hammer,if=buff.blessed_assurance.up&spell_targets.shield_of_the_righteous<3&!buff.avenging_wrath.up
		  if S.BlessedHammer:IsCastable() and Target:IsInMeleeRange(5) then
			if Cast(S.BlessedHammer) then return "blessed_hammer standard 10"; end
		  end
		end
		-- crusader_strike,if=buff.blessed_assurance.up&spell_targets.shield_of_the_righteous<2&!buff.avenging_wrath.up
		if S.CrusaderStrike:IsCastable() and Target:IsInMeleeRange(5) and (Player:BuffUp(S.BlessedAssuranceBuff) and EnemiesCount8y < 2 and Player:BuffDown(S.AvengingWrathBuff)) then
		  if Cast(S.CrusaderStrike) then return "crusader_strike standard 14"; end
		end
		-- judgment,target_if=min:debuff.judgment.remains,if=charges>=2|full_recharge_time<=gcd.max
		if S.Judgment:IsReady() and Target:IsSpellInRange(S.Judgment) and (S.Judgment:Charges() >= 2 or S.Judgment:FullRechargeTime() <= Player:GCD() + 0.25) then
		  if CastTargetIf(S.Judgment, Enemies30y, "min", EvaluateTargetIfFilterJudgment) then return "judgment standard 20";  end
		end
		-- consecration,if=buff.divine_guidance.stack=5
		if S.Consecration:IsCastable() and (Player:BuffStack(S.DivineGuidanceBuff) == 5) then
		  if Cast(S.Consecration) then return "consecration standard 30"; end
		end
		-- hammer_of_wrath
		if S.HammerofWrath:IsReady() and Target:IsSpellInRange(S.HammerofWrath) then
		  if Cast(S.HammerofWrath) then return "hammer_of_wrath standard 18"; end
		end
		-- holy_armaments,if=next_armament=holy_bulwark&charges=2
		if S.HolyBulwark:IsCastable() and (S.HolyBulwark:Charges() == 2) then
		  if Cast(S.HolyBulwark) then return "holy_armaments standard 22"; end
		end
		-- divine_toll,if=(!raid_event.adds.exists|raid_event.adds.in>10)
		if S.DivineToll:IsReady() and Target:IsInRange(30) then
		  if Cast(S.DivineToll) then return "divine_toll standard 24"; end
		end
		-- judgment,target_if=min:debuff.judgment.remains
		if S.Judgment:IsReady() and Target:IsSpellInRange(S.Judgment) then
		  if CastTargetIf(S.Judgment, Enemies30y, "min", EvaluateTargetIfFilterJudgment) then return "judgment standard 26"; end
		end
		if Player:BuffUp(S.BlessedAssuranceBuff) and EnemiesCount8y < 3 then
		  -- hammer_of_the_righteous,if=buff.blessed_assurance.up&spell_targets.shield_of_the_righteous<3
		  if S.HammeroftheRighteous:IsCastable() and Target:IsInMeleeRange(5) then
			if Cast(S.HammeroftheRighteous) then return "hammer_of_the_righteous standard 12"; end
		  end
		  -- blessed_hammer,if=buff.blessed_assurance.up&spell_targets.shield_of_the_righteous<3
		  if S.BlessedHammer:IsCastable() and Target:IsInMeleeRange(5) then
			if Cast(S.BlessedHammer) then return "blessed_hammer standard 10"; end
		  end
		end
		-- crusader_strike,if=buff.blessed_assurance.up&spell_targets.shield_of_the_righteous<2
		if S.CrusaderStrike:IsCastable() and Target:IsInMeleeRange(5) and (Player:BuffUp(S.BlessedAssuranceBuff) and EnemiesCount8y < 2) then
		  if Cast(S.CrusaderStrike) then return "crusader_strike standard 14"; end
		end
		-- avengers_shield,if=!talent.lights_guidance.enabled
		if S.AvengersShield:IsCastable() and Target:IsSpellInRange(S.AvengersShield) and (not S.LightsGuidance:IsAvailable()) then
		  if Cast(S.AvengersShield) then return "avengers_shield standard 28"; end
		end
		-- consecration,if=!consecration.up
		if S.Consecration:IsCastable() and (Player:BuffDown(S.ConsecrationBuff)) then
		  if Cast(S.Consecration) then return "consecration standard 30"; end
		end
		-- eye_of_tyr,if=(talent.inmost_light.enabled&raid_event.adds.in>=45|spell_targets.shield_of_the_righteous>=3)&!talent.lights_deliverance.enabled
		-- Note: Ignoring CDsON if spec'd Templar Hero Tree.
		if (S.LightsGuidance:IsAvailable() and Target:IsInMeleeRange(8)) and S.EyeofTyr:IsCastable() and ((S.InmostLight:IsAvailable() and EnemiesCount8y == 1 or EnemiesCount8y >= 3) and not S.LightsDeliverance:IsAvailable()) then
		  if Cast(S.EyeofTyr) then return "eye_of_tyr standard 32"; end
		end
		-- holy_armaments,if=next_armament=holy_bulwark
		if S.HolyBulwark:IsCastable() then
		  if Cast(S.HolyBulwark) then return "holy_armaments standard 34"; end
		end
		-- blessed_hammer
		if S.BlessedHammer:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.BlessedHammer) then return "blessed_hammer standard 36"; end
		end
		-- hammer_of_the_righteous
		if S.HammeroftheRighteous:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.HammeroftheRighteous) then return "hammer_of_the_righteous standard 38"; end
		end
		-- crusader_strike
		if S.CrusaderStrike:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.CrusaderStrike) then return "crusader_strike standard 40"; end
		end
		-- word_of_glory,if=buff.shining_light_free.up&(talent.blessed_assurance.enabled|(talent.lights_guidance.enabled&cooldown.hammerfall_icd.remains=0))	
		if S.WordofGlory:IsCastable() and (Player:BuffUp(S.ShiningLightFreeBuff) and (S.BlessedAssurance:IsAvailable() or (S.LightsGuidance:IsAvailable() and HammerfallICD() == 0))) then
			if MainAddon.CastCycleAlly(S.WordofGlory, MEMBERS, WordofGloryFunc) then return end
		end	
		-- avengers_shield
		if S.AvengersShield:IsCastable() and Target:IsSpellInRange(S.AvengersShield) then
		  if Cast(S.AvengersShield) then return "avengers_shield standard 48"; end
		end
		-- eye_of_tyr,if=!talent.lights_deliverance.enabled
		-- Note: Ignoring CDsON if spec'd Templar Hero Tree.
		if (S.LightsGuidance:IsAvailable() and Target:IsInMeleeRange(8)) and S.EyeofTyr:IsCastable() and (not S.LightsDeliverance:IsAvailable()) then
		  if Cast(S.EyeofTyr) then return "eye_of_tyr standard 50"; end
		end
		-- word_of_glory,if=buff.shining_light_free.up
		if S.WordofGlory:IsReady() and (Player:BuffUp(S.ShiningLightFreeBuff)) then
			if MainAddon.CastCycleAlly(S.WordofGlory, MEMBERS, WordofGloryFunc) then return end
		end
		-- arcane_torrent,if=holy_power<5
		if S.ArcaneTorrent:IsCastable() and Target:IsInRange(8) and (Player:HolyPower() < 5) then
		  if Cast(S.ArcaneTorrent) then return "arcane_torrent standard 58"; end
		end
		-- consecration
		if S.Consecration:IsCastable() then
		  if Cast(S.Consecration) then return "consecration standard 60"; end
		end
	end


	-- S.AvengingCrusader.offGCD = true
	-- S.AvengingWrath.offGCD = true
	S.DevotionAura.offGCD = true
	S.ShieldoftheRighteous.offGCD = true

	local function Trinkets()
		-- use_items,slots=trinket1,if=(variable.trinket_sync_slot=1&(buff.avenging_wrath.up|fight_remains<=40)|(variable.trinket_sync_slot=2&(!trinket.2.cooldown.ready|!buff.avenging_wrath.up))|!variable.trinket_sync_slot)
		-- use_items,slots=trinket2,if=(variable.trinket_sync_slot=2&(buff.avenging_wrath.up|fight_remains<=40)|(variable.trinket_sync_slot=1&(!trinket.1.cooldown.ready|!buff.avenging_wrath.up))|!variable.trinket_sync_slot)
		-- Note: Unable to handle these trinket conditionals. Using a generic fallback instead.
		-- use_items,if=buff.avenging_wrath.up|fight_remains<=40
		if Player:BuffUp(S.AvengingWrathBuff) or Player:BuffUp(S.SentinelBuff) then
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

	local function APL()

		if S.DevotionAura:IsCastable() and Player:BuffDown(S.DevotionAura) then
			if Cast(S.DevotionAura) then return end
		end

		-- if S.RiteofSanctification:IsCastable() and Player:BuffDown(S.RiteofSanctificationBuff) then
		-- 	if Cast(S.RiteofSanctification) then return end
		-- end

		-- if S.RiteofAdjuration:IsCastable() and Player:BuffDown(S.RiteofAdjurationBuff) then
		-- 	if Cast(S.RiteofAdjuration) then return end
		-- end

		-- if S.Judgment:IsCastable() then
		-- 	if CastCycle(S.Judgment, Enemies30y, Pullmobfunc) then return "pull mob"; end
		-- end

		Enemies8y = Player:GetEnemiesInMeleeRange(8)
		Enemies30y = Player:GetEnemiesInRange(30)
		if (AoEON()) then
		  EnemiesCount8y = #Enemies8y
		  EnemiesCount30y = #Enemies30y
		else
		  EnemiesCount8y = 1
		  EnemiesCount30y = 1
		end
	  
		if true then
		  ActiveMitigationNeeded = Player:ActiveMitigationNeeded()
		  IsTanking = Player:IsTankingAoE(8) or Player:IsTanking(Target)
	  
		  -- Calculate fight_remains
		  BossFightRemains = HL.BossFightRemains()
		  FightRemains = BossFightRemains
		  if FightRemains == 11111 then
			FightRemains = HL.FightRemains(Enemies8y, false)
		  end
		end
	  
		if TargetIsValid() then
		  -- Precombat
		  -- auto_attack
		  -- Interrupts
		  -- Manually added: Defensives!
		  if IsTanking then
			local ShouldReturn = Defensives(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- call_action_list,name=cooldowns
		  if true then
			local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- call_action_list,name=defensives
		  -- Note: Moved above Cooldowns().
		  -- call_action_list,name=trinkets
		  if true then
			local ShouldReturn = Trinkets(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- call_action_list,name=standard
		  local ShouldReturn = Standard(); if ShouldReturn then return ShouldReturn; end
		  -- Manually added: Pool, if nothing else to do
		  if Cast(S.Pool) then return "Wait/Pool Resources"; end
		end
	end

	
	MainAddon.SetCustomAPL(Author, SpecID, APL, Init)
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
