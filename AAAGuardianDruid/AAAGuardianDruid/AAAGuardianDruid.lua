local function MyRoutine()
	local Author = 'WSAD - Guardian Druid'
	local SpecID = 104 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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

		-- Abilities
		Mangle                                = Spell(33917),
		-- Talents
		Berserk                               = Spell(50334),
		BristlingFur                          = Spell(155835),
		FlashingClaws                         = Spell(393427),
		FuryofNature                          = Spell(370695),
		Incarnation                           = Spell(102558),
		LunarBeam                             = Spell(204066),
		Maul                                  = Spell(6807),
		Pulverize                             = Spell(80313),
		RageoftheSleeper                      = Spell(200851),
		Raze                                  = Spell(400254),
		ReinforcedFur                         = Spell(393618),
		SouloftheForest                       = Spell(158477),
		Swipe                                 = Spell(213771),
		ThornsofIron                          = Spell(400222),
		UrsocsEndurance                       = Spell(393611),
		-- Buffs
		DreamofCenariusBuff                   = Spell(372152),
		GalacticGuardianBuff                  = Spell(213708),
		GoreBuff                              = Spell(93622),
		StackedDeckBuff                       = Spell(1218537), -- TWW S2 4pc
		ToothandClawBuff                      = Spell(135286),
		ViciousCycleMaulBuff                  = Spell(372015),
		ViciousCycleMangleBuff                = Spell(372019),
		

		-- Talents
		BoundlessMoonlight                    = Spell(424058),
		LunarCalling                          = Spell(429523),
		LunarInsight                          = Spell(429530),
		MoonGuardian                          = Spell(429520),



		-- Abilities
		RavageAbilityBear                     = Spell(441605),
		RavageAbilityCat                      = Spell(441591),
		-- Talents
		FountofStrength                       = Spell(441675),
		Ravage                                = Spell(441583),
		WildpowerSurge                        = Spell(441691),
		-- Buffs
		FelinePotentialBuff                   = Spell(441701),
		RavageBuffFeral                       = Spell(441585),
		RavageBuffGuardian                    = Spell(441602),

		-- Racials
		Berserking                            = Spell(26297),
		Shadowmeld                            = Spell(58984),
		-- Abilities
		Barkskin                              = Spell(22812),
		BearForm                              = Spell(5487),
		CatForm                               = Spell(768),
		FerociousBite                         = Spell(22568),
		MarkoftheWild                         = Spell(1126),
		Moonfire                              = Spell(8921),
		Prowl                                 = MultiSpell(5215,102547),
		Regrowth                              = Spell(8936),
		Shred                                 = Spell(5221),
		-- Talents
		AstralInfluence                       = Spell(197524),
		ConvoketheSpirits                     = Spell(391528),
		FluidForm                             = Spell(449193),
		FrenziedRegeneration                  = Spell(22842),
		HeartoftheWild                        = Spell(319454),
		Innervate                             = Spell(29166),
		Ironfur                               = Spell(192081),
		LycarasMeditation                     = Spell(474728),
		Maim                                  = Spell(22570),
		MightyBash                            = Spell(5211),
		MoonkinForm                           = MultiSpell(24858,197625),
		NaturesVigil                          = Spell(124974),
		PrimalFury                            = Spell(159286),
		ProtectorofthePack                    = Spell(378986),
		Rake                                  = Spell(1822),
		Renewal                               = Spell(108238),
		Rip                                   = Spell(1079),
		SkullBash                             = Spell(106839),
		Starfire                              = Spell(194153),
		Starsurge                             = MultiSpell(78674,197626),
		Sunfire                               = Spell(93402),
		SurvivalInstincts                     = Spell(61336),
		ThrashBear                            = Spell(77758),
		ThrashCat                             = Spell(106830),
		Typhoon                               = Spell(132469),
		WildCharge                            = MultiSpell(16979,49376),
		-- Buffs
		FrenziedRegenerationBuff              = Spell(22842),
		HeartoftheWildBuff                    = Spell(319454),
		InnerResilienceBuff                   = Spell(450706),
		IronfurBuff                           = Spell(192081),
		MarkoftheWildBuff                     = Spell(1126),
		PoPHealBuff                           = Spell(395336),
		SpymastersReportBuff                  = Spell(451199), -- Stacking buff from before using Spymaster's Web trinket
		SpymastersWebBuff                     = Spell(444959), -- Buff from using Spymaster's Web trinket
		-- Debuffs
		MoonfireDebuff                        = Spell(164812),
		RakeDebuff                            = Spell(155722),
		RipDebuff                             = Spell(1079),
		SunfireDebuff                         = Spell(164815),
		ThrashBearDebuff                      = Spell(192090),
		ThrashCatDebuff                       = Spell(405233),
		-- Other
		Pool                                  = Spell(999910)
	

	}

	local I = {

		-- TWW Trinkets
		ImperfectAscendancySerum              = Item(225654, {13, 14}),
		OvinaxsMercurialEgg                   = Item(220305, {13, 14}),
		TreacherousTransmitter                = Item(221023, {13, 14}),
		-- TWW Items
		BestinSlotsCaster                     = Item(232805, {16}),
		BestinSlotsMelee                      = Item(232526, {16}),

		-- TWW Trinkets
		TomeofLightsDevotion                  = Item(219309, {13, 14}),
	
	}

	local OnUseExcludes = {
		-- TWW Trinkets
		I.TomeofLightsDevotion:ID(),
		-- TWW Items
		I.BestinSlotsMelee:ID(),
	}
	
	

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
	local VarIFBuild = S.ThornsofIron:IsAvailable() and S.UrsocsEndurance:IsAvailable()
	local VarRipWeaving = S.PrimalFury:IsAvailable() and S.FluidForm:IsAvailable() and S.WildpowerSurge:IsAvailable()
	local MeleeRange, AoERange
	local IsInMeleeRange, IsInAoERange
	local ActiveMitigationNeeded
	local IsTanking
	local UseMaul
	local Enemies8y, Enemies8yCount

	--- ===== Trinket Variables =====
	local Trinket1, Trinket2
	local VarTrinket1Range, VarTrinket2Range
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

	VarTrinket1Range = T1.Range
	VarTrinket2Range = T2.Range
	end
	SetTrinketVariables()

	--- ===== Event Registrations =====
	HL:RegisterForEvent(function()
		VarTrinketFailures = 0
		SetTrinketVariables()
	end, "PLAYER_EQUIPMENT_CHANGED")

	HL:RegisterForEvent(function()
		VarIFBuild = S.ThornsofIron:IsAvailable() and S.ReinforcedFur:IsAvailable()
		VarRipWeaving = S.PrimalFury:IsAvailable() and S.FluidForm:IsAvailable() and S.WildpowerSurge:IsAvailable()
	end, "SPELLS_CHANGED", "LEARNED_SPELL_IN_TAB")

	--- ===== CastCycle Functions =====
	local function EvaluateCycleMoonfire(TargetUnit)
		-- if=buff.bear_form.up&(((!ticking&target.time_to_die>12)|(refreshable&target.time_to_die>12))&active_enemies<7&talent.fury_of_nature.enabled)|(((!ticking&target.time_to_die>12)|(refreshable&target.time_to_die>12))&active_enemies<4&!talent.fury_of_nature.enabled)
		-- Note: Simplified.
		return ((TargetUnit:DebuffDown(S.MoonfireDebuff) and TargetUnit:TimeToDie() > 12) or (TargetUnit:DebuffRefreshable(S.MoonfireDebuff) and TargetUnit:TimeToDie() > 12)) and (Enemies8yCount < 7 and S.FuryofNature:IsAvailable() or Enemies8yCount < 4 and not S.FuryofNature:IsAvailable())
	end

	local function EvaluateCyclePulverize(TargetUnit)
		-- target_if=dot.thrash_bear.stack>2
		return TargetUnit:DebuffStack(S.ThrashBearDebuff) > 2
	end

	local function EvaluateCycleThrash(TargetUnit)
		-- target_if=refreshable|(dot.thrash_bear.stack<5&talent.flashing_claws.rank=2|dot.thrash_bear.stack<4&talent.flashing_claws.rank=1|dot.thrash_bear.stack<3&!talent.flashing_claws.enabled)
		return TargetUnit:DebuffRefreshable(S.ThrashBearDebuff) or (Target:DebuffStack(S.ThrashBearDebuff) < 5 and S.FlashingClaws:TalentRank() == 2 or TargetUnit:DebuffStack(S.ThrashBearDebuff) < 4 and S.FlashingClaws:TalentRank() == 1 or Target:DebuffStack(S.ThrashBearDebuff) < 3 and not S.FlashingClaws:IsAvailable())
	end

	local function Defensives()
		if Player:HealthPercentage() < 55 and S.FrenziedRegeneration:IsReady() and Player:BuffDown(S.FrenziedRegenerationBuff) then
		  if Cast(S.FrenziedRegeneration) then return "frenzied_regeneration defensive 2"; end
		end
		if S.Regrowth:IsCastable() and Player:BuffUp(S.DreamofCenariusBuff) and (Player:BuffDown(S.PoPHealBuff) and Player:HealthPercentage() < 65 or Player:BuffUp(S.PoPHealBuff) and Player:HealthPercentage() < 45) then
		  if Cast(S.Regrowth) then return "regrowth defensive 4"; end
		end
		if S.Renewal:IsCastable() and Player:HealthPercentage() < 45 then
		  if Cast(S.Renewal) then return "renewal defensive 6"; end
		end
		if S.Ironfur:IsReady() and (Player:BuffDown(S.IronfurBuff) or Player:BuffStack(S.IronfurBuff) < 2 and Player:BuffRefreshable(S.Ironfur)) then
		  if Cast(S.Ironfur) then return "ironfur defensive 8"; end
		end
		if S.Barkskin:IsCastable() and (Player:HealthPercentage() < Settings.Guardian.BarkskinHP and Player:BuffDown(S.IronfurBuff) or Player:HealthPercentage() < Settings.Guardian.BarkskinHP * 0.75) then
		  if Cast(S.Barkskin) then return "barkskin defensive 10"; end
		end
		if S.SurvivalInstincts:IsCastable() and (Player:HealthPercentage() < 30) then
		  if Cast(S.SurvivalInstincts) then return "survival_instincts defensive 12"; end
		end
		if S.BristlingFur:IsCastable() and (Player:Rage() < 40 and S.RageoftheSleeper:CooldownRemains() > 8) then
		  if Cast(S.BristlingFur) then return "bristling_fur defensive 14"; end
		end
	end

	local function Bear()
		-- maul,if=buff.ravage.up&active_enemies>1
		if S.RavageAbilityBear:IsReady() and IsInMeleeRange and (Player:BuffUp(S.RavageBuffGuardian) and Enemies8yCount > 1) then
			if Cast(S.RavageAbilityBear) then return "ravage bear 2"; end
		  end
		-- heart_of_the_Wild,if=(talent.heart_of_the_wild.enabled&!talent.rip.enabled)|talent.heart_of_the_wild.enabled&buff.feline_potential_counter.stack=6&active_enemies<3
		if S.HeartoftheWild:IsCastable() and (not S.Rip:IsAvailable() or Player:BuffStack(S.FelinePotentialBuff) == 6 and Enemies8yCount < 3) then
		  if Cast(S.HeartoftheWild) then return "heart_of_the_wild bear 4"; end
		end
		-- moonfire,cycle_targets=1,if=buff.bear_form.up&(((!ticking&target.time_to_die>12)|(refreshable&target.time_to_die>12))&active_enemies<7&talent.fury_of_nature.enabled)|(((!ticking&target.time_to_die>12)|(refreshable&target.time_to_die>12))&active_enemies<4&!talent.fury_of_nature.enabled)
		if S.Moonfire:IsCastable() and Target:IsSpellInRange(S.Moonfire) and Player:BuffUp(S.BearForm) then
		  if CastCycle(S.Moonfire, Enemies8y, EvaluateCycleMoonfire) then return "moonfire bear 6"; end
		end
		-- thrash_bear,target_if=refreshable|(dot.thrash_bear.stack<5&talent.flashing_claws.rank=2|dot.thrash_bear.stack<4&talent.flashing_claws.rank=1|dot.thrash_bear.stack<3&!talent.flashing_claws.enabled)
		if S.ThrashBear:IsCastable() and IsInAoERange then
		  if CastCycle(S.ThrashBear, Enemies8y, EvaluateCycleThrash) then return "thrash bear 8"; end
		end
		-- bristling_fur,if=!cooldown.pause_action.remains&cooldown.rage_of_the_sleeper.remains>8
		-- Note: Handled in Defensives().
		-- barkskin,if=buff.bear_form.up
		-- Note: Handled in Defensives().
		-- lunar_beam
		if S.LunarBeam:IsReady() then
			if Cast(S.LunarBeam) then return "lunar_beam bear 10"; end
		  end
		-- convoke_the_spirits,if=(talent.wildpower_surge.enabled&buff.cat_form.up&buff.feline_potential.up)|!talent.wildpower_surge.enabled
		if S.ConvoketheSpirits:IsCastable() then
		  if Cast(S.ConvoketheSpirits) then return "convoke_the_spirits bear 12"; end
		end
		-- berserk_bear
		if S.Berserk:IsCastable() then
		  if Cast(S.Berserk) then return "berserk bear 14"; end
		end
		-- incarnation
		if S.Incarnation:IsCastable() then
		  if Cast(S.Incarnation) then return "incarnation bear 16"; end
		end
		-- rage_of_the_sleeper,if=(((buff.incarnation_guardian_of_ursoc.down&cooldown.incarnation_guardian_of_ursoc.remains>60)|buff.berserk_bear.down)&rage>40&(!talent.convoke_the_spirits.enabled)|(buff.incarnation_guardian_of_ursoc.up|buff.berserk_bear.up)&rage>40&(!talent.convoke_the_spirits.enabled)|(talent.convoke_the_spirits.enabled)&rage>40)
		if S.RageoftheSleeper:IsCastable() and (((Player:BuffDown(S.Incarnation) and S.Incarnation:CooldownRemains() > 60) or Player:BuffDown(S.Berserk)) and Player:Rage() > 40 and not S.ConvoketheSpirits:IsAvailable() or (Player:BuffUp(S.Incarnation) or Player:BuffUp(S.Berserk)) and Player:Rage() > 40 and not S.ConvoketheSpirits:IsAvailable() or S.ConvoketheSpirits:IsAvailable() and Player:Rage() > 40) then
		  if Cast(S.RageoftheSleeper) then return "rage_of_the_sleeper bear 18"; end
		end
		-- berserking,if=(buff.berserk_bear.up|buff.incarnation_guardian_of_ursoc.up)
		if S.Berserking:IsCastable() and (Player:BuffUp(S.Berserk) or Player:BuffUp(S.Incarnation)) then
		  if Cast(S.Berserking) then return "berserking bear 20"; end
		end
		-- maul,if=buff.ravage.up&active_enemies<2
		if S.RavageAbilityBear:IsReady() and IsInMeleeRange and (Player:BuffUp(S.RavageBuffGuardian) and Enemies8yCount < 2) then
		  if Cast(S.RavageAbilityBear) then return "ravage bear 22"; end
		end
		-- raze,if=(buff.tooth_and_claw.stack>1|buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1+gcd)&variable.If_build=1
		if S.Raze:IsReady() and IsInMeleeRange and ((Player:BuffStack(S.ToothandClawBuff) > 1 or Player:BuffUp(S.ToothandClawBuff) and Player:BuffRemains(S.ToothandClawBuff) < 1 + Player:GCD()) and VarIFBuild and Enemies8yCount > 1) then
		  if Cast(S.Raze) then return "raze bear 24"; end
		end
		-- raze,if=variable.If_build=0&(buff.tooth_and_claw.stack>1|buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1+gcd|buff.vicious_cycle_maul.stack=3)
		if S.Raze:IsReady() and IsInMeleeRange and (not VarIFBuild and (Player:BuffStack(S.ToothandClawBuff) > 1 or Player:BuffUp(S.ToothandClawBuff) and Player:BuffRemains(S.ToothandClawBuff) < 1 + Player:GCD() or Player:BuffStack(S.ViciousCycleMaulBuff) == 3)) then
		  if Cast(S.Raze) then return "raze bear 25"; end
		end
		-- thrash_bear,if=active_enemies>=5&talent.lunar_calling.enabled
		if S.ThrashBear:IsCastable() and IsInAoERange and (Enemies8yCount >= 5 and S.LunarCalling:IsAvailable()) then
		  if Cast(S.ThrashBear) then return "thrash bear 26"; end
		end
		-- ironfur,target_if=!debuff.tooth_and_claw.up,if=!buff.ironfur.up&rage>50&!cooldown.pause_action.remains&variable.If_build=0&!buff.rage_of_the_sleeper.up|rage>90&variable.If_build=0|!debuff.tooth_and_claw.up&!buff.ironfur.up&rage>50&!cooldown.pause_action.remains&variable.If_build=0&!buff.rage_of_the_sleeper.up
		if S.Ironfur:IsReady() and (Player:BuffDown(S.IronfurBuff) and Player:Rage() > 50 and IsTanking and not VarIFBuild and Player:BuffDown(S.RageoftheSleeper) or Player:Rage() > 90 and not VarIFBuild or Player:BuffDown(S.ToothandClawBuff) and Player:BuffDown(S.IronfurBuff) and Player:Rage() > 50 and IsTanking and not VarIFBuild and Player:BuffDown(S.RageoftheSleeper)) then
		  if Cast(S.Ironfures) then return "ironfur bear 28"; end
		end
		-- ironfur,if=!buff.ravage.up&((rage>40&variable.If_build=1&cooldown.rage_of_the_sleeper.remains>3&talent.rage_of_the_sleeper.enabled|(buff.incarnation.up|buff.berserk_bear.up)&rage>20&variable.If_build=1&cooldown.rage_of_the_sleeper.remains>3&talent.rage_of_the_sleeper.enabled|rage>90&variable.If_build=1&!talent.fount_of_strength.enabled|rage>110&variable.If_build=1&talent.fount_of_strength.enabled|(buff.incarnation.up|buff.berserk_bear.up)&rage>20&variable.If_build=1&buff.rage_of_the_sleeper.up&talent.rage_of_the_sleeper.enabled))
		if S.Ironfur:IsReady() and (Player:BuffDown(S.RavageBuffGuardian) and (Player:Rage() > 40 and VarIFBuild and S.RageoftheSleeper:CooldownRemains() > 3 and S.RageoftheSleeper:IsAvailable() or (Player:BuffUp(S.Incarnation) or Player:BuffUp(S.Berserk)) and Player:Rage() > 20 and VarIFBuild and S.RageoftheSleeper:CooldownRemains() > 3 and S.RageoftheSleeper:IsAvailable() or Player:Rage() > 90 and VarIFBuild and not S.FountofStrength:IsAvailable() or Player:Rage() > 110 and VarIFBuild and S.FountofStrength:IsAvailable() or (Player:BuffUp(S.Incarnation) or Player:BuffUp(S.Berserk)) and Player:Rage() > 20 and VarIFBuild and Player:BuffUp(S.RageoftheSleeper) and S.RageoftheSleeper:IsAvailable())) then
		  if Cast(S.Ironfur) then return "ironfur bear 30"; end
		end
		-- ironfur,if=!buff.ravage.up&((rage>40&variable.If_build=1&!talent.rage_of_the_sleeper.enabled|(buff.incarnation.up|buff.berserk_bear.up)&rage>20&variable.If_build=1&!talent.rage_of_the_sleeper.enabled|(buff.incarnation.up|buff.berserk_bear.up)&rage>20&variable.If_build=1&!talent.rage_of_the_sleeper.enabled))
		if S.Ironfur:IsReady() and (Player:BuffDown(S.RavageBuffGuardian) and (Player:Rage() > 40 and VarIFBuild and not S.RageoftheSleeper:IsAvailable() or (Player:BuffUp(S.Incarnation) or Player:BuffUp(S.Berserk)) and Player:Rage() > 20 and VarIFBuild and not S.RageoftheSleeper:IsAvailable() or (Player:BuffUp(S.Incarnation) or Player:BuffUp(S.Berserk)) and Player:Rage() > 20 and VarIFBuild and not S.RageoftheSleeper:IsAvailable())) then
		  if Cast(S.Ironfur) then return "ironfur bear 32"; end
		end
		-- ferocious_bite,if=(buff.cat_form.up&buff.feline_potential.up&active_enemies<3&(buff.incarnation.up|buff.berserk_bear.up)&!dot.rip.refreshable)
		if S.FerociousBite:IsReady() and IsInMeleeRange and (Player:BuffUp(S.CatForm) and Player:BuffStack(S.FelinePotentialBuff) == 6 and Enemies8yCount < 3 and (Player:BuffUp(S.Incarnation) or Player:BuffUp(S.Berserk)) and not Target:DebuffRefreshable(S.RipDebuff)) then
		  if Cast(S.FerociousBite) then return "ferocious_bite bear 34"; end
		end
		-- rip,if=(buff.cat_form.up&buff.feline_potential.up&active_enemies<3&(!buff.incarnation.up|!buff.berserk_bear.up))|(buff.cat_form.up&buff.feline_potential.up&active_enemies<3&(buff.incarnation.up|buff.berserk_bear.up)&refreshable)
		if S.Rip:IsReady() and IsInMeleeRange and ((Player:BuffUp(S.CatForm) and Player:BuffStack(S.FelinePotentialBuff) == 6 and Enemies8yCount < 3 and (Player:BuffDown(S.Incarnation) or Player:BuffDown(S.Berserk))) or (Player:BuffUp(S.CatForm) and Player:BuffStack(S.FelinePotentialBuff) == 6 and Enemies8yCount < 3 and (Player:BuffUp(S.Incarnation) or Player:BuffUp(S.Berserk)) and Target:DebuffRefreshable(S.RipDebuff))) then
		  if Cast(S.Rip) then return "rip bear 36"; end
		end
		-- raze,if=variable.If_build=1&buff.vicious_cycle_maul.stack=3&!talent.ravage.enabled
		if S.Raze:IsReady() and IsInMeleeRange and (VarIFBuild and Player:BuffStack(S.ViciousCycleMaulBuff) == 3 and not S.Ravage:IsAvailable()) then
		  if Cast(S.Raze) then return "raze bear 38"; end
		end
		-- mangle,if=buff.gore.up&active_enemies<11|buff.incarnation_guardian_of_ursoc.up&buff.feline_potential_counter.stack<6&talent.wildpower_surge.enabled
		if S.Mangle:IsCastable() and IsInMeleeRange and (Player:BuffUp(S.GoreBuff) and Enemies8yCount < 11 or Player:BuffUp(S.Incarnation) and Player:BuffStack(S.FelinePotentialBuff) < 6 and S.WildpowerSurge:IsAvailable()) then
		  if Cast(S.Mangle) then return "mangle bear 40"; end
		end
		-- raze,if=variable.If_build=0
		if S.Raze:IsReady() and IsInMeleeRange and (not VarIFBuild) then
		  if Cast(S.Raze) then return "raze bear 42"; end
		end
		-- shred,if=cooldown.rage_of_the_sleeper.remains<=52&buff.feline_potential_counter.stack=6&!buff.cat_form.up&!dot.rake.refreshable&active_enemies<3&talent.fluid_form.enabled
		if S.Shred:IsReady() and IsInMeleeRange and (S.RageoftheSleeper:CooldownRemains() <= 52 and Player:BuffStack(S.FelinePotentialBuff) == 6 and Player:BuffDown(S.CatForm) and not Target:DebuffRefreshable(S.RakeDebuff) and Enemies8yCount < 3 and S.FluidForm:IsAvailable()) then
		  if Cast(S.Shred) then return "shred bear 44"; end
		end
		-- rake,if=cooldown.rage_of_the_sleeper.remains<=52&buff.feline_potential_counter.stack=6&!buff.cat_form.up&active_enemies<3&talent.fluid_form.enabled
		if S.Rake:IsReady() and IsInMeleeRange and (S.RageoftheSleeper:CooldownRemains() <= 52 and Player:BuffStack(S.FelinePotentialBuff) == 6 and Player:BuffDown(S.CatForm) and Enemies8yCount < 3 and S.FluidForm:IsAvailable()) then
		  if Cast(S.Rake) then return "rake bear 46"; end
		end
		-- mangle,if=buff.cat_form.up&talent.fluid_form.enabled
		if S.Mangle:IsCastable() and IsInMeleeRange and (Player:BuffUp(S.CatForm) and S.FluidForm:IsAvailable()) then
		  if Cast(S.Mangle) then return "mangle bear 48"; end
		end
		-- maul,if=variable.If_build=1&(((buff.tooth_and_claw.stack>1|buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1+gcd)&active_enemies<=5&!talent.raze.enabled)|((buff.tooth_and_claw.stack>1|buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1+gcd)&active_enemies=1&talent.raze.enabled)|((buff.tooth_and_claw.stack>1|buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1+gcd)&active_enemies<=5&!talent.raze.enabled))
		if S.Maul:IsReady() and IsInMeleeRange and UseMaul and (VarIFBuild and (((Player:BuffStack(S.ToothandClawBuff) > 1 or Player:BuffUp(S.ToothandClawBuff) and Player:BuffRemains(S.ToothandClawBuff) < 1 + Player:GCD()) and Enemies8yCount <= 5 and not S.Raze:IsAvailable()) or ((Player:BuffStack(S.ToothandClawBuff) > 1 or Player:BuffUp(S.ToothandClawBuff) and Player:BuffRemains(S.ToothandClawBuff) < 1 + Player:GCD()) and Enemies8yCount == 1 and S.Raze:IsAvailable()) or ((Player:BuffStack(S.ToothandClawBuff) > 1 or Player:BuffUp(S.ToothandClawBuff) and Player:BuffRemains(S.ToothandClawBuff) < 1 + Player:GCD()) and Enemies8yCount <= 5 and not S.Raze:IsAvailable()))) then
		  if Cast(S.Maul) then return "maul bear 50"; end
		end
		-- maul,if=variable.If_build=0&((buff.tooth_and_claw.up&active_enemies<=5&!talent.raze.enabled)|(buff.tooth_and_claw.up&active_enemies=1&talent.raze.enabled))
		if S.Maul:IsReady() and IsInMeleeRange and UseMaul and (not VarIFBuild and ((Player:BuffUp(S.ToothandClawBuff) and Enemies8yCount <= 5 and not S.Raze:IsAvailable()) or (Player:BuffUp(S.ToothandClawBuff) and Enemies8yCount == 1 and S.Raze:IsAvailable()))) then
		  if Cast(S.Maul) then return "maul bear 52"; end
		end
		-- maul,if=(active_enemies<=5&!talent.raze.enabled&variable.If_build=0)|(active_enemies=1&talent.raze.enabled&variable.If_build=0)|buff.vicious_cycle_maul.stack=3&active_enemies<=5&!talent.raze.enabled
		if S.Maul:IsReady() and IsInMeleeRange and UseMaul and ((Enemies8yCount <= 5 and not S.Raze:IsAvailable() and not VarIFBuild) or (Enemies8yCount == 1 and S.Raze:IsAvailable() and not VarIFBuild) or Player:BuffStack(S.ViciousCycleMaulBuff) == 3 and Enemies8yCount <= 5 and not S.Raze:IsAvailable()) then
		  if Cast(S.Maul) then return "maul bear 54"; end
		end
		-- thrash_bear,if=active_enemies>=5
		if S.ThrashBear:IsCastable() and IsInAoERange and (Enemies8yCount >= 5) then
		  if Cast(S.ThrashBear) then return "thrash bear 56"; end
		end
		-- mangle,if=(buff.incarnation.up&active_enemies<=4)|(buff.incarnation.up&talent.soul_of_the_forest.enabled&active_enemies<=5)|((rage<88)&active_enemies<11)|((rage<83)&active_enemies<11&talent.soul_of_the_forest.enabled)
		if S.Mangle:IsCastable() and IsInMeleeRange and ((Player:BuffUp(S.Incarnation) and Enemies8yCount <= 4) or (Player:BuffUp(S.Incarnation) and S.SouloftheForest:IsAvailable() and Enemies8yCount <= 5) and ((Player:Rage() < 88) and Enemies8yCount < 11) or ((Player:Rage() < 83) and Enemies8yCount < 11 and S.SouloftheForest:IsAvailable())) then
		  if Cast(S.Mangle) then return "mangle bear 58"; end
		end
		-- thrash_bear,if=active_enemies>1
		if S.ThrashBear:IsCastable() and IsInAoERange and (Enemies8yCount > 1) then
		  if Cast(S.ThrashBear) then return "thrash bear 60"; end
		end
		-- pulverize,target_if=dot.thrash_bear.stack>2
		if S.Pulverize:IsReady() and IsInMeleeRange then
		  if CastCycle(S.Pulverize, Enemies8y, EvaluateCyclePulverize) then return "pulverize bear 62"; end
		end
		-- thrash_bear
		if S.ThrashBear:IsCastable() and IsInAoERange then
		  if Cast(S.ThrashBear) then return "thrash bear 64"; end
		end
		-- moonfire,if=buff.galactic_guardian.up&buff.bear_form.up&talent.boundless_moonlight.enabled
		if S.Moonfire:IsCastable() and Target:IsSpellInRange(S.Moonfire) and (Player:BuffUp(S.GalacticGuardianBuff) and Player:BuffUp(S.BearForm) and S.BoundlessMoonlight:IsAvailable()) then
		  if Cast(S.Moonfire) then return "moonfire bear 66"; end
		end
		-- rake,if=cooldown.rage_of_the_sleeper.remains<=52&rage<40&active_enemies<3&!talent.lunar_insight.enabled&talent.fluid_form.enabled&energy>70&refreshable
		if S.Rake:IsReady() and IsInMeleeRange and (S.RageoftheSleeper:CooldownRemains() <= 52 and Player:Rage() < 40 and Enemies8yCount < 3 and not S.LunarInsight:IsAvailable() and S.FluidForm:IsAvailable() and Player:Energy() > 70 and Target:DebuffRefreshable(S.RakeDebuff)) then
		  if Cast(S.Rake) then return "rake bear 68"; end
		end
		-- shred,if=cooldown.rage_of_the_sleeper.remains<=52&rage<40&active_enemies<3&!talent.lunar_insight.enabled&talent.fluid_form.enabled&energy>70&!buff.rage_of_the_sleeper.up
		if S.Shred:IsReady() and IsInMeleeRange and (S.RageoftheSleeper:CooldownRemains() <= 52 and Player:Rage() < 40 and Enemies8yCount < 3 and not S.LunarInsight:IsAvailable() and S.FluidForm:IsAvailable() and Player:Energy() > 70 and Player:BuffDown(S.RageoftheSleeper)) then
		  if Cast(S.Shred) then return "shred bear 70"; end
		end
		-- rip,if=buff.cat_form.up&!dot.rip.ticking&active_enemies<3
		if S.Rip:IsReady() and IsInMeleeRange and (Player:BuffUp(S.CatForm) and Target:DebuffDown(S.RipDebuff) and Enemies8yCount < 3) then
		  if Cast(S.Rip) then return "rip bear 72"; end
		end
		-- ferocious_bite,if=dot.rip.ticking&combo_points>4&active_enemies<3
		if S.FerociousBite:IsReady() and IsInMeleeRange and (Target:DebuffUp(S.RipDebuff) and Player:ComboPoints() > 4 and Enemies8yCount < 3) then
		  if Cast(S.FerociousBite) then return "ferocious_bite bear 74"; end
		end
		-- starsurge,if=talent.starsurge.enabled&rage<20
		if S.Starsurge:IsReady() and Target:IsSpellInRange(S.Starsurge) and (Player:Rage() < 20) then
		  if Cast(S.Starsurge) then return "starsurge bear 76"; end
		end
		-- swipe_bear,if=(talent.lunar_insight.enabled&active_enemies>4)|!talent.lunar_insight.enabled|talent.lunar_insight.enabled&active_enemies<2
		if S.Swipe:IsCastable() and IsInAoERange and ((S.LunarInsight:IsAvailable() and Enemies8yCount > 4) or not S.LunarInsight:IsAvailable() or S.LunarInsight:IsAvailable() and Enemies8yCount < 2) then
		  if Cast(S.Swipe) then return "swipe bear 78"; end
		end
		-- moonfire,if=(talent.lunar_insight.enabled&active_enemies>1)&buff.bear_form.up
		if S.Moonfire:IsCastable() and Target:IsSpellInRange(S.Moonfire) and ((S.LunarInsight:IsAvailable() and Enemies8yCount > 1) and Player:BuffUp(S.BearForm)) then
		  if Cast(S.Moonfire) then return "moonfire bear 80"; end
		end
	end

	local function APL()
		-- Enemies Update
		Enemies8y = Player:GetEnemiesInMeleeRange(8)
		if AoEON() then
		  Enemies8yCount = #Enemies8y
		else
		  Enemies8yCount = 1
		end
	  
		if true then
		  ActiveMitigationNeeded = Player:ActiveMitigationNeeded()
		  IsTanking = Player:IsTankingAoE(8) or Player:IsTanking(Target)
	  
		  UseMaul = false
		  if (Player:Rage() >= S.Maul:Cost() + 20 and not IsTanking or Player:RageDeficit() <= 10) then
			UseMaul = true
		  end
	  
		  IsInMeleeRange = Target:IsInRange(5)
		  IsInAoERange = Target:IsInRange(8)
		end
	  
		if MainAddon.TargetIsValid() then
		  -- Precombat
		  -- Interrupt
		  -- Manually added: run_action_list,name=defensives
		  if (IsTanking and Player:BuffUp(S.BearForm)) then
			local ShouldReturn = Defensives(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- Manually added: wild_charge if not in range
		  -- auto_attack,if=!buff.prowl.up
		  -- use_item,name=bestinslots,if=buff.incarnation_guardian_of_ursoc.up|buff.berserk_bear.up
		  if I.BestinSlotsMelee:IsReady() and (Player:BuffUp(S.Incarnation) or Player:BuffUp(S.Berserk)) then
			if Cast(I.BestinSlotsMelee) then return "use_item bestinslots main 4"; end
		  end
		  -- use_item,name=tome_of_lights_devotion,if=buff.inner_resilience.up
		  if I.TomeofLightsDevotion:IsReady() and (Player:BuffUp(S.InnerResilienceBuff)) then
			if Cast(I.TomeofLightsDevotion) then return "use_item tome_of_lights_devotion main 6"; end
		  end
		  -- use_items
		  local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes)
		  if ItemToUse then
			local DisplayStyle = true
			local IsTrinket = ItemSlot == 13 or ItemSlot == 14
			if not IsTrinket then DisplayStyle = true end
			if (IsTrinket and true) or (not IsTrinket and true) then
			  if Cast(ItemToUse, DisplayStyle, not Target:IsInRange(ItemRange)) then return "Generic use_items for " .. ItemToUse:Name() .. " main 8"; end
			end
		  end
		  -- potion,if=(buff.berserk_bear.up|buff.incarnation_guardian_of_ursoc.up)
			--   if Settings.Commons.Enabled.Potions and (Player:BuffUp(S.Berserk) or Player:BuffUp(S.Incarnation)) then
			-- 	local PotionSelected = Everyone.PotionSelected()
			-- 	if PotionSelected and PotionSelected:IsReady() then
			-- 	  if Cast(PotionSelected, nil, Settings.CommonsDS.DisplayStyle.Potions) then return "potion main 10"; end
			-- 	end
			--   end
		  -- run_action_list,name=bear
		  local ShouldReturn = Bear(); if ShouldReturn then return ShouldReturn; end
		  if Cast(S.Pool) then return "Pool Resources"; end
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
