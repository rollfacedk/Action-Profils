--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

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
    -- Generics Spells
    DreadfulCalling                      = Action.Create({ Type = "Spell", ID = 278727     }),
    --SummonPet                            = Action.Create({ Type = "Spell", ID = 691     }),
    SummonImp                            = Action.Create({ Type = "Spell", ID = 688     }),    
    SummonVoidwalker                     = Action.Create({ Type = "Spell", ID = 697     }),
    SummonFelhunter                      = Action.Create({ Type = "Spell", ID = 691     }),
    SummonSuccubus                       = Action.Create({ Type = "Spell", ID = 712     }),
    GrimoireofSacrifice                  = Action.Create({ Type = "Spell", ID = 108503     }),
    SeedofCorruption                     = Action.Create({ Type = "Spell", ID = 27243     }),
    Haunt                                = Action.Create({ Type = "Spell", ID = 48181     }),
    ShadowBolt                           = Action.Create({ Type = "Spell", ID = 232670     }),
    DarkSoulMisery                       = Action.Create({ Type = "Spell", ID = 113860     }),
    SummonDarkglare                      = Action.Create({ Type = "Spell", ID = 205180     }),
    SiphonLife                           = Action.Create({ Type = "Spell", ID = 63106     }),
    Agony                                = Action.Create({ Type = "Spell", ID = 980     }),
    Corruption                           = Action.Create({ Type = "Spell", ID = 172     }),
    CreepingDeath                        = Action.Create({ Type = "Spell", ID = 264000     }),
    WritheInAgony                        = Action.Create({ Type = "Spell", ID = 196102     }),
    UnstableAffliction                   = Action.Create({ Type = "Spell", ID = 30108     }),
    Deathbolt                            = Action.Create({ Type = "Spell", ID = 264106     }),
    AbsoluteCorruption                   = Action.Create({ Type = "Spell", ID = 196103     }),
    DrainLife                            = Action.Create({ Type = "Spell", ID = 234153     }),
    PhantomSingularity                   = Action.Create({ Type = "Spell", ID = 205179     }),
    VileTaint                            = Action.Create({ Type = "Spell", ID = 278350     }),
    DrainSoul                            = Action.Create({ Type = "Spell", ID = 198590     }),
    ShadowEmbrace                        = Action.Create({ Type = "Spell", ID = 32388     }),
    CascadingCalamity                    = Action.Create({ Type = "Spell", ID = 275372     }),
    SowtheSeeds                          = Action.Create({ Type = "Spell", ID = 196226     }),
    Fear                                 = Action.Create({ Type = "Spell", ID = 5782     }),
    SpellLock                            = Action.Create({ Type = "Spell", ID = 119898     }),
    DispellMagic                         = Action.Create({ Type = "Spell", ID = 111400     }),
    Shadowfury                           = Action.Create({ Type = "Spell", ID = 30283     }),
    PandemicInvocation                   = Action.Create({ Type = "Spell", ID = 289364     }),
    -- Defensive
    UnendingResolve                      = Action.Create({ Type = "Spell", ID = 104773     }),
    -- Misc
    BurningRush                          = Action.Create({ Type = "Spell", ID = 278727     }),
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    -- Buffs
    GrimoireofSacrificeBuff              = Action.Create({ Type = "Spell", ID = 196099, Hidden = true     }),
    ActiveUasBuff                        = Action.Create({ Type = "Spell", ID = 233490, Hidden = true     }),
    InevitableDemiseBuff                 = Action.Create({ Type = "Spell", ID = 273525, Hidden = true     }),
    NightfallBuff                        = Action.Create({ Type = "Spell", ID = 264571, Hidden = true     }),
    CascadingCalamityBuff                = Action.Create({ Type = "Spell", ID = 275378, Hidden = true     }),
    WrackingBrillianceBuff               = Action.Create({ Type = "Spell", ID = 272891, Hidden = true    }),
    -- Debuffs 
    ShadowEmbraceDebuff                  = Action.Create({ Type = "Spell", ID = 32390, Hidden = true     }),
    ShiverVenomDebuff                    = Action.Create({ Type = "Spell", ID = 301624, Hidden = true     }),
    SeedofCorruptionDebuff               = Action.Create({ Type = "Spell", ID = 27243, Hidden = true}),
    HauntDebuff                          = Action.Create({ Type = "Spell", ID = 48181, Hidden = true}),
    UnstableAfflictionDebuff             = Action.Create({ Type = "Spell", ID = 30108, Hidden = true}),
    PhantomSingularityDebuff             = Action.Create({ Type = "Spell", ID = 205179, Hidden = true}),
    SiphonLifeDebuff                     = Action.Create({ Type = "Spell", ID = 63106, Hidden = true}),
    AgonyDebuff                          = Action.Create({ Type = "Spell", ID = 980, Hidden = true}),
    CorruptionDebuff                     = Action.Create({ Type = "Spell", ID = 146739, Hidden = true     }),
    -- Trinkets
    TrinketTest                          = Action.Create({ Type = "Trinket", ID = 122530, QueueForbidden = true }),
    TrinketTest2                         = Action.Create({ Type = "Trinket", ID = 159611, QueueForbidden = true }), 
    AzsharasFontofPower                  = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    PocketsizedComputationDevice         = Action.Create({ Type = "Trinket", ID = 167555 }),
    RotcrustedVoodooDoll                 = Action.Create({ Type = "Trinket", ID = 159624, QueueForbidden = true }),
    ShiverVenomRelic                     = Action.Create({ Type = "Trinket", ID = 168905, QueueForbidden = true }),
    AquipotentNautilus                   = Action.Create({ Type = "Trinket", ID = 169305, QueueForbidden = true }),
    TidestormCodex                       = Action.Create({ Type = "Trinket", ID = 165576, QueueForbidden = true }),
    VialofStorms                         = Action.Create({ Type = "Trinket", ID = 158224, QueueForbidden = true }),
    -- Potions
    PotionofUnbridledFury                = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
    PotionTest                           = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
  -- Misc
  CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 293491, Hidden = true}),
  -- Hidden Heart of Azeroth
  VisionofPerfectionMinor               = Action.Create({ Type = "Spell", ID = 296320, Hidden = true}),
  VisionofPerfectionMinor2              = Action.Create({ Type = "Spell", ID = 299367, Hidden = true}),
  VisionofPerfectionMinor3              = Action.Create({ Type = "Spell", ID = 299369, Hidden = true}),
  UnleashHeartOfAzeroth                 = Action.Create({ Type = "Spell", ID = 280431, Hidden = true}),
  BloodoftheEnemy                       = Action.Create({ Type = "HeartOfAzeroth", ID = 297108, Hidden = true}),
  BloodoftheEnemy2                      = Action.Create({ Type = "HeartOfAzeroth", ID = 298273, Hidden = true}),
  BloodoftheEnemy3                      = Action.Create({ Type = "HeartOfAzeroth", ID = 298277, Hidden = true}),
  ConcentratedFlame                     = Action.Create({ Type = "HeartOfAzeroth", ID = 295373, Hidden = true}),
  ConcentratedFlame2                    = Action.Create({ Type = "HeartOfAzeroth", ID = 299349, Hidden = true}),
  ConcentratedFlame3                    = Action.Create({ Type = "HeartOfAzeroth", ID = 299353, Hidden = true}),
  GuardianofAzeroth                     = Action.Create({ Type = "HeartOfAzeroth", ID = 295840, Hidden = true}),
  GuardianofAzeroth2                    = Action.Create({ Type = "HeartOfAzeroth", ID = 299355, Hidden = true}),
  GuardianofAzeroth3                    = Action.Create({ Type = "HeartOfAzeroth", ID = 295840, Hidden = true}),
  FocusedAzeriteBeam                    = Action.Create({ Type = "HeartOfAzeroth", ID = 295258, Hidden = true}),
  FocusedAzeriteBeam2                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299336, Hidden = true}),
  FocusedAzeriteBeam3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299338, Hidden = true}),
  PurifyingBlast                        = Action.Create({ Type = "HeartOfAzeroth", ID = 295337, Hidden = true}),
  PurifyingBlast2                       = Action.Create({ Type = "HeartOfAzeroth", ID = 299345, Hidden = true}),
  PurifyingBlast3                       = Action.Create({ Type = "HeartOfAzeroth", ID = 299347, Hidden = true}),
  TheUnboundForce                       = Action.Create({ Type = "HeartOfAzeroth", ID = 298452, Hidden = true}),
  TheUnboundForce2                      = Action.Create({ Type = "HeartOfAzeroth", ID = 299376, Hidden = true}),
  TheUnboundForce3                      = Action.Create({ Type = "HeartOfAzeroth", ID = 299378, Hidden = true}),
  RippleInSpace                         = Action.Create({ Type = "HeartOfAzeroth", ID = 302731, Hidden = true}),
  RippleInSpace2                        = Action.Create({ Type = "HeartOfAzeroth", ID = 302982, Hidden = true}),
  RippleInSpace3                        = Action.Create({ Type = "HeartOfAzeroth", ID = 302983, Hidden = true}),
  WorldveinResonance                    = Action.Create({ Type = "HeartOfAzeroth", ID = 295186, Hidden = true}),
  WorldveinResonance2                   = Action.Create({ Type = "HeartOfAzeroth", ID = 298628, Hidden = true}),
  WorldveinResonance3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299334, Hidden = true}),
  MemoryofLucidDreams                   = Action.Create({ Type = "HeartOfAzeroth", ID = 298357, Hidden = true}),
  MemoryofLucidDreams2                  = Action.Create({ Type = "HeartOfAzeroth", ID = 299372, Hidden = true}),
  MemoryofLucidDreams3                  = Action.Create({ Type = "HeartOfAzeroth", ID = 299374, Hidden = true}),
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
local Item       = HL.Item
-- HeroRotation
local HR         = HeroRotation

---------------------------
-- PORT TO ACTION 
local S, I = A:HeroCreate()
Action.HeroSetHookAllTable(S, {
        [3] = "TellMeWhen_Group4_Icon3",
        [4] = "TellMeWhen_Group4_Icon4",
})
Action.HeroSetHookAllTable(I, {
        [3] = "TellMeWhen_Group4_Icon3",
        [4] = "TellMeWhen_Group4_Icon4",
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

local function HandlePetChoice()
    local choice = Action.GetToggle(2, "PetChoice")
    local currentspell = "Spell(688)"
    
    if choice == "IMP" then
        --print("IMP")
        currentspell = "Spell(688)"    
    elseif choice == "VOIDWALKER" then
        --print("VOIDWALKER")
        currentspell = "Spell(697)"
    elseif choice == "FELHUNTER" then 
        --print("FELHUNTER")    
        currentspell = "Spell(691)"
    elseif choice == "SUCCUBUS" then 
        --print("SUCCUBUS")    
        currentspell = "Spell(712)"
    else
        print("No Pet Data")
    end
    return choice
end

local function DetermineEssenceRanks()
    S.BloodoftheEnemy = S.BloodoftheEnemy2:IsAvailable() and S.BloodoftheEnemy2 or S.BloodoftheEnemy
    S.BloodoftheEnemy = S.BloodoftheEnemy3:IsAvailable() and S.BloodoftheEnemy3 or S.BloodoftheEnemy
    S.MemoryofLucidDreams = S.MemoryofLucidDreams2:IsAvailable() and S.MemoryofLucidDreams2 or S.MemoryofLucidDreams
    S.MemoryofLucidDreams = S.MemoryofLucidDreams3:IsAvailable() and S.MemoryofLucidDreams3 or S.MemoryofLucidDreams
    S.PurifyingBlast = S.PurifyingBlast2:IsAvailable() and S.PurifyingBlast2 or S.PurifyingBlast
    S.PurifyingBlast = S.PurifyingBlast3:IsAvailable() and S.PurifyingBlast3 or S.PurifyingBlast
    S.RippleInSpace = S.RippleInSpace2:IsAvailable() and S.RippleInSpace2 or S.RippleInSpace
    S.RippleInSpace = S.RippleInSpace3:IsAvailable() and S.RippleInSpace3 or S.RippleInSpace
    S.ConcentratedFlame = S.ConcentratedFlame2:IsAvailable() and S.ConcentratedFlame2 or S.ConcentratedFlame
    S.ConcentratedFlame = S.ConcentratedFlame3:IsAvailable() and S.ConcentratedFlame3 or S.ConcentratedFlame
    S.TheUnboundForce = S.TheUnboundForce2:IsAvailable() and S.TheUnboundForce2 or S.TheUnboundForce
    S.TheUnboundForce = S.TheUnboundForce3:IsAvailable() and S.TheUnboundForce3 or S.TheUnboundForce
    S.WorldveinResonance = S.WorldveinResonance2:IsAvailable() and S.WorldveinResonance2 or S.WorldveinResonance
    S.WorldveinResonance = S.WorldveinResonance3:IsAvailable() and S.WorldveinResonance3 or S.WorldveinResonance
    S.FocusedAzeriteBeam = S.FocusedAzeriteBeam2:IsAvailable() and S.FocusedAzeriteBeam2 or S.FocusedAzeriteBeam
    S.FocusedAzeriteBeam = S.FocusedAzeriteBeam3:IsAvailable() and S.FocusedAzeriteBeam3 or S.FocusedAzeriteBeam
    S.VisionofPerfectionMinor = S.VisionofPerfectionMinor2:IsAvailable() and S.VisionofPerfectionMinor2 or S.VisionofPerfectionMinor
    S.VisionofPerfectionMinor = S.VisionofPerfectionMinor3:IsAvailable() and S.VisionofPerfectionMinor3 or S.VisionofPerfectionMinor
    S.GuardianofAzeroth = S.GuardianofAzeroth2:IsAvailable() and S.GuardianofAzeroth2 or S.GuardianofAzeroth
    S.GuardianofAzeroth = S.GuardianofAzeroth3:IsAvailable() and S.GuardianofAzeroth3 or S.GuardianofAzeroth
end

UseSplashData = true


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

-- Call Ashvane mythic burst on first P2 (If your guild is doing it this way)
-- Here is a call to stack 5 shards around 60sec to get ready to use all the burst when the shield is gone
-- TODO: replace the CombatTime by Ashvane shield buff TimeToDie 
local function PrepareAshvaneBurst()
    -- Ashvane Mythic  
    -- Ashvane 153142 Dummies:144086    
    if not Action.GetToggle(2, "CDs") and Player:InstanceDifficulty() == 16 and Target:NPCID() == 152236 
    -- Need around 45sec to get to 5shards...
    and HL.CombatTime() > 35 then
        return true
    end
    return false
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
    return EnemiesCount < 3 + num(S.WritheInAgony:IsAvailable()) and (TargetUnit:DebuffRemainsP(S.CorruptionDebuff) <= Player:GCD() or S.SummonDarkglare:CooldownRemainsP() > 10 and TargetUnit:DebuffRemainsP(S.CorruptionDebuff) <= 4) and TargetUnit:TimeToDie() > 10
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
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    EnemiesCount = active_enemies()
    HL.GetEnemies(40, true) -- To populate Cache.Enemies[40] for CastCycles
    time_to_shard = TimeToShard()
    contagion = Contagion()
    DetermineEssenceRanks()
    HandlePetChoice()
	
	if Player:IsCasting() or Player:IsChanneling() then
	    ShouldStop = true
	else
	    ShouldStop = false
	end
    
	-- Pet Selection Menu
    local PetSpell = HandlePetChoice()    
    if PetSpell == "IMP" then
        --print("IMP")
        SummonPet = S.SummonImp    
    elseif PetSpell == "VOIDWALKER" then
        --print("VOIDWALKER")
        SummonPet = S.SummonVoidwalker
    elseif PetSpell == "FELHUNTER" then 
        --print("FELHUNTER")    
        SummonPet = S.SummonFelhunter
    elseif PetSpell == "SUCCUBUS" then 
        --print("SUCCUBUS")    
        SummonPet = S.SummonSuccubus
    else
        print("No Pet Data") 
    end	
	
	
	local function Precombat_DBM()
        -- summon_pet
        if SummonPet:IsCastableP() and not ShouldStop and (not Player:IsMoving()) and not Player:ShouldStopCasting() and not Pet:IsActive() and (not bool(Player:BuffRemainsP(S.GrimoireofSacrificeBuff)))  then
            if HR.Cast(SummonPet, true) then return "summon_pet 3"; end
        end
        -- grimoire_of_sacrifice,if=talent.grimoire_of_sacrifice.enabled
        if S.GrimoireofSacrifice:IsCastableP() and not ShouldStop and Player:BuffDownP(S.GrimoireofSacrificeBuff) and (S.GrimoireofSacrifice:IsAvailable()) then
            if HR.Cast(S.GrimoireofSacrifice, true) then return "grimoire_of_sacrifice 5"; end
         end
        -- snapshot_stats
        -- pre potion haunt
        if I.PotionofUnbridledFury:IsReady() and not ShouldStop and S.Haunt:IsAvailable() and Action.GetToggle(1, "Potion") and Pull > S.Haunt:ExecuteTime() + 1 and Pull <= S.Haunt:ExecuteTime() + 2 then
            if HR.Cast(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 14"; end
        end
        -- pre potion no haunt
        if I.PotionofUnbridledFury:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") and not S.Haunt:IsAvailable() and Pull > S.Haunt:ExecuteTime() + 1 and Pull <= S.ShadowBolt:ExecuteTime() + 2 then
            if HR.Cast(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 14"; end
        end
        -- haunt
        if S.Haunt:IsCastableP() and not ShouldStop and not Player:IsMoving() and Pull > 0.1 and Pull <= S.Haunt:ExecuteTime() + 0.05 and (not Player:IsMoving()) and not Player:ShouldStopCasting() and Player:DebuffDownP(S.HauntDebuff) then
            if HR.Cast(S.Haunt) then return "haunt 20"; end
        end
        -- shadow_bolt,if=!talent.haunt.enabled&spell_targets.seed_of_corruption_aoe<3
        if S.ShadowBolt:IsCastableP() and not ShouldStop and Pull > 0.1 and Pull <= S.ShadowBolt:ExecuteTime() and (not Player:IsMoving()) and not Player:ShouldStopCasting() and (not S.Haunt:IsAvailable() and active_enemies() < 3) then
            if HR.Cast(S.ShadowBolt) then return "shadow_bolt 24"; end
        end
        return 0, 462338
    end
    
    local function Precombat()
        -- flask
        -- food
        -- augmentation
        -- summon_pet
        if SummonPet:IsCastableP() and not ShouldStop and not Pet:Exists() then
            if HR.Cast(SummonPet, true) then return "summon_pet 3"; end
        end
        -- grimoire_of_sacrifice,if=talent.grimoire_of_sacrifice.enabled
        if S.GrimoireofSacrifice:IsCastableP() and not ShouldStop and Player:BuffDownP(S.GrimoireofSacrificeBuff) and (S.GrimoireofSacrifice:IsAvailable()) then
            if HR.Cast(S.GrimoireofSacrifice, true) then return "grimoire_of_sacrifice 5"; end
        end
        -- TODO Check for valid target
        --if TargetIsValid() then
        -- use_item,name=azsharas_font_of_power
        -- Using main icon, since only Haunt will be suggested precombat if equipped and that's optional
        if I.AzsharasFontofPower:IsEquipped() and not ShouldStop and I.AzsharasFontofPower:IsReady() then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 15"; end
        end
        -- seed_of_corruption,if=spell_targets.seed_of_corruption_aoe>=3&!equipped.169314
        if S.SeedofCorruption:IsCastableP() and not ShouldStop and Action.GetToggle(2, "AoE") and Player:DebuffDownP(S.SeedofCorruptionDebuff) and (EnemiesCount >= 3 and not I.AzsharasFontofPower:IsEquipped()) then
            if HR.Cast(S.SeedofCorruption) then return "seed_of_corruption 16"; end
        end
        -- haunt
        if S.Haunt:IsCastableP() and not ShouldStop and Player:DebuffDownP(S.HauntDebuff) then
            if HR.Cast(S.Haunt) then return "haunt 20"; end
        end
        -- shadow_bolt,if=!talent.haunt.enabled&spell_targets.seed_of_corruption_aoe<3&!equipped.169314
        if S.ShadowBolt:IsCastableP() and not ShouldStop and (not S.Haunt:IsAvailable() and EnemiesCount < 3 and not I.AzsharasFontofPower:IsEquipped()) then
            if HR.Cast(S.ShadowBolt) then return "shadow_bolt 24"; end
        end
        --end
    end
    
    local function Cooldowns()
        -- use_item,name=azsharas_font_of_power,if=(!talent.phantom_singularity.enabled|cooldown.phantom_singularity.remains<4*spell_haste|!cooldown.phantom_singularity.remains)&cooldown.summon_darkglare.remains<19*spell_haste+soul_shard*azerite.dreadful_calling.rank&dot.agony.remains&dot.corruption.remains&(dot.siphon_life.remains|!talent.siphon_life.enabled)
        if I.AzsharasFontofPower:IsEquipped() and not ShouldStop and I.AzsharasFontofPower:IsReady() and ((not S.PhantomSingularity:IsAvailable() or S.PhantomSingularity:CooldownRemainsP() < 4 * Player:SpellHaste() or S.PhantomSingularity:CooldownUpP()) and S.SummonDarkglare:CooldownRemainsP() < 19 * Player:SpellHaste() + Player:SoulShardsP() * S.DreadfulCalling:AzeriteRank() and Target:DebuffP(S.AgonyDebuff) and Target:DebuffP(S.CorruptionDebuff) and (Target:DebuffP(S.SiphonLifeDebuff) or not S.SiphonLife:IsAvailable())) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 30"; end
        end
        -- potion,if=(talent.dark_soul_misery.enabled&cooldown.summon_darkglare.up&cooldown.dark_soul.up)|cooldown.summon_darkglare.up|target.time_to_die<30
        if I.PotionofUnbridledFury:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") and ((S.DarkSoulMisery:IsAvailable() and S.SummonDarkglare:CooldownUpP() and S.DarkSoulMisery:CooldownUpP()) or S.SummonDarkglare:CooldownUpP() or Target:TimeToDie() < 30) then
            if HR.Cast(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 40"; end
        end
        -- use_items,if=cooldown.summon_darkglare.remains>70|time_to_die<20|((buff.active_uas.stack=5|soul_shard=0)&(!talent.phantom_singularity.enabled|cooldown.phantom_singularity.remains)&(!talent.deathbolt.enabled|cooldown.deathbolt.remains<=gcd|!cooldown.deathbolt.remains)&!cooldown.summon_darkglare.remains)
        -- fireblood,if=!cooldown.summon_darkglare.up
        if S.Fireblood:IsCastableP() and Action.GetToggle(2, "CDs") and (not S.SummonDarkglare:CooldownUpP()) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 51"; end
        end
        -- blood_fury,if=!cooldown.summon_darkglare.up
        if S.BloodFury:IsCastableP() and Action.GetToggle(2, "CDs") and (not S.SummonDarkglare:CooldownUpP()) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 55"; end
        end
        -- memory_of_lucid_dreams,if=time>30
        if S.MemoryofLucidDreams:IsCastableP() and  Action.GetToggle(2, "CDs") and (HL.CombatTime() > 30) then
            if HR.Cast(S.UnleashHeartOfAzeroth, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- dark_soul,if=target.time_to_die<20+gcd|spell_targets.seed_of_corruption_aoe>1+raid_event.invulnerable.up|talent.sow_the_seeds.enabled&cooldown.summon_darkglare.remains>=cooldown.summon_darkglare.duration-10
        if S.DarkSoulMisery:IsReadyP() and  Action.GetToggle(2, "CDs") and (Target:TimeToDie() < 20 + Player:GCD() or EnemiesCount > 1 or S.SowtheSeeds:IsAvailable() and S.SummonDarkglare:CooldownRemainsP() >= S.SummonDarkglare:BaseDuration() - 10) then
            if HR.Cast(S.DarkSoulMisery, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- blood_of_the_enemy,if=pet.darkglare.remains|(!cooldown.deathbolt.remains|!talent.deathbolt.enabled)&cooldown.summon_darkglare.remains>=80&essence.blood_of_the_enemy.rank>1
        if S.BloodoftheEnemy:IsCastableP() and not ShouldStop and (S.SummonDarkglare:CooldownRemainsP() > 160 or (S.Deathbolt:CooldownUpP() or not S.Deathbolt:IsAvailable()) and S.SummonDarkglare:CooldownRemainsP() >= 80 and not S.BloodoftheEnemy:ID() == 297108) then
            if HR.Cast(S.UnleashHeartOfAzeroth) then return ""; end
        end
        -- use_item,name=pocketsized_computation_device,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and Action.AbsentImun(nil, unit, "DamageMagicImun") and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
            if HR.CastSuggested(I.PocketsizedComputationDevice) then return "pocketsized_computation_device 50"; end
			--return Action.MacroQueue("PocketsizedComputationDevice", { Priority = 1})
        end
        -- use_item,name=rotcrusted_voodoo_doll,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
        if I.RotcrustedVoodooDoll:IsEquipped() and not ShouldStop and I.RotcrustedVoodooDoll:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
            if HR.Cast(I.RotcrustedVoodooDoll) then return "rotcrusted_voodoo_doll"; end
        end
        -- use_item,name=shiver_venom_relic,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
        if I.ShiverVenomRelic:IsEquipped() and not ShouldStop and I.ShiverVenomRelic:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
            if HR.Cast(I.ShiverVenomRelic) then return "shiver_venom_relic"; end
        end
        -- use_item,name=aquipotent_nautilus,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
        if I.AquipotentNautilus:IsEquipped() and not ShouldStop and I.AquipotentNautilus:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
            if HR.Cast(I.AquipotentNautilus) then return "aquipotent_nautilus"; end
        end
        -- use_item,name=tidestorm_codex,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
        if I.TidestormCodex:IsEquipped() and not ShouldStop and I.TidestormCodex:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
            if HR.Cast(I.TidestormCodex) then return "tidestorm_codex"; end
        end
        -- use_item,name=vial_of_storms,if=cooldown.summon_darkglare.remains>=25&(cooldown.deathbolt.remains|!talent.deathbolt.enabled)
        if I.VialofStorms:IsEquipped() and not ShouldStop and I.VialofStorms:IsReady() and (S.SummonDarkglare:CooldownRemainsP() >= 25 and (bool(S.Deathbolt:CooldownRemainsP()) or not S.Deathbolt:IsAvailable())) then
            if HR.Cast(I.VialofStorms) then return "vial_of_storms"; end
        end
        -- worldvein_resonance,if=buff.lifeblood.stack<3
        if S.WorldveinResonance:IsCastableP() and not ShouldStop and (Player:BuffStackP(S.LifebloodBuff) < 3) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance 63"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastableP() and not ShouldStop then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space 67"; end
        end
    end
    
    local function DbRefresh()
        -- siphon_life,line_cd=15,if=(dot.siphon_life.remains%dot.siphon_life.duration)<=(dot.agony.remains%dot.agony.duration)&(dot.siphon_life.remains%dot.siphon_life.duration)<=(dot.corruption.remains%dot.corruption.duration)&dot.siphon_life.remains<dot.siphon_life.duration*1.3
        if S.SiphonLife:IsCastableP() and not ShouldStop and ((Target:DebuffRemainsP(S.SiphonLifeDebuff) / S.SiphonLifeDebuff:BaseDuration()) <= (Target:DebuffRemainsP(S.AgonyDebuff) / S.AgonyDebuff:BaseDuration()) and (Target:DebuffRemainsP(S.SiphonLifeDebuff) / S.SiphonLifeDebuff:BaseDuration()) <= (Target:DebuffRemainsP(S.CorruptionDebuff) / S.CorruptionDebuff:BaseDuration()) and Target:DebuffRemainsP(S.SiphonLifeDebuff) < S.SiphonLifeDebuff:BaseDuration() * 1.3) then
            if HR.Cast(S.SiphonLife) then return "siphon_life 69"; end
        end
        -- agony,line_cd=15,if=(dot.agony.remains%dot.agony.duration)<=(dot.corruption.remains%dot.corruption.duration)&(dot.agony.remains%dot.agony.duration)<=(dot.siphon_life.remains%dot.siphon_life.duration)&dot.agony.remains<dot.agony.duration*1.3
        if S.Agony:IsCastableP() and not ShouldStop and ((Target:DebuffRemainsP(S.AgonyDebuff) / S.AgonyDebuff:BaseDuration()) <= (Target:DebuffRemainsP(S.CorruptionDebuff) / S.CorruptionDebuff:BaseDuration()) and (Target:DebuffRemainsP(S.AgonyDebuff) / S.AgonyDebuff:BaseDuration()) <= (Target:DebuffRemainsP(S.SiphonLifeDebuff) / S.SiphonLifeDebuff:BaseDuration()) and Target:DebuffRemainsP(S.AgonyDebuff) < S.AgonyDebuff:BaseDuration() * 1.3) then
            if HR.Cast(S.Agony) then return "agony 91"; end
        end
        -- corruption,line_cd=15,if=(dot.corruption.remains%dot.corruption.duration)<=(dot.agony.remains%dot.agony.duration)&(dot.corruption.remains%dot.corruption.duration)<=(dot.siphon_life.remains%dot.siphon_life.duration)&dot.corruption.remains<dot.corruption.duration*1.3
        if S.Corruption:IsCastableP() and not S.AbsoluteCorruption:IsAvailable() and not ShouldStop and ((Target:DebuffRemainsP(S.CorruptionDebuff) / S.CorruptionDebuff:BaseDuration()) <= (Target:DebuffRemainsP(S.AgonyDebuff) / S.AgonyDebuff:BaseDuration()) and (Target:DebuffRemainsP(S.CorruptionDebuff) / S.CorruptionDebuff:BaseDuration()) <= (Target:DebuffRemainsP(S.SiphonLifeDebuff) / S.SiphonLifeDebuff:BaseDuration()) and Target:DebuffRemainsP(S.CorruptionDebuff) < S.CorruptionDebuff:BaseDuration() * 1.3) then
            if HR.Cast(S.Corruption) then return "corruption 113"; end
        end
    end
    
    
    local function Dots()
        -- seed_of_corruption,if=dot.corruption.remains<=action.seed_of_corruption.cast_time+time_to_shard+4.2*(1-talent.creeping_death.enabled*0.15)&spell_targets.seed_of_corruption_aoe>=3+raid_event.invulnerable.up+talent.writhe_in_agony.enabled&!dot.seed_of_corruption.remains&!action.seed_of_corruption.in_flight
        if S.SeedofCorruption:IsCastableP() and not ShouldStop and Action.GetToggle(2, "AoE") and (Target:DebuffRemainsP(S.CorruptionDebuff) <= S.SeedofCorruption:CastTime() + time_to_shard + 4.2 * (1 - num(S.CreepingDeath:IsAvailable()) * 0.15) and EnemiesCount >= 3 + num(S.WritheInAgony:IsAvailable()) and Target:DebuffDownP(S.SeedofCorruptionDebuff) and not S.SeedofCorruption:InFlight()) then
            if HR.Cast(S.SeedofCorruption) then return "seed_of_corruption 135"; end
        end
        -- agony,target_if=min:remains,if=talent.creeping_death.enabled&active_dot.agony<6&target.time_to_die>10&(remains<=gcd|cooldown.summon_darkglare.remains>10&(remains<5|!azerite.pandemic_invocation.rank&refreshable))
        if S.Agony:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterAgony160(Target) and EvaluateTargetIfAgony201(Target)  then
            if HR.Cast(S.Agony) then return "agony 203" end
        end
        -- agony,target_if=min:remains,if=!talent.creeping_death.enabled&active_dot.agony<8&target.time_to_die>10&(remains<=gcd|cooldown.summon_darkglare.remains>10&(remains<5|!azerite.pandemic_invocation.rank&refreshable))
        if S.Agony:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterAgony207(Target) and EvaluateTargetIfAgony248(Target) then
            if HR.Cast(S.Agony) then return "agony 250" end
        end
        -- siphon_life,target_if=min:remains,if=(active_dot.siphon_life<8-talent.creeping_death.enabled-spell_targets.sow_the_seeds_aoe)&target.time_to_die>10&refreshable&(!remains&spell_targets.seed_of_corruption_aoe=1|cooldown.summon_darkglare.remains>soul_shard*action.unstable_affliction.execute_time)
        if S.SiphonLife:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterSiphonLife254(Target) and EvaluateTargetIfSiphonLife293(Target) then
            if HR.Cast(S.SiphonLife) then return "siphon_life 295" end
        end
		-- siphon_life,line_cd=30,if=time>30&cooldown.summon_darkglare.remains<=15&equipped.169314
        if S.SiphonLife:IsCastableP() and not ShouldStop and (Target:DebuffRemainsP(S.SiphonLifeDebuff) <= 4 or Target:DebuffDownP(S.SiphonLifeDebuff)) and HL.CombatTime() < 15 then
            if HR.Cast(S.SiphonLife) then return "siphon_life 774"; end
        end
		-- corruption,cycle_targets=1,if=!prevgcd.corruption&refreshable&target.time_to_die<=5
        if S.Corruption:IsCastableP() and not ShouldStop and not S.AbsoluteCorruption:IsAvailable() and not Player:PrevGCDP(1, S.Corruption) and (Target:DebuffDownP(S.CorruptionDebuff) or Target:DebuffRemainsP(S.CorruptionDebuff) <= 4) then
		    if HR.Cast(S.Corruption) then return "corruption 318" end
        end
        -- corruption,cycle_targets=1,if=spell_targets.seed_of_corruption_aoe<3+raid_event.invulnerable.up+talent.writhe_in_agony.enabled&(remains<=gcd|cooldown.summon_darkglare.remains>10&refreshable)&target.time_to_die>10
        if S.Corruption:IsCastableP() and not S.AbsoluteCorruption:IsAvailable() and (Target:DebuffDownP(S.CorruptionDebuff) or Target:DebuffRemainsP(S.CorruptionDebuff) <= 4) and not ShouldStop and EvaluateCycleCorruption300(Target) then
            if HR.Cast(S.Corruption) then return "corruption 318" end
        end
    end
    
    
    local function Fillers()
        -- unstable_affliction,line_cd=15,if=cooldown.deathbolt.remains<=gcd*2&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&cooldown.summon_darkglare.remains>20
        if S.UnstableAffliction:IsReadyP() and not ShouldStop and S.Deathbolt:CooldownRemainsP() <= Player:GCD() * 2 and EnemiesCount == 1 and S.SummonDarkglare:CooldownRemainsP() > 20 then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 319"; end
        end
        -- unstable_affliction,line_cd=15,if=cooldown.deathbolt.remains<=gcd*2&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&cooldown.summon_darkglare.remains>20
        if not Action.GetToggle(2, "CDs") and S.UnstableAffliction:IsReadyP() and Player:SoulShardsP() >= 1 and not ShouldStop and not bool(VarUseSeed) and contagion <= S.UnstableAffliction:CastTime() + VarPadding  then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 319"; end
        end
        -- call_action_list,name=db_refresh,if=talent.deathbolt.enabled&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&(dot.agony.remains<dot.agony.duration*0.75|dot.corruption.remains<dot.corruption.duration*0.75|dot.siphon_life.remains<dot.siphon_life.duration*0.75)&cooldown.deathbolt.remains<=action.agony.gcd*4&cooldown.summon_darkglare.remains>20
        if Action.GetToggle(2, "CDs") and (S.Deathbolt:IsAvailable() and not ShouldStop and EnemiesCount == 1 and (Target:DebuffRemainsP(S.AgonyDebuff) < S.AgonyDebuff:BaseDuration() * 0.75 or Target:DebuffRemainsP(S.CorruptionDebuff) < S.CorruptionDebuff:BaseDuration() * 0.75 or Target:DebuffRemainsP(S.SiphonLifeDebuff) < S.SiphonLifeDebuff:BaseDuration() * 0.75) and S.Deathbolt:CooldownRemainsP() <= S.Agony:GCD() * 4 and S.SummonDarkglare:CooldownRemainsP() > 20) then
            local ShouldReturn = DbRefresh(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=db_refresh,if=talent.deathbolt.enabled&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&cooldown.summon_darkglare.remains<=soul_shard*action.agony.gcd+action.agony.gcd*3&(dot.agony.remains<dot.agony.duration*1|dot.corruption.remains<dot.corruption.duration*1|dot.siphon_life.remains<dot.siphon_life.duration*1)
        if Action.GetToggle(2, "CDs") and S.Deathbolt:IsAvailable() and not ShouldStop and EnemiesCount == 1 and S.SummonDarkglare:CooldownRemainsP() <= Player:SoulShardsP() * S.Agony:GCD() + S.Agony:GCD() * 3 and (Target:DebuffRemainsP(S.AgonyDebuff) < S.AgonyDebuff:BaseDuration() * 1 or Target:DebuffRemainsP(S.CorruptionDebuff) < S.CorruptionDebuff:BaseDuration() * 1 or Target:DebuffRemainsP(S.SiphonLifeDebuff) < S.SiphonLifeDebuff:BaseDuration() * 1) then
            local ShouldReturn = DbRefresh(); if ShouldReturn then return ShouldReturn; end
        end
        -- deathbolt,if=cooldown.summon_darkglare.remains>=30+gcd|cooldown.summon_darkglare.remains>140
        if S.Deathbolt:IsCastableP() and not ShouldStop and (S.SummonDarkglare:CooldownRemainsP() >= 30 + Player:GCD() or S.SummonDarkglare:CooldownRemainsP() > 140) then
            if HR.Cast(S.Deathbolt) then return "deathbolt 381"; end
        end
        -- shadow_bolt,if=buff.movement.up&buff.nightfall.remains
        if S.ShadowBolt:IsCastableP() and not ShouldStop and Player:IsMoving() and Player:BuffP(S.NightfallBuff) then
            if HR.Cast(S.ShadowBolt) then return "shadow_bolt 387"; end
        end
        -- agony,if=buff.movement.up&!(talent.siphon_life.enabled&(prev_gcd.1.agony&prev_gcd.2.agony&prev_gcd.3.agony)|prev_gcd.1.agony)
        if S.Agony:IsCastableP() and not ShouldStop and Player:IsMoving() and not (S.SiphonLife:IsAvailable() and (Player:PrevGCDP(1, S.Agony) and Player:PrevGCDP(2, S.Agony) and Player:PrevGCDP(3, S.Agony)) or Player:PrevGCDP(1, S.Agony)) then
            if HR.Cast(S.Agony) then return "agony 391"; end
        end
        -- siphon_life,if=buff.movement.up&!(prev_gcd.1.siphon_life&prev_gcd.2.siphon_life&prev_gcd.3.siphon_life)
        if S.SiphonLife:IsCastableP() and not ShouldStop and Player:IsMoving() and not (Player:PrevGCDP(1, S.SiphonLife) and Player:PrevGCDP(2, S.SiphonLife) and Player:PrevGCDP(3, S.SiphonLife)) then
            if HR.Cast(S.SiphonLife) then return "siphon_life 403"; end
        end
        -- corruption,if=buff.movement.up&!prev_gcd.1.corruption&!talent.absolute_corruption.enabled
        if S.Corruption:IsCastableP() and not ShouldStop and Player:IsMoving() and not Player:PrevGCDP(1, S.Corruption) and not S.AbsoluteCorruption:IsAvailable() then
            if HR.Cast(S.Corruption) then return "corruption 411"; end
        end
        -- corruption,if=buff.movement.up&!prev_gcd.1.corruption&!talent.absolute_corruption.enabled
        if S.Corruption:IsCastableP() and not ShouldStop and Player:IsMoving() and not Player:PrevGCDP(1, S.Corruption) and S.AbsoluteCorruption:IsAvailable() and not Target:DebuffP(S.CorruptionDebuff) then
            if HR.Cast(S.Corruption) then return "corruption 411"; end
        end
        --  drain_life,if=buff.inevitable_demise.stack>10&target.time_to_die<=10
        if S.DrainLife:IsCastableP() and not ShouldStop and Player:BuffStackP(S.InevitableDemiseBuff) > 10 and Target:TimeToDie() <= 10 then
            if HR.Cast(S.DrainLife) then return "drain_life 412"; end
        end
        -- drain_life,if=talent.siphon_life.enabled&buff.inevitable_demise.stack>=50-20*(spell_targets.seed_of_corruption_aoe-raid_event.invulnerable.up>=2)&dot.agony.remains>5*spell_haste&dot.corruption.remains>gcd&(dot.siphon_life.remains>gcd|!talent.siphon_life.enabled)&(debuff.haunt.remains>5*spell_haste|!talent.haunt.enabled)&contagion>5*spell_haste
        if S.DrainLife:IsCastableP() and not ShouldStop and S.SiphonLife:IsAvailable() and Player:BuffStackP(S.InevitableDemiseBuff) >= 50 - 20 * num(EnemiesCount >= 2) and Target:DebuffRemainsP(S.AgonyDebuff) > 5 * Player:SpellHaste() and Target:DebuffRemainsP(S.CorruptionDebuff) > Player:GCD() and (Target:DebuffRemainsP(S.SiphonLifeDebuff) > Player:GCD() or not S.SiphonLife:IsAvailable()) and (Target:DebuffRemainsP(S.HauntDebuff) > 5 * Player:SpellHaste() or not S.Haunt:IsAvailable()) and contagion > 5 * Player:SpellHaste() then
            if HR.Cast(S.DrainLife) then return "drain_life 413"; end
        end
        -- drain_life,if=talent.writhe_in_agony.enabled&buff.inevitable_demise.stack>=50-20*(spell_targets.seed_of_corruption_aoe-raid_event.invulnerable.up>=3)-5*(spell_targets.seed_of_corruption_aoe-raid_event.invulnerable.up=2)&dot.agony.remains>5*spell_haste&dot.corruption.remains>gcd&(debuff.haunt.remains>5*spell_haste|!talent.haunt.enabled)&contagion>5*spell_haste
        if S.DrainLife:IsCastableP() and not ShouldStop and S.WritheInAgony:IsAvailable() and Player:BuffStackP(S.InevitableDemiseBuff) >= 50 - 20 * num(EnemiesCount >= 3) - 5 * num(EnemiesCount == 2) and Target:DebuffRemainsP(S.AgonyDebuff) > 5 * Player:SpellHaste() and Target.DebuffRemainsP(S.CorruptionDebuff) > Player:GCD() and (Target:DebuffRemainsP(S.HauntDebuff) > 5 * Player:SpellHaste() or not S.Haunt:IsAvailable()) and contagion > 5 * Player:SpellHaste() then
            if HR.Cast(S.DrainLife) then return "drain_life 414"; end
        end
        -- drain_life,if=talent.absolute_corruption.enabled&buff.inevitable_demise.stack>=50-20*(spell_targets.seed_of_corruption_aoe-raid_event.invulnerable.up>=4)&dot.agony.remains>5*spell_haste&(debuff.haunt.remains>5*spell_haste|!talent.haunt.enabled)&contagion>5*spell_haste
        if S.DrainLife:IsCastableP() and not ShouldStop and S.AbsoluteCorruption:IsAvailable() and Player:BuffStackP(S.InevitableDemiseBuff) >= 50 - 20 * num(EnemiesCount >= 4) and Target:DebuffRemainsP(S.AgonyDebuff) > 5 * Player:SpellHaste() and (Target:DebuffRemainsP(S.HauntDebuff) > 5 * Player:SpellHaste() or not S.Haunt:IsAvailable()) and contagion > 5 * Player:SpellHaste() then
            if HR.Cast(S.DrainLife) then return "drain_life 415"; end
        end
        -- haunt
        if S.Haunt:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Haunt) then return "haunt 461"; end
        end
        -- focused_azerite_beam
        if S.FocusedAzeriteBeam:IsCastableP() and not ShouldStop then
            if HR.Cast(S.UnleashHeartOfAzeroth) then return "focused_azerite_beam 463"; end
        end
        -- purifying_blast
        if S.PurifyingBlast:IsCastableP() and not ShouldStop then
            if HR.Cast(S.UnleashHeartOfAzeroth) then return "purifying_blast 465"; end
        end
        -- concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight
        if S.ConcentratedFlame:IsCastableP() and not ShouldStop and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight()) then
            if HR.Cast(S.UnleashHeartOfAzeroth) then return "concentrated_flame 467"; end
        end
        -- drain_soul,interrupt_global=1,chain=1,interrupt=1,cycle_targets=1,if=target.time_to_die<=gcd
        if S.DrainSoul:IsCastableP() and not ShouldStop and EvaluateCycleDrainSoul479(Target) then
            if HR.Cast(S.DrainSoul) then return "drain_soul 481" end
        end
        -- drain_soul,target_if=min:debuff.shadow_embrace.remains,chain=1,interrupt_if=ticks_remain<5,interrupt_global=1,if=talent.shadow_embrace.enabled&variable.maintain_se&!debuff.shadow_embrace.remains
        if S.DrainSoul:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterDrainSoul485(Target) and EvaluateTargetIfDrainSoul498(Target) then
            if HR.Cast(S.DrainSoul) then return "drain_soul 500" end
        end
        -- drain_soul,target_if=min:debuff.shadow_embrace.remains,chain=1,interrupt_if=ticks_remain<5,interrupt_global=1,if=talent.shadow_embrace.enabled&variable.maintain_se
        if S.DrainSoul:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterDrainSoul504(Target) and EvaluateTargetIfDrainSoul515(Target) then
            if HR.Cast(S.DrainSoul) then return "drain_soul 517" end
        end
        -- drain_soul,interrupt_global=1,chain=1,interrupt=1
        if S.DrainSoul:IsCastableP() and not ShouldStop then
            if HR.Cast(S.DrainSoul) then return "drain_soul 518"; end
        end
        -- shadow_bolt,cycle_targets=1,if=talent.shadow_embrace.enabled&variable.maintain_se&!debuff.shadow_embrace.remains&!action.shadow_bolt.in_flight
        if S.ShadowBolt:IsCastableP() and not ShouldStop and EvaluateCycleShadowBolt524(Target)  then
            if HR.Cast(S.ShadowBolt) then return "shadow_bolt 536" end
        end
        -- shadow_bolt,target_if=min:debuff.shadow_embrace.remains,if=talent.shadow_embrace.enabled&variable.maintain_se
        if S.ShadowBolt:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterShadowBolt540(Target) and EvaluateTargetIfShadowBolt551(Target) then
            if HR.Cast(S.ShadowBolt) then return "shadow_bolt 553" end
        end
        -- shadow_bolt
        if S.ShadowBolt:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ShadowBolt) then return "shadow_bolt 554"; end
        end
    end
    
    
    local function Spenders()
        -- unstable_affliction,if=cooldown.summon_darkglare.remains<=soul_shard*(execute_time+azerite.dreadful_calling.rank)&(!talent.deathbolt.enabled|cooldown.deathbolt.remains<=soul_shard*execute_time)&(talent.sow_the_seeds.enabled|dot.phantom_singularity.remains|dot.vile_taint.remains)
        if S.UnstableAffliction:IsReadyP() and not ShouldStop and S.SummonDarkglare:CooldownRemainsP() <= Player:SoulShardsP() * (S.UnstableAffliction:ExecuteTime() + S.DreadfulCalling:AzeriteRank()) and (not S.Deathbolt:IsAvailable() or S.Deathbolt:CooldownRemainsP() <= Player:SoulShardsP() * S.UnstableAffliction:ExecuteTime()) and (S.SowtheSeeds:IsAvailable() or Target:DebuffP(S.PhantomSingularityDebuff) or Target:DebuffP(S.VileTaint)) then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 556"; end
        end
        -- call_action_list,name=fillers,if=(cooldown.summon_darkglare.remains<time_to_shard*(5-soul_shard)|cooldown.summon_darkglare.up)&time_to_die>cooldown.summon_darkglare.remains
        if not ShouldStop and (S.SummonDarkglare:CooldownRemainsP() < time_to_shard * (5 - Player:SoulShardsP()) or S.SummonDarkglare:CooldownUpP()) and Target:TimeToDie() > S.SummonDarkglare:CooldownRemainsP() then
            local ShouldReturn = Fillers(); if ShouldReturn then return ShouldReturn; end
        end
        -- seed_of_corruption,if=variable.use_seed
        if S.SeedofCorruption:IsCastableP() and not ShouldStop and Action.GetToggle(2, "AoE") and (bool(VarUseSeed)) then
            if HR.Cast(S.SeedofCorruption) then return "seed_of_corruption 590"; end
        end
        -- unstable_affliction,if=!variable.use_seed&!prev_gcd.1.summon_darkglare&(talent.deathbolt.enabled&cooldown.deathbolt.remains<=execute_time&!azerite.cascading_calamity.enabled|(soul_shard>=5&spell_targets.seed_of_corruption_aoe<2|soul_shard>=2&spell_targets.seed_of_corruption_aoe>=2)&target.time_to_die>4+execute_time&spell_targets.seed_of_corruption_aoe=1|target.time_to_die<=8+execute_time*soul_shard)
        if S.UnstableAffliction:IsReadyP() and not ShouldStop and not bool(VarUseSeed) and not Player:PrevGCDP(1, S.SummonDarkglare) and (S.Deathbolt:IsAvailable() and S.Deathbolt:CooldownRemainsP() <= S.UnstableAffliction:ExecuteTime() and not S.CascadingCalamity:AzeriteEnabled() or (Player:SoulShardsP() >= 5 and EnemiesCount < 2 or Player:SoulShardsP() >= 2 and EnemiesCount >= 2) and Target:TimeToDie() > 4 + S.UnstableAffliction:ExecuteTime() and EnemiesCount == 1 or Target:TimeToDie() <= 8 + S.UnstableAffliction:ExecuteTime() * Player:SoulShardsP()) then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 594"; end
        end
        -- unstable_affliction,if=!variable.use_seed&contagion<=cast_time+variable.padding
        if S.UnstableAffliction:IsReadyP() and not ShouldStop and not bool(VarUseSeed) and contagion <= S.UnstableAffliction:CastTime() + VarPadding then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 624"; end
        end
		-- unstable_affliction,cycle_targets=1,if=!variable.use_seed&(!talent.deathbolt.enabled|cooldown.deathbolt.remains>time_to_shard|soul_shard>1)&(!talent.vile_taint.enabled|soul_shard>1)&contagion<=cast_time+variable.padding&(!azerite.cascading_calamity.enabled|buff.cascading_calamity.remains>time_to_shard)
        if S.UnstableAffliction:IsReadyP() and not ShouldStop and S.CascadingCalamity:AzeriteEnabled() and not Player:BuffP(S.CascadingCalamityBuff) and ActiveUAs() >= 1 and contagion <= S.UnstableAffliction:CastTime() + VarPadding then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 662" end
        end
        -- unstable_affliction,cycle_targets=1,if=!variable.use_seed&(!talent.deathbolt.enabled|cooldown.deathbolt.remains>time_to_shard|soul_shard>1)&(!talent.vile_taint.enabled|soul_shard>1)&contagion<=cast_time+variable.padding&(!azerite.cascading_calamity.enabled|buff.cascading_calamity.remains>time_to_shard)
        if S.UnstableAffliction:IsReadyP() and not ShouldStop and EvaluateCycleUnstableAffliction640(Target)  then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 662" end
        end
    end
    
    -- Protect against interrupt of channeled spells
    if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
        if HR.Cast(S.Channeling) then return "" end
    end  
	-- call DBM precombat
    if not Player:AffectingCombat() and Action.GetToggle(1, "DBM") and not Player:IsCasting() then
        local ShouldReturn = Precombat_DBM(); 
            if ShouldReturn then return ShouldReturn; 
        end    
    end
    -- call non DBM precombat
    if not Player:AffectingCombat() and not Action.GetToggle(1, "DBM") and not Player:IsCasting() then        
        local ShouldReturn = Precombat(); 
            if ShouldReturn then return ShouldReturn; 
        end    
    end
	
	-- Call Ashvane mythic burst on first P2 (If your guild is doing it this way)
	if PrepareAshvaneBurst() then 
   	    -- haunt
        if S.Haunt:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Haunt) then return "haunt 461"; end
        end
		-- agony,target_if=min:dot.agony.remains,if=remains<=gcd+action.shadow_bolt.execute_time&target.time_to_die>8
        if S.Agony:IsCastableP() and not ShouldStop and not Action.GetToggle(2, "CDs") and Target:DebuffRemainsP(S.AgonyDebuff) <= 5 then
            if HR.Cast(S.Agony) then return "siphon_life 770" end
        end
	    -- agony,target_if=min:dot.agony.remains,if=remains<=gcd+action.shadow_bolt.execute_time&target.time_to_die>8
        if S.Corruption:IsCastableP() and not ShouldStop and not Action.GetToggle(2, "CDs") and Target:DebuffRemainsP(S.CorruptionDebuff) <= 4 then
            if HR.Cast(S.Corruption) then return "siphon_life 770" end
        end
	    -- agony,target_if=min:dot.agony.remains,if=remains<=gcd+action.shadow_bolt.execute_time&target.time_to_die>8
        if S.SiphonLife:IsCastableP() and not ShouldStop and not Action.GetToggle(2, "CDs") and Target:DebuffRemainsP(S.SiphonLifeDebuff) <= 4 then
            if HR.Cast(S.SiphonLife) then return "siphon_life 770" end
        end
		-- unstable_affliction,if=cooldown.summon_darkglare.remains<=soul_shard*(execute_time+azerite.dreadful_calling.rank)&(!talent.deathbolt.enabled|cooldown.deathbolt.remains<=soul_shard*execute_time)&(talent.sow_the_seeds.enabled|dot.phantom_singularity.remains|dot.vile_taint.remains)
        if S.UnstableAffliction:IsReadyP() and not ShouldStop and Player:SoulShardsP() == 5 and not Player:PrevGCDP(1, S.UnstableAffliction) then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 556"; end
        end
		-- shadow_bolt,target_if=min:debuff.shadow_embrace.remains,if=talent.shadow_embrace.enabled&variable.maintain_se&debuff.shadow_embrace.remains&debuff.shadow_embrace.remains<=execute_time*2+travel_time&!action.shadow_bolt.in_flight
        if S.ShadowBolt:IsCastableP() and not ShouldStop and Player:SoulShardsP() < 5 then
            if HR.Cast(S.ShadowBolt) then return "shadow_bolt 837" end
        end	
	end
	
    
    --- In Combat
    if Player:AffectingCombat() and not PrepareAshvaneBurst() then
        -- variable,name=use_seed,value=talent.sow_the_seeds.enabled&spell_targets.seed_of_corruption_aoe>=3+raid_event.invulnerable.up|talent.siphon_life.enabled&spell_targets.seed_of_corruption>=5+raid_event.invulnerable.up|spell_targets.seed_of_corruption>=8+raid_event.invulnerable.up
        if (true) then
            VarUseSeed = num(S.SowtheSeeds:IsAvailable() and EnemiesCount >= 3 or S.SiphonLife:IsAvailable() and EnemiesCount >= 5 or EnemiesCount >= 8)
        end
        -- variable,name=padding,op=set,value=action.shadow_bolt.execute_time*azerite.cascading_calamity.enabled
        if (true) then
            VarPadding = S.ShadowBolt:ExecuteTime() * num(S.CascadingCalamity:AzeriteEnabled())
        end
        -- variable,name=padding,op=reset,value=gcd,if=azerite.cascading_calamity.enabled&(talent.drain_soul.enabled|talent.deathbolt.enabled&cooldown.deathbolt.remains<=gcd)
        if (S.CascadingCalamity:AzeriteEnabled() and (S.DrainSoul:IsAvailable() or S.Deathbolt:IsAvailable() and S.Deathbolt:CooldownRemainsP() <= Player:GCD())) then
            VarPadding = 0
        end
        -- variable,name=maintain_se,value=spell_targets.seed_of_corruption_aoe<=1+talent.writhe_in_agony.enabled+talent.absolute_corruption.enabled*2+(talent.writhe_in_agony.enabled&talent.sow_the_seeds.enabled&spell_targets.seed_of_corruption_aoe>2)+(talent.siphon_life.enabled&!talent.creeping_death.enabled&!talent.drain_soul.enabled)+raid_event.invulnerable.up
        if (true) then
            VarMaintainSe = num(EnemiesCount <= 1 + num(S.WritheInAgony:IsAvailable()) + num(S.AbsoluteCorruption:IsAvailable()) * 2 + num((S.WritheInAgony:IsAvailable() and S.SowtheSeeds:IsAvailable() and EnemiesCount > 2)) + num((S.SiphonLife:IsAvailable() and not S.CreepingDeath:IsAvailable() and not S.DrainSoul:IsAvailable())))
        end
        -- call_action_list,name=cooldowns
        if (true) and Action.GetToggle(2, "CDs") then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- drain_soul,interrupt_global=1,chain=1,cycle_targets=1,if=target.time_to_die<=gcd&soul_shard<5
        if S.DrainSoul:IsCastableP() and not ShouldStop and EvaluateCycleDrainSoul711(Target) then
            if HR.Cast(S.DrainSoul) then return "drain_soul 713" end
        end
        -- haunt,if=spell_targets.seed_of_corruption_aoe<=2+raid_event.invulnerable.up
        if S.Haunt:IsCastableP() and not ShouldStop and (EnemiesCount <= 2) then
            if HR.Cast(S.Haunt) then return "haunt 714"; end
        end
        -- summon_darkglare,if=dot.agony.ticking&dot.corruption.ticking&(buff.active_uas.stack=5|soul_shard=0)&(!talent.phantom_singularity.enabled|dot.phantom_singularity.remains)&(!talent.deathbolt.enabled|cooldown.deathbolt.remains<=gcd|!cooldown.deathbolt.remains|spell_targets.seed_of_corruption_aoe>1+raid_event.invulnerable.up)
        if S.SummonDarkglare:IsCastableP() and Action.GetToggle(2, "CDs") and (Target:DebuffP(S.AgonyDebuff) and (Target:DebuffP(S.CorruptionDebuff) or S.AbsoluteCorruption:IsAvailable()) and (ActiveUAs() == 5 or Player:SoulShardsP() == 0) and (not S.PhantomSingularity:IsAvailable() or Target:DebuffP(S.PhantomSingularityDebuff)) and (not S.Deathbolt:IsAvailable() or S.Deathbolt:CooldownRemainsP() <= Player:GCD() or S.Deathbolt:CooldownUpP() or EnemiesCount > 1)) then
            if HR.Cast(S.SummonDarkglare, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_darkglare 716"; end
        end
        -- deathbolt,if=cooldown.summon_darkglare.remains&spell_targets.seed_of_corruption_aoe=1+raid_event.invulnerable.up&(!essence.vision_of_perfection.minor&!azerite.dreadful_calling.rank|cooldown.summon_darkglare.remains>30)
        if S.Deathbolt:IsCastableP() and not ShouldStop and (bool(S.SummonDarkglare:CooldownRemainsP()) and EnemiesCount == 1 and (not S.VisionofPerfectionMinor:IsAvailable() and not bool(S.DreadfulCalling:AzeriteRank()) or S.SummonDarkglare:CooldownRemainsP() > 30)) then
            if HR.Cast(S.Deathbolt) then return "deathbolt 734"; end
        end 
        -- deathbolt,if=shard<=1&!cooldowns
        if S.Deathbolt:IsCastableP() and not ShouldStop and not Action.GetToggle(2, "CDs") and Player:SoulShardsP() <= 1 then
            if HR.Cast(S.Deathbolt) then return "deathbolt 734"; end
        end 
        -- the_unbound_force,if=buff.reckless_force.remains
        if S.TheUnboundForce:IsCastableP() and not ShouldStop and (Player:BuffP(S.RecklessForceBuff)) then
            if HR.Cast(S.UnleashHeartOfAzeroth) then return "the_unbound_force 744"; end
        end
        -- agony,target_if=min:dot.agony.remains,if=remains<=gcd+action.shadow_bolt.execute_time&target.time_to_die>8
        if S.Agony:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterAgony751(Target) and EvaluateTargetIfAgony768(Target)  then
            if HR.Cast(S.Agony) then return "agony 770" end
        end
        -- agony,target_if=min:dot.agony.remains,if=remains<=gcd+action.shadow_bolt.execute_time&target.time_to_die>8
        if S.Agony:IsCastableP() and not ShouldStop and not Action.GetToggle(2, "CDs") and Target:DebuffRemainsP(S.AgonyDebuff) <= 5 then
            if HR.Cast(S.Agony) then return "agony 770" end
        end
        -- memory_of_lucid_dreams,if=time<30
        if S.MemoryofLucidDreams:IsCastableP() and not ShouldStop and (HL.CombatTime() < 30) then
            if HR.Cast(S.UnleashHeartOfAzeroth) then return "memory_of_lucid_dreams 771"; end
        end
        -- # Temporary fix to make sure azshara's font doesn't break darkglare usage.
        -- agony,line_cd=30,if=time>30&cooldown.summon_darkglare.remains<=15&equipped.169314
        if S.Agony:IsCastableP() and not ShouldStop and (HL.CombatTime() > 30 and S.SummonDarkglare:CooldownRemainsP() <= 15 and I.AzsharasFontofPower:IsEquipped()) then
            if HR.Cast(S.Agony) then return "agony 772"; end
        end
        -- corruption,line_cd=30,if=time>30&cooldown.summon_darkglare.remains<=15&equipped.169314&!talent.absolute_corruption.enabled&(talent.siphon_life.enabled|spell_targets.seed_of_corruption_aoe>1&spell_targets.seed_of_corruption_aoe<=3)
        if S.Corruption:IsCastableP() and not ShouldStop and (HL.CombatTime() > 30 and S.SummonDarkglare:CooldownRemainsP() <= 15 and I.AzsharasFontofPower:IsEquipped() and not S.AbsoluteCorruption:IsAvailable() and (S.SiphonLife:IsAvailable() or EnemiesCount > 1 and EnemiesCount <= 3)) then
            if HR.Cast(S.Corruption) then return "corruption 773"; end
        end
	    -- corruption fix with AC
        if S.Corruption:IsCastableP() and not ShouldStop and not Action.GetToggle(2, "CDs") and Target:DebuffDownP(S.CorruptionDebuff) and S.AbsoluteCorruption:IsAvailable() then
            if HR.Cast(S.Corruption) then return "corruption 770" end
        end
        -- siphon_life,line_cd=30,if=time>30&cooldown.summon_darkglare.remains<=15&equipped.169314
        if S.SiphonLife:IsCastableP() and not ShouldStop and (HL.CombatTime() > 30 and S.SummonDarkglare:CooldownRemainsP() <= 15 and I.AzsharasFontofPower:IsEquipped()) then
            if HR.Cast(S.SiphonLife) then return "siphon_life 774"; end
        end
	    -- agony,target_if=min:dot.agony.remains,if=remains<=gcd+action.shadow_bolt.execute_time&target.time_to_die>8
        if S.SiphonLife:IsCastableP() and not ShouldStop and not Action.GetToggle(2, "CDs") and Target:DebuffRemainsP(S.SiphonLifeDebuff) <= 4 then
            if HR.Cast(S.SiphonLife) then return "siphon_life 770" end
        end
        -- unstable_affliction,target_if=!contagion&target.time_to_die<=8
        if S.UnstableAffliction:IsReadyP() and not ShouldStop and EvaluateCycleUnstableAffliction781(Target) then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 783" end
        end
        -- drain_soul,target_if=min:debuff.shadow_embrace.remains,cancel_if=ticks_remain<5,if=talent.shadow_embrace.enabled&variable.maintain_se&debuff.shadow_embrace.remains&debuff.shadow_embrace.remains<=gcd*2
        if S.DrainSoul:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterDrainSoul787(Target) and EvaluateTargetIfDrainSoul802(Target) then
            if HR.Cast(S.DrainSoul) then return "drain_soul 804" end
        end
        -- shadow_bolt,target_if=min:debuff.shadow_embrace.remains,if=talent.shadow_embrace.enabled&variable.maintain_se&debuff.shadow_embrace.remains&debuff.shadow_embrace.remains<=execute_time*2+travel_time&!action.shadow_bolt.in_flight
        if S.ShadowBolt:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterShadowBolt808(Target) and EvaluateTargetIfShadowBolt835(Target) then
            if HR.Cast(S.ShadowBolt) then return "shadow_bolt 837" end
        end
        -- phantom_singularity,target_if=max:target.time_to_die,if=time>35&target.time_to_die>16*spell_haste&(!essence.vision_of_perfection.minor&!azerite.dreadful_calling.rank|cooldown.summon_darkglare.remains>45+soul_shard*azerite.dreadful_calling.rank|cooldown.summon_darkglare.remains<15*spell_haste+soul_shard*azerite.dreadful_calling.rank)
        if S.PhantomSingularity:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterPhantomSingularity841(Target) and EvaluateTargetIfPhantomSingularity850(Target) then
            if HR.Cast(S.PhantomSingularity) then return "phantom_singularity 852" end
        end
        -- unstable_affliction,target_if=min:contagion,if=!variable.use_seed&soul_shard=5
        if S.UnstableAffliction:IsReadyP() and EvaluateTargetIfFilterUnstableAffliction865(Target) and EvaluateTargetIfUnstableAffliction870(Target) then
            if HR.Cast(S.UnstableAffliction) then return "unstable_affliction 872" end
        end
        -- seed_of_corruption,if=variable.use_seed&soul_shard=5
        if S.SeedofCorruption:IsCastableP() and not ShouldStop and Action.GetToggle(2, "AoE") and (bool(VarUseSeed) and Player:SoulShardsP() == 5) then
            if HR.Cast(S.SeedofCorruption) then return "seed_of_corruption 873"; end
        end
        -- call_action_list,name=dots
        if (true) then
            local ShouldReturn = Dots(); if ShouldReturn then return ShouldReturn; end
        end
        -- vile_taint,target_if=max:target.time_to_die,if=time>15&target.time_to_die>=10&(cooldown.summon_darkglare.remains>30|cooldown.summon_darkglare.remains<10&dot.agony.remains>=10&dot.corruption.remains>=10&(dot.siphon_life.remains>=10|!talent.siphon_life.enabled))
        if S.VileTaint:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterVileTaint856(Target) and EvaluateTargetIfVileTaint859(Target) then
            if HR.Cast(S.VileTaint) then return "vile_taint 861" end
        end
        -- use_item,name=azsharas_font_of_power,if=time<=3
        if I.AzsharasFontofPower:IsEquipped() and not ShouldStop and I.AzsharasFontofPower:IsReady() and (HL.CombatTime() <= 3) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 879"; end
        end
        -- phantom_singularity,if=time<=35
        if S.PhantomSingularity:IsCastableP() and (HL.CombatTime() <= 35) then
            if HR.Cast(S.PhantomSingularity, Action.GetToggle(2, "OffGCDasOffGCD")) then return "phantom_singularity 881"; end
        end
        -- vile_taint,if=time<15
        if S.VileTaint:IsCastableP() and not ShouldStop and (HL.CombatTime() < 15) then
            if HR.Cast(S.VileTaint) then return "vile_taint 883"; end
        end
        -- dark_soul,if=cooldown.summon_darkglare.remains<15+soul_shard*azerite.dreadful_calling.enabled&(dot.phantom_singularity.remains|dot.vile_taint.remains|!talent.phantom_singularity.enabled&!talent.vile_taint.enabled)|target.time_to_die<20+gcd|spell_targets.seed_of_corruption_aoe>1+raid_event.invulnerable.up
        if S.DarkSoulMisery:IsCastableP() and Action.GetToggle(2, "CDs") and (S.SummonDarkglare:CooldownRemainsP() < 15 + Player:SoulShardsP() * num(S.DreadfulCalling:AzeriteEnabled()) and (Target:DebuffP(S.PhantomSingularityDebuff) or Target:DebuffP(S.PhantomSingularityDebuff) or not S.PhantomSingularity:IsAvailable() and not S.VileTaint:IsAvailable()) or Target:TimeToDie() < 20 + Player:GCD() or EnemiesCount > 1) then
            if HR.Cast(S.DarkSoulMisery, Action.GetToggle(2, "OffGCDasOffGCD")) then return "dark_soul 885"; end
        end
        -- guardian_of_azeroth,if=cooldown.summon_darkglare.remains<15+soul_shard*azerite.dreadful_calling.enabled|(azerite.dreadful_calling.rank|essence.vision_of_perfection.rank)&time>30&target.time_to_die>=210)&(dot.phantom_singularity.remains|dot.vile_taint.remains|!talent.phantom_singularity.enabled&!talent.vile_taint.enabled)|target.time_to_die<30+gcd
        if S.GuardianofAzeroth:IsCastableP() and not ShouldStop and Action.GetToggle(2, "CDs") and S.SummonDarkglare:CooldownRemainsP() < 15 + Player:SoulShardsP() * num(S.DreadfulCalling:AzeriteEnabled()) or ((S.DreadfulCalling:AzeriteEnabled() or S.VisionofPerfectionMinor:IsAvailable()) and HL.CombatTime() > 30 and Target:TimeToDie() >= 210) and (Target:DebuffP(S.PhantomSingularityDebuff) or Target:DebuffP(S.VileTaint) or not S.PhantomSingularity:IsAvailable() and not S.VileTaint:IsAvailable()) then
            if HR.Cast(S.GuardianofAzeroth) then return ""; end
        end
        -- berserking
        if S.Berserking:IsReadyP() and Action.GetToggle(2, "CDs") then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 891"; end
        end
        -- call_action_list,name=spenders
        if (true) and not ShouldStop then
            local ShouldReturn = Spenders(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=fillers
        if (true) and not ShouldStop then
            local ShouldReturn = Fillers(); if ShouldReturn then return ShouldReturn; end
        end
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
end

