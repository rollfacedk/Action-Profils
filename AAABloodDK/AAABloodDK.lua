local function MyRoutine()
	local Author = 'Blood DK'
	local SpecID = 250 	 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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
	local function num(val)
		if val then return 1 else return 0 end
	end
	local function bool(val)
		return val ~= 0
	end
	local mathmin    = math.min

	local function TargetIsValid()
		return (Player:AffectingCombat() and Target:Exists() and Player:CanAttack(Target) and not Target:IsDeadOrGhost() and (Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	end

	--ALL SPELLS ARE LOCATED ON Rotations/CLASS_SPELL.lua, if one is missing tells us about it.
	local S = {

		ControlUndead = Spell(111673),
		DeathGrip = Spell(49576),
		ChainsofIce = Spell(45524),
		Lichborne = Spell(49039),
		RaiseAlly = Spell(61999),
		Runeforging = Spell(53428),
		PathofFrost = Spell(3714),
		DeathGate = Spell(50977),
		IceboundFortitude = Spell(48792),
		IceboundFortitudeBuff = Spell(48792),
		AntiMagicShell = Spell(48707),
		AntiMagicZone = Spell(51052),
		DarkCommand = Spell(56222),
		DeathsAdvance = Spell(48265),
		BlindingSleet = Spell(207167),
		DarkSuccorBuff = Spell(101568),
		DeathPact = Spell(48743),
		WraithWalk = Spell(212552),
		VampiricStrikeBuff = Spell(433895),

		-- Abilities
		DeathAndDecay = Spell(43265),
		DeathCoil = Spell(47541),
		-- Talents
		AbominationLimb = Spell(383269),
		AntiMagicBarrier                      = Spell(205727),
		AntiMagicShell = Spell(48707),
		AntiMagicZone = Spell(51052),
		Asphyxiate = Spell(221562),
		Assimilation = Spell(374383),
		ChainsofIce = Spell(45524),
		CleavingStrikes = Spell(316916),
		DeathStrike = Spell(49998),
		EmpowerRuneWeapon = Spell(47568),
		IceboundFortitude = Spell(48792),
		IcyTalons = Spell(194878),
		RaiseDead = Spell(46585),
		RunicAttenuation = Spell(207104),
		SacrificialPact = Spell(327574),
		SoulReaper = Spell(343294),
		UnholyGround = Spell(374265),
		UnyieldingWill                        = Spell(457574),
		-- Buffs
		AbominationLimbBuff = Spell(383269),
		DeathAndDecayBuff = Spell(188290),
		DeathStrikeBuff = Spell(101568),
		EmpowerRuneWeaponBuff = Spell(47568),
		IcyTalonsBuff = Spell(194879),
		RuneofHysteriaBuff = Spell(326918),
		UnholyStrengthBuff = Spell(53365),
		-- Debuffs
		BloodPlagueDebuff = Spell(55078),
		FrostFeverDebuff = Spell(55095),
		MarkofFyralathDebuff = Spell(414532),
		SoulReaperDebuff = Spell(343294),
		VirulentPlagueDebuff = Spell(191587),
		-- Racials
		AncestralCall = Spell(274738),
		ArcanePulse = Spell(260364),
		ArcaneTorrent = Spell(50613),
		BagofTricks = Spell(312411),
		Berserking = Spell(26297),
		BloodFury = Spell(20572),
		Fireblood = Spell(265221),
		LightsJudgment = Spell(255647),
		-- Interrupts
		MindFreeze = Spell(47528),
		-- Custom
		Pool = Spell(999910),

		-- Abilities

		-- Talents
		BloodBoil                             = Spell(50842),
		BloodTap                              = Spell(221699),
		Blooddrinker                          = Spell(206931),
		Bonestorm                             = Spell(194844),
		Coagulopathy                          = Spell(391477),
		Consumption                           = Spell(274156),
		DancingRuneWeapon                     = Spell(49028),
		DeathsCaress                          = Spell(195292),
		GorefiendsGrasp                       = Spell(108199),
		HeartStrike                           = MultiSpell(206930, 433895),
		Heartbreaker                          = Spell(221536),
		InsatiableBlade                       = Spell(377637),
		Marrowrend                            = Spell(195182),
		RapidDecomposition                    = Spell(194662),
		RelishinBlood                         = Spell(317610),
		RuneTap                               = Spell(194679),
		SanguineGround                        = Spell(391458),
		ShatteringBone                        = Spell(377640),
		TighteningGrasp                       = Spell(206970),
		Tombstone                             = Spell(219809),
		VampiricBlood                         = Spell(55233),
		-- Buffs
		BoneShieldBuff                        = Spell(195181),
		CoagulopathyBuff                      = Spell(391481),
		CrimsonScourgeBuff                    = Spell(81141),
		DancingRuneWeaponBuff                 = Spell(81256),
		HemostasisBuff                        = Spell(273947),
		IceboundFortitudeBuff                 = Spell(48792),
		RuneTapBuff                           = Spell(194679),
		VampiricBloodBuff                     = Spell(55233),
		VampiricStrengthBuff                  = Spell(408356), -- Tier 30 4pc

		-- Talents
		DarkTalons = Spell(436687),
		ReapersMark = Spell(439843),
		-- Debuffs
		ReapersMarkDebuff = Spell(434765),
		PainfulDeathBuff = Spell(443564),
		ExterminateBuff = Spell(441378),

		-- Abilities
		VampiricStrikeAction = Spell(433895),
		-- Talents
		GiftoftheSanlayn = Spell(434152),
		VampiricStrike = Spell(433901),
		-- Buffs
		EssenceoftheBloodQueenBuff = Spell(433925),
		GiftoftheSanlaynBuff = Spell(434153),
		InflictionofSorrowBuff = Spell(460049),
	}

	local I = {
		-- Trinkets
		AlgetharPuzzleBox                     = Item(193701, {13, 14}),
		IrideusFragment                       = Item(193743, {13, 14}),
		VialofAnimatedBlood                   = Item(159625, {13, 14}),
		-- Trinkets
		MirrorofFracturedTomorrows            = Item(207581, {13, 14}),
		TreacherousTransmitter                = Item(221023, {13, 14}),
		-- Other Items
		Fyralath                              = Item(206448, {16}),
	  }

	--- ===== Rotation Variables =====
	local VarDeathStrikeDumpAmt = 65
	local VarBoneShieldRefreshValue = (S.Consumption:IsAvailable() or S.Blooddrinker:IsAvailable()) and 4 or 5
	local VarHeartStrikeRP = 0
	local VarHeartStrikeRPDRW = 0
	local IsTanking
	local EnemiesMelee
	local EnemiesMeleeCount
	local HeartStrikeCount
	local UnitsWithoutBloodPlague
	local Ghoul = HL.GhoulTable

	--- ===== Trinket Variables =====
	local Trinket1, Trinket2
	local VarTrinket1ID, VarTrinket2ID
	local VarTrinket1Level, VarTrinket2Level
	local VarTrinket1Spell, VarTrinket2Spell
	local VarTrinket1Range, VarTrinket2Range
	local VarTrinket1CastTime, VarTrinket2CastTime
	local VarTrinket1CD, VarTrinket2CD
	local VarTrinket1BL, VarTrinket2BL
	local VarTrinket1Buffs, VarTrinket2Buffs
	local VarDamageTrinketPriority
	local VarTrinketFailures = 0
	local function SetTrinketVariables()
		local T1, T2 = Player:GetTrinketData()

		-- If we don't have trinket items, try again in 5 seconds.
		if VarTrinketFailures < 5 and ((T1.ID == 0 or T2.ID == 0) or (T1.Level == 0 or T2.Level == 0) or (T1.SpellID > 0 and not T1.Usable or T2.SpellID > 0 and not T2.Usable)) then
			VarTrinketFailures = VarTrinketFailures + 1
			Delay(5, function()
				SetTrinketVariables()
			end
			)
			return
		end

		Trinket1 = T1.Object
		Trinket2 = T2.Object

		VarTrinket1ID = T1.ID
		VarTrinket2ID = T2.ID

		VarTrinket1Level = T1.Level
		VarTrinket2Level = T2.Level

		VarTrinket1Spell = T1.Spell
		VarTrinket1Range = T1.Range
		VarTrinket1CastTime = T1.CastTime
		VarTrinket2Spell = T2.Spell
		VarTrinket2Range = T2.Range
		VarTrinket2CastTime = T2.CastTime

		VarTrinket1CD = T1.Cooldown
		VarTrinket2CD = T2.Cooldown

		VarTrinket1BL = T1.Blacklisted
		VarTrinket2BL = T2.Blacklisted

		VarTrinket1Buffs = Trinket1:HasUseBuff() or VarTrinket1ID == I.MirrorofFracturedTomorrows:ID()
		VarTrinket2Buffs = Trinket2:HasUseBuff() or VarTrinket2ID == I.MirrorofFracturedTomorrows:ID()

		VarDamageTrinketPriority = 1
		if not VarTrinket2Buffs and VarTrinket2Level >= VarTrinket1Level or VarTrinket1Buffs then
			VarDamageTrinketPriority = 2
		end
	end
	SetTrinketVariables()

	--- ===== Event Registrations =====
	HL:RegisterForEvent(function()
		SetTrinketVariables()
	end, "PLAYER_EQUIPMENT_CHANGED")
	
	HL:RegisterForEvent(function()
		-- variable,name=bone_shield_refresh_value,value=4,op=setif,condition=talent.consumption.enabled|talent.blooddrinker.enabled,value_else=5
		VarBoneShieldRefreshValue = (S.Consumption:IsAvailable() or S.Blooddrinker:IsAvailable()) and 4 or 5
	end, "SPELLS_CHANGED", "LEARNED_SPELL_IN_TAB")
  
	--- ===== Helper Functions =====
	local function UnitsWithoutBP(enemies)
		local WithoutBPCount = 0
		for _, CycleUnit in pairs(enemies) do
			if not CycleUnit:DebuffUp(S.BloodPlagueDebuff) then
			WithoutBPCount = WithoutBPCount + 1
		end
			end
		return WithoutBPCount
	end

	--- ===== CastTargetIf Filter Functions =====
	local function EvaluateTargetIfFilterSoulReaper(TargetUnit)
		-- target_if=min:dot.soul_reaper.remains
		return (TargetUnit:DebuffRemains(S.SoulReaperDebuff))
	end
	
	--- ===== CastTargetIf Condition Functions =====
	local function EvaluateTargetIfSoulReaper(TargetUnit)
		-- if=target.time_to_pct_35<5&active_enemies>=2&target.time_to_die>(dot.soul_reaper.remains+5)
		return ((TargetUnit:TimeToX(35) < 5 or TargetUnit:HealthPercentage() <= 35))
	end
	
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
		message( 'Puking ina', 1)
		MainAddon:Print('Puking ina')
	end

	local function Defensives()
		-- Rune Tap Emergency
		if S.RuneTap:IsReady() and IsTanking and Player:HealthPercentage() <= 40 and Player:Rune() >= 3 and S.RuneTap:Charges() >= 1 and Player:BuffDown(S.RuneTapBuff) then
		  if Cast(S.RuneTap) then return "rune_tap defensives 2"; end
		end
		-- Active Mitigation
		-- if Player:ActiveMitigationNeeded() and S.Marrowrend:TimeSinceLastCast() > 2.5 and S.DeathStrike:TimeSinceLastCast() > 2.5 then
		--   if S.DeathStrike:IsReady() and Target:IsInMeleeRange(7) and Player:BuffStack(S.BoneShieldBuff) > 7 then
		-- 	if Cast(S.DeathStrike) then return "death_strike defensives 4"; end
		--   end
		--   if S.Marrowrend:IsReady() and TargetInMeleeRange then
		-- 	if Cast(S.Marrowrend) then return "marrowrend defensives 6"; end
		--   end
		--   if S.DeathStrike:IsReady() and Target:IsInMeleeRange(7) then
		-- 	if Cast(S.DeathStrike) then return "death_strike defensives 10"; end
		--   end
		-- end
		if S.Lichborne:IsCastable() and (Player:IsFeared() or Player:IsSleeping() or Player:IsCharmed()) then
			if Cast(S.Lichborne) then return "Lichborne"; end
		end
		-- Vampiric Blood
		if S.VampiricBlood:IsCastable() and IsTanking and (Player:HealthPercentage() <= 30 and Player:BuffDown(S.VampiricBloodBuff) and Player:BuffDown(S.IceboundFortitudeBuff)) then
		  if Cast(S.VampiricBlood) then return "vampiric_blood defensives 14"; end
		end
		-- Icebound Fortitude
		if S.IceboundFortitude:IsCastable() and IsTanking and (Player:HealthPercentage() <= 30 and Player:BuffDown(S.VampiricBloodBuff) and Player:BuffDown(S.IceboundFortitudeBuff) or Player:Stunned()) then
		  if Cast(S.IceboundFortitude) then return "icebound_fortitude defensives 16"; end
		end
		-- Healing
		if S.DeathStrike:IsReady() and Target:IsInMeleeRange(7) and Player:HealthPercentage() <= 60 then
		  if Cast(S.DeathStrike) then return "death_strike defensives 18"; end
		end
	end

	local function DRWUp()
		-- blood_boil,if=!dot.blood_plague.ticking
		if S.BloodBoil:IsReady() and Target:IsInMeleeRange(10) and (Target:DebuffDown(S.BloodPlagueDebuff)) then
		  if Cast(S.BloodBoil) then return "blood_boil drw_up 2"; end
		end
		-- tombstone,if=buff.bone_shield.stack>5&rune>=2&runic_power.deficit>=30&!talent.shattering_bone|(talent.shattering_bone.enabled&death_and_decay.ticking)
		if S.Tombstone:IsReady() and (Player:BuffStack(S.BoneShieldBuff) > 5 and Player:Rune() >= 2 and Player:RunicPowerDeficit() >= 30 and (not S.ShatteringBone:IsAvailable() or (S.ShatteringBone:IsAvailable() and Player:BuffUp(S.DeathAndDecayBuff)))) then
		  if Cast(S.Tombstone) then return "tombstone drw_up 4"; end
		end
		-- death_strike,if=buff.coagulopathy.remains<=gcd|buff.icy_talons.remains<=gcd
		-- if S.DeathStrike:IsReady() and Target:IsInMeleeRange(5) and (Player:BuffRemains(S.CoagulopathyBuff) <= Player:GCD() or Player:BuffRemains(S.IcyTalonsBuff) <= Player:GCD()) then
		--   if Cast(S.DeathStrike) then return "death_strike drw_up 6"; end
		-- end
		-- marrowrend,if=(buff.bone_shield.remains<=4|buff.bone_shield.stack<variable.bone_shield_refresh_value)&runic_power.deficit>20
		if S.Marrowrend:IsReady() and Target:IsInMeleeRange(5) and ((Player:BuffRemains(S.BoneShieldBuff) <= 4 or Player:BuffStack(S.BoneShieldBuff) < VarBoneShieldRefreshValue) and Player:RunicPowerDeficit() > 20) then
		  if Cast(S.Marrowrend) then return "marrowrend drw_up 10"; end
		end
		-- soul_reaper,if=active_enemies=1&target.time_to_pct_35<5&target.time_to_die>(dot.soul_reaper.remains+5)
		if S.SoulReaper:IsReady() and Target:IsInMeleeRange(5) and (EnemiesMeleeCount == 1 and (Target:TimeToX(35) < 5 or Target:HealthPercentage() <= 35)) then
		  if Cast(S.SoulReaper) then return "soul_reaper drw_up 12"; end
		end
		-- soul_reaper,target_if=min:dot.soul_reaper.remains,if=target.time_to_pct_35<5&active_enemies>=2&target.time_to_die>(dot.soul_reaper.remains+5)
		if S.SoulReaper:IsReady() and Target:IsInMeleeRange(5) and (EnemiesMeleeCount >= 2) then
		  if CastTargetIf(S.SoulReaper, EnemiesMelee, "min", EvaluateTargetIfFilterSoulReaper, EvaluateTargetIfSoulReaper) then return "soul_reaper drw_up 14"; end
		end
		-- death_and_decay,if=!death_and_decay.ticking&(talent.sanguine_ground|talent.unholy_ground)
		if S.DeathAndDecay:IsReady() and not Player:IsMoving() and Target:IsInMeleeRange(5) and (Player:BuffDown(S.DeathAndDecayBuff) and (S.SanguineGround:IsAvailable() or S.UnholyGround:IsAvailable())) then
		  if Cast(S.DeathAndDecay, Player) then return "death_and_decay drw_up 16"; end
		end
		-- blood_boil,if=spell_targets.blood_boil>2&charges_fractional>=1.1
		if S.BloodBoil:IsCastable() and Target:IsInMeleeRange(5) and (EnemiesMeleeCount > 2 and S.BloodBoil:ChargesFractional() >= 1.1) then
		  if Cast(S.BloodBoil) then return "blood_boil drw_up 18"; end
		end
		-- variable,name=heart_strike_rp_drw,value=(25+spell_targets.heart_strike*talent.heartbreaker.enabled*2)
		VarHeartStrikeRPDRW = (25 + HeartStrikeCount * num(S.Heartbreaker:IsAvailable()) * 2)
		-- death_strike,if=runic_power.deficit<=variable.heart_strike_rp_drw|runic_power>=variable.death_strike_dump_amount
		if S.DeathStrike:IsReady() and Target:IsSpellInRange(S.DeathStrike) and (Player:RunicPowerDeficit() <= VarHeartStrikeRPDRW or Player:RunicPower() >= VarDeathStrikeDumpAmt) then
		  if Cast(S.DeathStrike) then return "death_strike drw_up 20"; end
		end
		-- consumption
		if S.Consumption:IsCastable() and Target:IsSpellInRange(S.Consumption) then
		  if Cast(S.Consumption) then return "consumption drw_up 22"; end
		end
		-- blood_boil,if=charges_fractional>=1.1&buff.hemostasis.stack<5
		if S.BloodBoil:IsReady() and Target:IsInMeleeRange(10) and (S.BloodBoil:ChargesFractional() >= 1.1 and Player:BuffStack(S.HemostasisBuff) < 5) then
		  if Cast(S.BloodBoil) then return "blood_boil drw_up 24"; end
		end
		-- heart_strike,if=rune.time_to_2<gcd|runic_power.deficit>=variable.heart_strike_rp_drw
		if S.HeartStrike:IsReady() and Target:IsSpellInRange(S.HeartStrike) and (Player:RuneTimeToX(2) < Player:GCD() or Player:RunicPowerDeficit() >= VarHeartStrikeRPDRW) then
		  if Cast(S.HeartStrike) then return "heart_strike drw_up 26"; end
		end
	end

	local function Racials()
		-- blood_fury,if=cooldown.dancing_rune_weapon.ready&(!cooldown.blooddrinker.ready|!talent.blooddrinker.enabled)
		if S.BloodFury:IsCastable() and (S.DancingRuneWeapon:CooldownUp() and (not S.Blooddrinker:IsReady() or not S.Blooddrinker:IsAvailable()))  then
		  if Cast(S.BloodFury) then return "blood_fury racials 2"; end
		end
		-- berserking
		if S.Berserking:IsCastable() then
		  if Cast(S.Berserking) then return "berserking racials 4"; end
		end
		-- arcane_pulse,if=active_enemies>=2|rune<1&runic_power.deficit>60
		if S.ArcanePulse:IsCastable() and Target:IsInRange(8) and (EnemiesMeleeCount >= 2 or Player:Rune() < 1 and Player:RunicPowerDeficit() > 60) then
		  if Cast(S.ArcanePulse) then return "arcane_pulse racials 6"; end
		end
		-- lights_judgment,if=buff.unholy_strength.up
		if S.LightsJudgment:IsCastable() and Target:IsSpellInRange(S.LightsJudgment) and (Player:BuffUp(S.UnholyStrengthBuff)) then
		  if Cast(S.LightsJudgment) then return "lights_judgment racials 8"; end
		end
		-- ancestral_call
		if S.AncestralCall:IsCastable() then
		  if Cast(S.AncestralCall) then return "ancestral_call racials 10"; end
		end
		-- fireblood
		if S.Fireblood:IsCastable() then
		  if Cast(S.Fireblood) then return "fireblood racials 12"; end
		end
		-- bag_of_tricks
		if S.BagofTricks:IsCastable() and Target:IsSpellInRange(S.BagofTricks) then
		  if Cast(S.BagofTricks) then return "bag_of_tricks racials 14"; end
		end
		-- arcane_torrent,if=runic_power.deficit>20
		if S.ArcaneTorrent:IsCastable() and Target:IsInRange(8) and (Player:RunicPowerDeficit() > 20) then
		  if Cast(S.ArcaneTorrent) then return "arcane_torrent racials 16"; end
		end
	end

	local function Standard()
		-- tombstone,if=buff.bone_shield.stack>5&rune>=2&runic_power.deficit>=30&!talent.shattering_bone|(talent.shattering_bone.enabled&death_and_decay.ticking)&cooldown.dancing_rune_weapon.remains>=25
		if S.Tombstone:IsCastable() and (Player:BuffStack(S.BoneShieldBuff) > 5 and Player:Rune() >= 2 and Player:RunicPowerDeficit() >= 30 and (not S.ShatteringBone:IsAvailable() or (S.ShatteringBone:IsAvailable() and Player:BuffUp(S.DeathAndDecayBuff))) and S.DancingRuneWeapon:CooldownRemains() >= 25) then
		  if Cast(S.Tombstone) then return "tombstone standard 2"; end
		end
		-- variable,name=heart_strike_rp,value=(10+spell_targets.heart_strike*talent.heartbreaker.enabled*2)
		VarHeartStrikeRP = (10 + EnemiesMeleeCount * num(S.Heartbreaker:IsAvailable()) * 2)
		-- death_strike,if=buff.coagulopathy.remains<=gcd|buff.icy_talons.remains<=gcd|runic_power>=variable.death_strike_dump_amount|runic_power.deficit<=variable.heart_strike_rp|target.time_to_die<10
		-- if S.DeathStrike:IsReady() and Target:IsInMeleeRange(5) and (Player:RunicPower() >= VarDeathStrikeDumpAmt or Player:RunicPowerDeficit() <= VarHeartStrikeRP or Target:TimeToDie() < 10) then
		--   if Cast(S.DeathStrike) then return "death_strike standard 4"; end
		-- end
		-- deaths_caress,if=(buff.bone_shield.remains<=4|(buff.bone_shield.stack<variable.bone_shield_refresh_value+1))&runic_power.deficit>10&!(talent.insatiable_blade&cooldown.dancing_rune_weapon.remains<buff.bone_shield.remains)&!talent.consumption.enabled&!talent.blooddrinker.enabled&rune.time_to_3>gcd
		if S.DeathsCaress:IsReady() and Target:IsSpellInRange(S.DeathsCaress) and ((Player:BuffRemains(S.BoneShieldBuff) <= 4 or (Player:BuffStack(S.BoneShieldBuff) < VarBoneShieldRefreshValue + 1)) and Player:RunicPowerDeficit() > 10 and (not (S.InsatiableBlade:IsAvailable() and S.DancingRuneWeapon:CooldownRemains() < Player:BuffRemains(S.BoneShieldBuff))) and not S.Consumption:IsAvailable() and not S.Blooddrinker:IsAvailable() and Player:RuneTimeToX(3) > Player:GCD()) then
		  if Cast(S.DeathsCaress) then return "deaths_caress standard 6"; end
		end
		-- marrowrend,if=(buff.bone_shield.remains<=4|buff.bone_shield.stack<variable.bone_shield_refresh_value)&runic_power.deficit>20&!(talent.insatiable_blade&cooldown.dancing_rune_weapon.remains<buff.bone_shield.remains)
		if S.Marrowrend:IsReady() and Target:IsInMeleeRange(5) and ((Player:BuffRemains(S.BoneShieldBuff) <= 4 or Player:BuffStack(S.BoneShieldBuff) < VarBoneShieldRefreshValue) and Player:RunicPowerDeficit() > 20 and not (S.InsatiableBlade:IsAvailable() and S.DancingRuneWeapon:CooldownRemains() < Player:BuffRemains(S.BoneShieldBuff))) then
		  if Cast(S.Marrowrend) then return "marrowrend standard 8"; end
		end
		-- consumption
		if S.Consumption:IsCastable() and Target:IsSpellInRange(S.Consumption) then
		  if Cast(S.Consumption) then return "consumption standard 10"; end
		end
		-- soul_reaper,if=active_enemies=1&target.time_to_pct_35<5&target.time_to_die>(dot.soul_reaper.remains+5)
		if S.SoulReaper:IsReady() and Target:IsInMeleeRange(5) and (EnemiesMeleeCount == 1 and (Target:TimeToX(35) < 5 or Target:HealthPercentage() <= 35)) then
		  if Cast(S.SoulReaper) then return "soul_reaper standard 12"; end
		end
		-- soul_reaper,target_if=min:dot.soul_reaper.remains,if=target.time_to_pct_35<5&active_enemies>=2&target.time_to_die>(dot.soul_reaper.remains+5)
		if S.SoulReaper:IsReady() and Target:IsInMeleeRange(5) and (EnemiesMeleeCount >= 2) then
		  if CastTargetIf(S.SoulReaper, EnemiesMelee, "min", EvaluateTargetIfFilterSoulReaper, EvaluateTargetIfSoulReaper) then return "soul_reaper standard 14"; end
		end
		-- bonestorm,if=buff.bone_shield.stack>=5
		if S.Bonestorm:IsReady() and Target:IsInMeleeRange(8) and (Player:BuffStack(S.BoneShieldBuff) >= 5) then
		  if Cast(S.Bonestorm) then return "bonestorm standard 16"; end
		end
		-- blood_boil,if=charges_fractional>=1.8&(buff.hemostasis.stack<=(5-spell_targets.blood_boil)|spell_targets.blood_boil>2)
		if S.BloodBoil:IsCastable() and Target:IsInMeleeRange(10) and (S.BloodBoil:ChargesFractional() >= 1.8 and (Player:BuffStack(S.HemostasisBuff) <= (5 - EnemiesMeleeCount) or EnemiesMeleeCount > 2)) then
		  if Cast(S.BloodBoil) then return "blood_boil standard 18"; end
		end
		-- heart_strike,if=rune.time_to_4<gcd
		if S.HeartStrike:IsReady() and Target:IsSpellInRange(S.HeartStrike) and (Player:RuneTimeToX(4) < Player:GCD()) then
		  if Cast(S.HeartStrike) then return "heart_strike standard 20"; end
		end
		-- blood_boil,if=charges_fractional>=1.1
		if S.BloodBoil:IsCastable() and Target:IsInMeleeRange(10) and (S.BloodBoil:ChargesFractional() >= 1.1) then
		  if Cast(S.BloodBoil) then return "blood_boil standard 22"; end
		end
		-- heart_strike,if=(rune>1&(rune.time_to_3<gcd|buff.bone_shield.stack>7))
		if S.HeartStrike:IsReady() and Target:IsSpellInRange(S.HeartStrike) and (Player:Rune() > 1 and (Player:RuneTimeToX(3) < Player:GCD() or Player:BuffStack(S.BoneShieldBuff) > 7)) then
		  if Cast(S.HeartStrike) then return "heart_strike standard 24"; end
		end
	end

	local function Trinkets()
		-- use_item,name=fyralath_the_dreamrender,if=dot.mark_of_fyralath.ticking
		if I.Fyralath:IsEquippedAndReady() and Target:IsInRange(25) and (S.MarkofFyralathDebuff:AuraActiveCount() > 0) then
		  if Cast(I.Fyralath) then return "fyralath_the_dreamrender trinkets 2"; end
		end
		if trues then
		  -- use_item,slot=trinket1,if=!variable.trinket_1_buffs&(variable.damage_trinket_priority=1|trinket.2.cooldown.remains|!trinket.2.has_cooldown)
		  if Trinket1:IsReady() and Target:IsInRange(VarTrinket1Range) and not VarTrinket1BL and (not VarTrinket1Buffs and (VarDamageTrinketPriority == 1 or Trinket2:CooldownDown() or not Trinket2:HasCooldown()))   then
			if Cast(Trinket1) then return "use_item for trinket1 ("..Trinket1:Name()..") trinkets 4"; end
		  end
		  -- use_item,slot=trinket2,if=!variable.trinket_2_buffs&(variable.damage_trinket_priority=2|trinket.1.cooldown.remains|!trinket.1.has_cooldown)
		  if Trinket2:IsReady() and Target:IsInRange(VarTrinket2Range) and not VarTrinket2BL and (not VarTrinket2Buffs and (VarDamageTrinketPriority == 2 or Trinket1:CooldownDown() or not Trinket1:HasCooldown())) then
			if Cast(Trinket2) then return "use_item for trinket2 ("..Trinket2:Name()..") trinkets 6"; end
		  end
		end
		if true then
		  -- use_item,slot=main_hand,if=!equipped.fyralath_the_dreamrender&(variable.trinket_1_buffs|trinket.1.cooldown.remains)&(variable.trinket_2_buffs|trinket.2.cooldown.remains)
		  -- Note: Expanding this to be all non-trinkets.
		  local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes, nil, true)
		  if ItemToUse and Target:IsInRange(ItemRange) and ((not I.Fyralath:IsEquippedAndReady() or ItemSlot ~= 16) and (VarTrinket1Buffs or Trinket1:CooldownDown()) and (VarTrinket2Buffs or Trinket2:CooldownDown())) then
			if Cast(ItemToUse) then return "use_item for non-trinket ("..MainHandToUse:Name()..") trinkets 8"; end
		  end
		end
		if true then
		  -- use_item,slot=trinket1,if=variable.trinket_1_buffs&(buff.dancing_rune_weapon.up|!talent.dancing_rune_weapon|cooldown.dancing_rune_weapon.remains>20)&(trinket.2.cooldown.remains|!trinket.2.has_cooldown|variable.trinket_2_buffs)
		  if Trinket1:IsReady() and Target:IsInRange(VarTrinket1Range) and not VarTrinket1BL and (VarTrinket1Buffs and (Player:BuffUp(S.DancingRuneWeaponBuff) or not S.DancingRuneWeapon:IsAvailable() or S.DancingRuneWeapon:CooldownRemains() > 20) and (Trinket2:CooldownDown() or not Trinket2:HasCooldown() or VarTrinket2Buffs)) then
			if Cast(Trinket1) then return "use_item for trinket1 ("..Trinket1:Name()..") trinkets 10"; end
		  end
		  -- use_item,slot=trinket2,if=variable.trinket_2_buffs&(buff.dancing_rune_weapon.up|!talent.dancing_rune_weapon|cooldown.dancing_rune_weapon.remains>20)&(trinket.1.cooldown.remains|!trinket.1.has_cooldown|variable.trinket_1_buffs)
		  if Trinket2:IsReady() and Target:IsInRange(VarTrinket2Range) and not VarTrinket2BL and (VarTrinket2Buffs and (Player:BuffUp(S.DancingRuneWeaponBuff) or not S.DancingRuneWeapon:IsAvailable() or S.DancingRuneWeapon:CooldownRemains() > 20) and (Trinket1:CooldownDown() or not Trinket1:HasCooldown() or VarTrinket1Buffs)) then
			if Cast(Trinket2) then return "use_item for trinket2 ("..Trinket2:Name()..") trinkets 12"; end
		  end
		end
	end

	local function MainRotation()

		-- Get Enemies Count
		EnemiesMelee = Player:GetEnemiesInMeleeRange(5)
		if AoEON() then
		  EnemiesMeleeCount = #EnemiesMelee
		else
		  EnemiesMeleeCount = 1
		end

		if S.RaiseAlly:IsReady() and Player:AffectingCombat() and MouseOver:Exists() and MouseOver:IsAPlayer() and MouseOver:IsDeadOrGhost() then 
			if Cast(S.RaiseAlly) then return "Intercession"; end
		end

		if Player:AffectingCombat() then
			-- HeartStrike is limited to 5 targets maximum
			HeartStrikeCount = mathmin(EnemiesMeleeCount, Player:BuffUp(S.DeathAndDecayBuff) and 5 or 2)
		
			-- Check Units without Blood Plague
			UnitsWithoutBloodPlague = UnitsWithoutBP(EnemiesMelee)
		
			-- Are we actively tanking?
			IsTanking = Player:IsTankingAoE(8) or Player:IsTanking(Target)
		end

		-- call precombat
			-- Defensives
		if IsTanking then
			local ShouldReturn = Defensives(); if ShouldReturn then return ShouldReturn; end
		end

		if TargetIsValid() then
			-- Interrupts
			-- Display Pool icon if PoolDuringBlooddrinker is true
			if Player:IsChanneling(S.Blooddrinker) and Player:BuffUp(S.BoneShieldBuff) and UnitsWithoutBloodPlague == 0 and Player:CastRemains() > 0.2 then
			  if Cast(S.Pool) then return "Pool During Blooddrinker"; end
			end
			-- auto_attack
			-- variable,name=death_strike_dump_amount,value=65
			-- Note: Added a slider option, set to 65 as a default.
			VarDeathStrikeDumpAmt = 65
			-- variable,name=bone_shield_refresh_value,value=4,op=setif,condition=talent.consumption.enabled|talent.blooddrinker.enabled,value_else=5
			-- Moved to variable declarations and SPELLS_CHANGED/LEARNED_SPELL_IN_TAB registrations. No need to keep checking during combat, as talents can't change at that point.
			-- mind_freeze,if=target.debuff.casting.react
			-- Note: Handled above in Interrupts
			-- invoke_external_buff,name=power_infusion,if=buff.dancing_rune_weapon.up|!talent.dancing_rune_weapon
			-- Note: Not handling external buffs
			-- potion,if=buff.dancing_rune_weapon.up

			-- call_action_list,name=trinkets
			if true then
			  local ShouldReturn = Trinkets(); if ShouldReturn then return ShouldReturn; end
			end
			-- raise_dead
			if S.RaiseDead:IsCastable() then
				if Cast(S.RaiseDead) then return "raise_dead main 4"; end
			end
	
			-- reapers_mark
			if S.ReapersMark:IsReady() and Target:IsInMeleeRange(5) then
			  if Cast(S.ReapersMark) then return "reapers_mark main 6"; end
			end
			-- icebound_fortitude,if=!(buff.dancing_rune_weapon.up|buff.vampiric_blood.up)&(target.cooldown.pause_action.remains>=8|target.cooldown.pause_action.duration>0)
			-- vampiric_blood,if=!(buff.dancing_rune_weapon.up|buff.icebound_fortitude.up|buff.vampiric_blood.up)&(target.cooldown.pause_action.remains>=13|target.cooldown.pause_action.duration>0)
			-- Above lines handled via Defensives()
			-- deaths_caress,if=!buff.bone_shield.up
			if S.DeathsCaress:IsReady() and Target:IsSpellInRange(S.DeathsCaress) and (Player:BuffDown(S.BoneShieldBuff)) then
			  if Cast(S.DeathsCaress) then return "deaths_caress main 8"; end
			end
			-- death_and_decay,if=!death_and_decay.ticking&(talent.unholy_ground|talent.sanguine_ground|spell_targets.death_and_decay>3|buff.crimson_scourge.up)
			if S.DeathAndDecay:IsReady() and not Player:IsMoving() and Target:IsInMeleeRange(5) and (Player:BuffDown(S.DeathAndDecayBuff) and (S.UnholyGround:IsAvailable() or S.SanguineGround:IsAvailable() or EnemiesMeleeCount > 3 or Player:BuffUp(S.CrimsonScourgeBuff))) then
			  if Cast(S.DeathAndDecay, Player) then return "death_and_decay main 10"; end
			end
			-- death_strike,if=buff.coagulopathy.remains<=gcd|buff.icy_talons.remains<=gcd|runic_power>=variable.death_strike_dump_amount|runic_power.deficit<=variable.heart_strike_rp|target.time_to_die<10
			if S.DeathStrike:IsReady() and Target:IsSpellInRange(S.DeathStrike) and (Player:RunicPower() >= VarDeathStrikeDumpAmt or Player:RunicPowerDeficit() <= VarHeartStrikeRP) then
			  if Cast(S.DeathStrike) then return "death_strike main 12"; end
			end
			-- blooddrinker,if=!buff.dancing_rune_weapon.up
			if S.Blooddrinker:IsReady() and Target:IsSpellInRange(S.Blooddrinker) and (Player:BuffDown(S.DancingRuneWeaponBuff)) then
			  if Cast(S.Blooddrinker) then return "blooddrinker main 14"; end
			end
			-- call_action_list,name=racials
			if (CDsON()) then
			  local ShouldReturn = Racials(); if ShouldReturn then return ShouldReturn; end
			end
			-- sacrificial_pact,if=!buff.dancing_rune_weapon.up&(pet.ghoul.remains<2|target.time_to_die<gcd)
			if S.SacrificialPact:IsReady() and Ghoul.GhoulActive() and (Player:BuffDown(S.DancingRuneWeaponBuff) and (Ghoul.GhoulRemains() < 2)) then
			  if Cast(S.SacrificialPact) then return "sacrificial_pact main 16"; end
			end
			-- blood_tap,if=(rune<=2&rune.time_to_4>gcd&charges_fractional>=1.8)|rune.time_to_3>gcd
			if CDsON() and S.BloodTap:IsCastable() and ((Player:Rune() <= 2 and Player:RuneTimeToX(4) > Player:GCD() and S.BloodTap:ChargesFractional() >= 1.8) or Player:RuneTimeToX(3) > Player:GCD()) then
			  if Cast(S.BloodTap) then return "blood_tap main 18"; end
			end
			-- gorefiends_grasp,if=talent.tightening_grasp.enabled
			if S.GorefiendsGrasp:IsCastable() and Target:IsSpellInRange(S.GorefiendsGrasp) and (S.TighteningGrasp:IsAvailable()) then
			  if Cast(S.GorefiendsGrasp) then return "gorefiends_grasp main 20"; end
			end
			-- empower_rune_weapon,if=rune<6&runic_power.deficit>5
			if S.EmpowerRuneWeapon:IsCastable() and (Player:Rune() < 6 and Player:RunicPowerDeficit() > 5) then
			  if Cast(S.EmpowerRuneWeapon) then return "empower_rune_weapon main 22"; end
			end
			-- abomination_limb
			if S.AbominationLimb:IsCastable() and Target:IsInRange(20) then
			  if Cast(S.AbominationLimb) then return "abomination_limb main 24"; end
			end
			-- dancing_rune_weapon,if=!buff.dancing_rune_weapon.up
			if S.DancingRuneWeapon:IsCastable() and (Player:BuffDown(S.DancingRuneWeaponBuff)) then
			  if Cast(S.DancingRuneWeapon) then return "dancing_rune_weapon main 26"; end
			end
			-- run_action_list,name=drw_up,if=buff.dancing_rune_weapon.up
			if (Player:BuffUp(S.DancingRuneWeaponBuff)) then
			  local ShouldReturn = DRWUp(); if ShouldReturn then return ShouldReturn; end
			  if Cast(S.Pool) then return "Pool for DRWUp()"; end
			end
			-- call_action_list,name=standard
			local ShouldReturn = Standard(); if ShouldReturn then return ShouldReturn; end
			-- Pool if nothing else to do
			if Cast(S.Pool) then return "Wait/Pool Resources"; end
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
