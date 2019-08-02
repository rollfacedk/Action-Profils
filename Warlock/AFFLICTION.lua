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

    --    LegSweepGreen                         = Action.Create({ Type = "SpellSingleColor", ID = 119381, Color = "GREEN", Desc = "[1] CC", QueueForbidden = true }),
    --    SpearHandStrikeGreen                 = Action.Create({ Type = "SpellSingleColor", ID = 116705, Color = "GREEN", Desc = "[2] Kick", QueueForbidden = true }),
    -- Generics Spells
    DreadfulCalling                      = Action.Create({ Type = "Spell", ID = 278727     }),
    SummonPet                            = Action.Create({ Type = "Spell", ID = 691     }),
    GrimoireofSacrificeBuff              = Action.Create({ Type = "Spell", ID = 196099     }),
    GrimoireofSacrifice                  = Action.Create({ Type = "Spell", ID = 108503     }),
    SeedofCorruption                     = Action.Create({ Type = "Spell", ID = 27243     }),
    Haunt                                = Action.Create({ Type = "Spell", ID = 48181     }),
    ShadowBolt                           = Action.Create({ Type = "Spell", ID = 232670     }),
    DarkSoulMisery                       = Action.Create({ Type = "Spell", ID = 113860     }),
    SummonDarkglare                      = Action.Create({ Type = "Spell", ID = 205180     }),
    SiphonLife                           = Action.Create({ Type = "Spell", ID = 63106     }),
    CorruptionDebuff                     = Action.Create({ Type = "Spell", ID = 146739     }),
    Agony                                = Action.Create({ Type = "Spell", ID = 980     }),
    Corruption                           = Action.Create({ Type = "Spell", ID = 172     }),
    CreepingDeath                        = Action.Create({ Type = "Spell", ID = 264000     }),
    WritheInAgony                        = Action.Create({ Type = "Spell", ID = 196102     }),
    UnstableAffliction                   = Action.Create({ Type = "Spell", ID = 30108     }),
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
	Fear                                 = Action.Create({ Type = "Spell", ID = 5782     }),
	--SeedofCorruptionDebuff               = Action.Create({ Type = "Spell", ID = 27243     }),
	--HauntDebuff                          = Action.Create({ Type = "Spell", ID = 48181     }),
	--UnstableAfflictionDebuff             = Action.Create({ Type = "Spell", ID = 30108     }),
    --PhantomSingularityDebuff             = Action.Create({ Type = "Spell", ID = 205179     }),
	--SiphonLifeDebuff                     = Action.Create({ Type = "Spell", ID = 63106     }),
    --AgonyDebuff                          = Action.Create({ Type = "Spell", ID = 980     }),
    SpellLock                            = Action.Create({ Type = "Spell", ID = 119898     }),
    DispellMagic                         = Action.Create({ Type = "Spell", ID = 111400     }),
    Shadowfury                           = Action.Create({ Type = "Spell", ID = 30283     }),
    PandemicInvocation                   = Action.Create({ Type = "Spell", ID = 289364     }),
    ShiverVenomDebuff                    = Action.Create({ Type = "Spell", ID = 301624     }),
    -- Defensive
    UnendingResolve                      = Action.Create({ Type = "Spell", ID = 104773     }),
    -- Misc
    BurningRush                          = Action.Create({ Type = "Spell", ID = 278727     }),
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
local HL         = HeroLib
local Cache      = HeroCache
local Unit       = HL.Unit
local Player     = Unit.Player
local Target     = Unit.Target
local Pet        = Unit.Pet
local Spell      = HL.Spell
local MultiSpell = HL.MultiSpell
local Item       = HL.Item
-- HeroRotation
local HR         = HeroRotation

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

UseSplashData = true
local function GetEnemiesCount(range)
    -- Unit Update - Update differently depending on if splash data is being used
    if HR.AoEON() then
        if UseSplashData then
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

-- Evaluate Target cycle functions 
local function EvaluateTargetIfFilterAgony160(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.AgonyDebuff)
end

local function EvaluateTargetIfAgony201(TargetUnit)
  return S.CreepingDeath:IsAvailable() and S.AgonyDebuff:ActiveDot() < 6 and TargetUnit:TimeToDie() > 10 and (TargetUnit:DebuffRemainsP(S.AgonyDebuff) <= Player:GCD() or S.SummonDarkglare:CooldownRemainsP() > 10 and (TargetUnit:DebuffRemainsP(S.AgonyDebuff) < 5 or not bool(S.PandemicInvocation:AzeriteRank()) and TargetUnit:DebuffRefreshableCP(S.AgonyDebuff)))
end

local function EvaluateTargetIfFilterAgony207(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.AgonyDebuff)
end

local function EvaluateTargetIfAgony248(TargetUnit)
  return not S.CreepingDeath:IsAvailable() and S.AgonyDebuff:ActiveDot() < 8 and TargetUnit:TimeToDie() > 10 and (TargetUnit:DebuffRemainsP(S.AgonyDebuff) <= Player:GCD() or S.SummonDarkglare:CooldownRemainsP() > 10 and (TargetUnit:DebuffRemainsP(S.AgonyDebuff) < 5 or not bool(S.PandemicInvocation:AzeriteRank()) and TargetUnit:DebuffRefreshableCP(S.AgonyDebuff)))
end

local function EvaluateTargetIfFilterSiphonLife254(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.SiphonLifeDebuff)
end

local function EvaluateTargetIfSiphonLife293(TargetUnit)
  return (S.SiphonLifeDebuff:ActiveDot() < 8 - num(S.CreepingDeath:IsAvailable()) - EnemiesCount) and TargetUnit:TimeToDie() > 10 and TargetUnit:DebuffRefreshableCP(S.SiphonLifeDebuff) and (TargetUnit:DebuffDownP(S.SiphonLifeDebuff) and EnemiesCount == 1 or S.SummonDarkglare:CooldownRemainsP() > Player:SoulShardsP() * S.UnstableAffliction:ExecuteTime())
end

local function EvaluateCycleCorruption300(TargetUnit)
  return EnemiesCount < 3 + num(S.WritheInAgony:IsAvailable()) and (TargetUnit:DebuffRemainsP(S.CorruptionDebuff) <= Player:GCD() or S.SummonDarkglare:CooldownRemainsP() > 10 and TargetUnit:DebuffRefreshableCP(S.CorruptionDebuff)) and TargetUnit:TimeToDie() > 10
end

local function EvaluateCycleDrainSoul479(TargetUnit)
  return TargetUnit:TimeToDie() <= Player:GCD()
end

local function EvaluateTargetIfFilterDrainSoul485(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.ShadowEmbraceDebuff)
end

local function EvaluateTargetIfDrainSoul498(TargetUnit)
  return S.ShadowEmbrace:IsAvailable() and bool(VarMaintainSe) and TargetUnit:DebuffDownP(S.ShadowEmbraceDebuff)
end

local function EvaluateTargetIfFilterDrainSoul504(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.ShadowEmbraceDebuff)
end

local function EvaluateTargetIfDrainSoul515(TargetUnit)
  return S.ShadowEmbrace:IsAvailable() and bool(VarMaintainSe)
end

local function EvaluateCycleShadowBolt524(TargetUnit)
  return S.ShadowEmbrace:IsAvailable() and bool(VarMaintainSe) and TargetUnit:DebuffDownP(S.ShadowEmbraceDebuff) and not S.ShadowBolt:InFlight()
end

local function EvaluateTargetIfFilterShadowBolt540(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.ShadowEmbraceDebuff)
end

local function EvaluateTargetIfShadowBolt551(TargetUnit)
  return S.ShadowEmbrace:IsAvailable() and bool(VarMaintainSe)
end

local function EvaluateCycleUnstableAffliction640(TargetUnit)
  return not bool(VarUseSeed) and (not S.Deathbolt:IsAvailable() or S.Deathbolt:CooldownRemainsP() > time_to_shard or Player:SoulShardsP() > 1) and (not S.VileTaint:IsAvailable() or Player:SoulShardsP() > 1) and contagion <= S.UnstableAffliction:CastTime() + VarPadding and (not S.CascadingCalamity:AzeriteEnabled() or Player:BuffRemainsP(S.CascadingCalamityBuff) > time_to_shard)
end

local function EvaluateCycleDrainSoul711(TargetUnit)
  return TargetUnit:TimeToDie() <= Player:GCD() and Player:SoulShardsP() < 5
end

local function EvaluateTargetIfFilterAgony751(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.AgonyDebuff)
end

local function EvaluateTargetIfAgony768(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.AgonyDebuff) <= Player:GCD() + S.ShadowBolt:ExecuteTime() and TargetUnit:TimeToDie() > 8
end

local function EvaluateCycleUnstableAffliction781(TargetUnit)
  return not bool(contagion) and TargetUnit:TimeToDie() <= 8
end

local function EvaluateTargetIfFilterDrainSoul787(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.ShadowEmbraceDebuff)
end

local function EvaluateTargetIfDrainSoul802(TargetUnit)
  return S.ShadowEmbrace:IsAvailable() and bool(VarMaintainSe) and TargetUnit:DebuffP(S.ShadowEmbraceDebuff) and TargetUnit:DebuffRemainsP(S.ShadowEmbraceDebuff) <= Player:GCD() * 2
end

local function EvaluateTargetIfFilterShadowBolt808(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.ShadowEmbraceDebuff)
end

local function EvaluateTargetIfShadowBolt835(TargetUnit)
  return S.ShadowEmbrace:IsAvailable() and bool(VarMaintainSe) and TargetUnit:DebuffP(S.ShadowEmbraceDebuff) and TargetUnit:DebuffRemainsP(S.ShadowEmbraceDebuff) <= S.ShadowBolt:ExecuteTime() * 2 + S.ShadowBolt:TravelTime() and not S.ShadowBolt:InFlight()
end

local function EvaluateTargetIfFilterPhantomSingularity841(TargetUnit)
  return TargetUnit:TimeToDie()
end

local function EvaluateTargetIfPhantomSingularity850(TargetUnit)
  return HL.CombatTime() > 35 and TargetUnit:TimeToDie() > 16 * Player:SpellHaste() and (not S.VisionofPerfectionMinor:IsAvailable() and not bool(S.DreadfulCalling:AzeriteRank()) or S.SummonDarkglare:CooldownRemainsP() > 45 + Player:SoulShardsP() * S.DreadfulCalling:AzeriteRank() or S.SummonDarkglare:CooldownRemainsP() < 15 * Player:SpellHaste() + Player:SoulShardsP() * S.DreadfulCalling:AzeriteRank())
end

local function EvaluateTargetIfFilterVileTaint856(TargetUnit)
  return TargetUnit:TimeToDie()
end

local function EvaluateTargetIfVileTaint859(TargetUnit)
  return HL.CombatTime() > 15 and TargetUnit:TimeToDie() >= 10 and (S.SummonDarkglare:CooldownRemainsP() > 30 or S.SummonDarkglare:CooldownRemainsP() < 10 and Target:DebuffRemainsP(S.CorruptionDebuff) >= 10 and (Target:DebuffRemainsP(S.SiphonLifeDebuff) >= 10 or not S.SiphonLife:IsAvailable()))
end

local function EvaluateTargetIfFilterUnstableAffliction865(TargetUnit)
  return contagion
end

local function EvaluateTargetIfUnstableAffliction870(TargetUnit)
  return not bool(VarUseSeed) and Player:SoulShardsP() == 5
end

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
    --local BrewMaxCharge = 3 + (S.LightBrewing:IsAvailable() and 1 or 0);
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
	
	 Cooldowns = function()
    -- use_item,name=azsharas_font_of_power,if=(!talent.phantom_singularity.enabled|cooldown.phantom_singularity.remains<4*spell_haste|!cooldown.phantom_singularity.remains)&cooldown.summon_darkglare.remains<19*spell_haste+soul_shard*azerite.dreadful_calling.rank&dot.agony.remains&dot.corruption.remains&(dot.siphon_life.remains|!talent.siphon_life.enabled)
    if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and ((not S.PhantomSingularity:IsAvailable() or S.PhantomSingularity:CooldownRemainsP() < 4 * Player:SpellHaste() or S.PhantomSingularity:CooldownUpP()) and S.SummonDarkglare:CooldownRemainsP() < 19 * Player:SpellHaste() + Player:SoulShardsP() * S.DreadfulCalling:AzeriteRank() and Target:DebuffP(S.AgonyDebuff) and Target:DebuffP(S.CorruptionDebuff) and (Target:DebuffP(S.SiphonLifeDebuff) or not S.SiphonLife:IsAvailable())) then
      if HR.CastSuggested(I.AzsharasFontofPower) then return "azsharas_font_of_power 30"; end
    end
    -- potion,if=(talent.dark_soul_misery.enabled&cooldown.summon_darkglare.up&cooldown.dark_soul.up)|cooldown.summon_darkglare.up|target.time_to_die<30
    if I.PotionofUnbridledFury:IsReady() and Settings.Commons.UsePotions and ((S.DarkSoulMisery:IsAvailable() and S.SummonDarkglare:CooldownUpP() and S.DarkSoul:CooldownUpP()) or S.SummonDarkglare:CooldownUpP() or Target:TimeToDie() < 30) then
      if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 40"; end
    end
    -- use_items,if=cooldown.summon_darkglare.remains>70|time_to_die<20|((buff.active_uas.stack=5|soul_shard=0)&(!talent.phantom_singularity.enabled|cooldown.phantom_singularity.remains)&(!talent.deathbolt.enabled|cooldown.deathbolt.remains<=gcd|!cooldown.deathbolt.remains)&!cooldown.summon_darkglare.remains)
    -- fireblood,if=!cooldown.summon_darkglare.up
    if S.Fireblood:IsCastableP() and HR.CDsON() and (not S.SummonDarkglare:CooldownUpP()) then
      if HR.Cast(S.Fireblood, Settings.Commons.OffGCDasOffGCD.Racials) then return "fireblood 51"; end
    end
    -- blood_fury,if=!cooldown.summon_darkglare.up
    if S.BloodFury:IsCastableP() and HR.CDsON() and (not S.SummonDarkglare:CooldownUpP()) then
      if HR.Cast(S.BloodFury, Settings.Commons.OffGCDasOffGCD.Racials) then return "blood_fury 55"; end
    end
    -- memory_of_lucid_dreams,if=time>30
    if S.MemoryofLucidDreams:IsCastableP() and (HL.CombatTime() > 30) then
      if HR.Cast(S.MemoryofLucidDreams, Settings.Affliction.GCDasOffGCD.Essences) then return "memory_of_lucid_dreams 59"; end
    end
    -- dark_soul,if=target.time_to_die<20+gcd|spell_targets.seed_of_corruption_aoe>1+raid_event.invulnerable.up|talent.sow_the_seeds.enabled&cooldown.summon_darkglare.remains>=cooldown.summon_darkglare.duration-10
    if S.DarkSoul:IsReadyP() and (Target:TimeToDie() < 20 + Player:GCD() or EnemiesCount > 1 or S.SowtheSeeds:IsAvailable() and S.SummonDarkglare:CooldownRemainsP() >= S.SummonDarkglare:BaseDuration() - 10) then
      if HR.Cast(S.DarkSoul) then return "dark_soul 60"; end
    end
    -- blood_of_the_enemy,if=pet.darkglare.remains|(!cooldown.deathbolt.remains|!talent.deathbolt.enabled)&cooldown.summon_darkglare.remains>=80&essence.blood_of_the_enemy.rank>1
    if S.BloodoftheEnemy:IsCastableP() and (S.SummonDarkglare:CooldownRemainsP() > 160 or (S.Deathbolt:CooldownUpP() or not S.Deathbolt:IsAvailable()) and S.SummonDarkglare:CooldownRemainsP() >= 80 and not S.BloodoftheEnemy:ID() == 297108) then
      if HR.Cast(S.BloodoftheEnemy, Settings.Affliction.GCDasOffGCD.Essences) then return "blood_of_the_enemy 61"; end
    end
    -- use_item,name=pocketsized_computation_device,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
    if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
      if HR.CastSuggested(I.PocketsizedComputationDevice) then return "pocketsized_computation_device 50"; end
    end
    -- use_item,name=rotcrusted_voodoo_doll,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
    if I.RotcrustedVoodooDoll:IsEquipped() and I.RotcrustedVoodooDoll:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
      if HR.CastSuggested(I.RotcrustedVoodooDoll) then return "rotcrusted_voodoo_doll"; end
    end
    -- use_item,name=shiver_venom_relic,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
    if I.ShiverVenomRelic:IsEquipped() and I.ShiverVenomRelic:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
      if HR.CastSuggested(I.ShiverVenomRelic) then return "shiver_venom_relic"; end
    end
    -- use_item,name=aquipotent_nautilus,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
    if I.AquipotentNautilus:IsEquipped() and I.AquipotentNautilus:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
      if HR.CastSuggested(I.AquipotentNautilus) then return "aquipotent_nautilus"; end
    end
    -- use_item,name=tidestorm_codex,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
    if I.TidestormCodex:IsEquipped() and I.TidestormCodex:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
      if HR.CastSuggested(I.TidestormCodex) then return "tidestorm_codex"; end
    end
    -- use_item,name=vial_of_storms,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
    if I.VialofStorms:IsEquipped() and I.VialofStorms:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
      if HR.CastSuggested(I.VialofStorms) then return "vial_of_storms"; end
    end
    -- worldvein_resonance,if=buff.lifeblood.stack<3
    if S.WorldveinResonance:IsCastableP() and (Player:BuffStackP(S.LifebloodBuff) < 3) then
      if HR.Cast(S.WorldveinResonance, Settings.Affliction.GCDasOffGCD.Essences) then return "worldvein_resonance 63"; end
    end
    -- ripple_in_space
    if S.RippleInSpace:IsCastableP() then
      if HR.Cast(S.RippleInSpace, Settings.Affliction.GCDasOffGCD.Essences) then return "ripple_in_space 67"; end
    end
  end
    
    --- In Combat
    if true then
        return
    end
end
-- Finished



-----------------------------------------
--                 ROTATION  
-----------------------------------------

-- [3] Single Rotation
A[3] = function(icon)
    if APL() then 
        return true 
    end 
    -- test after simcraft our api like if nothing to do
    --return A.Roll:Show(icon)
end

