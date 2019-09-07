--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_WARLOCK_AFFLICTION] = {
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
    PetKick                              = Action.Create({ Type = "SpellSingleColor", ID = 119910, Color = "RED", Desc = "RED Color for Pet Target kick" }),  
    -- Generics Spells
    SummonPet                             = Action.Create({ Type = "Spell", ID = 688     }),
    GrimoireofSacrifice                   = Action.Create({ Type = "Spell", ID = 108503     }),
    SoulFire                              = Action.Create({ Type = "Spell", ID = 6353     }),
    Incinerate                            = Action.Create({ Type = "Spell", ID = 29722     }),
    RainofFire                            = Action.Create({ Type = "Spell", ID = 5740     }),
    GrimoireofSupremacy                   = Action.Create({ Type = "Spell", ID = 266086     }),
    Havoc                                 = Action.Create({ Type = "Spell", ID = 80240     }),
    ChannelDemonfire                      = Action.Create({ Type = "Spell", ID = 196447     }),
    Immolate                              = Action.Create({ Type = "Spell", ID = 348     }),
    Cataclysm                             = Action.Create({ Type = "Spell", ID = 152108     }),
    ChaosBolt                             = Action.Create({ Type = "Spell", ID = 116858     }),
    Inferno                               = Action.Create({ Type = "Spell", ID = 270545     }),
    FireandBrimstone                      = Action.Create({ Type = "Spell", ID = 196408     }),
    Conflagrate                           = Action.Create({ Type = "Spell", ID = 17962     }),
    Shadowburn                            = Action.Create({ Type = "Spell", ID = 17877     }),
    SummonInfernal                        = Action.Create({ Type = "Spell", ID = 1122     }),
    DarkSoulInstability                   = Action.Create({ Type = "Spell", ID = 113858     }),
    InternalCombustion                    = Action.Create({ Type = "Spell", ID = 266134     }),
    Flashover                             = Action.Create({ Type = "Spell", ID = 267115     }),
    CrashingChaos                         = Action.Create({ Type = "Spell", ID = 277644     }),
    Eradication                           = Action.Create({ Type = "Spell", ID = 196412     }),  
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
    -- Defensive
    UnendingResolve                      = Action.Create({ Type = "Spell", ID = 104773     }),
    -- Misc
    BurningRush                          = Action.Create({ Type = "Spell", ID = 278727     }),
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    -- Buffs
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),
    DarkSoulInstabilityBuff               = Action.Create({ Type = "Spell", ID = 113858, Hidden = true     }),
    BackdraftBuff                         = Action.Create({ Type = "Spell", ID = 117828, Hidden = true     }),
    CrashingChaosBuff                     = Action.Create({ Type = "Spell", ID = 277706 , Hidden = true     }),
     -- Debuffs 
    EradicationDebuff                     = Action.Create({ Type = "Spell", ID = 196414, Hidden = true     }),
    ShiverVenomDebuff                     = Action.Create({ Type = "Spell", ID = 301624, Hidden = true     }),
    ShadowburnDebuff                      = Action.Create({ Type = "Spell", ID = 17877, Hidden = true     }),  
    ImmolateDebuff                        = Action.Create({ Type = "Spell", ID = 157736, Hidden = true     }),  
    HavocDebuff                           = Action.Create({ Type = "Spell", ID = 80240, Hidden = true     }),  
    RainofFireDebuff                      = Action.Create({ Type = "Spell", ID = 5740, Hidden = true     }),  
    -- Trinkets
    GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
    GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
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
    -- Misc
    CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 293491, Hidden = true}),
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368, Hidden = true}),
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
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_WARLOCK_AFFLICTION)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_WARLOCK_AFFLICTION], { __index = Action })

local GetSpellCount = 
GetSpellCount
local IsIndoors, IsStealthed, IsMounted = 
IsIndoors, IsStealthed, IsMounted
local UnitIsPlayer, UnitExists, UnitIsUnit, UnitPower, UnitPowerMax = 
UnitIsPlayer, UnitExists, UnitIsUnit, UnitPower, UnitPowerMax

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
		[6] = "TellMeWhen_Group4_Icon6", 
})
Action.HeroSetHookAllTable(I, {
        [3] = "TellMeWhen_Group4_Icon3",
        [4] = "TellMeWhen_Group4_Icon4",
		[6] = "TellMeWhen_Group4_Icon6",
})
-- Adding manually missed staff
--S.Brews                                 = Spell(115308)
--S.BlackoutCombo                         = Spell(196736)
--S.BlackoutComboBuff                     = Spell(228563)

---------------------------

-- Rotation Var
local ShouldReturn; -- Used to get the return string
local EnemiesCount;
local InfernalActive, InfernalRemains;
local Everyone = HR.Commons.Everyone;

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

-- AoE Detection Mode
local function GetEnemiesCount(range)
    -- Unit Update - Update differently depending on if splash data is being used
    if HR.AoEON() then
        if Action.GetToggle(2, "AoeDetectionMode") == "USE COMBAT LOGS" then
	       return active_enemies()
	    elseif Action.GetToggle(2, "AoeDetectionMode") == "USE SPLASH DATA" then
	        HL.GetEnemies(range, nil, true, Target)
            return Cache.EnemiesCount[range]
	    else 
            UpdateRanges()
            return Cache.EnemiesCount[40]
        end
    else
        return 1
    end
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

local function num(val)
    if val then return 1 else return 0 end
end

local function bool(val)
    return val ~= 0
end

-- Variables
local VarPoolSoulShards = 0;

HL:RegisterForEvent(function()
  VarPoolSoulShards = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {40}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i);
  end
end

local function GetEnemiesCount(range)
  -- Unit Update - Update differently depending on if splash data is being used
  if HR.AoEON() then
    if Settings.Destruction.UseSplashData then
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

S.ConcentratedFlame:RegisterInFlight()
S.ChaosBolt:RegisterInFlight()

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

local function FutureShard()
  local Shard = Player:SoulShards()
  if not Player:IsCasting() then
    return Shard
  else
    if Player:IsCasting(S.UnstableAffliction) 
        or Player:IsCasting(S.SeedOfCorruption) then
      return Shard - 1
    elseif Player:IsCasting(S.SummonDoomGuard) 
        or Player:IsCasting(S.SummonDoomGuardSuppremacy) 
        or Player:IsCasting(S.SummonInfernal) 
        or Player:IsCasting(S.SummonInfernalSuppremacy) 
        or Player:IsCasting(S.GrimoireFelhunter) 
        or Player:IsCasting(S.SummonFelhunter) then
      return Shard - 1
    else
      return Shard
    end
  end
end

local function EnemyHasHavoc()
  for _, Value in pairs(Cache.Enemies[40]) do
    if Value:Debuff(S.Havoc) then
      return Value:DebuffRemainsP(S.Havoc)
    end
  end
  return 0
end

--------------------------
----- Destruction --------
--------------------------

HL.ImmolationTable = {
    Destruction = {
        ImmolationDebuff = {},
    }
};

-- Immolate OnApply/OnRefresh Listener
HL:RegisterForSelfCombatEvent(
    function (...)
    DestGUID, _, _, _, SpellID = select(8, ...);
       --- Record the Immolate
        if SpellID == 157736 then
          HL.ImmolationTable.Destruction.ImmolationDebuff[DestGUID] = 0;
        end
      end
    , "SPELL_AURA_APPLIED"
    , "SPELL_AURA_REFRESH"
);
-- Immolate OnRemove Listener
HL:RegisterForSelfCombatEvent(
    function (...)
        DestGUID, _, _, _, SpellID = select(8, ...);

        -- Removes the Unit from Immolate Table
        if SpellID == 157736 then
          if HL.ImmolationTable.Destruction.ImmolationDebuff[DestGUID] then
               HL.ImmolationTable.Destruction.ImmolationDebuff[DestGUID] = nil;
          end
        end
    end
    , "SPELL_AURA_REMOVED"
);
-- Immolate OnUnitDeath Listener
HL:RegisterForCombatEvent(
    function (...)
        DestGUID = select(8, ...);
        -- Removes the Unit from Immolate Table
        if HL.ImmolationTable.Destruction.ImmolationDebuff[DestGUID] then
          HL.ImmolationTable.Destruction.ImmolationDebuff[DestGUID] = nil;
        end
    end
    , "UNIT_DIED"
    , "UNIT_DESTROYED"
);
-- Conflagrate Listener
HL:RegisterForSelfCombatEvent(
    function (...)
       DestGUID, _, _, _, SpellID = select(8, ...);

        -- Add a stack to the table
        if SpellID == 17962 then
          if HL.ImmolationTable.Destruction.ImmolationDebuff[DestGUID] then
               HL.ImmolationTable.Destruction.ImmolationDebuff[DestGUID] = HL.ImmolationTable.Destruction.ImmolationDebuff[DestGUID]+1;
          end
        end
    end
    , "SPELL_CAST_SUCCESS"
);

local function EvaluateCycleImmolate46(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.ImmolateDebuff) < 5 and (not S.Cataclysm:IsAvailable() or S.Cataclysm:CooldownRemainsP() > TargetUnit:DebuffRemainsP(S.ImmolateDebuff))
end

local function EvaluateCycleHavoc71(TargetUnit)
  return not (TargetUnit == Target) and Cache.EnemiesCount[40] < 4
end

local function EvaluateCycleHavoc106(TargetUnit)
  return not (TargetUnit == Target) and (not S.GrimoireofSupremacy:IsAvailable() or not S.Inferno:IsAvailable() or S.GrimoireofSupremacy:IsAvailable() and InfernalRemains <= 10)
end

local function EvaluateCycleImmolate337(TargetUnit)
  return TargetUnit:DebuffRefreshableCP(S.ImmolateDebuff) and (not S.Cataclysm:IsAvailable() or S.Cataclysm:CooldownRemainsP() > TargetUnit:DebuffRemainsP(S.ImmolateDebuff))
end

local function EvaluateCycleHavoc402(TargetUnit)
  return not (TargetUnit == Target) and (TargetUnit:DebuffRemainsP(S.ImmolateDebuff) > S.ImmolateDebuff:BaseDuration() * 0.5 or not S.InternalCombustion:IsAvailable()) and (not S.SummonInfernal:CooldownUpP() or not S.GrimoireofSupremacy:IsAvailable() or S.GrimoireofSupremacy:IsAvailable() and InfernalRemains <= 10)
end

local function Init ()
  HL.RegisterNucleusAbility(42223, 8, 6)               -- Rain of Fire
  HL.RegisterNucleusAbility(152108, 8, 6)              -- Cataclysm
  HL.RegisterNucleusAbility(22703, 10, 6)               -- Summon Infernal
end
Init()

--- ======= ACTION LISTS =======
local function APL() 
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    EnemiesCount = GetEnemiesCount(10)
    HL.GetEnemies(40) -- To populate Cache.Enemies[40] for CastCycles
    InfernalActive = (S.SummonInfernal:CooldownRemainsP() > 150) and true or false
    InfernalRemains = InfernalActive and (30 - (180 - S.SummonInfernal:CooldownRemainsP())) or 0
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
	
	    -- Handle all generics trinkets	
	local function GeneralTrinkets()
        if trinketReady(1) then
        	if HR.Cast(I.GenericTrinket1) then return "GenericTrinket1"; end
        end
		if trinketReady(2) then
            if HR.Cast(I.GenericTrinket2) then return "GenericTrinket2"; end
        end
    end
	
    local function Precombat()
        -- flask
        -- food
        -- augmentation
        -- summon_pet
        if S.SummonPet:IsCastableP() and not Pet:Exists() then
            if HR.Cast(S.SummonPet) then return "summon_pet 3"; end
        end
        -- grimoire_of_sacrifice,if=talent.grimoire_of_sacrifice.enabled
        if S.GrimoireofSacrifice:IsReadyP() then
            if HR.Cast(S.GrimoireofSacrifice) then return "grimoire_of_sacrifice 5"; end
        end
        -- snapshot_stats
        if Everyone.TargetIsValid() then
            -- potion
            if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") then
                if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 10"; end
            end
            -- soul_fire
            if S.SoulFire:IsCastableP() then
                if HR.Cast(S.SoulFire) then return "soul_fire 12"; end
            end
            -- incinerate,if=!talent.soul_fire.enabled
            if S.Incinerate:IsCastableP() and (not S.SoulFire:IsAvailable()) then
                if HR.Cast(S.Incinerate) then return "incinerate 14"; end
            end
        end
    end
    local function Aoe()
        -- rain_of_fire,if=pet.infernal.active&(buff.crashing_chaos.down|!talent.grimoire_of_supremacy.enabled)&(!cooldown.havoc.ready|active_enemies>3)
        if S.RainofFire:IsReadyP() and (InfernalActive and (Player:BuffDownP(S.CrashingChaosBuff) or not S.GrimoireofSupremacy:IsAvailable()) and (not S.Havoc:CooldownUpP() or EnemiesCount > 3)) then
            if HR.Cast(S.RainofFire) then return "rain_of_fire 18"; end
        end
        -- channel_demonfire,if=dot.immolate.remains>cast_time
        if S.ChannelDemonfire:IsCastableP() and (Target:DebuffRemainsP(S.ImmolateDebuff) > S.ChannelDemonfire:CastTime()) then
            if HR.Cast(S.ChannelDemonfire) then return "channel_demonfire 34"; end
        end
        -- immolate,cycle_targets=1,if=remains<5&(!talent.cataclysm.enabled|cooldown.cataclysm.remains>remains)
        if S.Immolate:IsCastableP() and EvaluateCycleImmolate46(Target) then
            if HR.Cast(S.Immolate) then return "immolate 64" end
        end
        -- call_action_list,name=cds
        if HR.CDsON() then
            local ShouldReturn = Cds(); if ShouldReturn then return ShouldReturn; end
        end
        -- havoc,cycle_targets=1,if=!(target=self.target)&active_enemies<4
        if S.Havoc:IsCastableP() and EvaluateCycleHavoc71(Target) then
            if HR.Cast(S.Havoc) then return "havoc 81" end
        end
        -- chaos_bolt,if=talent.grimoire_of_supremacy.enabled&pet.infernal.active&(havoc_active|talent.cataclysm.enabled|talent.inferno.enabled&active_enemies<4)
        if S.ChaosBolt:IsReadyP() and (S.GrimoireofSupremacy:IsAvailable() and InfernalActive and (bool(EnemyHasHavoc()) or S.Cataclysm:IsAvailable() or S.Inferno:IsAvailable() and EnemiesCount < 4)) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 82"; end
        end
        -- rain_of_fire
        if S.RainofFire:IsReadyP() then
            if HR.Cast(S.RainofFire) then return "rain_of_fire 96"; end
        end
        -- focused_azerite_beam
        if S.FocusedAzeriteBeam:IsCastableP() then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam 98"; end
        end
        -- purifying_blast
        if S.PurifyingBlast:IsCastableP() then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast 100"; end
        end
        -- havoc,cycle_targets=1,if=!(target=self.target)&(!talent.grimoire_of_supremacy.enabled|!talent.inferno.enabled|talent.grimoire_of_supremacy.enabled&pet.infernal.remains<=10)
        if S.Havoc:IsCastableP() and EvaluateCycleHavoc106(Target) then
            if HR.Cast(S.Havoc) then return "havoc 120" end
        end
        -- incinerate,if=talent.fire_and_brimstone.enabled&buff.backdraft.up&soul_shard<5-0.2*active_enemies
        if S.Incinerate:IsCastableP() and (S.FireandBrimstone:IsAvailable() and Player:BuffP(S.BackdraftBuff) and Player:SoulShardsP() < 5 - 0.2 * EnemiesCount) then
            if HR.Cast(S.Incinerate) then return "incinerate 121"; end
        end
        -- soul_fire
        if S.SoulFire:IsCastableP() then
            if HR.Cast(S.SoulFire) then return "soul_fire 133"; end
        end
        -- conflagrate,if=buff.backdraft.down
        if S.Conflagrate:IsCastableP() and (Player:BuffDownP(S.BackdraftBuff)) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 135"; end
        end
        -- shadowburn,if=!talent.fire_and_brimstone.enabled
        if S.Shadowburn:IsCastableP() and (not S.FireandBrimstone:IsAvailable()) then
            if HR.Cast(S.Shadowburn) then return "shadowburn 139"; end
        end
        -- concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight&active_enemies<5
        if S.ConcentratedFlame:IsCastableP() and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight() and EnemiesCount < 5) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 143"; end
        end
        -- incinerate
        if S.Incinerate:IsCastableP() then
            if HR.Cast(S.Incinerate) then return "incinerate 157"; end
        end
    end
    local function Cds()
        -- immolate,if=talent.grimoire_of_supremacy.enabled&remains<8&cooldown.summon_infernal.remains<4.5
        if S.Immolate:IsCastableP() and (S.GrimoireofSupremacy:IsAvailable() and Target:DebuffRemainsP(S.ImmolateDebuff) < 8 and S.SummonInfernal:CooldownRemainsP() < 4.5) then
            if HR.Cast(S.Immolate) then return "immolate 161"; end
        end
        -- conflagrate,if=talent.grimoire_of_supremacy.enabled&cooldown.summon_infernal.remains<4.5&!buff.backdraft.up&soul_shard<4.3
        if S.Conflagrate:IsCastableP() and (S.GrimoireofSupremacy:IsAvailable() and S.SummonInfernal:CooldownRemainsP() < 4.5 and Player:BuffDownP(S.BackdraftBuff) and Player:SoulShardsP() < 4.3) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 163"; end
        end
        -- use_item,name=azsharas_font_of_power,if=cooldown.summon_infernal.up|cooldown.summon_infernal.remains<=4
        if I.AzsharasFontofPower:IsEquipReady() and (S.SummonInfernal:CooldownUpP() or S.SummonInfernal:CooldownRemainsP() <= 4) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 165"; end
        end
        -- summon_infernal
        if S.SummonInfernal:IsCastableP() then
            if HR.Cast(S.SummonInfernal) then return "summon_infernal 167"; end
        end
        -- guardian_of_azeroth,if=pet.infernal.active
        if S.GuardianofAzeroth:IsCastableP() and (InfernalActive) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 177"; end
        end
        -- dark_soul_instability,if=pet.infernal.active&(pet.infernal.remains<20.5|pet.infernal.remains<22&soul_shard>=3.6|!talent.grimoire_of_supremacy.enabled)
        if S.DarkSoulInstability:IsCastableP() and (InfernalActive and (InfernalRemains < 20.5 or InfernalRemains < 22 and Player:SoulShardsP() >= 3.6 or not S.GrimoireofSupremacy:IsAvailable())) then
            if HR.Cast(S.DarkSoulInstability) then return "dark_soul_instability 179"; end
        end
        -- memory_of_lucid_dreams,if=pet.infernal.active&(pet.infernal.remains<15.5|soul_shard<3.5&(buff.dark_soul_instability.up|!talent.grimoire_of_supremacy.enabled&dot.immolate.remains>12))
        if S.MemoryofLucidDreams:IsCastableP() and (InfernalActive and (InfernalRemains < 15.5 or Player:SoulShardsP() < 3.5 and (Player:BuffP(S.DarkSoulInstabilityBuff) or not S.GrimoireofSupremacy:IsAvailable() and Target:DebuffRemainsP(S.ImmolateDebuff) > 12))) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 187"; end
        end
        -- summon_infernal,if=target.time_to_die>cooldown.summon_infernal.duration+30
        if S.SummonInfernal:IsCastableP() and (Target:TimeToDie() > S.SummonInfernal:BaseDuration() + 30) then
            if HR.Cast(S.SummonInfernal) then return "summon_infernal 193"; end
        end
        -- guardian_of_azeroth,if=time>30&target.time_to_die>cooldown.guardian_of_azeroth.duration+30
        if S.GuardianofAzeroth:IsCastableP() and (HL.CombatTime() > 30 and Target:TimeToDie() > S.GuardianofAzeroth:BaseDuration() + 30) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 197"; end
        end
        -- summon_infernal,if=talent.dark_soul_instability.enabled&cooldown.dark_soul_instability.remains>target.time_to_die
        if S.SummonInfernal:IsCastableP() and (S.DarkSoulInstability:IsAvailable() and S.DarkSoulInstability:CooldownRemainsP() > Target:TimeToDie()) then
            if HR.Cast(S.SummonInfernal) then return "summon_infernal 201"; end
        end
        -- guardian_of_azeroth,if=cooldown.summon_infernal.remains>target.time_to_die
        if S.GuardianofAzeroth:IsCastableP() and (S.SummonInfernal:CooldownRemainsP() > Target:TimeToDie()) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 207"; end
        end
        -- dark_soul_instability,if=cooldown.summon_infernal.remains>target.time_to_die&pet.infernal.remains<20.5
        if S.DarkSoulInstability:IsCastableP() and (S.SummonInfernal:CooldownRemainsP() > Target:TimeToDie() and InfernalRemains < 20.5) then
            if HR.Cast(S.DarkSoulInstability) then return "dark_soul_instability 211"; end
        end
        -- memory_of_lucid_dreams,if=cooldown.summon_infernal.remains>target.time_to_die&(pet.infernal.remains<15.5|buff.dark_soul_instability.up&soul_shard<3)
        if S.MemoryofLucidDreams:IsCastableP() and (S.SummonInfernal:CooldownRemainsP() > Target:TimeToDie() and (InfernalRemains < 15.5 or Player:BuffP(S.DarkSoulInstabilityBuff) and Player:SoulShardsP() < 3)) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 215"; end
        end
        -- summon_infernal,if=target.time_to_die<30
        if S.SummonInfernal:IsCastableP() and (Target:TimeToDie() < 30) then
            if HR.Cast(S.SummonInfernal) then return "summon_infernal 219"; end
        end
        -- guardian_of_azeroth,if=target.time_to_die<30
        if S.GuardianofAzeroth:IsCastableP() and (Target:TimeToDie() < 30) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 221"; end
        end
        -- dark_soul_instability,if=target.time_to_die<21&target.time_to_die>4
        if S.DarkSoulInstability:IsCastableP() and (Target:TimeToDie() < 21 and Target:TimeToDie() > 4) then
            if HR.Cast(S.DarkSoulInstability) then return "dark_soul_instability 223"; end
        end
        -- memory_of_lucid_dreams,if=target.time_to_die<16&target.time_to_die>6
        if S.MemoryofLucidDreams:IsCastableP() and (Target:TimeToDie() < 16 and Target:TimeToDie() > 6) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 225"; end
        end
        -- blood_of_the_enemy
        if S.BloodoftheEnemy:IsCastableP() then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy 227"; end
        end
        -- worldvein_resonance
        if S.WorldveinResonance:IsCastableP() then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance 229"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastableP() then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space 231"; end
        end
        -- potion,if=pet.infernal.active|target.time_to_die<30
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (InfernalActive or Target:TimeToDie() < 30) then
            if HR.Cast(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 233"; end
        end
        -- berserking,if=pet.infernal.active&(!talent.grimoire_of_supremacy.enabled|(!essence.memory_of_lucid_dreams.major|buff.memory_of_lucid_dreams.remains)&(!talent.dark_soul_instability.enabled|buff.dark_soul_instability.remains))|target.time_to_die<=15
        if S.Berserking:IsCastableP() and HR.CDsON() and (InfernalActive and (not S.GrimoireofSupremacy:IsAvailable() or (not S.MemoryofLucidDreams:IsAvailable() or Player:BuffP(S.MemoryofLucidDreams)) and (not S.DarkSoulInstability:IsAvailable() or Player:BuffP(S.DarkSoulInstabilityBuff))) or Target:TimeToDie() <= 15) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "GCDasOffGCD")) then return "berserking 235"; end
        end
        -- blood_fury,if=pet.infernal.active&(!talent.grimoire_of_supremacy.enabled|(!essence.memory_of_lucid_dreams.major|buff.memory_of_lucid_dreams.remains)&(!talent.dark_soul_instability.enabled|buff.dark_soul_instability.remains))|target.time_to_die<=15
        if S.BloodFury:IsCastableP() and HR.CDsON() and (InfernalActive and (not S.GrimoireofSupremacy:IsAvailable() or (not S.MemoryofLucidDreams:IsAvailable() or Player:BuffP(S.MemoryofLucidDreams)) and (not S.DarkSoulInstability:IsAvailable() or Player:BuffP(S.DarkSoulInstabilityBuff))) or Target:TimeToDie() <= 15) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "GCDasOffGCD")) then return "blood_fury 241"; end
        end
        -- fireblood,if=pet.infernal.active&(!talent.grimoire_of_supremacy.enabled|(!essence.memory_of_lucid_dreams.major|buff.memory_of_lucid_dreams.remains)&(!talent.dark_soul_instability.enabled|buff.dark_soul_instability.remains))|target.time_to_die<=15
        if S.Fireblood:IsCastableP() and HR.CDsON() and (InfernalActive and (not S.GrimoireofSupremacy:IsAvailable() or (not S.MemoryofLucidDreams:IsAvailable() or Player:BuffP(S.MemoryofLucidDreams)) and (not S.DarkSoulInstability:IsAvailable() or Player:BuffP(S.DarkSoulInstabilityBuff))) or Target:TimeToDie() <= 15) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "GCDasOffGCD")) then return "fireblood 247"; end
        end
        -- use_items,if=pet.infernal.active&(!talent.grimoire_of_supremacy.enabled|pet.infernal.remains<=20)|target.time_to_die<=20
        -- use_item,name=pocketsized_computation_device,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20|target.time_to_die<30)
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and TrinketON() and (Target:DebuffRemainsP(S.ImmolateDebuff) >= 5 and (S.SummonInfernal:CooldownRemainsP() >= 20 or Target:TimeToDie() < 30)) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device 248"; end
        end
        -- use_item,name=rotcrusted_voodoo_doll,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20|target.time_to_die<30)
        if I.RotcrustedVoodooDoll:IsEquipReady() and TrinketON() and (Target:DebuffRemainsP(S.ImmolateDebuff) >= 5 and (S.SummonInfernal:CooldownRemainsP() >= 20 or Target:TimeToDie() < 30)) then
            if HR.Cast(I.RotcrustedVoodooDoll) then return "rotcrusted_voodoo_doll 249"; end
        end
        -- use_item,name=shiver_venom_relic,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20|target.time_to_die<30)
        if I.ShiverVenomRelic:IsEquipReady() and TrinketON() and (Target:DebuffRemainsP(S.ImmolateDebuff) >= 5 and (S.SummonInfernal:CooldownRemainsP() >= 20 or Target:TimeToDie() < 30)) then
            if HR.Cast(I.ShiverVenomRelic) then return "shiver_venom_relic 250"; end
        end
        -- use_item,name=aquipotent_nautilus,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20|target.time_to_die<30)
        if I.AquipotentNautilus:IsEquipReady() and TrinketON() and (Target:DebuffRemainsP(S.ImmolateDebuff) >= 5 and (S.SummonInfernal:CooldownRemainsP() >= 20 or Target:TimeToDie() < 30)) then
            if HR.Cast(I.AquipotentNautilus) then return "aquipotent_nautilus 251"; end
        end
        -- use_item,name=tidestorm_codex,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20|target.time_to_die<30)
        if I.TidestormCodex:IsEquipReady() and TrinketON() and (Target:DebuffRemainsP(S.ImmolateDebuff) >= 5 and (S.SummonInfernal:CooldownRemainsP() >= 20 or Target:TimeToDie() < 30)) then
            if HR.Cast(I.TidestormCodex) then return "tidestorm_codex 252"; end
        end
        -- use_item,name=vial_of_storms,if=dot.immolate.remains>=5&(cooldown.summon_infernal.remains>=20|target.time_to_die<30)
        if I.VialofStorms:IsEquipReady() and TrinketON() and (Target:DebuffRemainsP(S.ImmolateDebuff) >= 5 and (S.SummonInfernal:CooldownRemainsP() >= 20 or Target:TimeToDie() < 30)) then
            if HR.Cast(I.VialofStorms) then return "vial_of_storms 253"; end
        end
    end
    local function GoSupInfernal()
        -- rain_of_fire,if=soul_shard=5&!buff.backdraft.up&buff.memory_of_lucid_dreams.up&buff.grimoire_of_supremacy.stack<=10
        if S.RainofFire:IsReadyP() and (Player:SoulShardsP() == 5 and Player:BuffDownP(S.BackdraftBuff) and Player:BuffP(S.MemoryofLucidDreams) and Player:BuffStackP(S.GrimoireofSupremacy) <= 10) then
            if HR.Cast(S.RainofFire) then return "rain_of_fire 600"; end
        end
        -- chaos_bolt,if=buff.backdraft.up
        if S.ChaosBolt:IsReadyP() and (Player:BuffP(S.BackdraftBuff)) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 602"; end
        end
        -- chaos_bolt,if=soul_shard>=4.2-buff.memory_of_lucid_dreams.up
        if S.ChaosBolt:IsReadyP() and (Player:SoulShardsP() >= 4.2 - num(Player:BuffP(S.MemoryofLucidDreams))) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 604"; end
        end
        -- chaos_bolt,if=!cooldown.conflagrate.up
        if S.ChaosBolt:IsReadyP() and (not S.Conflagrate:CooldownUpP()) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 606"; end
        end
        -- chaos_bolt,if=cast_time<pet.infernal.remains&pet.infernal.remains<cast_time+gcd
        if S.ChaosBolt:IsReadyP() and (S.ChaosBolt:CastTime() < InfernalRemains and InfernalRemains < S.ChaosBolt:CastTime() + Player:GCD()) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 608"; end
        end
        -- conflagrate,if=buff.backdraft.down&buff.memory_of_lucid_dreams.up&soul_shard>=1.3
        if S.Conflagrate:IsCastableP() and (Player:BuffDownP(S.BackdraftBuff) and Player:BuffP(S.MemoryofLucidDreams) and Player:SoulShardsP() >= 1.3) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 610"; end
        end
        -- conflagrate,if=buff.backdraft.down&!buff.memory_of_lucid_dreams.up&(soul_shard>=2.8|charges_fractional>1.9&soul_shard>=1.3)
        if S.Conflagrate:IsCastableP() and (Player:BuffDownP(S.BackdraftBuff) and Player:BuffDownP(S.MemoryofLucidDreams) and (Player:SoulShardsP() >= 2.8 or S.Conflagrate:ChargesFractionalP() > 1.9 and Player:SoulShardsP() >= 1.3)) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 612"; end
        end
        -- conflagrate,if=pet.infernal.remains<5
        if S.Conflagrate:IsCastableP() and (InfernalRemains < 5) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 614"; end
        end
        -- conflagrate,if=charges>1
        if S.Conflagrate:IsCastableP() and (S.Conflagrate:ChargesP() > 1) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 616"; end
        end
        -- soul_fire
        if S.SoulFire:IsCastableP() then
            if HR.Cast(S.SoulFire) then return "soul_fire 618"; end
        end
        -- shadowburn
        if S.Shadowburn:IsCastableP() then
            if HR.Cast(S.Shadowburn) then return "shadowburn 620"; end
        end
        -- incinerate
        if S.Incinerate:IsCastableP() then
            if HR.Cast(S.Incinerate) then return "incinerate 622"; end
        end
    end
    local function Havoc()
        -- conflagrate,if=buff.backdraft.down&soul_shard>=1&soul_shard<=4
        if S.Conflagrate:IsCastableP() and (Player:BuffDownP(S.BackdraftBuff) and Player:SoulShardsP() >= 1 and Player:SoulShardsP() <= 4) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 254"; end
        end
        -- immolate,if=talent.internal_combustion.enabled&remains<duration*0.5|!talent.internal_combustion.enabled&refreshable
        if S.Immolate:IsCastableP() and (S.InternalCombustion:IsAvailable() and Target:DebuffRemainsP(S.ImmolateDebuff) < S.ImmolateDebuff:BaseDuration() * 0.5 or not S.InternalCombustion:IsAvailable() and Target:DebuffRefreshableCP(S.ImmolateDebuff)) then
            if HR.Cast(S.Immolate) then return "immolate 258"; end
        end
        -- chaos_bolt,if=cast_time<havoc_remains
        if S.ChaosBolt:IsReadyP() and (S.ChaosBolt:CastTime() < EnemyHasHavoc()) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 282"; end
        end
        -- soul_fire
        if S.SoulFire:IsCastableP() then
            if HR.Cast(S.SoulFire) then return "soul_fire 288"; end
        end
        -- shadowburn,if=active_enemies<3|!talent.fire_and_brimstone.enabled
        if S.Shadowburn:IsCastableP() and (EnemiesCount < 3 or not S.FireandBrimstone:IsAvailable()) then
            if HR.Cast(S.Shadowburn) then return "shadowburn 290"; end
        end
        -- incinerate,if=cast_time<havoc_remains
        if S.Incinerate:IsCastableP() and (S.Incinerate:CastTime() < EnemyHasHavoc()) then
            if HR.Cast(S.Incinerate) then return "incinerate 302"; end
        end
    end
    
	-- call DBM precombat
  --  if not Player:AffectingCombat() and Action.GetToggle(1, "DBM") and not Player:IsCasting() then
  --      local ShouldReturn = Precombat_DBM(); 
  --          if ShouldReturn then return ShouldReturn; 
  --      end    
  --  end
    -- call non DBM precombat
    if not Player:AffectingCombat() and not Action.GetToggle(1, "DBM") and not Player:IsCasting() then        
        local ShouldReturn = Precombat(); 
            if ShouldReturn then return ShouldReturn; 
        end    
    end
	
	
    
    --- In Combat
     if Everyone.TargetIsValid() then
	
	    -- Interrupt Handler
        local randomInterrupt = math.random(25, 70)
        local unit = "target"
        local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
        
		-- PetKick
        if useKick and S.PetKick:IsReady() and Target:IsInterruptible() then 
		    if Target:CastPercentage() >= randomInterrupt then
                if HR.Cast(S.PetKick, true) then return "PetKick 5"; end
            else 
                return
            end 
        end    
        -- call_action_list,name=havoc,if=havoc_active&active_enemies<5-talent.inferno.enabled+(talent.inferno.enabled&talent.internal_combustion.enabled)
        if (bool(EnemyHasHavoc()) and EnemiesCount < 5 - num(S.Inferno:IsAvailable()) + num((S.Inferno:IsAvailable() and S.InternalCombustion:IsAvailable()))) then
            local ShouldReturn = Havoc(); if ShouldReturn then return ShouldReturn; end
        end
        -- cataclysm,if=!(pet.infernal.active&dot.immolate.remains+1>pet.infernal.remains)|spell_targets.cataclysm>1|!talent.grimoire_of_supremacy.enabled
        if S.Cataclysm:IsCastableP() and (not (InfernalActive and Target:DebuffRemainsP(S.ImmolateDebuff) + 1 > InfernalRemains) or EnemiesCount > 1 or not S.GrimoireofSupremacy:IsAvailable()) then
            if HR.Cast(S.Cataclysm) then return "cataclysm 323"; end
        end
        -- call_action_list,name=aoe,if=active_enemies>2
        if (EnemiesCount > 2) then
            local ShouldReturn = Aoe(); if ShouldReturn then return ShouldReturn; end
        end
        -- immolate,cycle_targets=1,if=refreshable&(!talent.cataclysm.enabled|cooldown.cataclysm.remains>remains)
        if S.Immolate:IsCastableP() and EvaluateCycleImmolate337(Target) then
            if HR.Cast(S.Immolate) then return "immolate 355" end
        end
        -- immolate,if=talent.internal_combustion.enabled&action.chaos_bolt.in_flight&remains<duration*0.5
        if S.Immolate:IsCastableP() and (S.InternalCombustion:IsAvailable() and S.ChaosBolt:InFlight() and Target:DebuffRemainsP(S.ImmolateDebuff) < S.ImmolateDebuff:BaseDuration() * 0.5) then
            if HR.Cast(S.Immolate) then return "immolate 356"; end
        end
        -- call_action_list,name=cds
        if (HR.CDsON()) then
            local ShouldReturn = Cds(); if ShouldReturn then return ShouldReturn; end
        end
        -- focused_azerite_beam,if=!pet.infernal.active|!talent.grimoire_of_supremacy.enabled
        if S.FocusedAzeriteBeam:IsCastableP() and (not InfernalActive or not S.GrimoireofSupremacy:IsAvailable()) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam 378"; end
        end
        -- the_unbound_force,if=buff.reckless_force.react
        if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff)) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force 382"; end
        end
        -- purifying_blast
        if S.PurifyingBlast:IsCastableP() then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast 386"; end
        end
        -- concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight
        if S.ConcentratedFlame:IsCastableP() and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight()) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 388"; end
        end
        -- channel_demonfire
        if S.ChannelDemonfire:IsCastableP() then
            if HR.Cast(S.ChannelDemonfire) then return "channel_demonfire 396"; end
        end
        -- havoc,cycle_targets=1,if=!(target=self.target)&(dot.immolate.remains>dot.immolate.duration*0.5|!talent.internal_combustion.enabled)&(!cooldown.summon_infernal.ready|!talent.grimoire_of_supremacy.enabled|talent.grimoire_of_supremacy.enabled&pet.infernal.remains<=10)
        if S.Havoc:IsCastableP() and EvaluateCycleHavoc402(Target) then
            if HR.Cast(S.Havoc) then return "havoc 422" end
        end
        -- call_action_list,name=gosup_infernal,if=talent.grimoire_of_supremacy.enabled&pet.infernal.active
        if (S.GrimoireofSupremacy:IsAvailable() and InfernalActive) then
            local ShouldReturn = GoSupInfernal(); if ShouldReturn then return ShouldReturn; end
        end
        -- variable,name=pool_soul_shards,value=active_enemies>1&cooldown.havoc.remains<=10|cooldown.summon_infernal.remains<=15&(talent.grimoire_of_supremacy.enabled|talent.dark_soul_instability.enabled&cooldown.dark_soul_instability.remains<=15)|talent.dark_soul_instability.enabled&cooldown.dark_soul_instability.remains<=15&(cooldown.summon_infernal.remains>target.time_to_die|cooldown.summon_infernal.remains+cooldown.summon_infernal.duration>target.time_to_die)
        if (true) then
            VarPoolSoulShards = num(EnemiesCount > 1 and S.Havoc:CooldownRemainsP() <= 10 or S.SummonInfernal:CooldownRemainsP() <= 15 and (S.GrimoireofSupremacy:IsAvailable() or S.DarkSoulInstability:IsAvailable() and S.DarkSoulInstability:CooldownRemainsP() <= 15) or S.DarkSoulInstability:IsAvailable() and S.DarkSoulInstability:CooldownRemainsP() <= 15 and (S.SummonInfernal:CooldownRemainsP() > Target:TimeToDie() or S.SummonInfernal:CooldownRemainsP() + S.SummonInfernal:BaseDuration() > Target:TimeToDie()))
        end
        -- soul_fire
        if S.SoulFire:IsCastableP() then
            if HR.Cast(S.SoulFire) then return "soul_fire 423"; end
        end
        -- conflagrate,if=buff.backdraft.down&soul_shard>=1.5-0.3*talent.flashover.enabled&!variable.pool_soul_shards
        if S.Conflagrate:IsCastableP() and (Player:BuffDownP(S.BackdraftBuff) and Player:SoulShardsP() >= 1.5 - 0.3 * num(S.Flashover:IsAvailable()) and not bool(VarPoolSoulShards)) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 425"; end
        end
        -- shadowburn,if=soul_shard<2&(!variable.pool_soul_shards|charges>1)
        if S.Shadowburn:IsCastableP() and (Player:SoulShardsP() < 2 and (not bool(VarPoolSoulShards) or S.Shadowburn:ChargesP() > 1)) then
            if HR.Cast(S.Shadowburn) then return "shadowburn 433"; end
        end
        -- chaos_bolt,if=(talent.grimoire_of_supremacy.enabled|azerite.crashing_chaos.enabled)&pet.infernal.active|buff.dark_soul_instability.up|buff.reckless_force.react&buff.reckless_force.remains>cast_time
        if S.ChaosBolt:IsReadyP() and ((S.GrimoireofSupremacy:IsAvailable() or S.CrashingChaos:AzeriteEnabled()) and InfernalActive or Player:BuffP(S.DarkSoulInstabilityBuff) or Player:BuffP(S.RecklessForceBuff) and Player:BuffRemainsP(S.RecklessForceBuff) > S.ChaosBolt:CastTime()) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 471"; end
        end
        -- chaos_bolt,if=!variable.pool_soul_shards&!talent.eradication.enabled
        if S.ChaosBolt:IsReadyP() and (not bool(VarPoolSoulShards) and not S.Eradication:IsAvailable()) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 487"; end
        end
        -- chaos_bolt,if=buff.backdraft.up&!variable.pool_soul_shards&talent.eradication.enabled&(debuff.eradication.remains<cast_time|buff.backdraft.up)
        if S.ChaosBolt:IsReadyP() and (Player:BuffP(S.BackdraftBuff) and not bool(VarPoolSoulShards) and S.Eradication:IsAvailable() and (Target:DebuffRemainsP(S.EradicationDebuff) < S.ChaosBolt:CastTime() or Player:BuffP(S.BackdraftBuff))) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 493"; end
        end
        -- chaos_bolt,if=(soul_shard>=4.5-0.2*active_enemies)&(!talent.grimoire_of_supremacy.enabled|cooldown.summon_infernal.remains>7)
        if S.ChaosBolt:IsReadyP() and ((Player:SoulShardsP() >= 4.5 - 0.2 * EnemiesCount) and (not S.GrimoireofSupremacy:IsAvailable() or S.SummonInfernal:CooldownRemainsP() > 7)) then
            if HR.Cast(S.ChaosBolt) then return "chaos_bolt 507"; end
        end
        -- conflagrate,if=charges>1
        if S.Conflagrate:IsCastableP() and (S.Conflagrate:ChargesP() > 1) then
            if HR.Cast(S.Conflagrate) then return "conflagrate 515"; end
        end
        -- incinerate
        if S.Incinerate:IsCastableP() then
            if HR.Cast(S.Incinerate) then return "incinerate 521"; end
        end
        -- run_action_list,name=trinkets
        if (true) and not ShouldStop then
            local ShouldReturn = GeneralTrinkets(); if ShouldReturn then return ShouldReturn; end
        end	
    end
end
-- Finished



-----------------------------------------
--                 ROTATION  
-----------------------------------------

-- [3] is Single rotation (supports all actions)
A[3] = function(icon)
    if APL() then 
        return true 
    end 

end

--[[
-- [6] is Passive rotation (limited actions, usually @player, @raid1, @arena1)
A[6] = function(icon)    
    return ArenaRotation(icon, "arena1")
end

-- [7] is Passive rotation (limited actions, usually @party1, @raid2, @arena2)
A[7] = function(icon)
    local Party = PartyRotation("party1") 
    if Party then 
        return Party:Show(icon)
    end 
    
    return ArenaRotation(icon, "arena2")
end

-- [8] is Passive rotation (limited actions, usually @party2, @raid3, @arena3)
A[8] = function(icon)
    local Party = PartyRotation("party2") 
    if Party then 
        return Party:Show(icon)
    end     
    
    return ArenaRotation(icon, "arena3")
end]]--