--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_HUNTER_BEASTMASTERY] = {
    -- Racials
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
    -- Generics Spells    
    SummonPet                             = Action.Create({ Type = "Spell", ID = 883 }),
    AspectoftheWild                       = Action.Create({ Type = "Spell", ID = 193530 }),
    PrimalInstincts                       = Action.Create({ Type = "Spell", ID = 279806 }),
    BestialWrath                          = Action.Create({ Type = "Spell", ID = 19574 }),
    AncestralCall                         = Action.Create({ Type = "Spell", ID = 274738 }),
    Fireblood                             = Action.Create({ Type = "Spell", ID = 265221 }),
    Berserking                            = Action.Create({ Type = "Spell", ID = 26297 }),
    KillerInstinct                        = Action.Create({ Type = "Spell", ID = 273887 }),
    BloodFury                             = Action.Create({ Type = "Spell", ID = 20572 }),
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647 }),
    BarbedShot                            = Action.Create({ Type = "Spell", ID = 217200 }),
    Multishot                             = Action.Create({ Type = "Spell", ID = 2643 }),
    Stampede                              = Action.Create({ Type = "Spell", ID = 201430 }),
    ChimaeraShot                          = Action.Create({ Type = "Spell", ID = 53209 }),
    AMurderofCrows                        = Action.Create({ Type = "Spell", ID = 131894 }),
    Barrage                               = Action.Create({ Type = "Spell", ID = 120360 }),
    KillCommand                           = Action.Create({ Type = "Spell", ID = 34026 }),
    RapidReload                           = Action.Create({ Type = "Spell", ID = 278530 }),
    DireBeast                             = Action.Create({ Type = "Spell", ID = 120679 }),
    CobraShot                             = Action.Create({ Type = "Spell", ID = 193455 }),
    SpittingCobra                         = Action.Create({ Type = "Spell", ID = 194407 }),
    OneWithThePack                        = Action.Create({ Type = "Spell", ID = 199528 }),
    Intimidation                          = Action.Create({ Type = "Spell", ID = 19577 }),
    CounterShot                           = Action.Create({ Type = "Spell", ID = 147362 }),
    Exhilaration                          = Action.Create({ Type = "Spell", ID = 109304 }),
    DanceofDeath                          = Action.Create({ Type = "Spell", ID = 274441 }),
    -- Pet
    CallPet                               = Action.Create({ Type = "Spell", ID = 883 }),
    MendPet                               = Action.Create({ Type = "Spell", ID = 136 }),
    RevivePet                             = Action.Create({ Type = "Spell", ID = 982 }),
	-- Defensives
	AspectoftheTurtle                    = Action.Create({ Type = "Spell", ID = 274441 }),
    -- Misc
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    RecklessForceBuff                    = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),
    ConcentratedFlameBurn                = Action.Create({ Type = "Spell", ID = 295368, Hidden = true     }),
    CyclotronicBlast                     = Action.Create({ Type = "Spell", ID = 167672, Hidden = true     }),
    HarmonicDematerializer               = Action.Create({ Type = "Spell", ID = 293512, Hidden = true     }),
    RecklessForceCounter                 = Action.Create({ Type = "Spell", ID = 298409}),
    RecklessForceCounter2                 = Action.Create({ Type = "Spell", ID = 302917}),
	--PoolFocus                             = Action.Create({ Type = "Spell", ID = 9999000010, Hidden = true     }),
    -- Buffs
    DanceofDeathBuff                      = Action.Create({ Type = "Spell", ID = 274443 }),
    BeastCleaveBuff                       = Action.Create({ Type = "Spell", ID = 118455, "pet" }),
    BloodFuryBuff                         = Action.Create({ Type = "Spell", ID = 20572 }),
    BerserkingBuff                        = Action.Create({ Type = "Spell", ID = 26297 }),
    BestialWrathBuff                      = Action.Create({ Type = "Spell", ID = 19574 }),
    PrimalInstinctsBuff                   = Action.Create({ Type = "Spell", ID = 279810 }),
    FrenzyBuff                            = Action.Create({ Type = "Spell", ID = 272790 }),
    AspectoftheWildBuff                   = Action.Create({ Type = "Spell", ID = 193530 }),	
	-- Debuffs 
    RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568 }),	
    -- Potions
    PotionofUnbridledFury                = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
    -- Trinkets
	GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
    GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
	AshvanesRazorCoral                   = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
    TidestormCodex                       = Action.Create({ Type = "Trinket", ID = 165576, QueueForbidden = true }),
    MalformedHeraldsLegwraps             = Action.Create({ Type = "Trinket", ID = 167835, QueueForbidden = true }),
    PocketsizedComputationDevice         = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
    AzsharasFontofPower                  = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    RotcrustedVoodooDoll                 = Action.Create({ Type = "Trinket", ID = 159624, QueueForbidden = true }),
    AquipotentNautilus                   = Action.Create({ Type = "Trinket", ID = 169305, QueueForbidden = true }),
    ShiverVenomRelic                     = Action.Create({ Type = "Trinket", ID = 168905, QueueForbidden = true }),
    HyperthreadWristwraps                = Action.Create({ Type = "Trinket", ID = 168989, QueueForbidden = true }),
    NotoriousAspirantsBadge              = Action.Create({ Type = "Trinket", ID = 167528, QueueForbidden = true }),
    NotoriousGladiatorsBadge             = Action.Create({ Type = "Trinket", ID = 167380, QueueForbidden = true }),
    SinisterGladiatorsBadge              = Action.Create({ Type = "Trinket", ID = 165058, QueueForbidden = true }),
    SinisterAspirantsBadge               = Action.Create({ Type = "Trinket", ID = 165223, QueueForbidden = true }),
    DreadGladiatorsBadge                 = Action.Create({ Type = "Trinket", ID = 161902, QueueForbidden = true }),
    DreadAspirantsBadge                  = Action.Create({ Type = "Trinket", ID = 162966, QueueForbidden = true }),
    DreadCombatantsInsignia              = Action.Create({ Type = "Trinket", ID = 161676, QueueForbidden = true }),
    NotoriousAspirantsMedallion          = Action.Create({ Type = "Trinket", ID = 167525, QueueForbidden = true }),
    NotoriousGladiatorsMedallion         = Action.Create({ Type = "Trinket", ID = 167377, QueueForbidden = true }),
    SinisterGladiatorsMedallion          = Action.Create({ Type = "Trinket", ID = 165055, QueueForbidden = true }),
    SinisterAspirantsMedallion           = Action.Create({ Type = "Trinket", ID = 165220, QueueForbidden = true }),
    DreadGladiatorsMedallion             = Action.Create({ Type = "Trinket", ID = 161674, QueueForbidden = true }),
    DreadAspirantsMedallion              = Action.Create({ Type = "Trinket", ID = 162897, QueueForbidden = true }),
    DreadCombatantsMedallion             = Action.Create({ Type = "Trinket", ID = 161811, QueueForbidden = true }),
    IgnitionMagesFuse                    = Action.Create({ Type = "Trinket", ID = 159615, QueueForbidden = true }),
    TzanesBarkspines                     = Action.Create({ Type = "Trinket", ID = 161411, QueueForbidden = true }),
    AzurethoseSingedPlumage              = Action.Create({ Type = "Trinket", ID = 161377, QueueForbidden = true }),
    AncientKnotofWisdomAlliance          = Action.Create({ Type = "Trinket", ID = 161417, QueueForbidden = true }),
    AncientKnotofWisdomHorde             = Action.Create({ Type = "Trinket", ID = 166793, QueueForbidden = true }),
    ShockbitersFang                      = Action.Create({ Type = "Trinket", ID = 169318, QueueForbidden = true }),
    NeuralSynapseEnhancer                = Action.Create({ Type = "Trinket", ID = 168973, QueueForbidden = true }),
    BalefireBranch                       = Action.Create({ Type = "Trinket", ID = 159630, QueueForbidden = true }),
    -- Misc
    CyclotronicBlast                     = Action.Create({ Type = "Spell", ID = 293491, Hidden = true}),
    RecklessForceCounter1                = Action.Create({ Type = "Spell", ID = 298409, Hidden = true}),
    RecklessForceCounter2                = Action.Create({ Type = "Spell", ID = 302917, Hidden = true}),
    -- Hidden Heart of Azeroth
    VisionofPerfectionMinor              = Action.Create({ Type = "Spell", ID = 296320, Hidden = true}),
    VisionofPerfectionMinor2             = Action.Create({ Type = "Spell", ID = 299367, Hidden = true}),
    VisionofPerfectionMinor3             = Action.Create({ Type = "Spell", ID = 299369, Hidden = true}),
	MemoryofLucidDreamsMinor             = Action.Create({ Type = "Spell", ID = 298268, Hidden = true}),
    MemoryofLucidDreamsMinor2            = Action.Create({ Type = "Spell", ID = 299371, Hidden = true}),
    MemoryofLucidDreamsMinor3            = Action.Create({ Type = "Spell", ID = 299373, Hidden = true}),
    UnleashHeartOfAzeroth                = Action.Create({ Type = "Spell", ID = 280431, Hidden = true}),
    BloodoftheEnemy                      = Action.Create({ Type = "HeartOfAzeroth", ID = 297108, Hidden = true}),
    BloodoftheEnemy2                     = Action.Create({ Type = "HeartOfAzeroth", ID = 298273, Hidden = true}),
    BloodoftheEnemy3                     = Action.Create({ Type = "HeartOfAzeroth", ID = 298277, Hidden = true}),
    ConcentratedFlame                    = Action.Create({ Type = "HeartOfAzeroth", ID = 295373, Hidden = true}),
    ConcentratedFlame2                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299349, Hidden = true}),
    ConcentratedFlame3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299353, Hidden = true}),
    GuardianofAzeroth                    = Action.Create({ Type = "HeartOfAzeroth", ID = 295840, Hidden = true}),
    GuardianofAzeroth2                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299355, Hidden = true}),
    GuardianofAzeroth3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299358, Hidden = true}),
    FocusedAzeriteBeam                   = Action.Create({ Type = "HeartOfAzeroth", ID = 295258, Hidden = true}),
    FocusedAzeriteBeam2                  = Action.Create({ Type = "HeartOfAzeroth", ID = 299336, Hidden = true}),
    FocusedAzeriteBeam3                  = Action.Create({ Type = "HeartOfAzeroth", ID = 299338, Hidden = true}),
    PurifyingBlast                       = Action.Create({ Type = "HeartOfAzeroth", ID = 295337, Hidden = true}),
    PurifyingBlast2                      = Action.Create({ Type = "HeartOfAzeroth", ID = 299345, Hidden = true}),
    PurifyingBlast3                      = Action.Create({ Type = "HeartOfAzeroth", ID = 299347, Hidden = true}),
    TheUnboundForce                      = Action.Create({ Type = "HeartOfAzeroth", ID = 298452, Hidden = true}),
    TheUnboundForce2                     = Action.Create({ Type = "HeartOfAzeroth", ID = 299376, Hidden = true}),
    TheUnboundForce3                     = Action.Create({ Type = "HeartOfAzeroth", ID = 299378, Hidden = true}),
    RippleInSpace                        = Action.Create({ Type = "HeartOfAzeroth", ID = 302731, Hidden = true}),
    RippleInSpace2                       = Action.Create({ Type = "HeartOfAzeroth", ID = 302982, Hidden = true}),
    RippleInSpace3                       = Action.Create({ Type = "HeartOfAzeroth", ID = 302983, Hidden = true}),
    WorldveinResonance                   = Action.Create({ Type = "HeartOfAzeroth", ID = 295186, Hidden = true}),
    WorldveinResonance2                  = Action.Create({ Type = "HeartOfAzeroth", ID = 298628, Hidden = true}),
    WorldveinResonance3                  = Action.Create({ Type = "HeartOfAzeroth", ID = 299334, Hidden = true}),
    MemoryofLucidDreams                  = Action.Create({ Type = "HeartOfAzeroth", ID = 298357, Hidden = true}),
    MemoryofLucidDreams2                 = Action.Create({ Type = "HeartOfAzeroth", ID = 299372, Hidden = true}),
    MemoryofLucidDreams3                 = Action.Create({ Type = "HeartOfAzeroth", ID = 299374, Hidden = true}),
	
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_HUNTER_BEASTMASTERY)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_HUNTER_BEASTMASTERY], { __index = Action })

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
local Everyone = HR.Commons.Everyone;

-- Rotation Var
local ShouldReturn; -- Used to get the return string
local EnemiesCount, GCDMax;

-- Stuns
local StunInterrupts = {
  {S.Intimidation, "Cast Intimidation (Interrupt)", function () return true; end},
};

local EnemyRanges = {40}
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

S.ConcentratedFlame:RegisterInFlight()

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

local function EvaluateTargetIfFilterBarbedShot74(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.BarbedShot)
end

local function EvaluateTargetIfBarbedShot75(TargetUnit)
  return (Pet:BuffP(S.FrenzyBuff) and Pet:BuffRemainsP(S.FrenzyBuff) <= Player:GCD() + 0.150)
end

local function EvaluateTargetIfBarbedShot85(TargetUnit)
  return (S.BarbedShot:FullRechargeTimeP() < Player:GCD() + 0.150 and bool(S.BestialWrath:CooldownRemainsP()))
end

local function EvaluateTargetIfBarbedShot123(TargetUnit)
  return (Pet:BuffDownP(S.FrenzyBuff) and (S.BarbedShot:ChargesFractionalP() > 1.8 or Player:BuffP(S.BestialWrathBuff)) or S.AspectoftheWild:CooldownRemainsP() < S.FrenzyBuff:BaseDuration() - Player:GCD() + 0.150 and S.PrimalInstincts:AzeriteEnabled() or S.BarbedShot:ChargesFractionalP() > 1.4 or Target:TimeToDie() < 9)
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
    S.MemoryofLucidDreamsMinor = S.MemoryofLucidDreamsMinor2:IsAvailable() and S.MemoryofLucidDreamsMinor2 or S.MemoryofLucidDreamsMinor
    S.MemoryofLucidDreamsMinor = S.MemoryofLucidDreamsMinor3:IsAvailable() and S.MemoryofLucidDreamsMinor3 or S.MemoryofLucidDreamsMinor
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

S.CallPet.TextureSpellID = { S.MendPet:ID() }
S.RevivePet.TextureSpellID = { S.MendPet:ID() }

-- Initiate Nucleus Ability registration
local function Init()
  -- Register Splash Data Nucleus Abilities
  HL.RegisterNucleusAbility(2643, 8, 6)               -- Multi-Shot
  HL.RegisterNucleusAbility(194392, 8, 6)             -- Volley
  HL.RegisterNucleusAbility({171454, 171457}, 8, 6)   -- Chimaera Shot
  HL.RegisterNucleusAbility(118459, 10, 6)            -- Beast Cleave
  HL.RegisterNucleusAbility(201754, 10, 6)            -- Stomp
  HL.RegisterNucleusAbility(271686, 3, 6)             -- Head My Call
end

-- Init data for splash data (To Check)
Init()

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    GCDMax = Player:GCD() + 0.150
    EnemiesCount = GetEnemiesCount(40)
	--print(EnemiesCount)
    HL.GetEnemies(40) -- To populate Cache.Enemies[40] for CastCycles
    DetermineEssenceRanks()

	    -- Handle all generics trinkets	
	local function GeneralTrinkets()
        if trinketReady(1) then
        	if HR.Cast(I.GenericTrinket1) then return "GenericTrinket1"; end
        end
		if trinketReady(2) then
            if HR.Cast(I.GenericTrinket2) then return "GenericTrinket2"; end
        end
    end
	
	if Player:IsCasting() or Player:IsChanneling() then
	    ShouldStop = true
	else
	    ShouldStop = false
	end
	
    local function Precombat()
        -- flask
        -- augmentation
        -- food
        -- summon_pet
        if S.SummonPet:IsCastableP() and not Pet:Exists() then
            if HR.Cast(S.SummonPet, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_pet 3"; end
        end
        -- potion
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") then
            if HR.Cast(I.PotionofUnbridledFury) then return "battle_potion_of_agility 6"; end
        end
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and TrinketON() then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power"; end
        end
        -- worldvein_resonance
        if S.WorldveinResonance:IsCastableP() then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- guardian_of_azeroth
        if S.GuardianofAzeroth:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=!raid_event.invulnerable.exists&(trinket.1.has_cooldown+trinket.2.has_cooldown<2|equipped.variable_intensity_gigavolt_oscillating_reactor)
        -- Needs to be updated to the 2nd half of the condition
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and S.CyclotronicBlast:IsAvailable() and TrinketON() then
            if HR.Cast(I.PocketsizedComputationDevice) then return "cyclotronic_blast precombat"; end
        end
        -- focused_azerite_beam,if=!raid_event.invulnerable.exists
        if S.FocusedAzeriteBeam:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- aspect_of_the_wild,precast_time=1.1,if=!azerite.primal_instincts.enabled&!essence.essence_of_the_focusing_iris.major&(equipped.azsharas_font_of_power|!equipped.cyclotronic_blast)
        if S.AspectoftheWild:IsCastableP() and HR.CDsON() and (not S.PrimalInstincts:AzeriteEnabled() and not S.FocusedAzeriteBeam:IsAvailable() and (I.AzsharasFontofPower:IsEquipped() or not S.CyclotronicBlast:IsAvailable())) then
            if HR.Cast(S.AspectoftheWild, Action.GetToggle(2, "OffGCDasOffGCD")) then return "aspect_of_the_wild 8"; end
        end
        -- bestial_wrath,precast_time=1.5,if=azerite.primal_instincts.enabled&!essence.essence_of_the_focusing_iris.major&(equipped.azsharas_font_of_power|!equipped.cyclotronic_blast)
        if S.BestialWrath:IsCastableP() and (S.PrimalInstincts:AzeriteEnabled() and not S.FocusedAzeriteBeam:IsAvailable() and (I.AzsharasFontofPower:IsEquipped() or not S.CyclotronicBlast:IsAvailable())) then
            if HR.Cast(S.BestialWrath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "bestial_wrath 16"; end
        end

    end
	
    local function Cds()
    -- ancestral_call,if=cooldown.bestial_wrath.remains>30
        if S.AncestralCall:IsCastableP() and HR.CDsON() and (S.BestialWrath:CooldownRemainsP() > 30) then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ancestral_call 24"; end
        end
        -- fireblood,if=cooldown.bestial_wrath.remains>30
        if S.Fireblood:IsCastableP() and HR.CDsON() and (S.BestialWrath:CooldownRemainsP() > 30) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 28"; end
        end
        -- berserking,if=buff.aspect_of_the_wild.up&(target.time_to_die>cooldown.berserking.duration+duration|(target.health.pct<35|!talent.killer_instinct.enabled))|target.time_to_die<13
        if S.Berserking:IsCastableP() and HR.CDsON() and (Player:BuffP(S.AspectoftheWildBuff) and (Target:TimeToDie() > S.Berserking:BaseDuration() + S.BerserkingBuff:BaseDuration() or (Target:HealthPercentage() < 35 or not S.KillerInstinct:IsAvailable())) or Target:TimeToDie() < 13) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 32"; end
        end
        -- blood_fury,if=buff.aspect_of_the_wild.up&(target.time_to_die>cooldown.blood_fury.duration+duration|(target.health.pct<35|!talent.killer_instinct.enabled))|target.time_to_die<16
        if S.BloodFury:IsCastableP() and HR.CDsON() and (Player:BuffP(S.AspectoftheWildBuff) and (Target:TimeToDie() > S.BloodFury:BaseDuration() + S.BloodFuryBuff:BaseDuration() or (Target:HealthPercentage() < 35 or not S.KillerInstinct:IsAvailable())) or Target:TimeToDie() < 16) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 46"; end
        end
        -- lights_judgment,if=pet.cat.buff.frenzy.up&pet.cat.buff.frenzy.remains>gcd.max|!pet.cat.buff.frenzy.up
        if S.LightsJudgment:IsCastableP() and HR.CDsON() and (Pet:BuffP(S.FrenzyBuff) and Pet:BuffRemainsP(S.FrenzyBuff) > GCDMax or not Pet:BuffP(S.FrenzyBuff)) then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 60"; end
        end
        -- potion,if=buff.bestial_wrath.up&buff.aspect_of_the_wild.up&(target.health.pct<35|!talent.killer_instinct.enabled)|(consumable.potion_of_unbridled_fury&target.time_to_die<61|target.time_to_die<26)
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (Player:BuffP(S.BestialWrathBuff) and Player:BuffP(S.AspectoftheWildBuff) and (Target:HealthPercentage() < 35 or not S.KillerInstinct:IsAvailable()) or Target:TimeToDie() < 61) then
            if HR.Cast(I.PotionofUnbridledFury) then return "battle_potion_of_agility 68"; end
        end
        -- worldvein_resonance,if=buff.lifeblood.stack<4
        if S.WorldveinResonance:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffStackP(S.LifebloodBuff) < 4) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- guardian_of_azeroth,if=cooldown.aspect_of_the_wild.remains<10|target.time_to_die>cooldown+duration|target.time_to_die<30
        if S.GuardianofAzeroth:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (S.AspectoftheWild:CooldownRemainsP() < 10 or Target:TimeToDie() > S.GuardianofAzeroth:Cooldown() + S.GuardianofAzeroth:BaseDuration() or Target:TimeToDie() < 30) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
    end
    
	local function Cleave()
        -- barbed_shot,target_if=min:dot.barbed_shot.remains,if=pet.cat.buff.frenzy.up&pet.cat.buff.frenzy.remains<=gcd.max
        if S.BarbedShot:IsCastableP() and EvaluateTargetIfFilterBarbedShot74(Target) and EvaluateTargetIfBarbedShot75(Target) then
            if HR.Cast(S.BarbedShot) then return "barbed_shot 76"; end
        end
        -- multishot,if=gcd.max-pet.cat.buff.beast_cleave.remains>0.25
        if S.Multishot:IsCastableP() and (GCDMax - Pet:BuffRemainsP(S.BeastCleaveBuff) > 0.25) then
            if HR.Cast(S.Multishot) then return "multishot 82"; end
        end
        -- barbed_shot,target_if=min:dot.barbed_shot.remains,if=full_recharge_time<gcd.max&cooldown.bestial_wrath.remains
        if S.BarbedShot:IsCastableP() and EvaluateTargetIfFilterBarbedShot74(Target) and EvaluateTargetIfBarbedShot85(Target) then
            if HR.Cast(S.BarbedShot) then return "barbed_shot 86"; end
        end
        -- aspect_of_the_wild
        if S.AspectoftheWild:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.AspectoftheWild, Action.GetToggle(2, "OffGCDasOffGCD")) then return "aspect_of_the_wild 94"; end
        end
        -- stampede,if=buff.aspect_of_the_wild.up&buff.bestial_wrath.up|target.time_to_die<15
        if S.Stampede:IsCastableP() and (Player:BuffP(S.AspectoftheWildBuff) and Player:BuffP(S.BestialWrathBuff) or Target:TimeToDie() < 15) then
            if HR.Cast(S.Stampede, Action.GetToggle(2, "OffGCDasOffGCD")) then return "stampede 96"; end
        end
        -- bestial_wrath,if=cooldown.aspect_of_the_wild.remains>20|talent.one_with_the_pack.enabled|target.time_to_die<15
        if S.BestialWrath:IsCastableP() and (S.AspectoftheWild:CooldownRemainsP() > 20 or S.OneWithThePack:IsAvailable() or Target:TimeToDie() < 15) then
            if HR.Cast(S.BestialWrath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "bestial_wrath 102"; end
        end
        -- chimaera_shot
        if S.ChimaeraShot:IsCastableP() then
            if HR.Cast(S.ChimaeraShot) then return "chimaera_shot 106"; end
        end
        -- a_murder_of_crows
        if S.AMurderofCrows:IsCastableP() then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 108"; end
        end
        -- barrage
        if S.Barrage:IsReadyP() then
            if HR.Cast(S.Barrage) then return "barrage 110"; end
        end
        -- kill_command,if=active_enemies<4|!azerite.rapid_reload.enabled
        if S.KillCommand:IsCastableP() and (EnemiesCount < 4 or not S.RapidReload:AzeriteEnabled()) then
            if HR.Cast(S.KillCommand) then return "kill_command 112"; end
        end
        -- dire_beast
        if S.DireBeast:IsCastableP() then
            if HR.Cast(S.DireBeast) then return "dire_beast 122"; end
        end
        -- barbed_shot,target_if=min:dot.barbed_shot.remains,if=pet.cat.buff.frenzy.down&(charges_fractional>1.8|buff.bestial_wrath.up)|cooldown.aspect_of_the_wild.remains<pet.cat.buff.frenzy.duration-gcd&azerite.primal_instincts.enabled|charges_fractional>1.4|target.time_to_die<9
        if S.BarbedShot:IsCastableP() and EvaluateTargetIfFilterBarbedShot74(Target) and EvaluateTargetIfBarbedShot123(Target) then
            if HR.Cast(S.BarbedShot) then return "barbed_shot 124"; end
        end
        -- focused_azerite_beam
        if S.FocusedAzeriteBeam:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- purifying_blast
        if S.PurifyingBlast:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
           if HR.Cast(S.PurifyingBlast) then return "focused_azerite_beam"; end
        end
        -- concentrated_flame
        if S.ConcentratedFlame:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.ConcentratedFlame) then return "focused_azerite_beam"; end
        end
        -- blood_of_the_enemy
        if S.BloodoftheEnemy:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.BloodoftheEnemy) then return "focused_azerite_beam"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10
        if S.TheUnboundForce:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10) then
            if HR.Cast(S.TheUnboundForce) then return "focused_azerite_beam"; end
        end
        -- multishot,if=azerite.rapid_reload.enabled&active_enemies>2
        if S.Multishot:IsCastableP() and (S.RapidReload:AzeriteEnabled() and EnemiesCount > 2) then
            if HR.Cast(S.Multishot) then return "multishot 140"; end
        end
        -- cobra_shot,if=cooldown.kill_command.remains>focus.time_to_max&(active_enemies<3|!azerite.rapid_reload.enabled)
        if S.CobraShot:IsCastableP() and (S.KillCommand:CooldownRemainsP() > Player:FocusTimeToMaxPredicted() and (EnemiesCount < 3 or not S.RapidReload:AzeriteEnabled())) then
            if HR.Cast(S.CobraShot) then return "cobra_shot 150"; end
        end
        -- spitting_cobra
        if S.SpittingCobra:IsCastableP() then
            if HR.Cast(S.SpittingCobra, Action.GetToggle(2, "OffGCDasOffGCD")) then return "spitting_cobra 162"; end
        end
    end
  
    local function St()
        -- barbed_shot,if=pet.cat.buff.frenzy.up&pet.cat.buff.frenzy.remains<gcd|cooldown.bestial_wrath.remains&(full_recharge_time<gcd|azerite.primal_instincts.enabled&cooldown.aspect_of_the_wild.remains<gcd)
        if S.BarbedShot:IsCastableP() and (Pet:BuffP(S.FrenzyBuff) and Pet:BuffRemainsP(S.FrenzyBuff) < Player:GCD() or bool(S.BestialWrath:CooldownRemainsP()) and (S.BarbedShot:FullRechargeTimeP() < Player:GCD() or S.PrimalInstincts:AzeriteEnabled() and S.AspectoftheWild:CooldownRemainsP() < Player:GCD())) then
            if HR.Cast(S.BarbedShot) then return "barbed_shot 164"; end
        end
        -- concentrated_flame,if=focus+focus.regen*gcd<focus.max&buff.bestial_wrath.down&(!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight)|full_recharge_time<gcd|target.time_to_die<5
        if S.ConcentratedFlame:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:Focus() + Player:FocusRegen() * Player:GCD() < Player:FocusMax() and Player:BuffDownP(S.BestialWrathBuff) and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight()) or S.ConcentratedFlame:FullRechargeTimeP() < Player:GCD() or Target:TimeToDie() < 5) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 165"; end
        end
        -- aspect_of_the_wild,if=cooldown.barbed_shot.charges<2|pet.cat.buff.frenzy.stack>2|!azerite.primal_instincts.enabled
        if S.AspectoftheWild:IsCastableP() and HR.CDsON()  and (S.BarbedShot:ChargesP() < 2 or Pet:BuffStackP(S.FrenzyBuff) > 2 or not S.PrimalInstincts:AzeriteEnabled()) then
            if HR.Cast(S.AspectoftheWild, Action.GetToggle(2, "OffGCDasOffGCD")) then return "aspect_of_the_wild 180"; end
        end
        -- stampede,if=buff.aspect_of_the_wild.up&buff.bestial_wrath.up|target.time_to_die<15
        if S.Stampede:IsCastableP() and (Player:BuffP(S.AspectoftheWildBuff) and Player:BuffP(S.BestialWrathBuff) or Target:TimeToDie() < 15) then
            if HR.Cast(S.Stampede, Action.GetToggle(2, "OffGCDasOffGCD")) then return "stampede 182"; end
        end
        -- a_murder_of_crows,if=cooldown.bestial_wrath.remains
        if S.AMurderofCrows:IsCastableP() and (bool(S.BestialWrath:CooldownRemainsP())) then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 183"; end
        end
        -- focused_azerite_beam,if=buff.bestial_wrath.down|target.time_to_die<5
        if S.FocusedAzeriteBeam:IsCastableP() and (Player:BuffDownP(S.BestialWrathBuff) or Target:TimeToDie() < 5) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam 184"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10|target.time_to_die<5
        if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10 or Target:TimeToDie() < 5) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force 185"; end
        end
        -- bestial_wrath
        if S.BestialWrath:IsCastableP() then
            if HR.Cast(S.BestialWrath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "bestial_wrath 190"; end
        end
        -- kill_command
        if S.KillCommand:IsCastableP() then
            if HR.Cast(S.KillCommand) then return "kill_command 194"; end
        end
        -- chimaera_shot
        if S.ChimaeraShot:IsCastableP() then
            if HR.Cast(S.ChimaeraShot) then return "chimaera_shot 196"; end
        end
        -- dire_beast
        if S.DireBeast:IsCastableP() then
            if HR.Cast(S.DireBeast) then return "dire_beast 198"; end
        end
        -- barbed_shot,if=pet.cat.buff.frenzy.down&(charges_fractional>1.8|buff.bestial_wrath.up)|cooldown.aspect_of_the_wild.remains<pet.cat.buff.frenzy.duration-gcd&azerite.primal_instincts.enabled|azerite.dance_of_death.rank>1&buff.dance_of_death.down&crit_pct_current>40|target.time_to_die<9
        if S.BarbedShot:IsCastableP() and (Pet:BuffDownP(S.FrenzyBuff) and (S.BarbedShot:ChargesFractionalP() > 1.8 or Player:BuffP(S.BestialWrathBuff)) or S.AspectoftheWild:CooldownRemainsP() < S.FrenzyBuff:BaseDuration() - GCDMax and S.PrimalInstincts:AzeriteEnabled() or S.DanceofDeath:AzeriteRank() > 1 and Player:BuffDownP(S.DanceofDeathBuff) and Player:CritChancePct() > 40 or Target:TimeToDie() < 9) then
            if HR.Cast(S.BarbedShot) then return "barbed_shot 200"; end
        end
        -- purifying_blast,if=buff.bestial_wrath.down|target.time_to_die<8
       if S.PurifyingBlast:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffDownP(S.BestialWrathBuff) or Target:TimeToDie() < 8) then
            if HR.Cast(S.PurifyingBlast) then return "focused_azerite_beam"; end
        end
        -- blood_of_the_enemy
        if S.BloodoftheEnemy:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.BloodoftheEnemy) then return "focused_azerite_beam"; end
        end
        -- barrage
        if S.Barrage:IsReadyP() then
            if HR.Cast(S.Barrage) then return "barrage 216"; end
        end
        -- Special pooling line for HeroRotation -- negiligible effective DPS loss (0.1%), but better for prediction accounting for latency
        -- Avoids cases where Cobra Shot would be suggested but the GCD of Cobra Shot + latency would allow Barbed Shot to fall off
        -- wait,if=pet.cat.buff.frenzy.up&pet.cat.buff.frenzy.remains<=gcd.max*2&focus.time_to_max>gcd.max*2
        if Pet:BuffP(S.FrenzyBuff) and Pet:BuffRemainsP(S.FrenzyBuff) <= GCDMax * 2 and Player:FocusTimeToMaxPredicted() > GCDMax * 2 then
            if HR.Cast(S.Channeling) then return "Barbed Shot Pooling"; end
        end
        -- cobra_shot,if=(focus-cost+focus.regen*(cooldown.kill_command.remains-1)>action.kill_command.cost|cooldown.kill_command.remains>1+gcd|buff.memory_of_lucid_dreams.up)&cooldown.kill_command.remains>1
        if S.CobraShot:IsCastableP() and ((Player:Focus() - S.CobraShot:Cost() + Player:FocusRegen() * (S.KillCommand:CooldownRemainsP() - 1) > S.KillCommand:Cost() or S.KillCommand:CooldownRemainsP() > 1 + GCDMax or Player:BuffP(S.MemoryofLucidDreams)) and S.KillCommand:CooldownRemainsP() > 1) then
            if HR.Cast(S.CobraShot) then return "cobra_shot 218"; end
        end
        -- spitting_cobra
        if S.SpittingCobra:IsCastableP() then
            if HR.Cast(S.SpittingCobra, Action.GetToggle(2, "OffGCDasOffGCD")) then return "spitting_cobra 234"; end
        end
        -- barbed_shot,if=charges_fractional>1.4
        if S.BarbedShot:IsCastableP() and (S.BarbedShot:ChargesFractionalP() > 1.4) then
            if HR.Cast(S.BarbedShot) then return "barbed_shot 235"; end
        end
    end
	
	-- Survivability handler
	local function Survival()
		-- Aspect of the turtle
		if S.AspectoftheTurtle:IsCastable() and Player:HealthPercentage() <= Action.GetToggle(2, "Turtle") then
		    return S.AspectoftheTurtle:Cast()
        end
        -- Exhilaration
        if S.Exhilaration:IsCastable() and Player:HealthPercentage() <= Action.GetToggle(2, "ExhilarationHP") then
            return S.Exhilaration:Cast()
        end	
	end	
    
    -- Protect against interrupt of channeled spells
    if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
        if HR.Cast(S.Channeling) then return "" end
    end  
	-- call DBM precombat
    --if not Player:AffectingCombat() and Action.GetToggle(1, "DBM") and not Player:IsCasting() then
   --     local ShouldReturn = Precombat_DBM(); 
   --         if ShouldReturn then return ShouldReturn; 
   --     end    
   -- end
    -- call non DBM precombat
    if not Player:AffectingCombat() and not Action.GetToggle(1, "DBM") and not Player:IsCasting() then        
        local ShouldReturn = Precombat(); 
            if ShouldReturn then return ShouldReturn; 
        end    
    end
    
    -- In Combat
    if Player:AffectingCombat() then
        
		-- Interrupt Handler
 	 	local randomInterrupt = math.random(25, 70)
  		local unit = "target"
   		local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
        
  	    -- CounterShot
  	    if useKick and S.CounterShot:IsReady() and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.CounterShot, true) then return "CounterShot 5"; end
         	else 
          	    return
         	end 
      	end 		
		-- Self heal, if below setting value
        if S.Exhilaration:IsCastableP() and Player:HealthPercentage() <= Action.GetToggle(2, "ExhilarationHP") then
            if HR.Cast(S.Exhilaration, Action.GetToggle(2, "OffGCDasOffGCD")) then return "exhilaration"; end
        end
        -- mendpet
        if S.MendPet:IsCastable() and Pet:IsActive() and Pet:HealthPercentage() > 0 and Pet:HealthPercentage() <= Action.GetToggle(2, "MendPet") and not Pet:Buff(S.MendPet) then
			if HR.Cast(S.MendPet, true) then return "MendPet 5"; end
        end
	    -- summon_pet if dead or ghost
        if Pet:IsDeadOrGhost() then
			if HR.Cast(S.MendPet, true) then return "MendPet 5"; end
        elseif not Pet:IsActive() then
		    if HR.Cast(S.CallPet, true) then return "CallPet 5"; end
        end
        -- auto_shot
        -- use_items
        -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.up&(prev_gcd.1.aspect_of_the_wild|!equipped.cyclotronic_blast&buff.aspect_of_the_wild.up)|(debuff.razor_coral_debuff.down|target.time_to_die<26)&target.time_to_die>(24*(cooldown.cyclotronic_blast.remains+4<target.time_to_die))
        if I.AshvanesRazorCoral:IsEquipped() and I.AshvanesRazorCoral:IsReady() and TrinketON() and (Target:DebuffP(S.RazorCoralDebuff) and (Player:PrevGCDP(1, S.AspectoftheWild) or not S.CyclotronicBlast:IsAvailable() and Player:BuffP(S.AspectoftheWildBuff)) or (Target:DebuffDownP(S.RazorCoralDebuff) or Target:TimeToDie() < 26) and Target:TimeToDie() > (24 * num(S.CyclotronicBlast:CooldownRemainsP() + 4 < Target:TimeToDie()))) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=buff.bestial_wrath.down|target.time_to_die<5
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and S.CyclotronicBlast:IsAvailable() and TrinketON() and (Player:BuffDownP(S.BestialWrathBuff) or Target:TimeToDie() < 5) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "cyclotronic_blast"; end
        end
        -- call_action_list,name=cds
        if (HR.CDsON()) then
            local ShouldReturn = Cds(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=st,if=active_enemies<2
        if (EnemiesCount < 2) then
            local ShouldReturn = St(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=cleave,if=active_enemies>1
        if (EnemiesCount > 1) then
            local ShouldReturn = Cleave(); if ShouldReturn then return ShouldReturn; end
        end
        -- run_action_list,name=trinkets
        if (true) then
            local ShouldReturn = GeneralTrinkets(); if ShouldReturn then return ShouldReturn; end
        end	
		-- Pool icon
        if HR.Cast(S.Channeling) then return "Pooling Focus"; end

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
	
	--something if needed
end

