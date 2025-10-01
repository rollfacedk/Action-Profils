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

	-- local function TargetIsValid()
	-- 	return (Player:AffectingCombat() and Target:Exists() and Player:CanAttack(Target) and not Target:IsDeadOrGhost() and (Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	-- end

	--ALL SPELLS ARE LOCATED ON Rotations/CLASS_SPELL.lua, if one is missing tells us about it.
	local S = {

		-- Abilities
		BlackoutKick                          = Spell(205523),
		Clash                                 = Spell(324312),
		SpinningCraneKick                     = Spell(322729),
		-- Talents
		BlackoutCombo                         = Spell(196736),
		BlackOxBrew                           = Spell(115399),
		BreathofFire                          = Spell(115181),
		BobandWeave                           = Spell(280515),
		CalltoArms                            = Spell(397251),
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
		CelestialInfusion                     = Spell(1241059),
		FortifyingBrew                        = Spell(115203),
		PurifyingBrew                         = Spell(119582),
		-- Buffs
		BlackoutComboBuff                     = Spell(228563),
		CalltoArmsInvokeNiuzaoBuff            = Spell(395267),
		CharredPassionsBuff                   = Spell(386963),
		ElusiveBrawlerBuff                    = Spell(195630),
		FortifyingBrewBuff                    = Spell(120954),
		InvokeNiuzaoBuff                      = Spell(132578),
		PresstheAdvantageBuff                 = Spell(418361),
		WeaponsofOrderBuff                    = Spell(387184),
		-- Debuffs
		BreathofFireDotDebuff                 = Spell(123725),
		WeaponsofOrderDebuff                  = Spell(387179),
		-- Stagger Levels
		HeavyStagger                          = Spell(124273),
		ModerateStagger                       = Spell(124274),
		LightStagger                          = Spell(124275),
		-- TWW2 Effects
		OpportunisticStrikeBuff               = Spell(1217999), -- TWW2 4pc

		-- Talents
		AspectofHarmony                       = Spell(450508),
		FlurryStrikes                         = Spell(450615),
		WisdomoftheWall                       = Spell(450994),
		-- Buffs
		BalancedStratagemMagic                = Spell(451508),
		BalancedStratagemPhysical             = Spell(451514),
		WisdomoftheWallFlurryBuff             = Spell(452688),
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
		-- External Buffs
		PowerInfusion                         = Spell(10060),
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
		VivaciousVivication                   = Spell(388812),
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
		InnerResilienceBuff                   = Spell(450706), -- Tome of Light's Devotion buff
		JunkmaestrosBuff                      = Spell(1219661), -- Junkmaestro's Mega Magnet buff
		PressurePointBuff                     = Spell(393053),
		RushingJadeWindBuff                   = Spell(116847),
		VivaciousVivicationBuff               = Spell(392883),
		-- Debuffs
		-- Item Effects
		CalltoDominanceBuff                   = Spell(403380), -- Neltharion trinket buff
		DomineeringArroganceBuff              = Spell(411661), -- Neltharion trinket buff2
		TheEmperorsCapacitorBuff              = Spell(393039),
		-- Misc
		Pool                                  = Spell(999910),
		StopFoF                               = Spell(363653),




		ViviciousVivication = Spell(388812),
		ViviciousVivicationBuff = Spell(392883),

		
	}

	local I = {


		-- TWW Trinkets
		SignetofthePriory                     = Item(219308, {13, 14}),
		-- TWW Trinkets
		LilyoftheEternalWeave                 = Item(242494, {13, 14}),
		TomeofLightsDevotion                  = Item(219309, {13, 14}),
		UnyieldingNetherprism                 = Item(242396, {13, 14}),
   	
		
	}

	local OnUseExcludes = {
		-- I.TrinketName:ID(),
	}

	--- ===== Rotation Variables =====
	local Enemies5y
	local EnemiesCount5
	local IsTanking

	local function ShouldPurify()
		local StaggerFull = Player:StaggerFull() or 0
		-- if there's no stagger, just exit so we don't have to calculate anything
		if StaggerFull == 0 then return false end
		local StaggerCurrent = 0
		local StaggerSpell = nil
		if Player:BuffUp(S.LightStagger) then
		  StaggerSpell = S.LightStagger
		elseif Player:BuffUp(S.ModerateStagger) then
		  StaggerSpell = S.ModerateStagger
		elseif Player:BuffUp(S.HeavyStagger) then
		  StaggerSpell = S.HeavyStagger
		end
		if StaggerSpell then
		  local StaggerTable = Player:DebuffInfo(StaggerSpell, false, true)
		  StaggerCurrent = StaggerTable.points[2]
		end
	  
		-- Purify if about to cap charges and we have Light Stagger
		if S.PurifyingBrew:ChargesFractional() >= 1.8 and Player:DebuffUp(S.LightStagger) then
		  return true
		end
	  
		-- Purify if we're at Heavy or Moderate Stagger
		if S.PurifyingBrew:Charges() >= 1 and (Player:DebuffUp(S.HeavyStagger) or Player:DebuffUp(S.ModerateStagger)) then
		  return true
		end
	  
		-- Otherwise, don't Purify
		return false
	end

	--GUI CONFIG
	local UnholyColor = 'c41f3b'
	local Unholy_Config = {
		
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
		if Player:DebuffUp(S.HeavyStagger) and Player:BuffDown(S.CelestialBrew) and Player:HealthPercentage() <= 75 then
			
			if S.PurifyingBrew:IsCastable() then
				if Cast(S.PurifyingBrew) then return "Purifying Brew"; end
			elseif S.CelestialBrew:IsCastable() and S.PurifyingBrew:Charges() == 0 then
				if Cast(S.CelestialBrew) then return "Celestial Brew"; end
			elseif S.CelestialInfusion:IsCastable() and S.PurifyingBrew:Charges() == 0 and Player:BuffDown(S.InvokeNiuzaoBuff) and Player:BuffDown(S.CelestialInfusion) then
				if Cast(S.CelestialInfusion) then return "Celestial Brew"; end
			elseif S.BlackOxBrew:IsCastable() and S.PurifyingBrew:Charges() == 0 and Player:BuffDown(S.InvokeNiuzaoBuff) and Player:BuffDown(S.CelestialInfusion) then
				if Cast(S.BlackOxBrew) then return "Black Ox Brew"; end
			elseif S.ExpelHarm:IsReady() and S.PurifyingBrew:Charges() == 0 and (S.ExpelHarm:Count() > 4) then
				if Cast(S.ExpelHarm) then return end
			elseif S.InvokeNiuzao:IsReady() and S.PurifyingBrew:Charges() == 0 and Player:BuffDown(S.InvokeNiuzaoBuff) and Player:BuffDown(S.CelestialInfusion) then
				if Cast(S.InvokeNiuzao) then return end
			end
		end

		if Player:DebuffUp(S.HeavyStagger) and Player:DebuffUp(S.ModerateStagger) and Player:BuffDown(S.CelestialBrew) and Player:HealthPercentage() <= 50 then
			
			if S.PurifyingBrew:IsCastable() then
				if Cast(S.PurifyingBrew) then return "Purifying Brew"; end
			elseif S.CelestialBrew:IsCastable() and S.PurifyingBrew:Charges() == 0 then
				if Cast(S.CelestialBrew) then return "Celestial Brew"; end
			elseif S.CelestialInfusion:IsCastable() and S.PurifyingBrew:Charges() == 0 and Player:BuffDown(S.InvokeNiuzaoBuff) and Player:BuffDown(S.CelestialInfusion) then
				if Cast(S.CelestialInfusion) then return "Celestial Brew"; end
			elseif S.BlackOxBrew:IsCastable() and S.PurifyingBrew:Charges() == 0 and Player:BuffDown(S.InvokeNiuzaoBuff) and Player:BuffDown(S.CelestialInfusion) then
				if Cast(S.BlackOxBrew) then return "Black Ox Brew"; end
			elseif S.ExpelHarm:IsReady() and S.PurifyingBrew:Charges() == 0 and (S.ExpelHarm:Count() > 4) then
				if Cast(S.ExpelHarm) then return end
			elseif S.InvokeNiuzao:IsReady() and S.PurifyingBrew:Charges() == 0 and Player:BuffDown(S.InvokeNiuzaoBuff) and Player:BuffDown(S.CelestialInfusion) then
				if Cast(S.InvokeNiuzao) then return end
			end
		end

		-- if S.ExpelHarm:IsReady() and Player:HealthPercentage() <= 100 then
		--   local ExpelHarmMod = (S.StrengthofSpirit:IsAvailable()) and (1 + (1 - Player:HealthPercentage() / 100) * 100) or 1
		--   local HealingSphereValue = Player:AttackPowerDamageMod() * 3
		--   local ExpelHarmHeal = (GetSpellBonusDamage(4) * 1.2 * ExpelHarmMod) + (S.ExpelHarm:Count() * HealingSphereValue)
		--   local MissingHP = Player:MaxHealth() - Player:Health()
		--   -- Allow us to "waste" 10% of the Expel Harm heal amount.
		--   if MissingHP > ExpelHarmHeal * 0.9 or Player:HealthPercentage() <= 100 / 2 then
		-- 	if Cast(S.ExpelHarm) then return "Expel Harm (defensives)"; end
		--   end
		-- end

		if S.DampenHarm:IsCastable() and Player:BuffDown(S.FortifyingBrewBuff) and Player:HealthPercentage() <= 35 then
		  if Cast(S.DampenHarm) then return "Dampen Harm"; end
		end
		if S.FortifyingBrew:IsCastable() and Player:BuffDown(S.DampenHarmBuff) and Player:HealthPercentage() <= 25 then
		  if Cast(S.FortifyingBrew) then return "Fortifying Brew"; end
		end
		if S.Vivify:IsCastable() and S.ViviciousVivication:IsAvailable() and Player:BuffUp(S.ViviciousVivicationBuff) and Player:HealthPercentage() <= 65 then
			if Cast(S.Vivify) then return end
		end
	end

	local function ItemActions()
		-- use_item,name=tome_of_lights_devotion,if=buff.inner_resilience.up
		if I.TomeofLightsDevotion:IsEquippedAndReady() and (Player:BuffUp(S.InnerResilienceBuff)) then
			if Cast(I.TomeofLightsDevotion) then return "tome_of_lights_devotion item_actions 2"; end
		end
		-- use_item,name=unyielding_netherprism,if=buff.weapons_of_order.up&debuff.weapons_of_order_debuff.stack=4
		-- use_item,name=unyielding_netherprism,if=!talent.weapons_of_order.enabled
		if I.UnyieldingNetherprism:IsEquippedAndReady() and (Player:BuffUp(S.WeaponsofOrderBuff) and Target:DebuffStack(S.WeaponsofOrderDebuff) == 4 or not S.WeaponsofOrder:IsAvailable()) then
			if Cast(I.UnyieldingNetherprism) then return "unyielding_netherprism item_actions 4"; end
		end
		-- use_item,name=lily_of_the_eternal_weave,if=buff.weapons_of_order.up&debuff.weapons_of_order_debuff.stack=4
		-- use_item,name=lily_of_the_eternal_weave,if=!talent.weapons_of_order.enabled
		if I.LilyoftheEternalWeave:IsEquippedAndReady() and (Player:BuffUp(S.WeaponsofOrderBuff) and Target:DebuffStack(S.WeaponsofOrderDebuff) == 4 or not S.WeaponsofOrder:IsAvailable()) then
			if Cast(I.LilyoftheEternalWeave) then return "lily_of_the_eternal_weave item_actions 6"; end
		end
		-- use_item,name=signet_of_the_priory,if=buff.weapons_of_order.up&debuff.weapons_of_order_debuff.stack=4
		-- use_item,name=signet_of_the_priory,if=!talent.weapons_of_order.enabled
		if I.SignetofthePriory:IsEquippedAndReady() and (Player:BuffUp(S.WeaponsofOrderBuff) and Target:DebuffStack(S.WeaponsofOrderDebuff) == 4 or not S.WeaponsofOrder:IsAvailable()) then
			if Cast(I.SignetofthePriory) then return "signet_of_the_priory item_actions 8"; end
		end
		-- use_items
		local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes)
		  if ItemToUse and Target:IsInRange(ItemRange) then
			local DisplayStyle = true
			if ItemSlot ~= 13 and ItemSlot ~= 14 then DisplayStyle = true end
			if ((ItemSlot == 13 or ItemSlot == 14) and true) or (ItemSlot ~= 13 and ItemSlot ~= 14 and true) then
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

		-- if S.CracklingJadeLightning:IsCastable() and not MouseOver:AffectingCombat() and not Player:IsFriend(MouseOver) and MouseOver:Exists() and not MouseOver:IsDeadOrGhost() then
		-- 	if Cast(S.CracklingJadeLightning) then return end
		-- end

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
		
		if MainAddon.TargetIsValid() then

			if S.TouchofDeath:IsReady() then
				if Cast(S.TouchofDeath) then return ""; end
			end
			-- Precombat
			-- auto_attack
			-- Manually added: spear_hand_strike,if=target.debuff.casting.react
			-- Manually added: Defensives
			if Player:AffectingCombat() then
			  local ShouldReturn = Defensives(); if ShouldReturn then return ShouldReturn; end
			end
			-- potion
			-- call_action_list,name=race_actions	
			local ShouldReturn = RaceActions(); if ShouldReturn then return ShouldReturn; end		
			-- call_action_list,name=item_actions
			if Player:AffectingCombat() then
			  local ShouldReturn = ItemActions(); if ShouldReturn then return ShouldReturn; end
			end
			-- black_ox_brew,if=energy<40&(!talent.aspect_of_harmony.enabled|cooldown.celestial_brew.charges_fractional<1)
			-- if S.BlackOxBrew:IsCastable() and (Player:Energy() < 40 and (not S.AspectofHarmony:IsAvailable() or S.CelestialBrew:ChargesFractional() < 1)) then
			--   if Cast(S.BlackOxBrew) then return "black_ox_brew main 4"; end
			-- end
			-- celestial_brew,if=(buff.aspect_of_harmony_accumulator.value>0.3*health.max&buff.weapons_of_order.up&!dot.aspect_of_harmony_damage.ticking)
			-- celestial_brew,if=(buff.aspect_of_harmony_accumulator.value>0.3*health.max&!talent.weapons_of_order.enabled&!dot.aspect_of_harmony_damage.ticking)
			-- celestial_brew,if=(target.time_to_die<20&target.time_to_die>14&buff.aspect_of_harmony_accumulator.value>0.2*health.max)
			-- celestial_brew,if=(buff.aspect_of_harmony_accumulator.value>0.3*health.max&cooldown.weapons_of_order.remains>20&!dot.aspect_of_harmony_damage.ticking)
			-- celestial_brew,if=!buff.blackout_combo.up&(cooldown.celestial_brew.charges_fractional>1.8|(cooldown.celestial_brew.charges_fractional>1.2&cooldown.black_ox_brew.up))
			-- Note: Handled in Defensives for now. TODO: Handle Aspect of Harmony.
			-- blackout_kick
			if S.BlackoutKick:IsReady() and Target:IsInMeleeRange(5) then
			  if Cast(S.BlackoutKick) then return "blackout_kick main 6"; end
			end
			-- chi_burst,if=!talent.aspect_of_harmony.enabled|buff.balanced_stratagem_magic.stack>3
			if S.ChiBurst:IsCastable() and Target:IsInRange(40) and (not S.AspectofHarmony:IsAvailable() or Player:BuffStack(S.BalancedStratagemMagic) > 3) then
			  if Cast(S.ChiBurst) then return "chi_burst main 8"; end
			end
			-- weapons_of_order
			if S.WeaponsofOrder:IsReady() then
			  if Cast(S.WeaponsofOrder) then return "weapons_of_order main 10"; end
			end
			-- invoke_niuzao,if=!talent.call_to_arms.enabled
			-- if S.InvokeNiuzao:IsCastable() and (not S.CalltoArms:IsAvailable()) then
			--   if Cast(S.InvokeNiuzao) then return "invoke_niuzao main 12"; end
			-- end
			-- invoke_niuzao,if=talent.call_to_arms.enabled&buff.call_to_arms_invoke_niuzao.down&buff.weapons_of_order.remains<16
			-- if S.InvokeNiuzao:IsCastable() and (S.CalltoArms:IsAvailable() and Player:BuffDown(S.CalltoArmsInvokeNiuzaoBuff) and Player:BuffRemains(S.WeaponsofOrderBuff) < 16) then
			--   if Cast(S.InvokeNiuzao) then return "invoke_niuzao main 14"; end
			-- end
			-- rising_sun_kick,if=!talent.fluidity_of_motion.enabled
			if S.RisingSunKick:IsReady() and Target:IsInMeleeRange(5) and (not S.FluidityofMotion:IsAvailable()) then
			  if Cast(S.RisingSunKick) then return "rising_sun_kick main 16"; end
			end
			-- keg_smash,if=buff.weapons_of_order.up&(debuff.weapons_of_order_debuff.remains<1.8|debuff.weapons_of_order_debuff.stack<3-buff.blackout_combo.up|(buff.weapons_of_order.remains<3-buff.blackout_combo.up&buff.weapons_of_order.remains<1+cooldown.rising_sun_kick.remains))
			if S.KegSmash:IsReady() and Target:IsInRange(15) and (Player:BuffUp(S.WeaponsofOrderBuff) and (Target:DebuffRemains(S.WeaponsofOrderDebuff) < 1.8 or Target:DebuffStack(S.WeaponsofOrderDebuff) < 3 - num(Player:BuffUp(S.BlackoutComboBuff)) or (Player:BuffRemains(S.WeaponsofOrderBuff) < 3 - num(Player:BuffUp(S.BlackoutComboBuff)) and Player:BuffRemains(S.WeaponsofOrderBuff) < 1 + S.RisingSunKick:CooldownRemains()))) then
			  if Cast(S.KegSmash) then return "keg_smash main 18"; end
			end
			-- tiger_palm,if=buff.blackout_combo.up
			if S.TigerPalm:IsCastable() and Target:IsInMeleeRange(5) and (Player:BuffUp(S.BlackoutComboBuff)) then
			  if Cast(S.TigerPalm) then return "tiger_palm main 20"; end
			end
			-- keg_smash,if=talent.scalding_brew.enabled
			if S.KegSmash:IsReady() and Target:IsInRange(15) and (S.ScaldingBrew:IsAvailable()) then
			  if Cast(S.KegSmash) then return "keg_smash main 22"; end
			end
			-- spinning_crane_kick,if=talent.charred_passions.enabled&talent.scalding_brew.enabled&buff.charred_passions.up&buff.charred_passions.remains<3&dot.breath_of_fire.remains<9&active_enemies>4
			if S.SpinningCraneKick:IsReady() and Target:IsInMeleeRange(8) and (S.CharredPassions:IsAvailable() and S.ScaldingBrew:IsAvailable() and Player:BuffUp(S.CharredPassionsBuff) and Player:BuffRemains(S.CharredPassionsBuff) < 3 and Target:DebuffRemains(S.BreathofFireDotDebuff) < 9 and EnemiesCount5 > 4) then
			  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick main 24"; end
			end
			-- rising_sun_kick,if=talent.fluidity_of_motion.enabled
			if S.RisingSunKick:IsReady() and Target:IsInMeleeRange(5) and (S.FluidityofMotion:IsAvailable()) then
			  if Cast(S.RisingSunKick) then return "rising_sun_kick main 26"; end
			end
			if S.PurifyingBrew:IsCastable() and S.PurifyingBrew:ChargesFractional() >= 1.8 and ShouldPurify() and (Player:BuffDown(S.BlackoutComboBuff)) and (
			  -- purifying_brew,if=buff.blackout_combo.down&!(talent.call_to_arms.enabled|talent.invoke_niuzao_the_black_ox.enabled)
			  (not (S.CalltoArms:IsAvailable() or S.InvokeNiuzao:IsAvailable())) or
			  -- purifying_brew,if=buff.blackout_combo.down&(talent.call_to_arms.enabled|talent.invoke_niuzao_the_black_ox.enabled)&(buff.invoke_niuzao_the_black_ox.up|buff.call_to_arms_invoke_niuzao.up)
			  ((S.CalltoArms:IsAvailable() or S.InvokeNiuzao:IsAvailable()) and (Player:BuffUp(S.InvokeNiuzaoBuff) or Player:BuffUp(S.CalltoArmsInvokeNiuzaoBuff))) or
			  -- purifying_brew,if=buff.blackout_combo.down&(talent.call_to_arms.enabled|talent.invoke_niuzao_the_black_ox.enabled)&cooldown.weapons_of_order.remains>10&cooldown.invoke_niuzao_the_black_ox.remains>10
			  ((S.CalltoArms:IsAvailable() or S.InvokeNiuzao:IsAvailable()) and S.WeaponsofOrder:CooldownRemains() > 10 and S.InvokeNiuzao:CooldownRemains() > 10)
			) then
			  if Cast(S.PurifyingBrew) then return "purifying_brew main 28"; end
			end
			-- breath_of_fire,if=(buff.charred_passions.down&(!talent.scalding_brew.enabled|active_enemies<5))|!talent.charred_passions.enabled|(dot.breath_of_fire.remains<3&talent.scalding_brew.enabled)
			if S.BreathofFire:IsCastable() and Target:IsInMeleeRange(12) and ((Player:BuffDown(S.CharredPassionsBuff) and (not S.ScaldingBrew:IsAvailable() or EnemiesCount5 < 5)) or not S.CharredPassions:IsAvailable() or (Target:DebuffRemains(S.BreathofFireDotDebuff) < 3 and S.ScaldingBrew:IsAvailable())) then
			  if Cast(S.BreathofFire) then return "breath_of_fire main 30"; end
			end
			-- exploding_keg,if=!talent.rushing_jade_wind.enabled|buff.rushing_jade_wind.up
			if S.ExplodingKeg:IsCastable() and Target:IsInMeleeRange(8) and (not S.RushingJadeWind:IsAvailable() or Player:BuffUp(S.RushingJadeWindBuff)) then
			  if Cast(S.ExplodingKeg, Player) then return "exploding_keg main 32"; end
			end
			-- rushing_jade_wind,if=talent.aspect_of_harmony.enabled&((buff.rushing_jade_wind.remains<2.5&buff.rushing_jade_wind.up)|!buff.rushing_jade_wind.up)
			if S.RushingJadeWind:IsReady() and Target:IsInMeleeRange(8) and (S.AspectofHarmony:IsAvailable() and ((Player:BuffRemains(S.RushingJadeWindBuff) < 2.5 and Player:BuffUp(S.RushingJadeWindBuff)) or Player:BuffDown(S.RushingJadeWindBuff))) then
			  if Cast(S.RushingJadeWind) then return "rushing_jade_wind main 34"; end
			end
			-- keg_smash
			if S.KegSmash:IsReady() and Target:IsInRange(15) then
			  if Cast(S.KegSmash) then return "keg_smash main 36"; end
			end
			-- rushing_jade_wind,if=!talent.aspect_of_harmony.enabled&((buff.rushing_jade_wind.remains<2.5&buff.rushing_jade_wind.up)|!buff.rushing_jade_wind.up)
			if S.RushingJadeWind:IsReady() and (not S.AspectofHarmony:IsAvailable() and ((Player:BuffRemains(S.RushingJadeWindBuff) < 2.5 and Player:BuffUp(S.RushingJadeWindBuff)) or Player:BuffDown(S.RushingJadeWindBuff))) then
			  if Cast(S.RushingJadeWind) then return "rushing_jade_wind main 38"; end
			end
			-- tiger_palm,if=energy>40-cooldown.keg_smash.remains*energy.regen
			if S.TigerPalm:IsReady() and Target:IsInMeleeRange(5) and (Player:Energy() > 40 - S.KegSmash:CooldownRemains() * Player:EnergyRegen()) then
			  if Cast(S.TigerPalm) then return "tiger_palm main 40"; end
			end
			-- spinning_crane_kick,if=energy>40-cooldown.keg_smash.remains*energy.regen
			if S.SpinningCraneKick:IsReady() and Target:IsInMeleeRange(8) and (Player:Energy() > 40 - S.KegSmash:CooldownRemains() * Player:EnergyRegen()) then
			  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick main 42"; end
			end
			-- If nothing else to do, show the Pool icon
			if Cast(S.Pool) then return "Wait/Pool Resources"; end
		end

		
	end

	
	MainAddon.SetCustomAPL(Author, SpecID, MainRotation, Init)
	local BMOldSpellIsCastable
	BMOldSpellIsCastable = HL.AddCoreOverride ("Spell.IsCastable",
	function (self, BypassRecovery, Range, AoESpell, ThisUnit, Offset)
		local BaseCheck = BMOldSpellIsCastable(self, BypassRecovery, Range, AoESpell, ThisUnit, Offset)
		if self == S.TouchofDeath then
			return BaseCheck and self:IsUsable()
		elseif self == S.ChiBurst then
			return BaseCheck and not Player:IsCasting(self)
		else
			return BaseCheck
		end
	end
	, 268)
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
