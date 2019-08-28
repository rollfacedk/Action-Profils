--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_ROGUE_OUTLAW] = {
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
    Envenom                                = Action.Create({ Type = "Spell", ID = 32645     }),
    FanofKnives                            = Action.Create({ Type = "Spell", ID = 51723     }),
    Garrote                                = Action.Create({ Type = "Spell", ID = 703     }),
    KidneyShot                             = Action.Create({ Type = "Spell", ID = 408     }),
    Mutilate                               = Action.Create({ Type = "Spell", ID = 1329     }),
    PoisonedKnife                          = Action.Create({ Type = "Spell", ID = 185565     }),
    Rupture                                = Action.Create({ Type = "Spell", ID = 1943     }),
    Stealth                                = Action.Create({ Type = "Spell", ID = 1784     }),
    Stealth2                               = Action.Create({ Type = "Spell", ID = 115191     }), -- w/ Subterfuge Talent
    Vanish                                 = Action.Create({ Type = "Spell", ID = 1856     }),
    Vendetta                               = Action.Create({ Type = "Spell", ID = 79140     }),
    -- Talents
    Blindside                              = Action.Create({ Type = "Spell", ID = 111240     }),
    CrimsonTempest                         = Action.Create({ Type = "Spell", ID = 121411     }),
    DeeperStratagem                        = Action.Create({ Type = "Spell", ID = 193531     }),
    Exsanguinate                           = Action.Create({ Type = "Spell", ID = 200806     }),
    InternalBleeding                       = Action.Create({ Type = "Spell", ID = 154953     }),
    MarkedforDeath                         = Action.Create({ Type = "Spell", ID = 137619     }),
    MasterAssassin                         = Action.Create({ Type = "Spell", ID = 255989     }),
    Nightstalker                           = Action.Create({ Type = "Spell", ID = 14062     }),
    Subterfuge                             = Action.Create({ Type = "Spell", ID = 108208     }),
    ToxicBlade                             = Action.Create({ Type = "Spell", ID = 245388     }),
    VenomRush                              = Action.Create({ Type = "Spell", ID = 152152     }),
    -- Azerite Traits
    DoubleDose                             = Action.Create({ Type = "Spell", ID = 273007     }),
    EchoingBlades                          = Action.Create({ Type = "Spell", ID = 287649     }),
    ShroudedSuffocation                    = Action.Create({ Type = "Spell", ID = 278666     }),
    ScentOfBlood                           = Action.Create({ Type = "Spell", ID = 277679     }),
    RecklessForceCounter                   = Action.Create({ Type = "Spell", ID = 302917     }),
    ConcentratedFlameBurn                  = Action.Create({ Type = "Spell", ID = 295368     }),
    -- Defensive
    CrimsonVial                            = Action.Create({ Type = "Spell", ID = 185311     }),
    Feint                                  = Action.Create({ Type = "Spell", ID = 1966     }),
    -- Utility
    Blind                                  = Action.Create({ Type = "Spell", ID = 2094     }),
    Kick                                   = Action.Create({ Type = "Spell", ID = 1766     }),
    -- Poisons
    CripplingPoison                        = Action.Create({ Type = "Spell", ID = 3408     }),
    DeadlyPoison                           = Action.Create({ Type = "Spell", ID = 2823     }),
    WoundPoison                            = Action.Create({ Type = "Spell", ID = 8679     }),
    -- Misc
    TheDreadlordsDeceit                    = Action.Create({ Type = "Spell", ID = 208693     }),
    --PoolEnergy                             = Action.Create({ Type = "Spell", ID = 9999000010   }),
    Channeling                             = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),	
    -- Buffs
    VigorTrinketBuff                       = Action.Create({ Type = "Spell", ID = 287916     }),
    LifebloodBuff                          = Action.Create({ Type = "Spell", ID = 295137     }),
    HiddenBladesBuff                       = Action.Create({ Type = "Spell", ID = 270070     }),
    BlindsideBuff                          = Action.Create({ Type = "Spell", ID = 121153     }),
    VanishBuff                             = Action.Create({ Type = "Spell", ID = 11327     }),
    RecklessForceBuff                      = Action.Create({ Type = "Spell", ID = 302932     }),
    -- Debuffs 
    RazorCoralDebuff                       = Action.Create({ Type = "Spell", ID = 303568     }),
    WoundPoisonDebuff                      = Action.Create({ Type = "Spell", ID = 8680     }),
    DeadlyPoisonDebuff                     = Action.Create({ Type = "Spell", ID = 2818     }),
    BloodoftheEnemyDebuff                  = Action.Create({ Type = "Spell", ID = 297108     }),
    ToxicBladeDebuff                       = Action.Create({ Type = "Spell", ID = 245389     }),
    -- Trinkets
	GenericTrinket1                      = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
    GenericTrinket2                      = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
    TrinketTest                          = Action.Create({ Type = "Trinket", ID = 122530, QueueForbidden = true }),
    TrinketTest2                         = Action.Create({ Type = "Trinket", ID = 159611, QueueForbidden = true }), 
    AzsharasFontofPower                  = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    PocketsizedComputationDevice         = Action.Create({ Type = "Trinket", ID = 167555 }),
    RotcrustedVoodooDoll                 = Action.Create({ Type = "Trinket", ID = 159624, QueueForbidden = true }),
    ShiverVenomRelic                     = Action.Create({ Type = "Trinket", ID = 168905, QueueForbidden = true }),
    AquipotentNautilus                   = Action.Create({ Type = "Trinket", ID = 169305, QueueForbidden = true }),
    TidestormCodex                       = Action.Create({ Type = "Trinket", ID = 165576, QueueForbidden = true }),
    VialofStorms                         = Action.Create({ Type = "Trinket", ID = 158224, QueueForbidden = true }),
	GalecallersBoon                      = Action.Create({ Type = "Trinket", ID = 159614, QueueForbidden = true }),
    InvocationOfYulon                    = Action.Create({ Type = "Trinket", ID = 165568, QueueForbidden = true }),
    LustrousGoldenPlumage                = Action.Create({ Type = "Trinket", ID = 159617, QueueForbidden = true }),
    ComputationDevice                    = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
    VigorTrinket                         = Action.Create({ Type = "Trinket", ID = 165572, QueueForbidden = true }),
    FontOfPower                          = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    RazorCoral                           = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
    -- Potions
    PotionofUnbridledFury                = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
    PotionTest                           = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
    -- Misc
    CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 293491, Hidden = true}),
	ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368, Hidden = true}),
    BloodoftheEnemyDebuff                 = Action.Create({ Type = "Spell", ID = 297108, Hidden = true}),
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932, Hidden = true}),
    RecklessForceCounter                  = Action.Create({ Type = "Spell", ID = 298409}),
    RecklessForceCounter2                 = Action.Create({ Type = "Spell", ID = 302917}),
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
    GuardianofAzeroth3                    = Action.Create({ Type = "HeartOfAzeroth", ID = 299358, Hidden = true}),
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
    LucidDreamsBuff                       = Action.Create({ Type = "HeartOfAzeroth", ID = 298357, Hidden = true}),
    LucidDreamsBuff2                      = Action.Create({ Type = "HeartOfAzeroth", ID = 299372, Hidden = true}),	
    LucidDreamsBuff3                      = Action.Create({ Type = "HeartOfAzeroth", ID = 299374, Hidden = true}),	
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_ROGUE_OUTLAW)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_ROGUE_OUTLAW], { __index = Action })

-- Simcraft Imported
-- HeroLib
local HL         = HeroLib
local Cache      = HeroCache
local Unit       = HL.Unit
local Player     = Unit.Player
local Target     = Unit.Target
local Pet        = Unit.Pet
local MouseOver  = Unit.MouseOver;
local Spell      = HL.Spell;
local Item       = HL.Item;
-- HeroRotation
local HR         = HeroRotation;
-- Lua
local mathmin = math.min;
-- Lua
local pairs = pairs;
local tableconcat = table.concat;
local tostring = tostring;

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

local function num(val)
  if val then return 1 else return 0 end
end

-- Stuns
local Interrupts = {
  {S.Blind, "Cast Blind (Interrupt)", function () return true; end},
};

-- cp_max_spend
local function CPMaxSpend()
    -- Should work for all 3 specs since they have same Deeper Stratagem Spell ID.
    return S.DeeperStratagem:IsAvailable() and 6 or 5;
end

-- "cp_spend"
local function CPSpend()
    return mathmin(Player:ComboPoints(), CPMaxSpend());
end
  
-- Stealth
local function Stealth(Stealth, Setting)
    if Action.GetToggle(2, "StealthOOC") and Stealth:IsCastable() and not Player:IsStealthed() then
        if HR.Cast(Stealth, Action.GetToggle(2, "GCDasOffGCD")) then return "Cast Stealth (OOC)"; end
    end
    return false;
end

local function DetermineEssenceRanks()
    S.BloodoftheEnemy = S.BloodoftheEnemy2:IsAvailable() and S.BloodoftheEnemy2 or S.BloodoftheEnemy
    S.BloodoftheEnemy = S.BloodoftheEnemy3:IsAvailable() and S.BloodoftheEnemy3 or S.BloodoftheEnemy
    S.MemoryofLucidDreams = S.MemoryofLucidDreams2:IsAvailable() and S.MemoryofLucidDreams2 or S.MemoryofLucidDreams
    S.MemoryofLucidDreams = S.MemoryofLucidDreams3:IsAvailable() and S.MemoryofLucidDreams3 or S.MemoryofLucidDreams
    S.LucidDreamsBuff = S.LucidDreamsBuff2:IsAvailable() and S.LucidDreamsBuff2 or S.LucidDreamsBuff
    S.LucidDreamsBuff = S.LucidDreamsBuff3:IsAvailable() and S.LucidDreamsBuff3 or S.LucidDreamsBuff
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
	S.RecklessForceCounter = S.RecklessForceCounter2:IsAvailable() and S.RecklessForceCounter2 or S.RecklessForceCounter
end

-- Trinkets checker handler
local function trinketReady(trinketPosition)
    local inventoryPosition
    
	if trinketPosition == 1 then
        inventoryPosition = 13
    end
    
	if trinketPosition == 2 then
        inventoryPosition = 14
    end
    
	local start, duration, enable = GetInventoryItemCooldown("Player", inventoryPosition)
    if enable == 0 then
        return false
    end

    if start + duration - GetTime() > 0 then
        return false
    end
	
	if Action.GetToggle(1, "Trinkets")[1] == false then
	    return false
	end
	
   	if Action.GetToggle(1, "Trinkets")[2] == false then
	    return false
	end	
	
    return true
end

local function TrinketON()
    if trinketReady(1) or trinketReady(2) then
        return true
	else
	    return false
	end
end


-- HeroLib EnemiesCount handler
local EnemyRanges = {"Melee", 6, 9}
local function UpdateRanges()
    for _, i in ipairs(EnemyRanges) do
        HL.GetEnemies(i);
    end
end

-- AoE Detection Mode
local function GetEnemiesCount(range)
    -- Unit Update - Update differently depending on if splash data is being used
    if HR.AoEON() then
        if Action.GetToggle(2, "AoeDetectionMode") == "USE COMBAT LOGS" then
	        return active_enemies()
	    elseif Action.GetToggle(2, "AoeDetectionMode") == "USE SPLASH DATA" then
            return active_enemies()
	    else 
            UpdateRanges()
            return Cache.EnemiesCount[range]
        end
    else
        return 1
    end
end

-- Spells Damage
S.Envenom:RegisterDamage(
    -- Envenom DMG Formula:
    --    AP * CP * Env_APCoef * Aura_M * ToxicB_M * DS_M * Mastery_M * Versa_M
    function ()
        return
            -- Attack Power
            Player:AttackPowerDamageMod() *
            -- Combo Points
            Rogue.CPSpend() *
            -- Envenom AP Coef
            0.16 *
            -- Aura Multiplier (SpellID: 137037)
            1.27 *
            -- Toxic Blade Multiplier
            (Target:DebuffP(S.ToxicBladeDebuff) and 1.3 or 1) *
            -- Deeper Stratagem Multiplier
            (S.DeeperStratagem:IsAvailable() and 1.05 or 1) *
            -- Mastery Finisher Multiplier
            (1 + Player:MasteryPct()/100) *
            -- Versatility Damage Multiplier
            (1 + Player:VersatilityDmgPct()/100);
    end
);
S.Mutilate:RegisterDamage(
    function ()
        return
            -- Attack Power (MH Factor + OH Factor)
            (Player:AttackPowerDamageMod() + Player:AttackPowerDamageMod(true)) *
            -- Mutilate Coefficient
            0.35 *
            -- Aura Multiplier (SpellID: 137037)
            1.27 *
            -- Versatility Damage Multiplier
            (1 + Player:VersatilityDmgPct()/100);
    end
);
local function NighstalkerMultiplier ()
    return S.Nightstalker:IsAvailable() and Player:IsStealthed(true, false) and 1.5 or 1;
end
local function SubterfugeGarroteMultiplier ()
    return S.Subterfuge:IsAvailable() and Player:IsStealthed(true, false) and 2 or 1;
end
S.Garrote:RegisterPMultiplier(
    {NighstalkerMultiplier},
    {SubterfugeGarroteMultiplier}
);
S.Rupture:RegisterPMultiplier(
    {NighstalkerMultiplier}
);

-- Rotation Var
local ShouldReturn; -- Used to get the return string
local BleedTickTime, ExsanguinatedBleedTickTime = 2 / Player:SpellHaste(), 1 / Player:SpellHaste();
local Stealth;
local RuptureThreshold, RuptureDMGThreshold, GarroteDMGThreshold;
local ComboPoints, ComboPointsDeficit, Energy_Regen_Combined, PoisonedBleeds;
local PriorityRotation;

-- GUI Settings
local Settings = {
    General = HR.GUISettings.General,
    Commons = HR.GUISettings.APL.Rogue.Commons,
    Assassination = HR.GUISettings.APL.Rogue.Assassination
};

local function num(val)
    if val then return 1 else return 0 end
end

-- Check if the Priority Rotation variable should be set
local function UsePriorityRotation()
    if Cache.EnemiesCount[10] < 2 then
        return false
    end
    if Settings.Assassination.UsePriorityRotation == "Always" then
        return true
    end
    if Settings.Assassination.UsePriorityRotation == "On Bosses" and Target:IsInBossList() then
        return true
    end
    -- Zul Mythic
    if Player:InstanceDifficulty() == 16 and Target:NPCID() == 138967 then
        return true
    end
    return false
end

-- Handle CastLeftNameplate Suggestions for DoT Spells
local function SuggestCycleDoT(DoTSpell, DoTEvaluation, DoTMinTTD)
    -- Prefer melee cycle units
    local BestUnit, BestUnitTTD = nil, DoTMinTTD;
    local TargetGUID = Target:GUID();
    for _, CycleUnit in pairs(Cache.Enemies["Melee"]) do
        if CycleUnit:GUID() ~= TargetGUID and Everyone.UnitIsCycleValid(CycleUnit, BestUnitTTD, -CycleUnit:DebuffRemainsP(DoTSpell))
        and DoTEvaluation(CycleUnit) then
            BestUnit, BestUnitTTD = CycleUnit, CycleUnit:TimeToDie();
        end
    end
    if BestUnit then
        HR.CastLeftNameplate(BestUnit, DoTSpell);
    -- Check ranged units next, if the RangedMultiDoT option is enabled
    elseif Settings.Assassination.RangedMultiDoT then
        BestUnit, BestUnitTTD = nil, DoTMinTTD;
        for _, CycleUnit in pairs(Cache.Enemies[10]) do
            if CycleUnit:GUID() ~= TargetGUID and Everyone.UnitIsCycleValid(CycleUnit, BestUnitTTD, -CycleUnit:DebuffRemainsP(DoTSpell))
            and DoTEvaluation(CycleUnit) then
                BestUnit, BestUnitTTD = CycleUnit, CycleUnit:TimeToDie();
            end
        end
        if BestUnit then
            HR.CastLeftNameplate(BestUnit, DoTSpell);
        end
    end
end

-- Target If handler
-- Mode is "min", "max", or "first"
-- ModeEval the target_if condition (function with a target as param)
-- IfEval the condition on the resulting target (function with a target as param)
local function CheckTargetIfTarget(Mode, ModeEvaluation, IfEvaluation)
    -- First mode: Only check target if necessary
    local TargetsModeValue = ModeEvaluation(Target);
    if Mode == "first" and TargetsModeValue ~= 0 then
        return Target;
    end

    local BestUnit, BestValue = nil, 0;
    local function RunTargetIfCycler(Range)
        for _, CycleUnit in pairs(Cache.Enemies[Range]) do
            local ValueForUnit = ModeEvaluation(CycleUnit);
            if not BestUnit and Mode == "first" then
                if ValueForUnit ~= 0 then
                    BestUnit, BestValue = CycleUnit, ValueForUnit;
                end
            elseif Mode == "min" then
                if not BestUnit or ValueForUnit < BestValue then
                    BestUnit, BestValue = CycleUnit, ValueForUnit;
                end
            elseif Mode == "max" then
                if not BestUnit or ValueForUnit > BestValue then
                    BestUnit, BestValue = CycleUnit, ValueForUnit;
                end
            end
            -- Same mode value, prefer longer TTD
            if BestUnit and ValueForUnit == BestValue and CycleUnit:TimeToDie() > BestUnit:TimeToDie() then
                BestUnit, BestValue = CycleUnit, ValueForUnit;
            end
        end
    end

    -- Prefer melee cycle units over ranged
    RunTargetIfCycler("Melee");
    if Settings.Assassination.RangedMultiDoT then
        RunTargetIfCycler(10);
    end
    -- Prefer current target if equal mode value results to prevent "flickering"
    if BestUnit and BestValue == TargetsModeValue and IfEvaluation(Target) then
        return Target;
    end
    if BestUnit and IfEvaluation(BestUnit) then
        return BestUnit;
    end
    return nil
end

-- Master Assassin Remains Check
local MasterAssassinBuff, NominalDuration = Spell(256735), 3;
local function MasterAssassinRemains ()
    if Player:BuffRemains(MasterAssassinBuff) < 0 then
        return Player:GCDRemains() + NominalDuration;
    else
        return Player:BuffRemainsP(MasterAssassinBuff);
    end
end

-- Fake ss_buffed (wonky without Subterfuge but why would you, eh?)
local function SSBuffed(TargetUnit)
    return S.ShroudedSuffocation:AzeriteEnabled() and TargetUnit:PMultiplier(S.Garrote) > 1;
end

-- non_ss_buffed_targets
local function NonSSBuffedTargets()
    local count = 0;
    for _, CycleUnit in pairs(Cache.Enemies[10]) do
        if not CycleUnit:DebuffP(S.Garrote) or not SSBuffed(CycleUnit) then
            count = count + 1;
        end
    end
    return count;
end

-- ss_buffed_targets_above_pandemic
local function SSBuffedTargetsAbovePandemic()
    local count = 0;
    for _, CycleUnit in pairs(Cache.Enemies[10]) do
        if CycleUnit:DebuffRemainsP(S.Garrote) > 5.4 and SSBuffed(CycleUnit) then
            count = count + 1;
        end
    end
    return count;
end

local MythicDungeon;
do
    local SappedSoulSpells = {
        {S.Kick, "Cast Kick (Sapped Soul)", function () return Target:IsInRange("Melee"); end},
        {S.Feint, "Cast Feint (Sapped Soul)", function () return true; end},
        {S.CrimsonVial, "Cast Crimson Vial (Sapped Soul)", function () return true; end}
    };
    MythicDungeon = function ()
        -- Sapped Soul
        if HL.MythicDungeon() == "Sapped Soul" then
            for i = 1, #SappedSoulSpells do
                local SappedSoulSpell = SappedSoulSpells[i];
                if SappedSoulSpell[1]:IsCastable() and SappedSoulSpell[3]() then
                    HR.ChangePulseTimer(1);
                    HR.Cast(SappedSoulSpell[1]);
                    return SappedSoulSpell[2];
                end
            end
        end
        return false;
    end
end
local function TrainingScenario ()
    if Target:CastName() == "Unstable Explosion" and Target:CastPercentage() > 60-10*ComboPoints then
        -- Kidney Shot
        if S.KidneyShot:IsCastable("Melee") and ComboPoints > 0 then
            if HR.Cast(S.KidneyShot) then return "Cast Kidney Shot (Unstable Explosion)"; end
        end
    end
    return false;
end
local Interrupts = {
    {S.Blind, "Cast Blind (Interrupt)", function () return true; end},
    {S.KidneyShot, "Cast Kidney Shot (Interrupt)", function () return ComboPoints > 0; end}
}

-- APL Action Lists (and Variables)
-- # Essences
local function Essences ()
    -- actions.essences+=/blood_of_the_enemy,if=debuff.vendetta.up&(!talent.toxic_blade.enabled|debuff.toxic_blade.up&combo_points.deficit<=1|debuff.vendetta.remains<=10)|target.time_to_die<=10
    if S.BloodoftheEnemy:IsCastableP() and Target:DebuffP(S.Vendetta) and (not S.ToxicBlade:IsAvailable()
        or (Target:DebuffP(S.ToxicBladeDebuff) and Player:ComboPointsDeficit() <= 1) or Target:DebuffRemainsP(S.Vendetta) <= 10) then
        if HR.Cast(S.BloodoftheEnemy, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast BloodoftheEnemy"; end
    end
    -- concentrated_flame,if=energy.time_to_max>1&!debuff.vendetta.up&(!dot.concentrated_flame_burn.ticking&!action.concentrated_flame.in_flight|full_recharge_time<gcd.max)
    if S.ConcentratedFlame:IsCastableP() and Player:EnergyTimeToMaxPredicted() > 1 and not Target:DebuffP(S.Vendetta) and (not Target:DebuffP(S.ConcentratedFlameBurn)
        and not Player:PrevGCD(1, S.ConcentratedFlame) or S.ConcentratedFlame:FullRechargeTime() < Player:GCD() + Player:GCDRemains()) then
        if HR.Cast(S.ConcentratedFlame, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast ConcentratedFlame"; end
    end
    if S.GuardianofAzeroth:IsCastableP() then
        -- guardian_of_azeroth,if=cooldown.vendetta.remains<3|debuff.vendetta.up|target.time_to_die<30
        if S.Vendetta:CooldownRemainsP() < 3 or Target:DebuffP(S.Vendetta) or Target:BossFilteredTimeToDie("<", 30) then
            if HR.Cast(S.GuardianofAzeroth, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast GuardianofAzeroth Synced"; end
        elseif not Target:BossTimeToDieIsNotValid() then
            -- guardian_of_azeroth,if=floor((target.time_to_die-30)%cooldown)>floor((target.time_to_die-30-cooldown.vendetta.remains)%cooldown)
            if mathfloor(Target:BossTimeToDie() - 30 / 180) > mathfloor((Target:BossTimeToDie() - 30 - S.Vendetta:CooldownRemainsP()) / 180) then
                if HR.Cast(S.GuardianofAzeroth, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast GuardianofAzeroth Desynced"; end
            end
        end
    end
    -- focused_azerite_beam,if=spell_targets.fan_of_knives>=2|raid_event.adds.in>60&energy<70
    if S.FocusedAzeriteBeam:IsCastableP() and Player:EnergyPredicted() < 70 then
        if HR.Cast(S.FocusedAzeriteBeam, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast FocusedAzeriteBeam"; end
    end
    -- purifying_blast,if=spell_targets.fan_of_knives>=2|raid_event.adds.in>60
    if S.PurifyingBlast:IsCastableP() then
        if HR.Cast(S.PurifyingBlast, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast PurifyingBlast"; end
    end
    -- actions.essences+=/the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10
    if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10) then
        if HR.Cast(S.TheUnboundForce, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast TheUnboundForce"; end
    end
    -- ripple_in_space
    if S.RippleInSpace:IsCastableP() then
        if HR.Cast(S.RippleInSpace, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast RippleInSpace"; end
    end
    -- worldvein_resonance,if=buff.lifeblood.stack<3
    if S.WorldveinResonance:IsCastableP() and Player:BuffStackP(S.LifebloodBuff) < 3 then
        if HR.Cast(S.WorldveinResonance, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast WorldveinResonance"; end
    end
    -- memory_of_lucid_dreams,if=energy<50&!cooldown.vendetta.up
    if S.MemoryofLucidDreams:IsCastableP() and Player:EnergyPredicted() < 50 and not S.Vendetta:CooldownUpP() then
        if HR.Cast(S.MemoryofLucidDreams, nil, Settings.Commons.EssenceDisplayStyle) then return "Cast MemoryofLucidDreams"; end
    end
    return false;
end
-- # Cooldowns
local function CDs ()
    if Target:IsInRange("Melee") then
        -- actions.cds+=/call_action_list,name=essences,if=!stealthed.all&dot.rupture.ticking&master_assassin_remains=0
        if HR.CDsON() and not Player:IsStealthedP(true, true) and Target:DebuffP(S.Rupture) and MasterAssassinRemains() <= 0 then
            ShouldReturn = Essences();
            if ShouldReturn then return ShouldReturn; end
        end

        -- actions.cds+=/marked_for_death,target_if=min:target.time_to_die,if=target.time_to_die<combo_points.deficit*1.5|(raid_event.adds.in>40&combo_points.deficit>=cp_max_spend)
        if S.MarkedforDeath:IsCastable() then
            if Target:FilteredTimeToDie("<", Player:ComboPointsDeficit() * 1.5) then
                if HR.Cast(S.MarkedforDeath, Settings.Commons.OffGCDasOffGCD.MarkedforDeath) then return "Cast Marked for Death"; end
            end
            if ComboPointsDeficit >= Rogue.CPMaxSpend() then
                HR.CastSuggested(S.MarkedforDeath);
            end
        end

        if HR.CDsON() then
            -- actions.cds+=/vendetta,if=!stealthed.rogue&dot.rupture.ticking&!debuff.vendetta.up&(!talent.subterfuge.enabled|!azerite.shrouded_suffocation.enabled|dot.garrote.pmultiplier>1&(spell_targets.fan_of_knives<6|!cooldown.vanish.up))&(!talent.nightstalker.enabled|!talent.exsanguinate.enabled|cooldown.exsanguinate.remains<5-2*talent.deeper_stratagem.enabled)&(!equipped.azsharas_font_of_power|azerite.shrouded_suffocation.enabled|debuff.razor_coral_debuff.down|trinket.ashvanes_razor_coral.cooldown.remains<10&cooldown.toxic_blade.remains<1)
            if S.Vendetta:IsCastable() and not Player:IsStealthedP(true, false) and Target:DebuffP(S.Rupture) and not Target:DebuffP(S.Vendetta)
                and (not S.Subterfuge:IsAvailable() or not S.ShroudedSuffocation:AzeriteEnabled() or Target:PMultiplier(S.Garrote) > 1 and (Cache.EnemiesCount[10] < 6 or not S.Vanish:CooldownUpP()))
                and (not S.Nightstalker:IsAvailable() or not S.Exsanguinate:IsAvailable() or S.Exsanguinate:CooldownRemainsP() < 5 - 2 * num(S.DeeperStratagem:IsAvailable()))
                and (not Settings.Commons.UseTrinkets or not I.FontOfPower:IsEquipped() or S.ShroudedSuffocation:AzeriteEnabled() or S.RazorCoralDebuff:ActiveCount() == 0 or I.RazorCoral:CooldownRemains() < 10 and S.ToxicBlade:CooldownRemainsP() <= 1) then
                if HR.Cast(S.Vendetta, Settings.Assassination.GCDasOffGCD.Vendetta) then return "Cast Vendetta"; end
            end
            if S.Vanish:IsCastable() and not Player:IsTanking(Target) then
                local VanishSuggested = false;
                -- actions.cds+=/vanish,if=talent.exsanguinate.enabled&(talent.nightstalker.enabled|talent.subterfuge.enabled&spell_targets.fan_of_knives<2)&combo_points>=cp_max_spend&cooldown.exsanguinate.remains<1&(!talent.subterfuge.enabled|!azerite.shrouded_suffocation.enabled|dot.garrote.pmultiplier<=1)
                if not VanishSuggested and S.Exsanguinate:IsAvailable() and (S.Nightstalker:IsAvailable() or S.Subterfuge:IsAvailable() and Cache.EnemiesCount[10] < 2)
                    and ComboPoints >= Rogue.CPMaxSpend() and S.Exsanguinate:CooldownRemainsP() < 1
                    and (not S.Subterfuge:IsAvailable() or not S.ShroudedSuffocation:AzeriteEnabled() or Target:PMultiplier(S.Garrote) <= 1) then
                    if HR.Cast(S.Vanish, Settings.Commons.OffGCDasOffGCD.Vanish) then return "Cast Vanish (Exsanguinate)"; end
                    VanishSuggested = true;
                end
                -- actions.cds+=/vanish,if=talent.nightstalker.enabled&!talent.exsanguinate.enabled&combo_points>=cp_max_spend&debuff.vendetta.up
                if not VanishSuggested and S.Nightstalker:IsAvailable() and not S.Exsanguinate:IsAvailable() and ComboPoints >= Rogue.CPMaxSpend() and Target:Debuff(S.Vendetta) then
                    if HR.Cast(S.Vanish, Settings.Commons.OffGCDasOffGCD.Vanish) then return "Cast Vanish (Nightstalker)"; end
                    VanishSuggested = true;
                end
                -- actions.cds+=/variable,name=ss_vanish_condition,value=azerite.shrouded_suffocation.enabled&(non_ss_buffed_targets>=1|spell_targets.fan_of_knives=3)&(ss_buffed_targets_above_pandemic=0|spell_targets.fan_of_knives>=6)
                local VarSSVanishCondition = S.ShroudedSuffocation:AzeriteEnabled() and (NonSSBuffedTargets() >= 1 or Cache.EnemiesCount[10] == 3)
                    and (SSBuffedTargetsAbovePandemic() == 0 or Cache.EnemiesCount[10] >= 6);
                -- actions.cds+=/vanish,if=talent.subterfuge.enabled&!stealthed.rogue&cooldown.garrote.up&(variable.ss_vanish_condition|!azerite.shrouded_suffocation.enabled&dot.garrote.refreshable)&combo_points.deficit>=((1+2*azerite.shrouded_suffocation.enabled)*spell_targets.fan_of_knives)>?4&raid_event.adds.in>12
                if not VanishSuggested and S.Subterfuge:IsAvailable() and not Player:IsStealthedP(true, false)
                    and S.Garrote:CooldownUpP() and (VarSSVanishCondition or not S.ShroudedSuffocation:AzeriteEnabled() and Target:DebuffRefreshableP(S.Garrote, 5.4))
                    and ComboPointsDeficit >= math.min((1 + 2 * num(S.ShroudedSuffocation:AzeriteEnabled())) * Cache.EnemiesCount[10], 4) then
                    -- actions.cds+=/pool_resource,for_next=1,extra_amount=45
                    if Player:EnergyPredicted() < 45 then
                        if HR.Cast(S.PoolEnergy) then return "Pool for Vanish (Subterfuge)"; end
                    end
                    if HR.Cast(S.Vanish, Settings.Commons.OffGCDasOffGCD.Vanish) then return "Cast Vanish (Subterfuge)"; end
                    VanishSuggested = true;
                end
                -- actions.cds+=/vanish,if=talent.master_assassin.enabled&!stealthed.all&master_assassin_remains<=0&!dot.rupture.refreshable&dot.garrote.remains>3&debuff.vendetta.up&(!talent.toxic_blade.enabled|debuff.toxic_blade.up)&(!essence.blood_of_the_enemy.major|debuff.blood_of_the_enemy.up)
                if not VanishSuggested and S.MasterAssassin:IsAvailable() and not Player:IsStealthedP(true, false) and MasterAssassinRemains() <= 0
                    and not Target:DebuffRefreshableP(S.Rupture, RuptureThreshold) and Target:DebuffRemainsP(S.Garrote) > 3
                    and Target:DebuffP(S.Vendetta) and (not S.ToxicBlade:IsAvailable() or Target:DebuffP(S.ToxicBladeDebuff))
                    and (not S.BloodoftheEnemy:IsAvailable() or Target:DebuffP(S.BloodoftheEnemyDebuff)) then
                    if HR.Cast(S.Vanish, Settings.Commons.OffGCDasOffGCD.Vanish) then return "Cast Vanish (Master Assassin)"; end
                end
            end
            -- actions.cds+=/shadowmeld,if=!stealthed.all&azerite.shrouded_suffocation.enabled&dot.garrote.refreshable&dot.garrote.pmultiplier<=1&combo_points.deficit>=1
            if HR.CDsON() and S.Shadowmeld:IsCastable() and not Player:IsStealthedP(true, true) and S.ShroudedSuffocation:AzeriteEnabled() and Target:DebuffRefreshableP(S.Garrote, 5.4) and Target:PMultiplier(S.Garrote) <= 1 and Player:ComboPointsDeficit() >= 1 then
                if HR.Cast(S.Shadowmeld, Settings.Commons.OffGCDasOffGCD.Racials) then return "Cast Shadowmeld"; end
            end
            if S.Exsanguinate:IsCastable() then
                -- actions.cds+=/exsanguinate,if=dot.rupture.remains>4+4*cp_max_spend&!dot.garrote.refreshable
                if Target:DebuffRemainsP(S.Rupture) > 4+4*Rogue.CPMaxSpend() and not Target:DebuffRefreshableP(S.Garrote, 5.4) then
                    if HR.Cast(S.Exsanguinate) then return "Cast Exsanguinate"; end
                end
            end
            -- actions.cds+=/toxic_blade,if=dot.rupture.ticking
            if S.ToxicBlade:IsCastable("Melee") and Target:DebuffP(S.Rupture) then
                if HR.Cast(S.ToxicBlade) then return "Cast Toxic Blade"; end
            end
        end

        -- actions.cds=potion,if=buff.bloodlust.react|target.time_to_die<=60|debuff.vendetta.up&cooldown.vanish.remains<5

        -- Trinkets
        if Settings.Commons.UseTrinkets then
            -- use_item,name=galecallers_boon,if=cooldown.vendetta.remains>45
            if I.GalecallersBoon:IsEquipped() and I.GalecallersBoon:IsReady() and S.Vendetta:CooldownRemains() > 45 then
                if HR.Cast(I.GalecallersBoon, nil, Settings.Commons.TrinketDisplayStyle) then return "Cast Galecallers Boon"; end
            end
            -- use_item,name=lustrous_golden_plumage,if=debuff.vendetta.up
            if I.LustrousGoldenPlumage:IsEquipped() and I.LustrousGoldenPlumage:IsReady() and Target:Debuff(S.Vendetta) then
                if HR.Cast(I.LustrousGoldenPlumage, nil, Settings.Commons.TrinketDisplayStyle) then return "Cast Golden Plumage"; end
            end
            if I.InvocationOfYulon:IsEquipped() and I.InvocationOfYulon:IsReady() then
                if HR.Cast(I.InvocationOfYulon, nil, Settings.Commons.TrinketDisplayStyle) then return "Cast Invocation of Yulon"; end
            end
            -- if=master_assassin_remains=0&!debuff.vendetta.up&!debuff.toxic_blade.up&buff.memory_of_lucid_dreams.down&energy<80&dot.rupture.remains>4
            if I.ComputationDevice:IsEquipped() and I.ComputationDevice:IsReady() and MasterAssassinRemains() <= 0 and not Target:DebuffP(S.Vendetta)
                and not Target:DebuffP(S.ToxicBladeDebuff) and not Player:BuffP(S.LucidDreamsBuff) and Player:EnergyPredicted() < 80 and Target:DebuffRemainsP(S.Rupture) > 4 then
                if HR.Cast(I.ComputationDevice, nil, Settings.Commons.TrinketDisplayStyle) then return "Cast Computation Device"; end
            end
            -- if=debuff.razor_coral_debuff.down|debuff.vendetta.remains>10-4*equipped.azsharas_font_of_power|target.time_to_die<20
            if I.RazorCoral:IsEquipped() and I.RazorCoral:IsReady() and (S.RazorCoralDebuff:ActiveCount() == 0
                or Target:DebuffRemainsP(S.Vendetta) > 10 - 4 * num(I.FontOfPower:IsEquipped()) or Target:FilteredTimeToDie("<", 20)) then
                if HR.Cast(I.RazorCoral, nil, Settings.Commons.TrinketDisplayStyle) then return "Cast Razor Coral"; end
            end
            -- V.I.G.O.R. trinket, emulate SimC default behavior to use at max stacks
            if I.VigorTrinket:IsEquipped() and I.VigorTrinket:IsReady() and Player:BuffStack(S.VigorTrinketBuff) == 6 then
                if HR.Cast(I.VigorTrinket, nil, Settings.Commons.TrinketDisplayStyle) then return "Cast Vigor Trinket"; end
            end
        end

        -- Racials
        if HR.CDsON() and Target:Debuff(S.Vendetta) then
            -- actions.cds+=/blood_fury,if=debuff.vendetta.up
            if S.BloodFury:IsCastable() then
                if HR.Cast(S.BloodFury, Settings.Commons.OffGCDasOffGCD.Racials) then return "Cast Blood Fury"; end
            end
            -- actions.cds+=/berserking,if=debuff.vendetta.up
            if S.Berserking:IsCastable() then
                if HR.Cast(S.Berserking, Settings.Commons.OffGCDasOffGCD.Racials) then return "Cast Berserking"; end
            end
            -- actions.cds+=/fireblood,if=debuff.vendetta.up
            if S.Fireblood:IsCastable() then
                if HR.Cast(S.Fireblood, Settings.Commons.OffGCDasOffGCD.Racials) then return "Cast Fireblood"; end
            end
            -- actions.cds+=/ancestral_call,if=debuff.vendetta.up
            if S.AncestralCall:IsCastable() then
                if HR.Cast(S.AncestralCall, Settings.Commons.OffGCDasOffGCD.Racials) then return "Cast Ancestral Call"; end
            end
        end
    end
    return false;
end
-- # Stealthed
local function Stealthed ()
    -- actions.stealthed=rupture,if=combo_points>=4&(talent.nightstalker.enabled|talent.subterfuge.enabled&(talent.exsanguinate.enabled&cooldown.exsanguinate.remains<=2|!ticking)&variable.single_target)&target.time_to_die-remains>6
    if S.Rupture:IsCastable("Melee") and ComboPoints >= 4
        and (S.Nightstalker:IsAvailable() or (S.Subterfuge:IsAvailable() and (S.Exsanguinate:IsAvailable() and S.Exsanguinate:CooldownRemainsP() <= 2 or not Target:DebuffP(S.Rupture)) and Cache.EnemiesCount[10] < 2))
        and (Target:FilteredTimeToDie(">", 6, -Target:DebuffRemainsP(S.Rupture)) or Target:TimeToDieIsNotValid()) then
        if HR.Cast(S.Rupture) then return "Cast Rupture (Exsanguinate)"; end
    end
    if S.Garrote:IsCastable("Melee") and S.Subterfuge:IsAvailable() then
        -- actions.stealthed+=/garrote,if=azerite.shrouded_suffocation.enabled&buff.subterfuge.up&buff.subterfuge.remains<1.3&!ss_buffed
        -- Not implemented because this is special for simc and we can have a shifting main target in reality where simc checks only a fix target on all normal abilities.
        -- actions.stealthed+=/garrote,target_if=min:remains,if=talent.subterfuge.enabled&(remains<12|pmultiplier<=1)&target.time_to_die-remains>2
        local function GarroteTargetIfFunc(TargetUnit)
            return TargetUnit:DebuffRemainsP(S.Garrote);
        end
        local function GarroteIfFunc(TargetUnit)
            return (TargetUnit:DebuffRemainsP(S.Garrote) < 12 or TargetUnit:PMultiplier(S.Garrote) <= 1)
                and (TargetUnit:FilteredTimeToDie(">", 2, -TargetUnit:DebuffRemainsP(S.Garrote)) or TargetUnit:TimeToDieIsNotValid())
                and Rogue.CanDoTUnit(TargetUnit, GarroteDMGThreshold);
        end
        if HR.AoEON() then
            local TargetIfUnit = CheckTargetIfTarget("min", GarroteTargetIfFunc, GarroteIfFunc);
            if TargetIfUnit and TargetIfUnit:GUID() ~= Target:GUID() then
                HR.CastLeftNameplate(TargetIfUnit, S.Garrote);
            end
        end
        if GarroteIfFunc(Target) then
            if HR.Cast(S.Garrote) then return "Cast Garrote (Subterfuge)"; end
        end
    end
    -- actions.stealthed+=/rupture,if=talent.subterfuge.enabled&azerite.shrouded_suffocation.enabled&!dot.rupture.ticking&variable.single_target
    if S.Rupture:IsCastable("Melee") and S.Subterfuge:IsAvailable() and ComboPoints > 0 and S.ShroudedSuffocation:AzeriteEnabled()
        and not Target:DebuffP(S.Rupture) and Cache.EnemiesCount[10] < 2 then
        if HR.Cast(S.Rupture) then return "Cast Rupture (Shrouded Suffocation)"; end
    end
    if S.Garrote:IsCastable("Melee") and S.Subterfuge:IsAvailable() then
        -- actions.stealthed+=/garrote,target_if=min:remains,if=talent.subterfuge.enabled&azerite.shrouded_suffocation.enabled&target.time_to_die>remains&(remains<18|!ss_buffed)
        local function GarroteTargetIfFunc(TargetUnit)
            return TargetUnit:DebuffRemainsP(S.Garrote);
        end
        local function GarroteIfFunc(TargetUnit)
            return S.ShroudedSuffocation:AzeriteEnabled()
                and (TargetUnit:FilteredTimeToDie(">", 0, -TargetUnit:DebuffRemainsP(S.Garrote)) or TargetUnit:TimeToDieIsNotValid())
                and (TargetUnit:DebuffRemainsP(S.Garrote) < 18 or not SSBuffed(TargetUnit))
                and Rogue.CanDoTUnit(TargetUnit, GarroteDMGThreshold);
        end
        if HR.AoEON() then
            local TargetIfUnit = CheckTargetIfTarget("min", GarroteTargetIfFunc, GarroteIfFunc);
            if TargetIfUnit and TargetIfUnit:GUID() ~= Target:GUID() then
                HR.CastLeftNameplate(TargetIfUnit, S.Garrote);
            end
        end
        if GarroteIfFunc(Target) then
            if HR.Cast(S.Garrote) then return "Cast Garrote (Shrouded Suffocation)"; end
        end
        -- actions.stealthed+=/garrote,if=talent.subterfuge.enabled&talent.exsanguinate.enabled&cooldown.exsanguinate.remains<1&prev_gcd.1.rupture&dot.rupture.remains>5+4*cp_max_spend
        if S.Exsanguinate:IsAvailable() and S.Exsanguinate:CooldownRemainsP() < 1 and Player:PrevGCD(1, S.Rupture) and Target:DebuffRemainsP(S.Rupture) > 5+4*Rogue.CPMaxSpend() then
            -- actions.stealthed+=/pool_resource,for_next=1
            if Player:EnergyPredicted() < 45 then
                if HR.Cast(S.PoolEnergy) then return "Pool for Garrote (Exsanguinate)"; end
            end
            if HR.Cast(S.Garrote) then return "Cast Garrote (Exsanguinate)"; end
        end
    end
end
-- # Damage over time abilities
local function Dot ()
    local SkipCycleGarrote, SkipCycleRupture, SkipRupture
    if PriorityRotation and Cache.EnemiesCount[10] > 3 then
        -- actions.dot=variable,name=skip_cycle_garrote,value=priority_rotation&spell_targets.fan_of_knives>3&(dot.garrote.remains<cooldown.garrote.duration|poisoned_bleeds>5)
        SkipCycleGarrote = Target:DebuffRemainsP(S.Garrote) < 6 or PoisonedBleeds > 5
        -- actions.dot+=/variable,name=skip_cycle_rupture,value=priority_rotation&spell_targets.fan_of_knives>3&(debuff.toxic_blade.up|(poisoned_bleeds>5&!azerite.scent_of_blood.enabled))
        SkipCycleRupture = Target:DebuffP(S.ToxicBladeDebuff) or (PoisonedBleeds > 5 and not S.ScentOfBlood:AzeriteEnabled())
    end
    -- actions.dot+=/variable,name=skip_rupture,value=debuff.vendetta.up&(debuff.toxic_blade.up|master_assassin_remains>0)&dot.rupture.remains>2
    SkipRupture = Target:DebuffP(S.Vendetta) and (Target:DebuffP(S.ToxicBladeDebuff) or MasterAssassinRemains() > 0) and Target:DebuffRemainsP(S.Rupture) > 2

    -- actions.dot=rupture,if=talent.exsanguinate.enabled&((combo_points>=cp_max_spend&cooldown.exsanguinate.remains<1)|(!ticking&(time>10|combo_points>=2)))
    if HR.CDsON() and S.Rupture:IsCastable("Melee") and ComboPoints > 0 and S.Exsanguinate:IsAvailable()
        and ((ComboPoints >= Rogue.CPMaxSpend() and S.Exsanguinate:CooldownRemainsP() < 1)
            or (not Target:DebuffP(S.Rupture) and (HL.CombatTime() > 10 or (ComboPoints >= 2)))) then
        if HR.Cast(S.Rupture) then return "Cast Rupture (Exsanguinate)"; end
    end
    -- actions.dot+=/garrote,if=(!talent.subterfuge.enabled|!(cooldown.vanish.up&cooldown.vendetta.remains<=4))&combo_points.deficit>=1+3*(azerite.shrouded_suffocation.enabled&cooldown.vanish.up)&refreshable&(pmultiplier<=1|remains<=tick_time&spell_targets.fan_of_knives>=3+azerite.shrouded_suffocation.enabled)&(!exsanguinated|remains<=tick_time*2&spell_targets.fan_of_knives>=3+azerite.shrouded_suffocation.enabled)&!ss_buffed&(target.time_to_die-remains)>4&(master_assassin_remains=0|!ticking&azerite.shrouded_suffocation.enabled)
    -- actions.dot+=/garrote,cycle_targets=1,if=!variable.skip_cycle_garrote&target!=self.target&(!talent.subterfuge.enabled|!(cooldown.vanish.up&cooldown.vendetta.remains<=4))&combo_points.deficit>=1+3*(azerite.shrouded_suffocation.enabled&cooldown.vanish.up)&refreshable&(pmultiplier<=1|remains<=tick_time&spell_targets.fan_of_knives>=3+azerite.shrouded_suffocation.enabled)&(!exsanguinated|remains<=tick_time*2&spell_targets.fan_of_knives>=3+azerite.shrouded_suffocation.enabled)&!ss_buffed&(target.time_to_die-remains)>12&(master_assassin_remains=0|!ticking&azerite.shrouded_suffocation.enabled)
    local EmpoweredDotRefresh = Cache.EnemiesCount[10] >= 3 + num(S.ShroudedSuffocation:AzeriteEnabled())
    if S.Garrote:IsCastable() and (Settings.Assassination.AlwaysSuggestGarrote or not S.Subterfuge:IsAvailable()
        or not HR.CDsON() or not (S.Vanish:CooldownUpP() and S.Vendetta:CooldownRemainsP() <= 4))
        and (ComboPointsDeficit >= 1 + 3 * num(S.ShroudedSuffocation:AzeriteEnabled() and S.Vanish:CooldownUpP())) then
        local function Evaluate_Garrote_Target(TargetUnit)
            return TargetUnit:DebuffRefreshableP(S.Garrote, 5.4)
                and (TargetUnit:PMultiplier(S.Garrote) <= 1 or TargetUnit:DebuffRemainsP(S.Garrote)
                    <= (HL.Exsanguinated(TargetUnit, "Garrote") and ExsanguinatedBleedTickTime or BleedTickTime) and EmpoweredDotRefresh)
                and (not HL.Exsanguinated(TargetUnit, "Garrote") or TargetUnit:DebuffRemainsP(S.Garrote) <= 1.5 and EmpoweredDotRefresh)
                and not SSBuffed(TargetUnit)
                and (MasterAssassinRemains() <= 0 or not Target:DebuffP(S.Garrote) and S.ShroudedSuffocation:AzeriteEnabled())
                and Rogue.CanDoTUnit(TargetUnit, GarroteDMGThreshold);
        end
        if Target:IsInRange("Melee") and Evaluate_Garrote_Target(Target)
            and (Target:FilteredTimeToDie(">", 4, -Target:DebuffRemainsP(S.Garrote)) or Target:TimeToDieIsNotValid()) then
            -- actions.maintain+=/pool_resource,for_next=1
            if Player:EnergyPredicted() < 45 then
                if HR.Cast(S.PoolEnergy) then return "Pool for Garrote (ST)"; end
            end
            if HR.Cast(S.Garrote) then return "Cast Garrote (Refresh)"; end
        end
        if HR.AoEON() and not SkipCycleGarrote then
            SuggestCycleDoT(S.Garrote, Evaluate_Garrote_Target, 12);
        end
    end
    -- actions.dot+=/crimson_tempest,if=spell_targets>=2&remains<2+(spell_targets>=5)&combo_points>=4
    if HR.AoEON() and S.CrimsonTempest:IsCastable("Melee") and ComboPoints >= 4 and Cache.EnemiesCount[10] >= 2
        and Target:DebuffRemainsP(S.CrimsonTempest) < 2 + num(Cache.EnemiesCount[10] >= 5) then
        if HR.Cast(S.CrimsonTempest) then return "Cast Crimson Tempest"; end
    end
    -- actions.dot+=/rupture,if=!variable.skip_rupture&combo_points>=4&refreshable&(pmultiplier<=1|remains<=tick_time&spell_targets.fan_of_knives>=3+azerite.shrouded_suffocation.enabled)&(!exsanguinated|remains<=tick_time*2&spell_targets.fan_of_knives>=3+azerite.shrouded_suffocation.enabled)&target.time_to_die-remains>4
    -- actions.dot+=/rupture,cycle_targets=1,if=!variable.skip_cycle_rupture&!variable.skip_rupture&target!=self.target&combo_points>=4&refreshable&(pmultiplier<=1|remains<=tick_time&spell_targets.fan_of_knives>=3+azerite.shrouded_suffocation.enabled)&(!exsanguinated|remains<=tick_time*2&spell_targets.fan_of_knives>=3+azerite.shrouded_suffocation.enabled)&target.time_to_die-remains>4
    if not SkipRupture and ComboPoints >= 4 then
        local function Evaluate_Rupture_Target(TargetUnit)
            return TargetUnit:DebuffRefreshableP(S.Rupture, RuptureThreshold)
                and (TargetUnit:PMultiplier(S.Rupture) <= 1 or TargetUnit:DebuffRemainsP(S.Rupture)
                    <= (HL.Exsanguinated(TargetUnit, "Rupture") and ExsanguinatedBleedTickTime or BleedTickTime) and EmpoweredDotRefresh)
                and (not HL.Exsanguinated(TargetUnit, "Rupture") or TargetUnit:DebuffRemainsP(S.Rupture) <= ExsanguinatedBleedTickTime*2 and EmpoweredDotRefresh)
                and Rogue.CanDoTUnit(TargetUnit, RuptureDMGThreshold);
        end
        if Target:IsInRange("Melee") and Evaluate_Rupture_Target(Target)
            and (Target:FilteredTimeToDie(">", 4, -Target:DebuffRemainsP(S.Rupture)) or Target:TimeToDieIsNotValid()) then
            if HR.Cast(S.Rupture) then return "Cast Rupture (Refresh)"; end
        end
        if HR.AoEON() and not SkipCycleRupture then
            SuggestCycleDoT(S.Rupture, Evaluate_Rupture_Target, 4);
        end
    end
    return false;
end
-- # Direct damage abilities
local function Direct ()
    -- actions.direct=envenom,if=combo_points>=4+talent.deeper_stratagem.enabled&(debuff.vendetta.up|debuff.toxic_blade.up|energy.deficit<=25+variable.energy_regen_combined|spell_targets.fan_of_knives>=2)&(!talent.exsanguinate.enabled|cooldown.exsanguinate.remains>2)
    if S.Envenom:IsCastable("Melee") and ComboPoints >= 4 + (S.DeeperStratagem:IsAvailable() and 1 or 0)
        and (Target:DebuffP(S.Vendetta) or Target:DebuffP(S.ToxicBladeDebuff) or Player:EnergyDeficitPredicted() <= 25 + Energy_Regen_Combined or Cache.EnemiesCount[10] >= 2)
        and (not S.Exsanguinate:IsAvailable() or S.Exsanguinate:CooldownRemainsP() > 2 or not HR.CDsON()) then
        if HR.Cast(S.Envenom) then return "Cast Envenom"; end
    end

    -------------------------------------------------------------------
    -------------------------------------------------------------------
    -- actions.direct+=/variable,name=use_filler,value=combo_points.deficit>1|energy.deficit<=25+variable.energy_regen_combined|spell_targets.fan_of_knives>=2
    -- This is used in all following fillers, so we just return false if not true and won't consider these.
    if not (ComboPointsDeficit > 1 or Player:EnergyDeficitPredicted() <= 25 + Energy_Regen_Combined or Cache.EnemiesCount[10] >= 2) then
        return false;
    end
    -------------------------------------------------------------------
    -------------------------------------------------------------------

    if S.FanofKnives:IsCastable("Melee") then
        -- actions.direct+=/fan_of_knives,if=variable.use_filler&azerite.echoing_blades.enabled&spell_targets.fan_of_knives>=2
        if S.EchoingBlades:AzeriteEnabled() and Cache.EnemiesCount[10] >= 2 then
            if HR.Cast(S.FanofKnives) then return "Cast Fan of Knives (Echoing Blades)"; end
        end
        -- actions.direct+=/fan_of_knives,if=variable.use_filler&(buff.hidden_blades.stack>=19|(!priority_rotation&spell_targets.fan_of_knives>=4+(azerite.double_dose.rank>2)+stealthed.rogue))
        if HR.AoEON() and (Player:BuffStack(S.HiddenBladesBuff) >= 19 or Player:BuffStack(S.TheDreadlordsDeceit) >= 29
            or not PriorityRotation and Cache.EnemiesCount[10] >= 4 + num(Player:IsStealthedP(true, false)) + num(S.DoubleDose:AzeriteRank() > 2)) then
            if HR.Cast(S.FanofKnives) then return "Cast Fan of Knives"; end
        end
        -- actions.direct+=/fan_of_knives,target_if=!dot.deadly_poison_dot.ticking,if=variable.use_filler&spell_targets.fan_of_knives>=3
        if HR.AoEON() and Player:BuffP(S.DeadlyPoison) and Cache.EnemiesCount[10] >= 3 then
            for _, CycleUnit in pairs(Cache.Enemies[10]) do
                -- Note: The APL does not do this due to target_if mechanics, but since we are cycling we should check to see if the unit has a bleed
                if (CycleUnit:DebuffP(S.Garrote) or CycleUnit:DebuffP(S.Rupture)) and not CycleUnit:DebuffP(S.DeadlyPoisonDebuff) then
                    if HR.Cast(S.FanofKnives) then return "Cast Fan of Knives (DP Refresh)"; end
                end
            end
        end
    end
    -- actions.direct+=/blindside,if=variable.use_filler&(buff.blindside.up|!talent.venom_rush.enabled&!azerite.double_dose.enabled)
    if S.Blindside:IsCastable("Melee") and (Player:BuffP(S.BlindsideBuff) or (not S.VenomRush:IsAvailable() and not S.DoubleDose:AzeriteEnabled() and Target:HealthPercentage() < 30)) then
        if HR.Cast(S.Blindside) then return "Cast Blindside"; end
    end
    -- actions.direct+=/mutilate,target_if=!dot.deadly_poison_dot.ticking,if=variable.use_filler&spell_targets.fan_of_knives=2
    if S.Mutilate:IsCastable("Melee") and Cache.EnemiesCount[10] == 2 then
        local TargetGUID = Target:GUID();
        for _, CycleUnit in pairs(Cache.Enemies["Melee"]) do
            -- Note: The APL does not do this due to target_if mechanics, but since we are cycling we should check to see if the unit has a bleed
            if CycleUnit:GUID() ~= TargetGUID and (CycleUnit:DebuffP(S.Garrote) or CycleUnit:DebuffP(S.Rupture)) and not CycleUnit:DebuffP(S.DeadlyPoisonDebuff) then
                HR.CastLeftNameplate(CycleUnit, S.Mutilate);
                break;
            end
        end
    end
    -- actions.direct+=/mutilate,if=variable.use_filler
    if S.Mutilate:IsCastable("Melee") then
        if HR.Cast(S.Mutilate) then return "Cast Mutilate"; end
    end
    return false;
end

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()	

    -- Spell ID Changes check
    Stealth = S.Subterfuge:IsAvailable() and S.Stealth2 or S.Stealth; -- w/ or w/o Subterfuge Talent
    -- Unit Update
    HL.GetEnemies(50); -- Used for Rogue.PoisonedBleeds()
    HL.GetEnemies(30); -- Used for Poisoned Knife Poison refresh
    HL.GetEnemies(10, true); -- Fan of Knives
    HL.GetEnemies("Melee"); -- Melee

    -- Compute Cache
    ComboPoints = Player:ComboPoints();
    ComboPointsDeficit = Player:ComboPointsMax() - ComboPoints;
    RuptureThreshold = (4 + ComboPoints * 4) * 0.3;
    RuptureDMGThreshold = S.Envenom:Damage()*Settings.Assassination.EnvenomDMGOffset; -- Used to check if Rupture is worth to be casted since it's a finisher.
    GarroteDMGThreshold = S.Mutilate:Damage()*Settings.Assassination.MutilateDMGOffset; -- Used as TTD Not Valid fallback since it's a generator.
    PriorityRotation = UsePriorityRotation();

    -- Defensives
    -- Crimson Vial
    ShouldReturn = Rogue.CrimsonVial(S.CrimsonVial);
    if ShouldReturn then return ShouldReturn; end
    -- Feint
    ShouldReturn = Rogue.Feint(S.Feint);
    if ShouldReturn then return ShouldReturn; end
	
    -- Handle all generics trinkets	
	local function GeneralTrinkets()
        if trinketReady(1) then
        	if HR.Cast(I.GenericTrinket1) then return "GenericTrinket1"; end
        end
		if trinketReady(2) then
            if HR.Cast(I.GenericTrinket2) then return "GenericTrinket2"; end
        end
    end
	
	-- Anti channel interrupt
	if Player:IsCasting() or Player:IsChanneling() then
	    ShouldStop = true
	else
	    ShouldStop = false
	end
    
	-- Defensives
    -- Crimson Vial
    ShouldReturn = CrimsonVial(S.CrimsonVial);
    if ShouldReturn then return ShouldReturn; end
    -- Feint
    ShouldReturn = Feint(S.Feint);
    if ShouldReturn then return ShouldReturn; end
	
-- # Essences
local function Essences()
    -- blood_of_the_enemy,if=variable.blade_flurry_sync&cooldown.between_the_eyes.up&variable.bte_condition
    if S.BloodoftheEnemy:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and Blade_Flurry_Sync() and S.BetweentheEyes:CooldownUpP() and BtECondition() then
        if HR.Cast(S.BloodoftheEnemy) then return "Cast BloodoftheEnemy"; end
    end
    -- concentrated_flame,if=energy.time_to_max>1&!buff.blade_flurry.up&(!dot.concentrated_flame_burn.ticking&!action.concentrated_flame.in_flight|full_recharge_time<gcd.max)
    if S.ConcentratedFlame:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and Player:EnergyTimeToMaxPredicted() > 1 and not Player:BuffP(S.BladeFlurry) and (not Target:DebuffP(S.ConcentratedFlameBurn) and not Player:PrevGCD(1, S.ConcentratedFlame) or S.ConcentratedFlame:FullRechargeTime() < Player:GCD() + Player:GCDRemains()) then
        if HR.Cast(S.ConcentratedFlame) then return "Cast ConcentratedFlame"; end
    end
    -- guardian_of_azeroth
    if S.GuardianofAzeroth:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
        if HR.Cast(S.GuardianofAzeroth) then return "Cast GuardianofAzeroth"; end
    end
    -- focused_azerite_beam
    if S.FocusedAzeriteBeam:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
        if HR.Cast(S.FocusedAzeriteBeam) then return "Cast FocusedAzeriteBeam"; end
    end
    -- purifying_blast
    if S.PurifyingBlast:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
        if HR.Cast(S.PurifyingBlast) then return "Cast PurifyingBlast"; end
    end
    -- actions.essences+=/the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10
    if S.TheUnboundForce:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10) then
        if HR.Cast(S.TheUnboundForce) then return "Cast TheUnboundForce"; end
    end
    -- ripple_in_space
    if S.RippleInSpace:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
        if HR.Cast(S.RippleInSpace) then return "Cast RippleInSpace"; end
    end
    -- worldvein_resonance,if=buff.lifeblood.stack<3
    if S.WorldveinResonance:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and Player:BuffStackP(S.LifebloodBuff) < 3 then
        if HR.Cast(S.WorldveinResonance) then return "Cast WorldveinResonance"; end
    end
    -- memory_of_lucid_dreams,if=energy<45
    if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and Player:EnergyPredicted() < 45 then
        if HR.Cast(S.MemoryofLucidDreams) then return "Cast MemoryofLucidDreams"; end
    end
    return false;
end

local function CDs()
    if Target:IsInRange(S.SinisterStrike) then
        -- actions.cds+=/call_action_list,name=essences,if=!stealthed.all
        if HR.CDsON() and not Player:IsStealthedP(true, true) then
            ShouldReturn = Essences();
            if ShouldReturn then return ShouldReturn; end
        end

        -- actions.cds+=/adrenaline_rush,if=!buff.adrenaline_rush.up&energy.time_to_max>1&(!equipped.azsharas_font_of_power|cooldown.latent_arcana.remains>20)
        if S.AdrenalineRush:IsCastableP() and HR.CDsON() and not Player:BuffP(S.AdrenalineRush) and EnergyTimeToMaxRounded() > 1 and (not I.FontOfPower:IsEquipped() or I.FontOfPower:CooldownRemains() > 20) then
            if HR.Cast(S.AdrenalineRush, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Adrenaline Rush"; end
        end

        -- actions.cds+=/marked_for_death,target_if=min:target.time_to_die,if=target.time_to_die<combo_points.deficit|((raid_event.adds.in>40|buff.true_bearing.remains>15-buff.adrenaline_rush.up*5)&!stealthed.rogue&combo_points.deficit>=cp_max_spend-1)
        if S.MarkedforDeath:IsCastable() then
            -- Note: Increased the SimC condition by 50% since we are slower.
            if Target:FilteredTimeToDie("<", Player:ComboPointsDeficit()*1.5) or (Target:FilteredTimeToDie("<", 2) and Player:ComboPointsDeficit() > 0)
            or (((Player:BuffRemainsP(S.TrueBearing) > 15 - (Player:BuffP(S.AdrenalineRush) and 5 or 0)) or Target:IsDummy())
            and not Player:IsStealthedP(true, true) and Player:ComboPointsDeficit() >= CPMaxSpend() - 1) then
                if HR.Cast(S.MarkedforDeath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Marked for Death"; end
            elseif not Player:IsStealthedP(true, true) and Player:ComboPointsDeficit() >= CPMaxSpend() - 1 then
                HR.Cast(S.MarkedforDeath);
            end
        end
        if HR.CDsON() then
            -- actions.cds+=/blade_flurry,if=spell_targets.blade_flurry>=2&!buff.blade_flurry.up
            if HR.AoEON() and S.BladeFlurry:IsCastable() and EnemiesCount >= 2 and not Player:BuffP(S.BladeFlurry) then
                if Action.GetToggle(2, "OffGCDasOffGCD") then
                    HR.Cast(S.BladeFlurry);
                else
                    if HR.Cast(S.BladeFlurry) then return "Cast Blade Flurry"; end
                end
            end
            if Blade_Flurry_Sync() then
                -- actions.cds+=/ghostly_strike,if=variable.blade_flurry_sync&combo_points.deficit>=1+buff.broadside.up
                if S.GhostlyStrike:IsCastableP(S.SinisterStrike) and Player:ComboPointsDeficit() >= (1 + (Player:BuffP(S.Broadside) and 1 or 0)) then
                    if HR.Cast(S.GhostlyStrike, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Ghostly Strike"; end
                end
                -- actions.cds+=/killing_spree,if=variable.blade_flurry_sync&(energy.time_to_max>5|energy<15)
                if S.KillingSpree:IsCastableP(10) and (EnergyTimeToMaxRounded() > 5 or Player:EnergyPredicted() < 15) then
                    if HR.Cast(S.KillingSpree) then return "Cast Killing Spree"; end
                end
                -- actions.cds+=/blade_rush,if=variable.blade_flurry_sync&energy.time_to_max>1
                if S.BladeRush:IsCastableP(S.SinisterStrike) and EnergyTimeToMaxRounded() > 1 then
                    if HR.Cast(S.BladeRush, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Blade Rush"; end
                end
            end
            if Action.GetToggle(2, "UseDPSVanish") and not Player:IsStealthedP(true, true) then
                -- # Using Vanish/Ambush is only a very tiny increase, so in reality, you're absolutely fine to use it as a utility spell.
                -- actions.cds+=/vanish,if=!stealthed.all&variable.ambush_condition
                if S.Vanish:IsCastable() and Ambush_Condition() then
                    if HR.Cast(S.Vanish, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Vanish"; end
                end
                -- actions.cds+=/shadowmeld,if=!stealthed.all&variable.ambush_condition
                if S.Shadowmeld:IsCastable() and Ambush_Condition() then
                    if HR.Cast(S.Shadowmeld, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Shadowmeld"; end
                end
            end
        end

        -- actions.cds=potion,if=buff.bloodlust.react|target.time_to_die<=60|buff.adrenaline_rush.up

        -- Trinkets
        -- actions.cds+=/use_item,if=buff.bloodlust.react|target.time_to_die<=20|combo_points.deficit<=2
        if (true) then
            if I.GalecallersBoon:IsEquipped() and I.GalecallersBoon:IsReady() and TrinketON() then
               if HR.Cast(I.GalecallersBoon) then return "Cast GalecallersBoon"; end
            end
            if I.LustrousGoldenPlumage:IsEquipped() and I.LustrousGoldenPlumage:IsReady() and TrinketON() then
                if HR.Cast(I.LustrousGoldenPlumage) then return "Cast LustrousGoldenPlumage"; end
            end
            if I.InvocationOfYulon:IsEquipped() and I.InvocationOfYulon:IsReady() and TrinketON() then
                if HR.Cast(I.InvocationOfYulon) then return "Cast InvocationOfYulon"; end
            end
            -- actions.cds+=/use_item,name=azsharas_font_of_power,if=!buff.adrenaline_rush.up&!buff.blade_flurry.up&cooldown.adrenaline_rush.remains<15
            if I.FontOfPower:IsEquipped() and I.FontOfPower:IsReady() and TrinketON() and not Player:BuffP(S.AdrenalineRush) and not Player:BuffP(S.BladeFlurry) and S.AdrenalineRush:CooldownRemainsP() < 15 then
                if HR.Cast(I.FontOfPower) then return "Cast FontOfPower"; end
            end
            -- if=!stealthed.all&buff.adrenaline_rush.down&buff.memory_of_lucid_dreams.down&energy.time_to_max>4&rtb_buffs<5
            if I.ComputationDevice:IsEquipped() and I.ComputationDevice:IsReady() and TrinketON() and not Player:IsStealthedP(true, true)
            and not Player:BuffP(S.AdrenalineRush) and not Player:BuffP(S.LucidDreamsBuff) and EnergyTimeToMaxRounded() > 4 and RtB_Buffs() < 5 then
                if HR.Cast(I.ComputationDevice) then return "Cast ComputationDevice"; end
            end
            -- actions.cds+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down|debuff.conductive_ink_debuff.up&target.health.pct<32&target.health.pct>=30|!debuff.conductive_ink_debuff.up&(debuff.razor_coral_debuff.stack>=20-10*debuff.blood_of_the_enemy.up|target.time_to_die<60)&buff.adrenaline_rush.remains>18
            if I.RazorCoral:IsEquipped() and I.RazorCoral:IsReady() and TrinketON() then
            local CastRazorCoral;
                if S.RazorCoralDebuff:ActiveCount() == 0 then
                    CastRazorCoral = true;
                else
                local ConductiveInkUnit = S.ConductiveInkDebuff:MaxDebuffStackPUnit()
                    if ConductiveInkUnit then
                    -- Cast if we are at 31%, if the enemy will die within 20s, or if the time to reach 30% will happen within 3s
                    CastRazorCoral = ConductiveInkUnit:HealthPercentage() <= 32 or (Target:IsInBossList() and Target:FilteredTimeToDie("<", 20)) or
                        (ConductiveInkUnit:HealthPercentage() <= 35 and ConductiveInkUnit:TimeToX(30) < 3);
                    else
                        CastRazorCoral = (S.RazorCoralDebuff:MaxDebuffStackP() >= 20 - 10 * num(Target:DebuffP(S.BloodoftheEnemyDebuff)) or Target:FilteredTimeToDie("<", 60))
                        and Player:BuffRemainsP(S.AdrenalineRush) > 18 or (Target:IsInBossList() and Target:FilteredTimeToDie("<", 20));
                    end
                end
                if CastRazorCoral then
                    if HR.Cast(I.RazorCoral) then return "Cast RazorCoral"; end
                end
            end
            -- Emulate SimC default behavior to use at max stacks
            if I.VigorTrinket:IsEquipped() and I.VigorTrinket:IsReady() and TrinketON() and Player:BuffStack(S.VigorTrinketBuff) == 6 then
                if HR.Cast(I.VigorTrinket) then return "Cast VigorTrinket"; end
            end
        end

        -- Racials
        if HR.CDsON() then
            -- actions.cds+=/blood_fury
            if S.BloodFury:IsCastable() then
                if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Blood Fury"; end
            end
            -- actions.cds+=/berserking
            if S.Berserking:IsCastable() then
                if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Berserking"; end
            end
            -- actions.cds+=/fireblood
            if S.Fireblood:IsCastable() then
                if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Fireblood"; end
            end
            -- actions.cds+=/ancestral_call
            if S.AncestralCall:IsCastable() then
                if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Ancestral Call"; end
            end
        end
    end
end

local function Stealth()
    if Target:IsInRange(S.SinisterStrike) then
        -- actions.stealth=ambush
        if S.Ambush:IsCastable() then
            if HR.Cast(S.Ambush) then return "Cast Ambush"; end
        end
    end
end

local function Finish()
    -- # BtE over RtB rerolls with 2+ Deadshot traits or Ruthless Precision.
    -- actions.finish=between_the_eyes,if=variable.bte_condition
    if S.BetweentheEyes:IsCastableP(20) and BtECondition() then
        if HR.Cast(S.BetweentheEyes) then return "Cast Between the Eyes (Pre RtB)"; end
    end
    -- actions.finish=slice_and_dice,if=buff.slice_and_dice.remains<target.time_to_die&buff.slice_and_dice.remains<(1+combo_points)*1.8
    -- Note: Added Player:BuffRemainsP(S.SliceandDice) == 0 to maintain the buff while TTD is invalid (it's mainly for Solo, not an issue in raids)
    if S.SliceandDice:IsAvailable() and S.SliceandDice:IsCastableP()
    and (Target:FilteredTimeToDie(">", Player:BuffRemainsP(S.SliceandDice)) or Target:TimeToDieIsNotValid() or Player:BuffRemainsP(S.SliceandDice) == 0)
    and Player:BuffRemainsP(S.SliceandDice) < (1 + Player:ComboPoints()) * 1.8 then
        if HR.Cast(S.SliceandDice) then return "Cast Slice and Dice"; end
    end
    -- actions.finish+=/roll_the_bones,if=buff.roll_the_bones.remains<=3|variable.rtb_reroll
    if S.RolltheBones:IsCastable() and (RtB_BuffRemains() <= 3 or RtB_Reroll()) then
        if HR.Cast(S.RolltheBones) then return "Cast Roll the Bones"; end
    end
    -- # BtE with the Ace Up Your Sleeve or Deadshot traits.
    -- actions.finish+=/between_the_eyes,if=azerite.ace_up_your_sleeve.enabled|azerite.deadshot.enabled
    if S.BetweentheEyes:IsCastableP(20) and (S.AceUpYourSleeve:AzeriteEnabled() or S.Deadshot:AzeriteEnabled()) then
        if HR.Cast(S.BetweentheEyes) then return "Cast Between the Eyes"; end
    end
    -- actions.finish+=/dispatch
    if S.Dispatch:IsCastable(S.Dispatch) then
        if HR.Cast(S.Dispatch) then return "Cast Dispatch"; end
    end
    -- OutofRange BtE
    if S.BetweentheEyes:IsCastableP(20) and not Target:IsInRange(10) then
        if HR.Cast(S.BetweentheEyes) then return "Cast Between the Eyes (OOR)"; end
    end
end

local function Build()
    -- actions.build=pistol_shot,if=buff.opportunity.up&(buff.keep_your_wits_about_you.stack<10|buff.deadshot.up|energy<45)
    if S.PistolShot:IsCastable(20) and Player:BuffP(S.Opportunity) and (Player:BuffStackP(S.KeepYourWitsBuff) < 10 or Player:BuffP(S.DeadshotBuff) or Player:EnergyPredicted() < 45) then
        if HR.Cast(S.PistolShot) then return "Cast Pistol Shot"; end
    end
    -- actions.build+=/sinister_strike
    if S.SinisterStrike:IsCastable(S.SinisterStrike) then
        if HR.Cast(S.SinisterStrike) then return "Cast Sinister Strike"; end
    end
end

    -- Out of Combat
    if not Player:AffectingCombat() then
        -- Precombat CDs
        if HR.CDsON() then
            --if Everyone.TargetIsValid() then
                if S.MarkedforDeath:IsCastableP() and Player:ComboPointsDeficit() >= CPMaxSpend() then
                    if HR.Cast(S.MarkedforDeath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Marked for Death (OOC)"; end
                end
                local usingTrinket = false;
                -- actions.precombat+=/use_item,name=azsharas_font_of_power
                if I.FontOfPower:IsEquipped() and I.FontOfPower:IsReady() then
                usingTrinket = true;
                    if HR.Cast(I.FontOfPower) then return "Cast Font of Power"; end
                end
                -- actions.precombat+=/use_item,effect_name=cyclotronic_blast,if=!raid_event.invulnerable.exists
                if I.ComputationDevice:IsEquipped() and I.ComputationDevice:IsReady() then
                    usingTrinket = true;
                    if HR.Cast(I.ComputationDevice) then return "Cast Computation Device"; end
                end
                -- AR
                if Action.GetToggle(2, "PrecombatAR") and HR.CDsON() and not usingTrinket and S.AdrenalineRush:IsCastableP() and not Player:BuffP(S.AdrenalineRush) then
                    if HR.Cast(S.AdrenalineRush, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Adrenaline Rush (OOC)"; end
                end
            --end
        end
        -- Stealth
        if not Player:Buff(S.VanishBuff) then
            ShouldReturn = Stealth(S.Stealth);
            if ShouldReturn then return ShouldReturn; end
        end
        -- Flask
        -- Food
        -- Rune
        -- PrePot w/ Bossmod Countdown
        -- Opener
        --if Everyone.TargetIsValid() then
            if Player:ComboPoints() >= 5 then
                ShouldReturn = Finish();
                if ShouldReturn then return "Finish: " .. ShouldReturn; end
            elseif Target:IsInRange(S.SinisterStrike) then
                if Player:IsStealthedP(true, true) and S.Ambush:IsCastable() then
                    if HR.Cast(S.Ambush) then return "Cast Ambush (Opener)"; end
                elseif S.SinisterStrike:IsCastable() then
                    if HR.Cast(S.SinisterStrike) then return "Cast Sinister Strike (Opener)"; end
                end
            end
        --end
        return;
    end

    -- In Combat
    -- MfD Sniping
    MfDSniping(S.MarkedforDeath);
      
	if Player:AffectingCombat() then
		
		-- Mythic Dungeon
        ShouldReturn = MythicDungeon();
        if ShouldReturn then return ShouldReturn; end
        
		-- Training Scenario
        ShouldReturn = TrainingScenario();
        if ShouldReturn then return ShouldReturn; end
        
 		-- Interrupt Handler
 	 	local randomInterrupt = math.random(25, 70)
  		local unit = "target"
   		local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
        
  	    -- Kick
  	    if useKick and S.Kick:IsReady() and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.Kick, true) then return "Kick 5"; end
         	else 
          	    return
         	end 
      	end 
	
     	 -- CheapShot
      	if useCC and S.CheapShot:IsReady() and Target:IsInterruptible() and Player:EnergyPredicted() >= 40 then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.CheapShot, true) then return "CheapShot 5"; end
     	    else 
     	        return
     	    end 
     	end 

        -- actions+=/call_action_list,name=stealth,if=stealthed.all
        if Player:IsStealthedP(true, true) then
            ShouldReturn = Stealth();
            if ShouldReturn then return "Stealth: " .. ShouldReturn; end
        end
        -- actions+=/call_action_list,name=cds
        ShouldReturn = CDs();
        if ShouldReturn and HR.CDsON() then return "CDs: " .. ShouldReturn; end
        -- actions+=/run_action_list,name=finish,if=combo_points>=cp_max_spend-(buff.broadside.up+buff.opportunity.up)*(talent.quick_draw.enabled&(!talent.marked_for_death.enabled|cooldown.marked_for_death.remains>1))
        if Player:ComboPoints() >= CPMaxSpend() - (num(Player:BuffP(S.Broadside)) + num(Player:BuffP(S.Opportunity))) * num(S.QuickDraw:IsAvailable() and (not S.MarkedforDeath:IsAvailable() or S.MarkedforDeath:CooldownRemainsP() > 1)) then
            ShouldReturn = Finish();
            if ShouldReturn then return "Finish: " .. ShouldReturn; end
            -- run_action_list forces the return
            return "Waiting to Finish..."
        end
        -- actions+=/call_action_list,name=build
        ShouldReturn = Build();
        if ShouldReturn then return "Build: " .. ShouldReturn; end
        -- actions+=/arcane_torrent,if=energy.deficit>=15+energy.regen
        if S.ArcaneTorrent:IsCastableP(S.SinisterStrike) and Player:EnergyDeficitPredicted() > 15 + Player:EnergyRegen() then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Arcane Torrent"; end
        end
        -- actions+=/arcane_pulse
        if S.ArcanePulse:IsCastableP(S.SinisterStrike) then
            if HR.Cast(S.ArcanePulse) then return "Cast Arcane Pulse"; end
        end
        -- actions+=/lights_judgment
        --if S.LightsJudgment:IsCastableP(S.SinisterStrike) then
        --    if HR.Cast(S.LightsJudgment, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Lights Judgment"; end
        --end
        -- OutofRange Pistol Shot
        if not Target:IsInRange(BladeFlurryRange) and S.PistolShot:IsCastable(20) and not Player:IsStealthedP(true, true)
            and Player:EnergyDeficitPredicted() < 25 and (Player:ComboPointsDeficit() >= 1 or EnergyTimeToMaxRounded() <= 1.2) then
            if HR.Cast(S.PistolShot) then return "Cast Pistol Shot (OOR)"; end
        end
		        -- run_action_list,name=trinkets
        if (true) then
            local ShouldReturn = GeneralTrinkets(); if ShouldReturn then return ShouldReturn; end
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

