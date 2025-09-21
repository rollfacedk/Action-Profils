local function MyRoutine()
	local Author = 'Rollface - Protection Warrior 11.2'
	local SpecID = 73 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

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
		Devastate                             = Spell(20243),
		Execute                               = MultiSpell(163201, 281000),
		ShieldBlock                           = Spell(2565),
		ShieldSlam                            = Spell(23922),
		-- Talents
		BarbaricTraining                      = Spell(390675),
		Bloodsurge                            = Spell(384361),
		Bolster                               = Spell(280001),
		BoomingVoice                          = Spell(202743),
		ChampionsBulwark                      = Spell(386328),
		DemoralizingShout                     = Spell(1160),
		EnduringDefenses                      = Spell(386027),
		HeavyRepercussions                    = Spell(203177),
		IgnorePain                            = Spell(190456),
		Intervene                             = Spell(3411),
		ImpenetrableWall                      = Spell(384072),
		Juggernaut                            = Spell(393967),
		LastStand                             = Spell(12975),
		Massacre                              = Spell(281001),
		Rend                                  = Spell(394062),
		Revenge                               = Spell(6572),
		SeismicReverberation                  = Spell(382956),
		ShieldCharge                          = Spell(385952),
		ShieldWall                            = Spell(871),
		SuddenDeath                           = Spell(29725),
		UnnervingFocus                        = Spell(384042),
		UnstoppableForce                      = Spell(275336),
		-- Buffs
		LastStandBuff                         = Spell(12975),
		LuckoftheDrawBuff                     = Spell(1218163), -- TWW S2 4pc
		RallyingCryBuff                       = Spell(97463),
		RevengeBuff                           = Spell(5302),
		SeeingRedBuff                         = Spell(386486),
		ShieldBlockBuff                       = Spell(132404),
		ShieldWallBuff                        = Spell(871),
		SuddenDeathBuff                       = Spell(52437),
		ViolentOutburstBuff                   = Spell(386478),
		-- Debuffs
		RendDebuff                            = Spell(388539),

		-- Abilities
		ThunderBlastAbility                   = Spell(435222),
		-- Talents
		CrashingThunder                       = Spell(436707),
		LightningStrikes                      = Spell(434969),
		ThunderBlast                          = Spell(435607),
		-- Buffs
		BurstofPowerBuff                      = Spell(437121),
		ThunderBlastBuff                      = Spell(435615),

		-- Talents
		Demolish                              = Spell(436358),
		-- Buffs
		ColossalMightBuff                     = Spell(440989),

		-- Racials
		AncestralCall                         = Spell(274738),
		ArcaneTorrent                         = Spell(50613),
		BagofTricks                           = Spell(312411),
		Berserking                            = Spell(26297),
		BloodFury                             = Spell(20572),
		Fireblood                             = Spell(265221),
		LightsJudgment                        = Spell(255647),
		-- Abilities
		BattleShout                           = Spell(6673),
		BattleStance                          = Spell(386164),
		Charge                                = Spell(100),
		HeroicThrow                           = Spell(57755),
		Pummel                                = Spell(6552),
		Slam                                  = Spell(1464),
		VictoryRush                           = Spell(34428),
		DefensiveStance                       = Spell(386208),
		-- Talents
		Avatar                                = Spell(107574),
		BerserkerRage                         = Spell(18499),
		BerserkersTorment                     = Spell(390123),
		Bladestorm                            = MultiSpell(227847, 389774),
		BloodandThunder                       = Spell(384277),
		ChampionsMight                        = Spell(386284),
		ChampionsSpear                        = Spell(376079),
		DoubleTime                            = Spell(103827),
		CrushingForce                         = Spell(382764),
		FrothingBerserker                     = Spell(215571),
		Hurricane                             = Spell(390563),
		ImmovableObject                       = Spell(394307),
		IntimidatingShout                     = Spell(5246),
		HeroicLeap                            = Spell(6544),
		ImpendingVictory                      = Spell(202168),
		OverwhelmingRage                      = Spell(382767),
		RallyingCry                           = Spell(97462),
		Ravager                               = Spell(228920),
		RumblingEarth                         = Spell(275339),
		Shockwave                             = Spell(46968),
		SonicBoom                             = Spell(390725),
		SpellReflection                       = Spell(23920),
		StormBolt                             = Spell(107570),
		ThunderClap                           = Spell(6343),
		ThunderousRoar                        = Spell(384318),
		TitanicThrow                          = Spell(384090),
		Uproar                                = Spell(391572),
		WarlordsTorment                       = Spell(390140),
		WreckingThrow                         = Spell(384110),
		-- Buffs
		AvatarBuff                            = Spell(107574),
		BattleShoutBuff                       = Spell(6673),
		ChampionsMightBuff                    = Spell(386286),
		HurricaneBuff                         = Spell(390581),
		InnerResilienceBuff                   = Spell(450706), -- Tome of Light's Devotion buff
		WarMachineBuff                        = Spell(262232),
		-- Debuffs
		ChampionsMightDebuff                  = Spell(376080),
		MarkofFyralathDebuff                  = Spell(414532),
		RavagerDebuff                         = Spell(228920), -- Dummy Debuff entry. Actually handled in Events.
		ThunderousRoarDebuff                  = Spell(397364),
		-- Pool/Custom
		Pool                                  = Spell(999910),
		ExecuteSwap                           = Spell(363653),


	}

	local I = {

		-- DF Trinkets
		AlgetharPuzzleBox                     = Item(193701, {13, 14}),
		-- TWW Trinkets
		CursedStoneIdol                       = Item(246344, {13, 14}),
		TreacherousTransmitter                = Item(221023, {13, 14}),
		UnyieldingNetherprism                 = Item(242396, {13, 14}),
		-- TWW Items
		BestinSlots                           = Item(232526, {16}),

		TomeofLightsDevotion                   = Item(219309, {13, 14}),

	
	}

	local OnUseExcludes = {
		I.TomeofLightsDevotion:ID(),
		
	}

	--- ===== Rotation Variables =====
	local TargetInMeleeRange
	local Enemies8y
	local EnemiesCount8
	
	--- ===== Helper Functions =====
	local function IsCurrentlyTanking()
		return Player:IsTankingAoE(16) or Player:IsTanking(Target) or Target:IsDummy()
	end

	local function IgnorePainWillNotCap()
		if Player:BuffUp(S.IgnorePain) then
		  local IPBuffTable = Player:AuraInfo(S.IgnorePain, nil, true)
		  local OldAbsorb = IPBuffTable.points[1]
		  -- Ignore Pain caps at 30% of player's hp, so let's only suggest it if the remaining absorb is 1/3 or less.
		  return true or OldAbsorb < Player:MaxHealth() * 0.1
		else
		  return true
		end
	end

	local function IgnorePainValue()
		if Player:BuffUp(S.IgnorePain) then
		  local IPBuffInfo = Player:BuffInfo(S.IgnorePain, nil, true)
		  return IPBuffInfo.points[1]
		else
		  return 0
		end
	end

	local function ShouldPressShieldBlock()
		-- shield_block,if=buff.shield_block.duration<=10
		return IsCurrentlyTanking() and S.ShieldBlock:IsReady() and Player:BuffRemains(S.ShieldBlockBuff) <= 10
	end

	-- A bit of logic to decide whether to pre-cast-rage-dump on ignore pain.
	local function SuggestRageDump(RageFromSpell)
		-- Get RageMax from setting (default 80)
		local RageMax = 80
		-- If the setting value is lower than 35, it's not possible to cast Ignore Pain, so just return false
		if (RageMax < 35 or Player:Rage() < 35) then return false end
		local shouldPreRageDump = false
		-- Make sure we have enough Rage to cast IP, that it's not on CD, and that we shouldn't use Shield Block
		local AbleToCastIP = (Player:Rage() >= 35 and not ShouldPressShieldBlock())
		if AbleToCastIP and (Player:Rage() + RageFromSpell >= RageMax or S.DemoralizingShout:IsReady()) then
		-- should pre-dump rage into IP if rage + RageFromSpell >= RageMax or Demo Shout is ready
			shouldPreRageDump = true
		end
		if shouldPreRageDump then
			if IsCurrentlyTanking() and IgnorePainWillNotCap() then
				if Cast(S.IgnorePain) then return "ignore_pain rage capped"; end
			elseif TargetInMeleeRange then
				if Cast(S.Revenge) then return "revenge rage capped"; end
			end
		end
	end

	--- ===== Rotation Functions =====
	local function Precombat()
		-- flask
		-- food
		-- augmentation
		-- snapshot_stats
		-- Manually added: Group buff check
		if S.BattleShout:IsCastable() and MainAddon.GroupBuffMissing(S.BattleShoutBuff) then
			if Cast(S.BattleShout) then return "battle_shout precombat 2"; end
		end
		-- battle_stance,toggle=on
		-- Note: Not suggesting a stance. Up to the user whether to be in Battle or Defensive.
		-- Manually added opener
		if Target:IsInMeleeRange(12) then
			if S.ThunderClap:IsCastable() then
				if Cast(S.ThunderClap) then return "thunder_clap precombat 6"; end
			end
		else
			if S.Charge:IsCastable() and not Target:IsInRange(8) then
				if Cast(S.Charge, nil, nil, not Target:IsSpellInRange(S.Charge)) then return "charge precombat 8"; end
			end
		end
	end

	local function Aoe()
		-- thunder_blast,if=dot.rend.remains<=1
		-- thunder_clap,if=dot.rend.remains<=1
		if Target:DebuffRemains(S.RendDebuff) <= 1 then
		  if S.ThunderBlastAbility:IsReady() and Target:IsInMeleeRange(8) then
			SuggestRageDump(5)
			if Cast(S.ThunderBlastAbility) then return "thunder_blast aoe 2"; end
		  end
		  if S.ThunderClap:IsCastable() and Target:IsInMeleeRange(8) and (Target:DebuffRemains(S.RendDebuff) <= 1) then
			SuggestRageDump(5)
			if Cast(S.ThunderClap) then return "thunder_clap aoe 4"; end
		  end
		end
		-- thunder_blast,if=buff.violent_outburst.up&spell_targets.thunderclap>=2&buff.avatar.up&talent.unstoppable_force.enabled
		-- thunder_clap,if=buff.violent_outburst.up&spell_targets.thunderclap>6&buff.avatar.up&talent.unstoppable_force.enabled
		if Player:BuffUp(S.ViolentOutburstBuff) and EnemiesCount8 > 6 and Player:BuffUp(S.AvatarBuff) and S.UnstoppableForce:IsAvailable() then
		  if S.ThunderBlastAbility:IsReady() and Target:IsInMeleeRange(8) then
			SuggestRageDump(5)
			if Cast(S.ThunderBlastAbility) then return "thunder_blast aoe 6"; end
		  end
		  if S.ThunderClap:IsCastable() and Target:IsInMeleeRange(8) then
			SuggestRageDump(5)
			if Cast(S.ThunderClap) then return "thunder_clap aoe 8"; end
		  end
		end
		-- revenge,if=rage>=70&talent.seismic_reverberation.enabled&spell_targets.revenge>=3
		if S.Revenge:IsReady() and TargetInMeleeRange and (Player:Rage() >= 70 and S.SeismicReverberation:IsAvailable() and EnemiesCount8 >= 3) then
		  if Cast(S.Revenge) then return "revenge aoe 10"; end
		end
		-- shield_slam,if=rage<=60|buff.violent_outburst.up&spell_targets.thunderclap<=4&talent.crashing_thunder.enabled
		if S.ShieldSlam:IsCastable() and TargetInMeleeRange and (Player:Rage() <= 60 or Player:BuffUp(S.ViolentOutburstBuff) and EnemiesCount8 <= 4 and S.CrashingThunder:IsAvailable()) then
		  SuggestRageDump(20)
		  if Cast(S.ShieldSlam) then return "shield_slam aoe 12"; end
		end
		-- thunder_blast
		if S.ThunderBlastAbility:IsReady() and Target:IsInMeleeRange(8) then
		  SuggestRageDump(5)
		  if Cast(S.ThunderBlastAbility) then return "thunder_blast aoe 14"; end
		end
		-- thunder_clap
		if S.ThunderClap:IsCastable() and Target:IsInMeleeRange(8) then
		  SuggestRageDump(5)
		  if Cast(S.ThunderClap) then return "thunder_clap aoe 16"; end
		end
		-- revenge,if=rage>=30|rage>=40&talent.barbaric_training.enabled
		if S.Revenge:IsReady() and TargetInMeleeRange and (Player:Rage() >= 30 or Player:Rage() >= 40 and S.BarbaricTraining:IsAvailable()) then
		  if Cast(S.Revenge) then return "revenge aoe 14"; end
		end
	end

	local function Generic()
		-- thunder_blast,if=(buff.thunder_blast.stack=2&buff.burst_of_power.stack<=1&buff.avatar.up&talent.unstoppable_force.enabled)
		if S.ThunderBlastAbility:IsReady() and Target:IsInMeleeRange(8) and (Player:BuffStack(S.ThunderBlastBuff) == 2 and Player:BuffStack(S.BurstofPowerBuff) <= 1 and Player:BuffUp(S.AvatarBuff) and S.UnstoppableForce:IsAvailable()) then
		  SuggestRageDump(5)
		  if Cast(S.ThunderBlastAbility) then return "thunder_blast generic 2"; end
		end
		-- shield_slam,if=(buff.burst_of_power.stack=2&buff.thunder_blast.stack<=1|buff.violent_outburst.up)|rage<=70&talent.demolish.enabled
		if S.ShieldSlam:IsCastable() and TargetInMeleeRange and ((Player:BuffStack(S.BurstofPowerBuff) == 2 and Player:BuffStack(S.ThunderBlastBuff) <= 1 or Player:BuffUp(S.ViolentOutburstBuff)) or Player:Rage() <= 70 and S.Demolish:IsAvailable()) then
		  SuggestRageDump(20)
		  if Cast(S.ShieldSlam) then return "shield_slam generic 4"; end
		end
		-- execute,if=rage>=70|(rage>=40&cooldown.shield_slam.remains&talent.demolish.enabled|rage>=50&cooldown.shield_slam.remains)|buff.sudden_death.up&talent.sudden_death.enabled
		if S.Execute:IsReady() and not ShouldPressShieldBlock() and TargetInMeleeRange and (Player:Rage() >= 70 or (Player:Rage() >= 40 and S.ShieldSlam:CooldownDown() and S.Demolish:IsAvailable()  or Player:Rage() >= 50 and S.ShieldSlam:CooldownDown()) or Player:BuffUp(S.SuddenDeathBuff) and S.SuddenDeath:IsAvailable()) then
		  if Cast(S.Execute) then return "execute generic 6"; end
		end
		-- shield_slam
		if S.ShieldSlam:IsCastable() and TargetInMeleeRange then
		  SuggestRageDump(20)
		  if Cast(S.ShieldSlam) then return "shield_slam generic 8"; end
		end
		-- thunder_blast,if=dot.rend.remains<=2&buff.violent_outburst.down
		-- thunder_blast
		-- Note: 2nd line covers the first, so just using the second.
		if S.ThunderBlastAbility:IsReady() and Target:IsInMeleeRange(8) then
		  SuggestRageDump(5)
		  if Cast(S.ThunderBlastAbility) then return "thunder_blast generic 10"; end
		end
		-- thunder_clap,if=dot.rend.remains<=2&buff.violent_outburst.down
		if S.ThunderClap:IsCastable() and Target:IsInMeleeRange(8) and (Target:DebuffRemains(S.RendDebuff) <= 2 and Player:BuffDown(S.ViolentOutburstBuff)) then
		  SuggestRageDump(5)
		  if Cast(S.ThunderClap) then return "thunder_clap generic 12"; end
		end
		-- thunder_blast,if=(spell_targets.thunder_clap>1|cooldown.shield_slam.remains&!buff.violent_outburst.up)
		-- Note: Already covered 2 lines above.
		-- thunder_clap,if=(spell_targets.thunder_clap>1|cooldown.shield_slam.remains&!buff.violent_outburst.up)
		if S.ThunderClap:IsCastable() and Target:IsInMeleeRange(8) and (EnemiesCount8 > 1 or S.ShieldSlam:CooldownDown() and Player:BuffDown(S.ViolentOutburstBuff)) then
		  SuggestRageDump(5)
		  if Cast(S.ThunderClap) then return "thunder_clap generic 14"; end
		end
		-- revenge,if=(rage>=80&target.health.pct>20|buff.revenge.up&target.health.pct<=20&rage<=18&cooldown.shield_slam.remains|buff.revenge.up&target.health.pct>20)|(rage>=80&target.health.pct>35|buff.revenge.up&target.health.pct<=35&rage<=18&cooldown.shield_slam.remains|buff.revenge.up&target.health.pct>35)&talent.massacre.enabled
		if S.Revenge:IsReady() and TargetInMeleeRange and ((Player:Rage() >= 80 and Target:HealthPercentage() > 20 or Player:BuffUp(S.RevengeBuff) and Target:HealthPercentage() <= 20 and Player:Rage() <= 18 and S.ShieldSlam:CooldownDown() or Player:BuffUp(S.RevengeBuff) and Target:HealthPercentage() > 20) or (Player:Rage() >= 80 and Target:HealthPercentage() > 35 or Player:BuffUp(S.RevengeBuff) and Target:HealthPercentage() <= 35 and Player:Rage() <= 18 and S.ShieldSlam:CooldownDown() or Player:BuffUp(S.RevengeBuff) and Target:HealthPercentage() > 35) and S.Massacre:IsAvailable()) then
		  if Cast(S.Revenge) then return "revenge generic 16"; end
		end
		-- execute
		if S.Execute:IsReady() and TargetInMeleeRange and not ShouldPressShieldBlock() then
		  if Cast(S.Execute) then return "execute generic 18"; end
		end
		-- revenge
		if S.Revenge:IsReady() and TargetInMeleeRange then
		  if Cast(S.Revenge) then return "revenge generic 20"; end
		end
		-- thunder_blast,if=(spell_targets.thunder_clap>=1|cooldown.shield_slam.remains&buff.violent_outburst.up)
		-- thunder_clap,if=(spell_targets.thunder_clap>=1|cooldown.shield_slam.remains&buff.violent_outburst.up)
		if EnemiesCount8 >= 1 or S.ShieldSlam:CooldownDown() and Player:BuffUp(S.ViolentOutburstBuff) then
		  if S.ThunderBlastAbility:IsReady() and Target:IsInMeleeRange(8) then
			SuggestRageDump(5)
			if Cast(S.ThunderBlastAbility) then return "thunder_blast generic 22"; end
		  end
		  if S.ThunderClap:IsCastable() and Target:IsInMeleeRange(8) then
			SuggestRageDump(5)
			if Cast(S.ThunderClap) then return "thunder_clap generic 24"; end
		  end
		end
		-- devastate
		if S.Devastate:IsCastable() and TargetInMeleeRange then
		  if Cast(S.Devastate) then return "devastate generic 26"; end
		end
	end

	--GUI CONFIG
	local UnholyColor = 'c41f3b'
	local Unholy_Config = {
	}
	MainAddon.SetCustomConfig(Author, SpecID, Unholy_Config)

	local function Init()
		message( 'I made this, do you like it?', 1)
		MainAddon:Print('This is my own addon =), Hurray.')
	end

	
	local function APL()

		Enemies8y = Player:GetEnemiesInMeleeRange(8) -- Multiple Abilities
		if AoEON() then
			EnemiesCount8 = #Enemies8y
		else
			EnemiesCount8 = 1
		end

		if true then
			-- Range check
			TargetInMeleeRange = Target:IsInMeleeRange(5)
		end

		if MainAddon.TargetIsValid() then
			-- call precombat
			if not IsCurrentlyTanking() then
			local ShouldReturn = Precombat(); if ShouldReturn then return ShouldReturn; end
			end
			-- Manually added: battle_shout during combat
			if S.BattleShout:IsCastable() and MainAddon.GroupBuffMissing(S.BattleShoutBuff) then
				if Cast(S.BattleShout) then return "battle_shout precombat"; end
			end
			-- Manually added: VR/IV
			if Player:HealthPercentage() <= 50 then
				if S.VictoryRush:IsReady() and TargetInMeleeRange then
					if Cast(S.VictoryRush) then return "victory_rush defensive"; end
				end
				if S.ImpendingVictory:IsReady() and TargetInMeleeRange then
					if Cast(S.ImpendingVictory) then return "impending_victory defensive"; end
				end
			end
			-- Interrupt
			-- auto_attack
			-- charge,if=time=0
			-- Note: Handled in Precombat
			-- use_item,name=tome_of_lights_devotion,if=buff.inner_resilience.up
			if I.TomeofLightsDevotion:IsEquippedAndReady() and (Player:BuffUp(S.InnerResilienceBuff)) then
				if Cast(I.TomeofLightsDevotion) then return "tome_of_lights_devotion main 2"; end
			end
			-- use_items
			if true then
				local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes)
				if ItemToUse then
					local DisplayStyle = true
					if ItemSlot ~= 13 and ItemSlot ~= 14 then DisplayStyle = true end
					if Target:IsInRange(ItemRange) then
						if ((ItemSlot == 13 or ItemSlot == 14) and true) or (ItemSlot ~= 13 and ItemSlot ~= 14 and true) then
							if Cast(ItemToUse, DisplayStyle) then return "Generic use_items for " .. ItemToUse:Name() .. " main 4"; end
						end
					end
				end
			end
			-- avatar,if=buff.thunder_blast.down|buff.thunder_blast.stack<=2
			if S.Avatar:IsCastable() and (Player:BuffDown(S.ThunderBlastBuff) or Player:BuffStack(S.ThunderBlastBuff) <= 2) then
				if Cast(S.Avatar) then return "avatar main 6"; end
				end
				-- shield_wall,if=talent.immovable_object.enabled&buff.avatar.down
				if Player:HealthPercentage() <= 35 and Player:BuffDown(S.LastStandBuff) then
					if S.ShieldWall:IsCastable() and (S.ImmovableObject:IsAvailable() and Player:BuffDown(S.AvatarBuff)) then
						if Cast(S.ShieldWall) then return "shield_wall main 8"; end
					end
				end
				if CDsON() then
				-- blood_fury
				if S.BloodFury:IsCastable() then
					if Cast(S.BloodFury) then return "blood_fury main 10"; end
				end
				-- berserking
				if S.Berserking:IsCastable() then
					if Cast(S.Berserking) then return "berserking main 12"; end
				end
				-- arcane_torrent
				if S.ArcaneTorrent:IsCastable() then
					if Cast(S.ArcaneTorrent) then return "arcane_torrent main 14"; end
				end
				-- lights_judgment
				if S.LightsJudgment:IsCastable() then
					if Cast(S.LightsJudgment) then return "lights_judgment main 16"; end
				end
				-- fireblood
				if S.Fireblood:IsCastable() then
					if Cast(S.Fireblood) then return "fireblood main 18"; end
				end
				-- ancestral_call
				if S.AncestralCall:IsCastable() then
					if Cast(S.AncestralCall) then return "ancestral_call main 20"; end
				end
				-- bag_of_tricks
				if S.BagofTricks:IsCastable() then
					if Cast(S.BagofTricks) then return "ancestral_call main 22"; end
				end
			end
			-- potion,if=buff.avatar.up|buff.avatar.up&target.health.pct<=20
			-- ignore_pain,if=target.health.pct>=20&
			--(rage.deficit<=15&cooldown.shield_slam.ready
			--|rage.deficit<=40&cooldown.shield_charge.ready
			--|rage.deficit<=20&cooldown.shield_charge.ready
			--|rage.deficit<=30&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled
			--|rage.deficit<=20&cooldown.avatar.ready
			--|rage.deficit<=45&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled&buff.last_stand.up&talent.unnerving_focus.enabled
			--|rage.deficit<=30&cooldown.avatar.ready&buff.last_stand.up&talent.unnerving_focus.enabled
			--|rage.deficit<=20
			--|rage.deficit<=40&cooldown.shield_slam.ready&buff.violent_outburst.up&talent.heavy_repercussions.enabled&talent.impenetrable_wall.enabled
			--|rage.deficit<=55&cooldown.shield_slam.ready&buff.violent_outburst.up&buff.last_stand.up&talent.unnerving_focus.enabled&talent.heavy_repercussions.enabled&talent.impenetrable_wall.enabled
			--|rage.deficit<=17&cooldown.shield_slam.ready&talent.heavy_repercussions.enabled
			--|rage.deficit<=18&cooldown.shield_slam.ready&talent.impenetrable_wall.enabled)
			--|(rage>=70
			--|buff.seeing_red.stack=7&rage>=35)&cooldown.shield_slam.remains<=1&buff.shield_block.remains>=4&set_bonus.tier31_2pc,use_off_gcd=1
			-- Note: Removed tier31 check. Nobody should still be using it.
			if S.IgnorePain:IsReady() and IgnorePainWillNotCap() and (Target:HealthPercentage() >= 20 and 
			(Player:RageDeficit() <= 15 and S.ShieldSlam:CooldownUp() 
			or Player:RageDeficit() <= 40 and S.ShieldCharge:CooldownUp() 
			or Player:RageDeficit() <= 20 and S.ShieldCharge:CooldownUp() 
			or Player:RageDeficit() <= 30 and S.DemoralizingShout:CooldownUp() and S.BoomingVoice:IsAvailable() 
			or Player:RageDeficit() <= 20 and S.Avatar:CooldownUp() 
			or Player:RageDeficit() <= 45 and S.DemoralizingShout:CooldownUp() and S.BoomingVoice:IsAvailable() and Player:BuffUp(S.LastStandBuff) and S.UnnervingFocus:IsAvailable() 
			or Player:RageDeficit() <= 30 and S.Avatar:CooldownUp() and Player:BuffUp(S.LastStandBuff) and S.UnnervingFocus:IsAvailable()
			or Player:RageDeficit() <= 20
			or Player:RageDeficit() <= 40 and S.ShieldSlam:CooldownUp() and Player:BuffUp(S.ViolentOutburstBuff) and S.HeavyRepercussions:IsAvailable() and S.ImpenetrableWall:IsAvailable() 
			or Player:RageDeficit() <= 55 and S.ShieldSlam:CooldownUp() and Player:BuffUp(S.ViolentOutburstBuff) and Player:BuffUp(S.LastStandBuff) and S.UnnervingFocus:IsAvailable() and S.HeavyRepercussions:IsAvailable() and S.ImpenetrableWall:IsAvailable()
			or Player:RageDeficit() <= 17 and S.ShieldSlam:CooldownUp() and S.HeavyRepercussions:IsAvailable()
			or Player:RageDeficit() <= 18 and S.ShieldSlam:CooldownUp() and S.ImpenetrableWall:IsAvailable())
			or (Player:Rage() >= 70)
		) then
			if Cast(S.IgnorePain) then return "ignore_pain main 26"; end
			end
			-- last_stand,if=(target.health.pct>=90&talent.unnerving_focus.enabled|target.health.pct<=20&talent.unnerving_focus.enabled)|talent.bolster.enabled|set_bonus.tier30_2pc|set_bonus.tier30_4pc
			-- Note: Removed tier30 check. Nobody should still be using it.
			if S.LastStand:IsCastable() and Player:BuffDown(S.ShieldWallBuff) and (((Target:HealthPercentage() >= 90 and S.UnnervingFocus:IsAvailable() or Target:HealthPercentage() <= 20 and S.UnnervingFocus:IsAvailable()) or S.Bolster:IsAvailable()) or  Player:HealthPercentage() <= 35) then
				if Cast(S.LastStand) then return "last_stand main 28"; end
			end
			-- ravager
			if S.Ravager:IsCastable() and Target:IsInMeleeRange(8) then
				SuggestRageDump(10)
			if Cast(S.Ravager,Player) then return "ravager main 30"; end
			end
			--demoralizing_shout,if=talent.booming_voice.enabled
			if S.DemoralizingShout:IsCastable() and (S.BoomingVoice:IsAvailable()) then
				SuggestRageDump(30)
			if Cast(S.DemoralizingShout) then return "demoralizing_shout main 32"; end
			end
			-- champions_spear
			if S.ChampionsSpear:IsCastable() and Target:IsInMeleeRange(8) then
				SuggestRageDump(20)
			if Cast(S.ChampionsSpear) then return "champions_spear main 34"; end
			end
			-- thunder_blast,if=spell_targets.thunder_blast>=2&buff.thunder_blast.stack=2
			if S.ThunderBlastAbility:IsReady() and Target:IsInMeleeRange(8) and (EnemiesCount8 >= 2 and Player:BuffStack(S.ThunderBlastBuff) == 2) then
				SuggestRageDump(5)
			if Cast(S.ThunderBlastAbility) then return "thunder_blast main 36"; end
			end
			-- demolish,if=buff.colossal_might.stack>=3
			if S.Demolish:IsCastable() and Target:IsInMeleeRange(12) and (Player:BuffStack(S.ColossalMightBuff) >= 3) then
			if Cast(S.Demolish) then return "demolish main 38"; end
			end
			-- thunderous_roar
			if S.ThunderousRoar:IsCastable() and Target:IsInMeleeRange(12) then
			if Cast(S.ThunderousRoar) then return "thunderous_roar main 40"; end
			end
			-- shield_charge
			if S.ShieldCharge:IsCastable() and TargetInMeleeRange then
			SuggestRageDump(40)
			if Cast(S.ShieldCharge) then return "shield_charge main 42"; end
			end
			-- shield_block,if=buff.shield_block.remains<=10
			if ShouldPressShieldBlock() and (Player:BuffRemains(S.ShieldBlockBuff) <= 10) then
				if Cast(S.ShieldBlock) then return "shield_block main 44"; end
			end
			-- run_action_list,name=aoe,if=spell_targets.thunder_clap>3
			if EnemiesCount8 > 3 then
			local ShouldReturn = Aoe(); if ShouldReturn then return ShouldReturn; end
			end
			-- call_action_list,name=generic
			local ShouldReturn = Generic(); if ShouldReturn then return ShouldReturn; end
			-- If nothing else to do, show the Pool icon
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


