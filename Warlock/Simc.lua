local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_WARLOCK_AFFLI] = {
    -- Racial
    ArcaneTorrent                        = Action.Create({ Type = "Spell", ID = 50613     }),
    BloodFury                            = Action.Create({ Type = "Spell", ID = 20572      }),
    Fireblood                            = Action.Create({ Type = "Spell", ID = 265221     }),
    AncestralCall                        = Action.Create({ Type = "Spell", ID = 274738     }),
    Berserking                           = Action.Create({ Type = "Spell", ID = 26297    }),
    ArcanePulse                          = Action.Create({ Type = "Spell", ID = 260364    }),
    QuakingPalm                          = Action.Create({ Type = "Spell", ID = 107079     }),
    Haymaker                             = Action.Create({ Type = "Spell", ID = 287712     }), 
    BullRush                             = Action.Create({ Type = "Spell", ID = 255654     }),    
    WarStomp                             = Action.Create({ Type = "Spell", ID = 20549     }),
    GiftofNaaru                          = Action.Create({ Type = "Spell", ID = 59544    }),
    Shadowmeld                           = Action.Create({ Type = "Spell", ID = 58984    }), -- usable in Action Core 
    Stoneform                            = Action.Create({ Type = "Spell", ID = 20594    }), 
    WilloftheForsaken                    = Action.Create({ Type = "Spell", ID = 7744        }), -- not usable in APL but user can Queue it    
    EscapeArtist                         = Action.Create({ Type = "Spell", ID = 20589    }), -- not usable in APL but user can Queue it
    EveryManforHimself                   = Action.Create({ Type = "Spell", ID = 59752    }), -- not usable in APL but user can Queue it
    PetKick                              = Action.Create({ Type = "Spell", ID = 47482, Color = "RED", Desc = "RED" }),  
    -- Trinkets
	TrinketTest                          = Action.Create({ Type = "Trinket", ID = 122530, QueueForbidden = true }),
    TrinketTest2                         = Action.Create({ Type = "Trinket", ID = 159611, QueueForbidden = true }), 
    AzsharasFontofPower                  = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    PocketsizedComputationDevice         = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
    RotcrustedVoodooDoll                 = Action.Create({ Type = "Trinket", ID = 159624, QueueForbidden = true }),
    ShiverVenomRelic                     = Action.Create({ Type = "Trinket", ID = 168905, QueueForbidden = true }),
    AquipotentNautilus                   = Action.Create({ Type = "Trinket", ID = 169305, QueueForbidden = true }),
    TidestormCodex                       = Action.Create({ Type = "Trinket", ID = 165576, QueueForbidden = true }),
    VialofStorms                         = Action.Create({ Type = "Trinket", ID = 158224, QueueForbidden = true }),
    -- Potions
    PotionofUnbridledFury                = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
	PotionTest                           = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
--	LegSweepGreen						 = Action.Create({ Type = "SpellSingleColor", ID = 119381, Color = "GREEN", Desc = "[1] CC", QueueForbidden = true }),
--	SpearHandStrikeGreen				 = Action.Create({ Type = "SpellSingleColor", ID = 116705, Color = "GREEN", Desc = "[2] Kick", QueueForbidden = true }),
    -- Generics Spells
    DreadfulCalling                      = Action.Create({ Type = "Spell", ID = 278727     }),
    SummonPet                            = Action.Create({ Type = "Spell", ID = 691     }),
    GrimoireofSacrificeBuff              = Action.Create({ Type = "Spell", ID = 196099     }),
    GrimoireofSacrifice                  = Action.Create({ Type = "Spell", ID = 108503     }),
    SeedofCorruptionDebuff               = Action.Create({ Type = "Spell", ID = 27243     }),
    SeedofCorruption                     = Action.Create({ Type = "Spell", ID = 27243     }),
    HauntDebuff                          = Action.Create({ Type = "Spell", ID = 48181     }),
    Haunt                                = Action.Create({ Type = "Spell", ID = 48181     }),
    ShadowBolt                           = Action.Create({ Type = "Spell", ID = 232670     }),
    DarkSoulMisery                       = Action.Create({ Type = "Spell", ID = 113860     }),
    SummonDarkglare                      = Action.Create({ Type = "Spell", ID = 205180     }),
    DarkSoul                             = Action.Create({ Type = "Spell", ID = 113860     }),
    Fireblood                            = Action.Create({ Type = "Spell", ID = 265221     }),
    BloodFury                            = Action.Create({ Type = "Spell", ID = 20572     }),
    SiphonLife                           = Action.Create({ Type = "Spell", ID = 63106     }),
    SiphonLifeDebuff                     = Action.Create({ Type = "Spell", ID = 63106     }),
    AgonyDebuff                          = Action.Create({ Type = "Spell", ID = 980     }),
    CorruptionDebuff                     = Action.Create({ Type = "Spell", ID = 146739     }),
    Agony                                = Action.Create({ Type = "Spell", ID = 980     }),
    Corruption                           = Action.Create({ Type = "Spell", ID = 172     }),
    CreepingDeath                        = Action.Create({ Type = "Spell", ID = 264000     }),
    WritheInAgony                        = Action.Create({ Type = "Spell", ID = 196102     }),
    UnstableAffliction                   = Action.Create({ Type = "Spell", ID = 30108     }),
    UnstableAfflictionDebuff             = Action.Create({ Type = "Spell", ID = 30108     }),
    Deathbolt                            = Action.Create({ Type = "Spell", ID = 264106     }),
    NightfallBuff                        = Action.Create({ Type = "Spell", ID = 264571     }),
    AbsoluteCorruption                   = Action.Create({ Type = "Spell", ID = 196103     }),
    DrainLife                            = Action.Create({ Type = "Spell", ID = 234153     }),
    InevitableDemiseBuff                 = Action.Create({ Type = "Spell", ID = 273525     }),
    PhantomSingularity                   = Action.Create({ Type = "Spell", ID = 205179     }),
    VileTaint                            = Action.Create({ Type = "Spell", ID = 278350     }),
    DrainSoul                            = Action.Create({ Type = "Spell", ID = 198590     }),
    ShadowEmbraceDebuff                  = Action.Create({ Type = "Spell", ID = 32390     }),
    ShadowEmbrace                        = Action.Create({ Type = "Spell", ID = 32388     }),
    CascadingCalamity                    = Action.Create({ Type = "Spell", ID = 275372     }),
    CascadingCalamityBuff                = Action.Create({ Type = "Spell", ID = 275378     }),
    WrackingBrillianceBuff               = Action.Create({ Type = "Spell", ID = 272891     }),
    SowtheSeeds                          = Action.Create({ Type = "Spell", ID = 196226     }),
    ActiveUasBuff                        = Action.Create({ Type = "Spell", ID = 233490     }),
    PhantomSingularityDebuff             = Action.Create({ Type = "Spell", ID = 205179     }),
    SpellLock                            = Action.Create({ Type = "Spell", ID = 119898     }),
    DispellMagic                         = Action.Create({ Type = "Spell", ID = 111400     }),
    Shadowfury                           = Action.Create({ Type = "Spell", ID = 30283     }),
    PandemicInvocation                   = Action.Create({ Type = "Spell", ID = 289364     }),
    ShiverVenomDebuff                    = Action.Create({ Type = "Spell", ID = 301624     }),
    -- Defensive
    UnendingResolve                      = Action.Create({ Type = "Spell", ID = 104773     }),
    -- Misc
    BurningRush                          = Action.Create({ Type = "Spell", ID = 278727     }),
    -- Items
    PotionofUnbridledFury                = Action.Create({ Type = "Potion", ID = 169299     }),     
    -- Hidden 
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_WARLOCK_AFFLI)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_WARLOCK_AFFLI], { __index = Action })

-- Simcraft Imported
-- HeroLib
local HL     = HeroLib
local Cache  = HeroCache
local Unit   = HL.Unit
local Player = Unit.Player
local Target = Unit.Target
local Pet    = Unit.Pet
local Spell  = HL.Spell
local Item   = HL.Item
-- HeroRotation
local HR   = HeroRotation

---------------------------
-- PORT TO ACTION 
local S, I = A:HeroCreate()
Action.HeroSetHookAllTable(S, {
	[3] = "TellMeWhen_Group4_Icon3",
})
-- Adding manually missed staff
--S.Brews                                 = Spell(115308)
--S.BlackoutCombo                         = Spell(196736)
--S.BlackoutComboBuff                     = Spell(228563)
---------------------------

-- Rotation Var
local ShouldReturn; -- Used to get the return string
local ForceOffGCD = {true, false};

-- Variables
local VarMaintainSe = 0;
local VarUseSeed = 0;
local VarPadding = 0;

HL:RegisterForEvent(function()
  VarMaintainSe = 0
  VarUseSeed = 0
  VarPadding = 0
end, "PLAYER_REGEN_ENABLED")

-- HeroLib EnemiesCount handler
local EnemyRanges = {40, 5}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i);
  end
end

local function GetEnemiesCount(range)
  -- Unit Update - Update differently depending on if splash data is being used
  if HR.AoEON() then
    if Settings.Affliction.UseSplashData then
      HL.GetEnemies(range, nil, true, Target)
      return Cache.EnemiesCount[range]
    else
      UpdateRanges()
      Everyone.AoEToggleEnemiesUpdate()
      return Cache.EnemiesCount[40]
    end
  else
    return 1
  end
end

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

-- "time.to.shard"
local function TimeToShard()
  local ActiveAgony = S.Agony:ActiveDot()
  if ActiveAgony == 0 then
    return 10000 
  end
  return 1 / (0.16 / math.sqrt(ActiveAgony) * (ActiveAgony == 1 and 1.15 or 1) * ActiveAgony / S.Agony:TickTime())
end

-- Enum all UnstableAffliction Debuffs
local UnstableAfflictionDebuffs = {
  Spell(233490),
  Spell(233496),
  Spell(233497),
  Spell(233498),
  Spell(233499)
};

-- Return ActiveUAs count
local function ActiveUAs ()
  local UACount = 0
  for _, UADebuff in pairs(UnstableAfflictionDebuffs) do
    if Target:DebuffRemainsP(UADebuff) > 0 then UACount = UACount + 1 end
  end
  return UACount
end

-- "contagion"
local function Contagion()
  local MaximumDuration = 0
  for _, UADebuff in pairs(UnstableAfflictionDebuffs) do
    local UARemains = Target:DebuffRemainsP(UADebuff)
    if UARemains > MaximumDuration then
      MaximumDuration = UARemains
    end
  end
  return MaximumDuration
end

-- Register in flight spells with travel time
S.ShadowBolt:RegisterInFlight()
S.SeedofCorruption:RegisterInFlight()
S.ConcentratedFlame:RegisterInFlight()

--- ======= ACTION LISTS =======
local function APL()
--[[ check if our Helper HeroAPI.lua works
	if true then 
		HR.Cast(S.RushingJadeWind) 
		return true 
	end
]]	
    -- Unit Update & Local functions remap
    EnemiesCount = GetEnemiesCount(10)
    HL.GetEnemies(40, true) -- To populate Cache.Enemies[40] for CastCycles
    time_to_shard = TimeToShard()
    contagion = Contagion()

    -- Misc
    local BrewMaxCharge = 3 + (S.LightBrewing:IsAvailable() and 1 or 0);
    local IronskinDuration = 7;
    local IsTanking = Player:IsTankingAoE(8) or Player:IsTanking(Target);

    local function Precombat()
        -- flask
        -- food
        -- augmentation
        -- summon_pet
        if S.SummonPet:IsCastableP() then
            if HR.Cast(S.SummonPet, true) then return "summon_pet 3"; end
        end
        -- grimoire_of_sacrifice,if=talent.grimoire_of_sacrifice.enabled
        if S.GrimoireofSacrifice:IsCastableP() and Player:BuffDownP(S.GrimoireofSacrificeBuff) and (S.GrimoireofSacrifice:IsAvailable()) then
            if HR.Cast(S.GrimoireofSacrifice, true) then return "grimoire_of_sacrifice 5"; end
        end
        -- TODO Check for valid target
        --if TargetIsValid() then
            -- potion
            if I.PotionofUnbridledFury:IsReady() and Settings.Commons.UsePotions then
                if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 14"; end
            end
            -- use_item,name=azsharas_font_of_power
            -- Using main icon, since only Haunt will be suggested precombat if equipped and that's optional
            if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() then
                if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 15"; end
            end
            -- seed_of_corruption,if=spell_targets.seed_of_corruption_aoe>=3&!equipped.169314
            if S.SeedofCorruption:IsCastableP() and Player:DebuffDownP(S.SeedofCorruptionDebuff) and (EnemiesCount >= 3 and not I.AzsharasFontofPower:IsEquipped()) then
                if HR.Cast(S.SeedofCorruption) then return "seed_of_corruption 16"; end
            end
            -- haunt
            if S.Haunt:IsCastableP() and Player:DebuffDownP(S.HauntDebuff) then
                if HR.Cast(S.Haunt) then return "haunt 20"; end
            end
            -- shadow_bolt,if=!talent.haunt.enabled&spell_targets.seed_of_corruption_aoe<3&!equipped.169314
            if S.ShadowBolt:IsCastableP() and (not S.Haunt:IsAvailable() and EnemiesCount < 3 and not I.AzsharasFontofPower:IsEquipped()) then
                if HR.Cast(S.ShadowBolt) then return "shadow_bolt 24"; end
            end
	  --end
    end
  local function Defensives()
    -- ironskin_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2&!buff.ironskin_brew.up
    -- ironskin_brew,if=cooldown.brews.charges_fractional>1&cooldown.black_ox_brew.remains<3
    -- Note: Extra handling of the charge management only while tanking.
    --       "- (IsTanking and 1 + (Player:BuffRemains(S.IronskinBrewBuff) <= IronskinDuration * 0.5 and 0.5 or 0) or 0)"
    if S.IronskinBrew:IsCastableP() and Player:BuffDownP(S.BlackoutComboBuff)
        and S.Brews:ChargesFractional() >= BrewMaxCharge - 0.1 - (IsTanking and 1 + (Player:BuffRemains(S.IronskinBrewBuff) <= IronskinDuration * 0.5 and 0.5 or 0) or 0)
        and Player:BuffRemains(S.IronskinBrewBuff) <= IronskinDuration * 2 then
      if HR.Cast(S.IronskinBrew) then return ""; end
    end
    -- purifying_brew,if=stagger.pct>(6*(3-(cooldown.brews.charges_fractional)))&(stagger.last_tick_damage_1>((0.02+0.001*(3-cooldown.brews.charges_fractional))*stagger.last_tick_damage_30))
    if S.PurifyingBrew:IsCastableP() and ShouldPurify() then
      if HR.Cast(S.PurifyingBrew) then return ""; end
    end
    -- BlackoutCombo Stagger Pause w/ Ironskin Brew
    if S.IronskinBrew:IsCastableP() and Player:BuffP(S.BlackoutComboBuff) and Player:HealingAbsorbed() and ShouldPurify() then
      if HR.Cast(S.IronskinBrew) then return ""; end
    end
  end

  --- In Combat
  if true then
    -- Interrupts
    -- Defensives
    if IsTanking then
      ShouldReturn = Defensives(); if ShouldReturn then return ShouldReturn; end
    end
    -- blood_fury
    if S.BloodFury:IsCastableP() and HR.CDsON() then
      if HR.Cast(S.BloodFury) then return ""; end
    end
    -- berserking
    if S.Berserking:IsCastableP() and HR.CDsON() then
      if HR.Cast(S.Berserking) then return ""; end
    end
    -- lights_judgment
    -- fireblood
    -- ancestral_call
    -- invoke_niuzao_the_black_ox
    if S.InvokeNiuzaotheBlackOx:IsCastableP(40) and HR.CDsON() and Target:TimeToDie() > 25 then
      if HR.Cast(S.InvokeNiuzaotheBlackOx) then return ""; end
    end
    -- black_ox_brew,if=cooldown.brews.charges_fractional<0.5
    if S.BlackOxBrew:IsCastableP() and S.Brews:ChargesFractional() <= 0.5 then
      if HR.Cast(S.BlackOxBrew) then return ""; end
    end
    -- black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up
    if S.BlackOxBrew:IsCastableP() and (Player:Energy() + (Player:EnergyRegen() * S.KegSmash:CooldownRemainsP())) < 40 and Player:BuffDownP(S.BlackoutComboBuff) and S.KegSmash:CooldownUpP() then
      if S.Brews:Charges() >= 2 and Player:StaggerPercentage() >= 1 then
        HR.Cast(S.IronskinBrew, ForceOffGCD);
        HR.Cast(S.PurifyingBrew, ForceOffGCD);
        if HR.Cast(S.BlackOxBrew) then return ""; end
      else
        if S.Brews:Charges() >= 1 then HR.Cast(S.IronskinBrew, ForceOffGCD); end
        if HR.Cast(S.BlackOxBrew) then return ""; end
      end
    end
    -- keg_smash,if=spell_targets>=2
    if S.KegSmash:IsCastableP(25) and Cache.EnemiesCount[8] >= 2 then
      if HR.Cast(S.KegSmash) then return ""; end
    end
    -- tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up
    if S.TigerPalm:IsCastableP("Melee") and S.RushingJadeWind:IsAvailable() and Player:BuffP(S.BlackoutComboBuff) and Player:BuffP(S.RushingJadeWind) then
      if HR.Cast(S.TigerPalm) then return ""; end
    end
    -- tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled|talent.special_delivery.enabled)&buff.blackout_combo.up
    if S.TigerPalm:IsCastableP("Melee") and (S.InvokeNiuzaotheBlackOx:IsAvailable() or S.SpecialDelivery:IsAvailable()) and Player:BuffP(S.BlackoutComboBuff) then
      if HR.Cast(S.TigerPalm) then return ""; end
    end
    -- blackout_strike
    if S.BlackoutStrike:IsCastableP("Melee") then
      if HR.Cast(S.BlackoutStrike) then return ""; end
    end
    -- keg_smash
    if S.KegSmash:IsCastableP(25) then
      if HR.Cast(S.KegSmash) then return ""; end
    end
    -- rushing_jade_wind,if=buff.rushing_jade_wind.down
    if S.RushingJadeWind:IsCastableP() and Player:BuffDownP(S.RushingJadeWind) then
      if HR.Cast(S.RushingJadeWind) then return ""; end
    end
    -- breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down|(buff.bloodlust.up&&dot.breath_of_fire_dot.refreshable))
    if S.BreathofFire:IsCastableP(10, true) and (Player:BuffDownP(S.BlackoutComboBuff) and (Player:HasNotHeroism() or (Player:HasHeroism() and true and Target:DebuffRefreshableCP(S.BreathofFireDotDebuff)))) then
      if HR.Cast(S.BreathofFire) then return ""; end
    end
    -- chi_burst
    if S.ChiBurst:IsCastableP(10) then
      if HR.Cast(S.ChiBurst) then return ""; end
    end
    -- chi_wave
    if S.ChiWave:IsCastableP(25) then
      if HR.Cast(S.ChiWave) then return ""; end
    end
    -- tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65
    if S.TigerPalm:IsCastableP("Melee") and (not S.BlackoutCombo:IsAvailable() and S.KegSmash:CooldownRemainsP() > Player:GCD() and (Player:Energy() + (Player:EnergyRegen() * (S.KegSmash:CooldownRemainsP() + Player:GCD()))) >= 65) then
      if HR.Cast(S.TigerPalm) then return ""; end
    end
    -- arcane_torrent,if=energy<31
    if HR.CDsON() and S.ArcaneTorrent:IsCastableP() and Player:Energy() < 31 then
      if HR.Cast(S.ArcaneTorrent) then return ""; end
    end
    -- rushing_jade_wind
    if S.RushingJadeWind:IsCastableP() then
      if HR.Cast(S.RushingJadeWind) then return ""; end
    end
	
    -- downtime energy pooling
    --if HR.Cast(S.PoolEnergy) then return "Pool Energy"; end
  end
end
-- Finished



-----------------------------------------
-- 				ROTATION  
-----------------------------------------
function Env.AutoPurify()
	-- Using by Dynamic bar also
	local lvl = BrewmasterTools.GetStaggerLevel()
	if (lvl > 1 and lvl < 3 and BrewmasterTools.GetStaggerProgress() > 80) or (lvl == 3 and BrewmasterTools.GetStaggerProgress() > 70) or (lvl == 4 and BrewmasterTools.GetStaggerProgress() > 50) or lvl > 4 then 
		return true, lvl
	end 
	return false, -1
end 

-- [3] Single Rotation
A[3] = function(icon)
	if APL() then 
		return true 
	end 
	-- test after simcraft our api like if nothing to do
	return A.Roll:Show(icon)
end
