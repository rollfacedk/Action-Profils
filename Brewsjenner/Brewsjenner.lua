local function MyRoutine()
	local Author = 'Brewsjenner'
	local SpecID = 268 --Unholy  --https://wowpedia.fandom.com/wiki/API_GetSpecializationInfo

	local StdUi = LibStub('StdUi')
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
	local MouseOver = Unit.MouseOver
	---@type Unit
	local Spell = HL.Spell
	local MultiSpell = HL.MultiSpell
	local Item = HL.Item
	-- HeroRotation
	local Cast = MainAddon.Cast
	local CastCycle = MainAddon.CastCycle
	local CastTargetIf = MainAddon.CastTargetIf
	local AoEON = MainAddon.AoEON
	local CDsON = MainAddon.CDsON
	-- Num/Bool Helper Functions
	local function num(val)
		if val then return 1 else return 0 end
	end

	local function bool(val)
		return val ~= 0
	end

	local function TargetIsValid()
		return (Target:Exists() and Player:CanAttack(Target) and not Target:IsDeadOrGhost() and 
		Player:AffectingCombat() and (Target:AffectingCombat() or Target:HealthPercentage() < 100)) or Target:IsDummy()
	end

	-- Track Nuizao's Stomp
	local ImpNiuzao = Spell(322740)
	local Stomp     = Spell(227291)
	NiuzaoGUID = 0
	LastNiuzaoStomp = 0
	HL:RegisterForCombatEvent(
	function(...)
		local SourceGUID, _, _, _, DestGUID, _, _, _, SpellID = select(4, ...)
		if SourceGUID == Player:GUID() and SpellID == 132578 then
		NiuzaoGUID = DestGUID
		end
	end
	, "SPELL_SUMMON"
	)

	HL:RegisterForCombatEvent(
	function(...)
		local SourceGUID, _, _, _, _, _, _, _, SpellID = select(4, ...)
		if SourceGUID == NiuzaoGUID and SpellID == 227291 then
		LastNiuzaoStomp = GetTime()
		end
	end
	, "SPELL_DAMAGE"
	)

	HL:RegisterForCombatEvent(
	function(...)
		local DestGUID = select(8, ...)
		if DestGUID == NiuzaoGUID then
		NiuzaoGUID = 0
		end
	end
	, "UNIT_DIED"
	)
	-- WoW API
	local UnitHealthMax = UnitHealthMax
	local GetTime       = GetTime
	local GetSpellBonusDamage = GetSpellBonusDamage

	--GUI CONFIG
	local UnholyColor = 'c41f3b'
	local Unholy_Config = {
		--YO CHANGE THIS TO
		key = 'AUTHOR_MyConfigSample',
		title = 'Death Knight - Unholy',
		subtitle = '1.0',
		width = 300,
		height = 250,
		profiles = true,
		config = {
			{ type = 'header', text = 'Nothing here to see', size = 24, align = 'Center', color = UnholyColor},
			-- { type = 'spacer' },{ type = 'ruler' },{ type = 'spacer' },
			-- { type = 'header', text = 'Defensives',  color = UnholyColor },
			-- { type = 'checkspin', text = 'Death Strike: Smart Use', key = 'smartds', min = 1, max = 100, default = 15},
			-- { type = 'checkspin', text = 'Death Strike: Deficit', key = 'deficitds', min = 1, max = 100, default = 20},
			-- { type = 'checkspin', text = 'Death Strike: Emergency', key = 'dsemergency', min = 1, max = 100, default = 50},
			-- { type = 'checkspin', text = 'Icebound Fortitude', key = 'ibfortitude', min = 1, max = 100, default = 30},
			-- { type = 'checkspin', text = 'Rune Tap', key = 'runetap', min = 1, max = 100, default = 35},
			-- { type = 'checkspin', text = 'Vampiric Blood', key = 'vp', min = 1, max = 100, default = 50},
			-- { type = 'spacer' },
			-- { type = 'header', text = 'Class',  color = UnholyColor },
			-- { type = 'checkbox', text = 'Lichborne (Anti-Fear)', key = 'lichborne', default = true},
		}
	}
	MainAddon.SetCustomConfig(Author, SpecID, Unholy_Config)

	local function Init()
		message( 'Brews Jenner Activated!', 1)
		MainAddon:Print('Brews Jenner Activated!')
	end


	local S = {
		-- Racials
		AncestralCall                         = Spell(274738),
		ArcaneTorrent                         = Spell(25046),
		BagofTricks                           = Spell(312411),
		Berserking                            = Spell(26297),
		BloodFury                             = Spell(20572),
		GiftoftheNaaru                        = Spell(59547),
		Fireblood                             = Spell(265221),
		LightsJudgment                        = Spell(255647),
		QuakingPalm                           = Spell(107079),
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
		RushingJadeWindBuff                   = Spell(116847),
		-- Debuffs
		-- Item Effects
		CalltoDominanceBuff                   = Spell(403380), -- Neltharion trinket buff
		DomineeringArroganceBuff              = Spell(411661), -- Neltharion trinket buff2
		TheEmperorsCapacitorBuff              = Spell(235054),
		-- Misc
		PoolEnergy                            = Spell(999910),
		StopFoF                               = Spell(363653),

		-----------------------------------------------------

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
		HighTolerance                         = Spell(196737),
		ImprovedInvokeNiuzao                  = Spell(322740),
		ImprovedPurifyingBrew                 = Spell(343743),
		InvokeNiuzaoTheBlackOx                = Spell(132578),
		KegSmash                              = Spell(121253),
		LightBrewing                          = Spell(325093),
		PresstheAdvantage                     = Spell(418359),
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
	}

	local I = {

		-- Trinkets
		AlgetharPuzzleBox                     = Item(193701, {13, 14}),
		AshesoftheEmbersoul                   = Item(207167, {13, 14}),
		BeacontotheBeyond                     = Item(203963, {13, 14}),
		DragonfireBombDispenser               = Item(202610, {14, 14}),
		EruptingSpearFragment                 = Item(193769, {13, 14}),
		IrideusFragment                       = Item(193743, {13, 14}),
		ManicGrieftorch                       = Item(194308, {13, 14}),
		MirrorofFracturedTomorrows            = Item(207581, {13, 14}),
		NeltharionsCalltoDominance            = Item(204202, {13, 14}),
		WitherbarksBranch                     = Item(109999, {13, 14}),
		-- Other On-Use Items
		Djaruun                               = Item(202569, {16}),


	}

	-- Create table to exclude above trinkets from On Use function
	local OnUseExcludes = {
		-- I.TrinketName:ID(),
	}

	--- Tank Buster
	local BossBuffs = {
        [260541] = true, -- Soulbound Goliath - Burning
    }
	local DangerousCasts = {
		[167385] = true, -- Dummy Uberstrike
		[376827] = true, -- Balarkar Khan
		[381512] = true, -- Erkhart Stormvein
		[372858] = function(self) -- Kokia Blazehoof
            return self:IsChanneling()
        end,
		[385958] = true, -- Vexamus


	}
	local pairs = pairs
	local Boss = Unit.Boss
	local casters = {}
	local function _CacheCastList()
        casters = {}
        local Enemies = Player:GetEnemiesInRange(40)
        for i = 1, #Enemies do
            local Enemy = Enemies[i]
            local spellID = Enemy:CastSpellID() or Enemy:ChannelSpellID() or 0
            if spellID > 0 then
                casters[Enemy] = spellID
            end
        end

        return casters
    end
	local function UseTankBuster()
        for i,v in pairs(Boss) do
            if v:HasBuffList(BossBuffs, true) then
                return true, 0, "Boss buff found"
            end
        end

        local Enemies = Cache.Get("RotationZ", "Casters", _CacheCastList)
        for TargetedUnit, SpellID in pairs(Enemies) do
            local DangerousEntry = DangerousCasts[SpellID]
            if SpellID > 0 then
                if DangerousEntry then
                    if type(DangerousEntry) == "boolean" then
                        return true, TargetedUnit:CastRemains() , "Dangerous Cast with special condition found"
                    else
                        return DangerousEntry(TargetedUnit), TargetedUnit:CastRemains(), "Dangerous Cast found"
                    end
                end
            end
        end
        return false, 999, "EOL"
    end

	
	-- Rotation Var
	local Enemies5y
	local EnemiesCount5
	local IsTanking

	-- Weapon checks
	local MainHandLink = GetInventoryItemLink("player", 16) or ""
	local Using2H = IsEquippedItemType("Two-Hand")

	HL:RegisterForEvent(function()
		MainHandLink = GetInventoryItemLink("player", 16) or ""
		Using2H = IsEquippedItemType("Two-Hand")
	end, "PLAYER_EQUIPMENT_CHANGED")


	local function Defensives()

		if UseTankBuster() and Player:BuffDown(S.CelestialBrew) and Player:BuffDown(S.DiffuseMagic) and Player:BuffDown(S.DampenHarmBuff) and Player:BuffDown(S.FortifyingBrew) then
			if S.CelestialBrew:IsCastable() then
				if Cast(S.CelestialBrew) then return "Celestial Brew Tank Buster"; end
			elseif S.BlackOxBrew:IsCastable() then
				if Cast(S.BlackOxBrew) then return "Black Ox Brew Tank Buster" end
			elseif S.DiffuseMagic:IsCastable() then
				if Cast(S.DiffuseMagic) then return "Diffuse Magic Tank Buster" end
			elseif S.DampenHarm:IsCastable() then
				if Cast(S.DampenHarm) then return "Diffuse Magic Tank Buster" end
			elseif S.FortifyingBrew:IsCastable() then
				if Cast(S.FortifyingBrew) then return "Diffuse Magic Tank Buster" end
			end
		end
		if Player:DebuffUp(S.HeavyStagger) and Player:BuffDown(S.CelestialBrew) and Player:HealthPercentage() <= 70 then
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

		-- if S.DampenHarm:IsCastable() and Player:BuffDown(S.FortifyingBrewBuff) and Player:HealthPercentage() <= 35 then
		--   if Cast(S.DampenHarm) then return "Dampen Harm"; end
		-- end
		-- if S.FortifyingBrew:IsCastable() and Player:BuffDown(S.DampenHarmBuff) and Player:HealthPercentage() <= 25 then
		--   if Cast(S.FortifyingBrew) then return "Fortifying Brew"; end
		-- end
	end

	local function ItemActions()
		-- use_items
		local ItemToUse, ItemSlot, ItemRange = Player:GetUseableItems(OnUseExcludes)
		if ItemToUse then
		  local DisplayStyle = true
		  local IsTrinket = ItemSlot == 13 or ItemSlot == 14
		  if not IsTrinket then DisplayStyle = true end
		  if (IsTrinket) or (not IsTrinket) then
			if Cast(ItemToUse, nil, DisplayStyle, not Target:IsInRange(ItemRange)) then return "Generic use_items for " .. ItemToUse:Name(); end
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
		-- lights_judgment
		if S.LightsJudgment:IsCastable() and Target:IsInMeleeRange(8) then
		  if Cast(S.LightsJudgment) then return "lights_judgment race_actions 6"; end
		end
		-- fireblood
		if S.Fireblood:IsCastable() then
		  if Cast(S.Fireblood) then return "fireblood race_actions 8"; end
		end
		-- ancestral_call
		if S.AncestralCall:IsCastable() then
		  if Cast(S.AncestralCall) then return "ancestral_call race_actions 10"; end
		end
		-- bag_of_tricks
		if S.BagofTricks:IsCastable() and Target:IsInRange(40) then
		  if Cast(S.BagofTricks) then return "bag_of_tricks race_actions 12"; end
		end
	end

	local function RotationPTA()
		-- invoke_niuzao_the_black_ox
		if S.InvokeNiuzaoTheBlackOx:IsCastable() and Target:IsInRange(40) then
		  if Cast(S.InvokeNiuzaoTheBlackOx) then return "invoke_niuzao_the_black_ox rotation_pta 2"; end
		end
		if S.RisingSunKick:IsCastable() and Target:IsInMeleeRange(5) and (
		  -- rising_sun_kick,if=buff.press_the_advantage.stack<(7+main_hand.2h)
		  (Player:BuffStack(S.PresstheAdvantageBuff) < (7 + num(Using2H))) or
		  -- rising_sun_kick,if=buff.press_the_advantage.stack>9&active_enemies<=3&(buff.blackout_combo.up|!talent.blackout_combo.enabled)
		  (Player:BuffStack(S.PresstheAdvantageBuff) > 9 and EnemiesCount5 <= 3 and (Player:BuffUp(S.BlackoutComboBuff) or not S.BlackoutCombo:IsAvailable()))
		) then
		  if Cast(S.RisingSunKick) then return "rising_sun_kick rotation_pta 4"; end
		end
		-- keg_smash,if=(buff.press_the_advantage.stack>9)&active_enemies>3
		if S.KegSmash:IsReady() and Target:IsSpellInRange(S.KegSmash) and (Player:BuffStack(S.PresstheAdvantageBuff) > 9 and EnemiesCount5 > 3) then
		  if Cast(S.KegSmash) then return "keg_smash rotation_pta 6"; end
		end
		-- spinning_crane_kick,if=active_enemies>5&buff.exploding_keg.up&buff.charred_passions.up
		if S.SpinningCraneKick:IsReady() and Target:IsInMeleeRange(8) and (EnemiesCount5 > 5 and Player:BuffUp(S.ExplodingKeg) and Player:BuffUp(S.CharredPassionsBuff)) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick rotation_pta 8"; end
		end
		-- blackout_kick
		if S.BlackoutKick:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.BlackoutKick) then return "blackout_kick rotation_pta 10"; end
		end
		-- purifying_brew,if=(!buff.blackout_combo.up)
		if S.PurifyingBrew:IsCastable() and not IsTanking and Player:StaggerFull() > 0 and (Player:BuffDown(S.BlackoutComboBuff)) then
		  if Cast(S.PurifyingBrew) then return "purifying_brew rotation_pta 12"; end
		end
		-- black_ox_brew,if=energy+energy.regen<=40
		if S.BlackOxBrew:IsCastable() and (Player:Energy() + Player:EnergyRegen() <= 40) then
		  if Cast(S.BlackOxBrew) then return "black_ox_brew rotation_pta 14"; end
		end
		-- breath_of_fire,if=buff.charred_passions.remains<cooldown.blackout_kick.remains&(buff.blackout_combo.up|!talent.blackout_combo.enabled)
		if S.BreathofFire:IsCastable() and Target:IsInMeleeRange(12) and (Player:BuffRemains(S.CharredPassionsBuff) < S.BlackoutKick:CooldownRemains() and (Player:BuffUp(S.BlackoutComboBuff) or not S.BlackoutCombo:IsAvailable())) then
		  if Cast(S.BreathofFire) then return "breath_of_fire rotation_pta 16"; end
		end
		-- summon_white_tiger_statue
		if S.SummonWhiteTigerStatue:IsCastable() then
		  if Cast(S.SummonWhiteTigerStatue) then return "summon_white_tiger_statue rotation_pta 18"; end
		end
		-- bonedust_brew
		if S.BonedustBrew:IsCastable() and Target:IsInMeleeRange(8) and not Player:IsMoving() then
		  if Cast(S.BonedustBrew, Player) then return "bonedust_brew rotation_pta 20"; end
		end
		-- exploding_keg,if=((buff.bonedust_brew.up)|(cooldown.bonedust_brew.remains>=20))
		-- exploding_keg,if=(!talent.bonedust_brew.enabled)
		-- Note: Combining both lines.
		if S.ExplodingKeg:IsCastable() and Target:IsInMeleeRange(8) and not Player:IsMoving() and (Player:BuffUp(S.BonedustBrewBuff) or S.BonedustBrew:CooldownRemains() >= 20 or not S.BonedustBrew:IsAvailable()) then
		  if Cast(S.ExplodingKeg, Player) then return "exploding_keg rotation_pta 22"; end
		end
		-- breath_of_fire,if=(buff.blackout_combo.up|!talent.blackout_combo.enabled)
		if S.BreathofFire:IsCastable() and Target:IsInMeleeRange(12) and (Player:BuffUp(S.BlackoutComboBuff) or not S.BlackoutCombo:IsAvailable()) then
		  if Cast(S.BreathofFire) then return "breath_of_fire rotation_pta 24"; end
		end
		-- keg_smash,if=buff.press_the_advantage.stack<10
		if S.KegSmash:IsReady() and (Player:BuffStack(S.PresstheAdvantageBuff) < 10) then
		  if Cast(S.KegSmash) then return "keg_smash rotation_pta 26"; end
		end
		-- rushing_jade_wind,if=talent.rushing_jade_wind.enabled
		if S.RushingJadeWind:IsCastable() then
		  if Cast(S.RushingJadeWind) then return "rushing_jade_wind rotation_pta 28"; end
		end
		-- spinning_crane_kick,if=active_enemies>2
		-- spinning_crane_kick,if=(1.1>(time-action.melee_main_hand.last_used)*(1+spell_haste)-main_hand.2h)
		-- Note: Combining both lines.
		if S.SpinningCraneKick:IsReady() and Target:IsInMeleeRange(8) and (
		  (EnemiesCount5 > 2) or
		  (1.1 > (GetTime() - Player:PrevGCDTime()) * (1 + Player:SpellHaste()) - num(Using2H))
		) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick rotation_pta 30"; end
		end
		-- expel_harm
		if S.ExpelHarm:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.ExpelHarm) then return "expel_harm rotation_pta 32"; end
		end
		-- chi_wave
		if S.ChiWave:IsCastable() and Target:IsInRange(40) then
		  if Cast(S.ChiWave) then return "chi_wave rotation_pta 34"; end
		end
		-- chi_burst
		if S.ChiBurst:IsCastable() and Target:IsInRange(40) then
		  if Cast(S.ChiBurst) then return "chi_burst rotation_pta 36"; end
		end
	end

	local function RotationBOC()
		-- blackout_kick
		if S.BlackoutKick:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.BlackoutKick) then return "blackout_kick rotation_boc 2"; end
		end
		local RecentPurifiesBuff = S.PurifyingBrew:TimeSinceLastCast() < 6 and LastNiuzaoStomp < S.PurifyingBrew.LastCastTime
		-- purifying_brew,if=(buff.blackout_combo.down&(buff.recent_purifies.down|cooldown.purifying_brew.charges_fractional>(1+talent.improved_purifying_brew.enabled-0.1)))&talent.improved_invoke_niuzao_the_black_ox.enabled&(cooldown.weapons_of_order.remains>40|cooldown.weapons_of_order.remains<5)
		-- if S.PurifyingBrew:IsCastable() and not IsTanking and Player:StaggerFull() > 0 and ((Player:BuffDown(S.BlackoutComboBuff) and (not RecentPurifiesBuff or S.PurifyingBrew:ChargesFractional() > (1 + num(S.ImprovedPurifyingBrew:IsAvailable()) - 0.1))) and S.ImprovedInvokeNiuzao:IsAvailable() and (S.WeaponsofOrder:CooldownRemains() > 40 or S.WeaponsofOrder:CooldownRemains() < 5)) then
		--   if Cast(S.PurifyingBrew) then return "purifying_brew rotation_boc 4"; end
		-- end
		-- weapons_of_order,if=(buff.recent_purifies.up)&talent.improved_invoke_niuzao_the_black_ox.enabled
		if S.WeaponsofOrder:IsCastable() and (RecentPurifiesBuff and S.ImprovedInvokeNiuzao:IsAvailable()) then
		  if Cast(S.WeaponsofOrder) then return "weapons_of_order rotation_boc 6"; end
		end
		-- invoke_niuzao_the_black_ox,if=(buff.invoke_niuzao_the_black_ox.down&buff.recent_purifies.up&buff.weapons_of_order.remains<14)&talent.improved_invoke_niuzao_the_black_ox.enabled
		if S.InvokeNiuzaoTheBlackOx:IsCastable() and Target:IsInMeleeRange(8) and ((Player:BuffDown(S.InvokeNiuzaoTheBlackOx) and RecentPurifiesBuff and Player:BuffRemains(S.WeaponsofOrderBuff) < 14) and S.ImprovedInvokeNiuzao:IsAvailable()) then
		  if Cast(S.InvokeNiuzaoTheBlackOx) then return "invoke_niuzao_the_black_ox rotation_boc 8"; end
		end
		-- invoke_niuzao_the_black_ox,if=(debuff.weapons_of_order_debuff.stack>3)&!talent.improved_invoke_niuzao_the_black_ox.enabled
		if S.InvokeNiuzaoTheBlackOx:IsCastable() and Target:IsInMeleeRange(8) and (Target:DebuffStack(S.WeaponsofOrderDebuff) > 3 and not S.ImprovedInvokeNiuzao:IsAvailable()) then
		  if Cast(S.InvokeNiuzaoTheBlackOx) then return "invoke_niuzao_the_black_ox rotation_boc 10"; end
		end
		-- invoke_niuzao_the_black_ox,if=(!talent.weapons_of_order.enabled)
		if S.InvokeNiuzaoTheBlackOx:IsCastable() and Target:IsInMeleeRange(8) and (not S.WeaponsofOrder:IsAvailable()) then
		  if Cast(S.InvokeNiuzaoTheBlackOx) then return "invoke_niuzao_the_black_ox rotation_boc 12"; end
		end
		-- weapons_of_order,if=(talent.weapons_of_order.enabled)&!talent.improved_invoke_niuzao_the_black_ox.enabled
		if S.WeaponsofOrder:IsCastable() and (not S.ImprovedInvokeNiuzao:IsAvailable()) then
		  if Cast(S.WeaponsofOrder) then return "weapons_of_order rotation_boc 14"; end
		end
		-- keg_smash,if=(time-action.weapons_of_order.last_used<2)
		if S.KegSmash:IsReady() and Target:IsSpellInRange(S.KegSmash) and (S.WeaponsofOrder:TimeSinceLastCast() < 2) then
		  if Cast(S.KegSmash) then return "keg_smash rotation_boc 16"; end
		end
		-- keg_smash,if=(buff.weapons_of_order.remains<gcd*2&buff.weapons_of_order.up)&!talent.improved_invoke_niuzao_the_black_ox.enabled
		if S.KegSmash:IsReady() and Target:IsSpellInRange(S.KegSmash) and ((Player:BuffRemains(S.WeaponsofOrderBuff) < Player:GCD() * 2 and Player:BuffUp(S.WeaponsofOrderBuff)) and not S.ImprovedInvokeNiuzao:IsAvailable()) then
		  if Cast(S.KegSmash) then return "keg_smash rotation_boc 18"; end
		end
		-- keg_smash,if=(buff.weapons_of_order.remains<gcd*2)&talent.improved_invoke_niuzao_the_black_ox.enabled
		if S.KegSmash:IsReady() and Target:IsSpellInRange(S.KegSmash) and (Player:BuffRemains(S.WeaponsofOrderBuff) < Player:GCD() * 2 and S.ImprovedInvokeNiuzao:IsAvailable()) then
		  if Cast(S.KegSmash) then return "keg_smash rotation_boc 20"; end
		end
		-- purifying_brew,if=(!buff.blackout_combo.up)&!talent.improved_invoke_niuzao_the_black_ox.enabled
		-- if S.PurifyingBrew:IsCastable() and not IsTanking and Player:StaggerFull() > 0 and (Player:BuffDown(S.BlackoutComboBuff) and not S.ImprovedInvokeNiuzao:IsAvailable()) then
		--   if Cast(S.PurifyingBrew) then return "purifying_brew rotation_boc 22"; end
		-- end
		-- rising_sun_kick
		if S.RisingSunKick:IsCastable() and Target:IsInMeleeRange(5) then
		  if Cast(S.RisingSunKick) then return "rising_sun_kick rotation_boc 24"; end
		end
		-- black_ox_brew,if=(energy+energy.regen<=40)
		if S.BlackOxBrew:IsCastable() and (Player:Energy() + Player:EnergyRegen() <= 40) then
		  if Cast(S.BlackOxBrew) then return "black_ox_brew rotation_boc 26"; end
		end
		-- tiger_palm,if=(buff.blackout_combo.up&active_enemies=1)
		if S.TigerPalm:IsReady() and Target:IsInMeleeRange(5) and (Player:BuffUp(S.BlackoutComboBuff) and EnemiesCount5 == 1) then
		  if Cast(S.TigerPalm) then return "tiger_palm rotation_boc 28"; end
		end
		-- breath_of_fire,if=(buff.charred_passions.remains<cooldown.blackout_kick.remains)
		if S.BreathofFire:IsCastable() and Target:IsInMeleeRange(12) and (Player:BuffRemains(S.CharredPassionsBuff) < S.BlackoutKick:CooldownRemains()) then
		  if Cast(S.BreathofFire) then return "breath_of_fire rotation_boc 30"; end
		end
		-- keg_smash,if=(buff.weapons_of_order.up&debuff.weapons_of_order_debuff.stack<=3)
		if S.KegSmash:IsReady() and Target:IsSpellInRange(S.KegSmash) and (Player:BuffUp(S.WeaponsofOrderBuff) and Player:BuffStack(S.WeaponsofOrderBuff) <= 3) then
		  if Cast(S.KegSmash) then return "keg_smash rotation_boc 32"; end
		end
		-- summon_white_tiger_statue,if=(debuff.weapons_of_order_debuff.stack>3)
		-- summon_white_tiger_statue,if=(!talent.weapons_of_order.enabled)
		-- Note: Combining both lines.
		if S.SummonWhiteTigerStatue:IsCastable() and Target:IsInMeleeRange(8) and not Player:IsMoving() and (Target:DebuffStack(S.WeaponsofOrderDebuff) > 3 or not S.WeaponsofOrder:IsAvailable()) then
		  if Cast(S.SummonWhiteTigerStatue) then return "summon_white_tiger_statue rotation_boc 34"; end
		end
		-- bonedust_brew,if=(time<10&debuff.weapons_of_order_debuff.stack>3)|(time>10&talent.weapons_of_order.enabled)
		-- bonedust_brew,if=(!talent.weapons_of_order.enabled)
		-- Note: Combining both lines.
		if S.BonedustBrew:IsCastable() and Target:IsInMeleeRange(8) and not Player:IsMoving() and ((CombatTime < 10 and Target:DebuffStack(S.WeaponsofOrderDebuff) > 3) or (CombatTime > 10 and S.WeaponsofOrder:IsAvailable()) or not S.WeaponsofOrder:IsAvailable()) then
		  if Cast(S.BonedustBrew, Player) then return "bonedust_brew rotation_boc 36"; end
		end
		-- exploding_keg,if=(buff.bonedust_brew.up)
		-- exploding_keg,if=(cooldown.bonedust_brew.remains>=20)
		-- exploding_keg,if=(!talent.bonedust_brew.enabled)
		-- Note: Combining all three lines.
		if S.ExplodingKeg:IsCastable() and Target:IsInMeleeRange(8) and not Player:IsMoving() and (Player:BuffUp(S.BonedustBrewBuff) or S.BonedustBrew:CooldownRemains() >= 20 or not S.BonedustBrew:IsAvailable()) then
		  if Cast(S.ExplodingKeg, Player) then return "exploding_keg rotation_boc 38"; end
		end
		-- keg_smash
		if S.KegSmash:IsReady() and Target:IsSpellInRange(S.KegSmash) then
		  if Cast(S.KegSmash) then return "keg_smash rotation_boc 40"; end
		end
		-- rushing_jade_wind,if=talent.rushing_jade_wind.enabled
		if S.RushingJadeWind:IsCastable() then
		  if Cast(S.RushingJadeWind) then return "rushing_jade_wind rotation_boc 42"; end
		end
		-- breath_of_fire
		if S.BreathofFire:IsCastable() and Target:IsInMeleeRange(12) then
		  if Cast(S.BreathofFire) then return "breath_of_fire rotation_boc 44"; end
		end
		-- tiger_palm,if=active_enemies=1&!talent.blackout_combo.enabled
		if S.TigerPalm:IsReady() and Target:IsInMeleeRange(5) and (EnemiesCount5 == 1 and not S.BlackoutCombo:IsAvailable()) then
		  if Cast(S.TigerPalm) then return "tiger_palm rotation_boc 46"; end
		end
		-- spinning_crane_kick,if=active_enemies>1
		if S.SpinningCraneKick:IsReady() and Target:IsInMeleeRange(8) and (EnemiesCount5 > 1) then
		  if Cast(S.SpinningCraneKick) then return "spinning_crane_kick rotation_boc 48"; end
		end
		-- expel_harm
		if S.ExpelHarm:IsReady() and Target:IsInMeleeRange(8) then
		  if Cast(S.ExpelHarm) then return "expel_harm rotation_boc 50"; end
		end
		-- chi_wave
		if S.ChiWave:IsCastable() and Target:IsInRange(40) then
		  if Cast(S.ChiWave) then return "chi_wave rotation_boc 52"; end
		end
		-- chi_burst
		if S.ChiBurst:IsCastable() and Target:IsInRange(40) then
		  if Cast(S.ChiBurst) then return "chi_burst rotation_boc 54"; end
		end
	end

	S.PurifyingBrew.offGCD = true
	S.BlackOxBrew.offGCD = true
	S.DampenHarm.offGCD = true
	S.DiffuseMagic.offGCD = true
	S.FortifyingBrew.offGCD = true
	local function MainRotation()

		if not Player:AffectingCombat() and S.Resuscitate:IsReady() and MouseOver:Exists() and MouseOver:IsAPlayer() and MouseOver:IsDeadOrGhost() then 
			if Cast(S.Resuscitate) then return end
		end
		if S.CracklingJadeLightning:IsReady() and not Player:IsMoving() and MouseOver:IsSpellInRange(S.CracklingJadeLightning) and not MouseOver:AffectingCombat() then
			if Cast(S.CracklingJadeLightning) then return ""; end
		end
		-- Unit Update
		Enemies5y = Player:GetEnemiesInMeleeRange(5) -- Multiple Abilities
		if AoEON() then
		  EnemiesCount5 = #Enemies5y
		else
		  EnemiesCount5 = 1
		end
		
		if TargetIsValid() or Player:AffectingCombat() then
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
	  
		--- In Combat
		if TargetIsValid() then

			if S.TouchofDeath:IsReady() then
				if Cast(S.TouchofDeath) then return ""; end
			end
		  -- Precombat
		  -- auto_attack
		  -- roll,if=movement.distance>5
		  -- chi_torpedo,if=movement.distance>5
		  -- Note: Not suggesting movement abilities
		  -- spear_hand_strike,if=target.debuff.casting.react
		  -- Manually added: Defensives
		  if IsTanking then
			local ShouldReturn = Defensives(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- potion
		  -- invoke_external_buff,name=power_infusion,if=buff.weapons_of_order.remains<=20&talent.weapons_of_order.enabled
		  -- invoke_external_buff,name=power_infusion,if=!talent.weapons_of_order.enabled
		  -- Note: Not handling external buffs
		  -- call_action_list,name=item_actions
		  local ShouldReturn = ItemActions(); if ShouldReturn then return ShouldReturn; end
		  -- call_action_list,name=race_actions
		  local ShouldReturn = RaceActions(); if ShouldReturn then return ShouldReturn; end
		  -- call_action_list,name=rotation_pta,if=talent.press_the_advantage.enabled
		  if S.PresstheAdvantage:IsAvailable() then
			local ShouldReturn = RotationPTA(); if ShouldReturn then return ShouldReturn; end
		  end
		  -- call_action_list,name=rotation_boc,if=!talent.press_the_advantage.enabled
		  if not S.PresstheAdvantage:IsAvailable() then
			local ShouldReturn = RotationBOC(); if ShouldReturn then return ShouldReturn; end
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
