local function MyRoutine()
	local Author = 'Monk Brew'
	local SpecID = 268 	 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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

		-- Racials
		AncestralCall                         = Spell(274738),
		ArcanePulse                           = Spell(260364),
		ArcaneTorrent                         = Spell(25046),
		AzeriteSurge                          = Spell(436344),
		BagofTricks                           = Spell(312411),
		Berserking                            = Spell(26297),
		BloodFury                             = Spell(20572),
		GiftoftheNaaru                        = Spell(59547),
		Haymaker                              = Spell(287712),
		Fireblood                             = Spell(265221),
		LightsJudgment                        = Spell(255647),
		QuakingPalm                           = Spell(107079),
		RocketBarrage                         = Spell(69041),
		Shadowmeld                            = Spell(58984),
		-- Abilities
		CracklingJadeLightning                = Spell(117952),
		ExpelHarm                             = Spell(322101),
		LegSweep                              = Spell(119381),
		Provoke                               = Spell(115546),
		Resuscitate                           = Spell(115178),
		RisingSunKick                         = Spell(107428),
		Roll                                  = Spell(109132),
		TigerPalm                             = Spell(100780),
		TouchofDeath                          = Spell(322109),
		Transcendence                         = Spell(101643),
		TranscendenceTransfer                 = Spell(119996),
		Vivify                                = Spell(116670),
		-- Talents
		BonedustBrew                          = Spell(386276),
		Celerity                              = Spell(115173),
		ChiBurst                              = Spell(123986),
		ChiTorpedo                            = Spell(115008),
		ChiWave                               = Spell(115098),
		DampenHarm                            = Spell(122278),
		Detox                                 = Spell(218164),
		Disable                               = Spell(116095),
		DiffuseMagic                          = Spell(122783),
		EyeoftheTiger                         = Spell(196607),
		FastFeet                              = Spell(388809),
		ImpTouchofDeath                       = Spell(322113),
		InnerStrengthBuff                     = Spell(261769),
		Paralysis                             = Spell(115078),
		RingofPeace                           = Spell(116844),
		RushingJadeWind                       = Spell(116847),
		SpearHandStrike                       = Spell(116705),
		StrengthofSpirit                      = Spell(387276),
		SummonWhiteTigerStatue                = Spell(388686),
		TigerTailSweep                        = Spell(264348),
		TigersLust                            = Spell(116841),
		-- Buffs
		BonedustBrewBuff                      = Spell(386276),
		BonedustBrewDebuff                    = Spell(386276),
		DampenHarmBuff                        = Spell(122278),
		PressurePointBuff                     = Spell(393053),
		RushingJadeWindBuff                   = Spell(116847),
		-- Debuffs
		-- Item Effects
		CalltoDominanceBuff                   = Spell(403380), -- Neltharion trinket buff
		DomineeringArroganceBuff              = Spell(411661), -- Neltharion trinket buff2
		TheEmperorsCapacitorBuff              = Spell(235054),
		-- Misc
		PoolEnergy                            = Spell(999910),
		StopFoF                               = Spell(363653),

		-- Talents
		CelestialConduit                      = Spell(443028),
		-- Buffs
		HeartoftheJadeSerpentBuff             = Spell(456368),
		HeartoftheJadeSerpentCDRBuff          = Spell(443421),
		HeartoftheJadeSerpentCDRCelestialBuff = Spell(443616),

		-- Talents
		FlurryStrikes                         = Spell(450615),
		WisdomoftheWall                       = Spell(450994),
		-- Buffs
		WisdomoftheWallFlurryBuff             = Spell(452688),

		-- Abilities
		BlackoutKick                          = Spell(205523),
		Clash                                 = Spell(324312),
		SpinningCraneKick                     = Spell(322729),
		-- Talents
		BlackoutCombo                         = Spell(196736),
		BlackOxBrew                           = Spell(115399),
		BreathofFire                          = Spell(115181),
		BobandWeave                           = Spell(280515),
		CelestialFlames                       = Spell(325177),
		CharredPassions                       = Spell(386965),
		ExplodingKeg                          = Spell(325153),
		FluidityofMotion                      = Spell(387230),
		HighTolerance                         = Spell(196737),
		ImprovedInvokeNiuzao                  = Spell(322740),
		ImprovedPurifyingBrew                 = Spell(343743),
		InvokeNiuzao                          = Spell(132578),
		KegSmash                              = Spell(121253),
		LightBrewing                          = Spell(325093),
		PresstheAdvantage                     = Spell(418359),
		ScaldingBrew                          = Spell(383698),
		Shuffle                               = Spell(322120),
		SpecialDelivery                       = Spell(196730),
		SummonBlackOxStatue                   = Spell(115315),
		WeaponsofOrder                        = Spell(387184),
		-- Defensive
		CelestialBrew                         = Spell(322507),
		FortifyingBrew                        = Spell(115203),
		PurifyingBrew                         = Spell(119582),
		-- Buffs
		BlackoutComboBuff                     = Spell(228563),
		CharredPassionsBuff                   = Spell(386963),
		ElusiveBrawlerBuff                    = Spell(195630),
		FortifyingBrewBuff                    = Spell(120954),
		PresstheAdvantageBuff                 = Spell(418361),
		WeaponsofOrderBuff                    = Spell(387184),
		-- Debuffs
		BreathofFireDotDebuff                 = Spell(123725),
		WeaponsofOrderDebuff                  = Spell(387179),
		-- Stagger Levels
		HeavyStagger                          = Spell(124273),
		ModerateStagger                       = Spell(124274),
		LightStagger                          = Spell(124275),




		ViviciousVivication = Spell(388812),

		
	}

	local I = {

		-- DF Trinkets
		AlgetharPuzzleBox                     = Item(193701, {13, 14}),
		BeacontotheBeyond                     = Item(203963, {13, 14}),
		DragonfireBombDispenser               = Item(202610, {14, 14}),
		EruptingSpearFragment                 = Item(193769, {13, 14}),
		ManicGrieftorch                       = Item(194308, {13, 14}),
		-- TWW Trinkets
		ImperfectAscendancySerum              = Item(225654, {13, 14}),
		TreacherousTransmitter                = Item(221023, {13, 14}),
		-- Other On-Use Items
		Djaruun                               = Item(202569, {16}),



		
		
	}

	local OnUseExcludes = {
		-- I.TrinketName:ID(),
	}

	--- ===== Rotation Variables =====
	local Enemies5y
	local EnemiesCount5
	local IsTanking

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
		message( 'Brews Jenner', 1)
		MainAddon:Print('Brews Jenner')
	end

	


	local function Defensives()
		-- if S.CelestialBrew:IsCastable() and (Player:BuffDown(S.BlackoutComboBuff) and Player:IncomingDamageTaken(1999) > (UnitHealthMax("player") * 0.1 + Player:StaggerLastTickDamage(4)) and Player:BuffStack(S.ElusiveBrawlerBuff) < 2) then
		--   if Cast(S.CelestialBrew, nil, Settings.Brewmaster.DisplayStyle.CelestialBrew) then return "Celestial Brew"; end
		-- end
		if (Player:DebuffUp(S.HeavyStagger) or Player:DebuffUp(S.ModerateStagger)) and Player:BuffDown(S.CelestialBrew) and Player:HealthPercentage() <= 90 then
			if S.PurifyingBrew:IsCastable() then
				if Cast(S.PurifyingBrew) then return "Purifying Brew"; end
			elseif S.CelestialBrew:IsCastable() and S.PurifyingBrew:Charges() == 0 then
				if Cast(S.CelestialBrew) then return "Celestial Brew"; end
			elseif S.BlackOxBrew:IsCastable() and S.PurifyingBrew:Charges() == 0 then
				if Cast(S.BlackOxBrew) then return "Black Ox Brew"; end
			end
		end

		if S.ExpelHarm:IsReady() and Player:HealthPercentage() <= 100 then
		  local ExpelHarmMod = (S.StrengthofSpirit:IsAvailable()) and (1 + (1 - Player:HealthPercentage() / 100) * 100) or 1
		  local HealingSphereValue = Player:AttackPowerDamageMod() * 3
		  local ExpelHarmHeal = (GetSpellBonusDamage(4) * 1.2 * ExpelHarmMod) + (S.ExpelHarm:Count() * HealingSphereValue)
		  local MissingHP = Player:MaxHealth() - Player:Health()
		  -- Allow us to "waste" 10% of the Expel Harm heal amount.
		  if MissingHP > ExpelHarmHeal * 0.9 or Player:HealthPercentage() <= 100 / 2 then
			if Cast(S.ExpelHarm) then return "Expel Harm (defensives)"; end
		  end
		end

		if S.Vivify:IsCastable() and S.ViviciousVivication:IsAvailable() and Player:HealthPercentage() <= 60 then
			if Cast(S.Vivify, Player) then return end
		end

		if S.DampenHarm:IsCastable() and Player:BuffDown(S.FortifyingBrewBuff) and Player:HealthPercentage() <= 35 then
		  if Cast(S.DampenHarm) then return "Dampen Harm"; end
		end
		if S.FortifyingBrew:IsCastable() and Player:BuffDown(S.DampenHarmBuff) and Player:HealthPercentage() <= 25 then
		  if Cast(S.FortifyingBrew) then return "Fortifying Brew"; end
		end

	end

	local function ItemActions()
		-- use_items
		local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes)
		if ItemToUse then
		  local DisplayStyle = true
		  local IsTrinket = ItemSlot == 13 or ItemSlot == 14
		  if not IsTrinket then DisplayStyle = true end
		  if (IsTrinket) or (not IsTrinket) and Target:IsInRange(ItemRange) then
			if Cast(ItemToUse) then return "Generic use_items for " .. ItemToUse:Name(); end
		  end
		end
	end

	local function RaceActions()
		-- blood_fury
		if S.BloodFury:IsCastable() then
		  if Cast(S.BloodFury) then return "blood_fury race_actions 2"; end
		end
		-- berserking
		if S.Berserking:IsCastable() then
		  if Cast(S.Berserking) then return "berserking race_actions 4"; end
		end
		-- arcane_torrent
		if S.ArcaneTorrent:IsCastable() then
		  if Cast(S.ArcaneTorrent) then return "arcane_torrent race_actions 6"; end
		end
		-- lights_judgment
		if S.LightsJudgment:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.LightsJudgment) then return "lights_judgment race_actions 8"; end
		end
		-- fireblood
		if S.Fireblood:IsCastable() then
		  if Cast(S.Fireblood) then return "fireblood race_actions 10"; end
		end
		-- ancestral_call
		if S.AncestralCall:IsCastable() then
		  if Cast(S.AncestralCall) then return "ancestral_call race_actions 12"; end
		end
		-- bag_of_tricks
		if S.BagofTricks:IsCastable() and Target:IsInRange(40) then
		  if Cast(S.BagofTricks) then return "bag_of_tricks race_actions 14"; end
		end

	end

	local function MainRotation()

		-- Unit Update
		Enemies5y = Player:GetEnemiesInMeleeRange(5) -- Multiple Abilities
		if AoEON() then
		EnemiesCount5 = #Enemies5y
		else
		EnemiesCount5 = 1
		end
		
		if Player:AffectingCombat() then
		-- Calculate fight_remains
		BossFightRemains = HL.BossFightRemains()
		FightRemains = BossFightRemains
		if FightRemains == 11111 then
			FightRemains = HL.FightRemains(Enemies5y, false)
		end

		-- Are we tanking?
		IsTanking = Player:IsTankingAoE(8) or Player:IsTanking(Target)

		-- Update CombatTime, which is used in many spell suggestions
		CombatTime = HL.CombatTime()
		end

		-- Precombat
		-- auto_attack
		-- Manually added: spear_hand_strike,if=target.debuff.casting.react
		-- Manually added: Defensives
		if IsTanking then
		local ShouldReturn = Defensives(); if ShouldReturn then return ShouldReturn; end
		end
		-- expel_harm,if=buff.gift_of_the_ox.stack>4
		-- if S.ExpelHarm:IsReady() and (S.ExpelHarm:Count() > 4) then
		-- if Cast(S.ExpelHarm, Settings.Brewmaster.GCDasOffGCD.ExpelHarm, nil, not Target:IsInRange(20)) then return "expel_harm main 2"; end
		-- end
		-- potion
		-- if Settings.Commons.Enabled.Potions then
		-- local PotionSelected = Everyone.PotionSelected()
		-- if PotionSelected and PotionSelected:IsReady() then
		-- 	if Cast(PotionSelected, nil, Settings.CommonsDS.DisplayStyle.Potions) then return "potion main 4"; end
		-- end
		-- end
		if TargetIsValid() then
			-- call_action_list,name=race_actions
			if true then
			local ShouldReturn = RaceActions(); if ShouldReturn then return ShouldReturn; end
			end
			-- call_action_list,name=item_actions
			if true then
			local ShouldReturn = ItemActions(); if ShouldReturn then return ShouldReturn; end
			end
			-- black_ox_brew,if=energy<40
			-- if S.BlackOxBrew:IsCastable() and (Player:Energy() < 40) then
			-- if Cast(S.BlackOxBrew) then return "black_ox_brew main 6"; end
			-- end
			-- celestial_brew,if=buff.aspect_of_harmony_accumulator.value>0.98*health.max|(target.time_to_die<20&target.time_to_die>14&buff.aspect_of_harmony_accumulator.value>0.2*health.max)
			-- Note: Handled in Defensives.
			-- blackout_kick
			if S.BlackoutKick:IsReady() and Target:IsInMeleeRange(5) then
			if Cast(S.BlackoutKick) then return "blackout_kick main 8"; end
			end
			-- chi_burst
			if S.ChiBurst:IsCastable() and Target:IsInRange(40) then
			if Cast(S.ChiBurst) then return "chi_burst main 10"; end
			end
			-- weapons_of_order
			if S.WeaponsofOrder:IsReady() then
			if Cast(S.WeaponsofOrder) then return "weapons_of_order main 12"; end
			end
			-- rising_sun_kick,if=!talent.fluidity_of_motion.enabled
			if S.RisingSunKick:IsReady() and Target:IsInMeleeRange(5) and (not S.FluidityofMotion:IsAvailable()) then
			if Cast(S.RisingSunKick) then return "rising_sun_kick main 14"; end
			end
			-- tiger_palm,if=buff.blackout_combo.up
			if S.TigerPalm:IsCastable() and Target:IsInMeleeRange(5) and (Player:BuffUp(S.BlackoutComboBuff)) then
			if Cast(S.TigerPalm) then return "tiger_palm main 16"; end
			end
			-- keg_smash,if=talent.scalding_brew.enabled
			if S.KegSmash:IsReady() and Target:IsInRange(15) and (S.ScaldingBrew:IsAvailable()) then
			if Cast(S.KegSmash) then return "keg_smash main 18"; end
			end
			-- spinning_crane_kick,if=talent.charred_passions.enabled&talent.scalding_brew.enabled&buff.charred_passions.up&buff.charred_passions.remains<3&dot.breath_of_fire.remains<9&active_enemies>4
			if S.SpinningCraneKick:IsReady() and Target:IsInMeleeRange(8) and (S.CharredPassions:IsAvailable() and S.ScaldingBrew:IsAvailable() and Player:BuffUp(S.CharredPassionsBuff) and Player:BuffRemains(S.CharredPassionsBuff) < 3 and Target:DebuffRemains(S.BreathofFire) < 9 and EnemiesCount5 > 4) then
			if Cast(S.SpinningCraneKick) then return "spinning_crane_kick main 20"; end
			end
			-- rising_sun_kick,if=talent.fluidity_of_motion.enabled
			if S.RisingSunKick:IsReady() and Target:IsInMeleeRange(5) and (S.FluidityofMotion:IsAvailable()) then
			if Cast(S.RisingSunKick) then return "rising_sun_kick main 22"; end
			end
			-- purifying_brew,if=buff.blackout_combo.down
			-- if S.PurifyingBrew:IsCastable() and ShouldPurify() and (Player:BuffDown(S.BlackoutComboBuff)) then
			-- if Cast(S.PurifyingBrew, nil, Settings.Brewmaster.DisplayStyle.Purify) then return "purifying_brew main 24"; end
			-- end
			-- breath_of_fire,if=(buff.charred_passions.down&(!talent.scalding_brew.enabled|active_enemies<5))|!talent.charred_passions.enabled|(dot.breath_of_fire.remains<3&talent.scalding_brew.enabled)
			if S.BreathofFire:IsCastable() and Target:IsInMeleeRange(12) and ((Player:BuffDown(S.CharredPassionsBuff) and (not S.ScaldingBrew:IsAvailable() or EnemiesCount5 < 5)) or not S.CharredPassions:IsAvailable() or (Target:DebuffRemains(S.BreathofFire) < 3 and S.ScaldingBrew:IsAvailable())) then
			if Cast(S.BreathofFire) then return "breath_of_fire main 26"; end
			end
			-- exploding_keg
			if S.ExplodingKeg:IsCastable() and Target:IsInMeleeRange(5) then
			if Cast(S.ExplodingKeg, Player) then return "exploding_keg main 28"; end
			end
			-- keg_smash
			if S.KegSmash:IsReady() and Target:IsInRange(15) then
			if Cast(S.KegSmash) then return "keg_smash main 30"; end
			end
			-- rushing_jade_wind
			if S.RushingJadeWind:IsReady() and Target:IsInMeleeRange(8) then
			if Cast(S.RushingJadeWind) then return "rushing_jade_wind main 32"; end
			end
			-- invoke_niuzao
			if S.InvokeNiuzao:IsCastable() then
			if Cast(S.InvokeNiuzao) then return "invoke_niuzao main 34"; end
			end
			-- tiger_palm,if=energy>40-cooldown.keg_smash.remains*energy.regen
			if S.TigerPalm:IsReady() and Target:IsInMeleeRange(5) and (Player:Energy() > 40 - S.KegSmash:CooldownRemains() * Player:EnergyRegen()) then
			if Cast(S.TigerPalm) then return "tiger_palm main 36"; end
			end
			-- spinning_crane_kick,if=energy>40-cooldown.keg_smash.remains*energy.regen
			if S.SpinningCraneKick:IsReady() and Target:IsInMeleeRange(8) and (Player:Energy() > 40 - S.KegSmash:CooldownRemains() * Player:EnergyRegen()) then
			if Cast(S.SpinningCraneKick) then return "spinning_crane_kick main 38"; end
			end
			-- Manually added Pool filler
			if Cast(S.PoolEnergy) then return "Pool Energy"; end	
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
