--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_MAGE_ARCANE] = {
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
    ArcaneIntellect                       = Action.Create({ Type = "Spell", ID = 1459     }),
    ArcaneFamiliar                        = Action.Create({ Type = "Spell", ID = 205022     }),
    Equipoise                             = Action.Create({ Type = "Spell", ID = 286027     }),
    MirrorImage                           = Action.Create({ Type = "Spell", ID = 55342     }),
    ArcaneBlast                           = Action.Create({ Type = "Spell", ID = 30451     }),
    Evocation                             = Action.Create({ Type = "Spell", ID = 12051     }),
    ChargedUp                             = Action.Create({ Type = "Spell", ID = 205032     }),
    NetherTempest                         = Action.Create({ Type = "Spell", ID = 114923     }),
    Overpowered                           = Action.Create({ Type = "Spell", ID = 155147     }),
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
    RuneofPower                           = Action.Create({ Type = "Spell", ID = 116011     }),
    ArcanePower                           = Action.Create({ Type = "Spell", ID = 12042     }),
    PresenceofMind                        = Action.Create({ Type = "Spell", ID = 205025     }),
    ArcaneOrb                             = Action.Create({ Type = "Spell", ID = 153626     }),
    Resonance                             = Action.Create({ Type = "Spell", ID = 205028     }),
    ArcaneBarrage                         = Action.Create({ Type = "Spell", ID = 44425     }),
    ArcaneExplosion                       = Action.Create({ Type = "Spell", ID = 1449     }),
    ArcaneMissiles                        = Action.Create({ Type = "Spell", ID = 5143     }),
    Amplification                         = Action.Create({ Type = "Spell", ID = 236628     }),
    ArcanePummeling                       = Action.Create({ Type = "Spell", ID = 270669     }),
    Supernova                             = Action.Create({ Type = "Spell", ID = 157980     }),
    Shimmer                               = Action.Create({ Type = "Spell", ID = 212653     }),
    Blink                                 = Action.Create({ Type = "Spell", ID = 1953     }),
    -- Utilities
    Counterspell                         = Action.Create({ Type = "Spell", ID = 2139}),
    Spellsteal                           = Action.Create({ Type = "Spell", ID = 30449}),
	Polymorph                            = Action.Create({ Type = "Spell", ID = 118}),
	-- Defensives
    IceBlock                             = Action.Create({ Type = "Spell", ID = 45438}),
    PrismaticBarrier                     = Action.Create({ Type = "Spell", ID = 235450}),
    -- Misc
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    RecklessForceBuff                    = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),
    ConcentratedFlameBurn                = Action.Create({ Type = "Spell", ID = 295368, Hidden = true     }),
    CyclotronicBlast                     = Action.Create({ Type = "Spell", ID = 167672, Hidden = true     }),
    HarmonicDematerializer               = Action.Create({ Type = "Spell", ID = 293512, Hidden = true     }),
    -- Buffs
    RuneofPowerBuff                       = Action.Create({ Type = "Spell", ID = 116014, Hidden = true     }),
    ArcanePowerBuff                       = Action.Create({ Type = "Spell", ID = 12042, Hidden = true     }),
    RuleofThreesBuff                      = Action.Create({ Type = "Spell", ID = 264774, Hidden = true     }),
    ClearcastingBuff                      = Action.Create({ Type = "Spell", ID = 263725, Hidden = true     }),
    PresenceofMindBuff                    = Action.Create({ Type = "Spell", ID = 205025, Hidden = true     }),
    BerserkingBuff                        = Action.Create({ Type = "Spell", ID = 26297, Hidden = true     }),
    BloodFuryBuff                         = Action.Create({ Type = "Spell", ID = 20572, Hidden = true     }),
    ArcaneChargeBuff                      = Action.Create({ Type = "Spell", ID = 36032, Hidden = true     }),
    ArcaneFamiliarBuff                    = Action.Create({ Type = "Spell", ID = 210126, Hidden = true     }),
    ArcaneIntellectBuff                   = Action.Create({ Type = "Spell", ID = 1459, Hidden = true     }),
    -- Debuffs 
    NetherTempestDebuff                   = Action.Create({ Type = "Spell", ID = 114923, Hidden = true     }),
    -- Potions
    PotionofUnbridledFury                = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
    PotionofFocusedResolve                = Action.Create({ Type = "Potion", ID = 168506, QueueForbidden = true }),
    -- Trinkets
	GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
    GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
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
    GuardianofAzeroth3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 295840, Hidden = true}),
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
Action:CreateEssencesFor(ACTION_CONST_MAGE_ARCANE)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_MAGE_ARCANE], { __index = Action })

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
local ForceOffGCD = {true, false};
local Everyone = HR.Commons.Everyone;
local EnemiesCount;

-- Variables
local VarConserveMana = 0;
local VarTotalBurns = 0;
local VarAverageBurnLength = 0;

HL:RegisterForEvent(function()
  VarConserveMana = 0
  VarTotalBurns = 0
  VarAverageBurnLength = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {40, 10}
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

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
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

Player.ArcaneBurnPhase = {}
local BurnPhase = Player.ArcaneBurnPhase

function BurnPhase:Reset()
  self.state = false
  self.last_start = HL.GetTime()
  self.last_stop = HL.GetTime()
end
BurnPhase:Reset()

function BurnPhase:Start()
  if Player:AffectingCombat() then
    self.state = true
    self.last_start = HL.GetTime()
  end
end

function BurnPhase:Stop()
  self.state = false
  self.last_stop = HL.GetTime()
end

function BurnPhase:On()
  return self.state or (not Player:AffectingCombat() and Player:IsCasting() and ((S.ArcanePower:CooldownRemainsP() == 0 and S.Evocation:CooldownRemainsP() <= VarAverageBurnLength and (Player:ArcaneChargesP() == Player:ArcaneChargesMax() or (S.ChargedUp:IsAvailable() and S.ChargedUp:CooldownRemainsP() == 0)))))
end

function BurnPhase:Duration()
  return self.state and (HL.GetTime() - self.last_start) or 0
end

HL:RegisterForEvent(function()
  BurnPhase:Reset()
end, "PLAYER_REGEN_DISABLED")

local function PresenceOfMindMax ()
  return 2
end

local function ArcaneMissilesProcMax ()
  return 3
end

function Player:ArcaneChargesP()
  return math.min(self:ArcaneCharges() + num(self:IsCasting(S.ArcaneBlast)),4)
end

-- Arguments Variables
HL.RoPTime = 0
  
HL:RegisterForSelfCombatEvent(
    function (...)
      dateEvent,_,_,_,_,_,_,DestGUID,_,_,_, SpellID = select(1,...);
      if SpellID == 116014 and Player:GUID() == DestGUID then --void RuneofPower
        HL.RoPTime = HL.GetTime()
      end

    end
    , "SPELL_AURA_APPLIED"
);

HL:RegisterForSelfCombatEvent(
    function (...)
      dateEvent,_,_,_,_,_,_,DestGUID,_,_,_, SpellID = select(1,...);
      if SpellID == 116014 and Player:GUID() == DestGUID then --void erruption
        HL.RoPTime = 0
      end
    end
    , "SPELL_AURA_REMOVED"
);

-- Initiate Nucleus Ability registration
local function Init ()
  HL.RegisterNucleusAbility(1449, 10, 6)               -- Arcane Explosion
  HL.RegisterNucleusAbility(44425, 10, 6)              -- Arcane Barrage
end
-- Init data for splash data (To Check)
Init()

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    EnemiesCount = GetEnemiesCount(10)
    HL.GetEnemies(40, 12) -- For interrupts
    DetermineEssenceRanks()
	-- Blink Handler
	local BlinkAny = S.Shimmer:IsAvailable() and S.Shimmer or S.Blink
	
	if Player:IsCasting() or Player:IsChanneling() then
	    ShouldStop = true
	else
	    ShouldStop = false
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
		if Everyone.TargetIsValid() then
        -- augmentation
        -- arcane_intellect
        if S.ArcaneIntellect:IsCastableP() and Player:BuffDownP(S.ArcaneIntellectBuff, true) then
            if HR.Cast(S.ArcaneIntellect) then return "arcane_intellect 3"; end
        end
        -- arcane_familiar
        if S.ArcaneFamiliar:IsCastableP() and Player:BuffDownP(S.ArcaneFamiliarBuff) then
            if HR.Cast(S.ArcaneFamiliar) then return "arcane_familiar 7"; end
        end
        -- variable,name=conserve_mana,op=set,value=60+20*azerite.equipoise.enabled
        if (true) then
            VarConserveMana = 60 + 20 * num(S.Equipoise:AzeriteEnabled())
        end
        -- snapshot_stats
        -- mirror_image
        if S.MirrorImage:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.MirrorImage) then return "mirror_image 16"; end
        end
        -- potion
        if I.PotionofFocusedResolve:IsReady() and Action.GetToggle(1, "Potion") then
            if HR.CastSuggested(I.PotionofFocusedResolve) then return "battle_potion_of_intellect 18"; end
        end
        -- arcane_blast
        if S.ArcaneBlast:IsReadyP() then
            if HR.Cast(S.ArcaneBlast) then return "arcane_blast 20"; end
        end
		end
    end
    local function Burn()
        -- variable,name=total_burns,op=add,value=1,if=!burn_phase
        if (not BurnPhase:On()) then
            VarTotalBurns = VarTotalBurns + 1
        end
        -- start_burn_phase,if=!burn_phase
        if (not BurnPhase:On()) then
            BurnPhase:Start()
        end
        -- stop_burn_phase,if=burn_phase&prev_gcd.1.evocation&target.time_to_die>variable.average_burn_length&burn_phase_duration>0
        if (BurnPhase:On() and Player:PrevGCDP(1, S.Evocation) and Target:TimeToDie() > VarAverageBurnLength and BurnPhase:Duration() > 0) then
            BurnPhase:Stop()
        end
        -- charged_up,if=buff.arcane_charge.stack<=1
        if S.ChargedUp:IsCastableP() and (Player:ArcaneChargesP() <= 1) then
            if HR.Cast(S.ChargedUp) then return "charged_up 32"; end
        end
        -- mirror_image
        if S.MirrorImage:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.MirrorImage) then return "mirror_image 36"; end
        end
        -- nether_tempest,if=(refreshable|!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.rune_of_power.down&buff.arcane_power.down
        if S.NetherTempest:IsCastableP() and ((Target:DebuffRefreshableCP(S.NetherTempestDebuff) or not Target:DebuffP(S.NetherTempestDebuff)) and Player:ArcaneChargesP() == Player:ArcaneChargesMax() and Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff)) then
            if HR.Cast(S.NetherTempest) then return "nether_tempest 38"; end
        end
        -- arcane_blast,if=buff.rule_of_threes.up&talent.overpowered.enabled&active_enemies<3
        if S.ArcaneBlast:IsReadyP() and (Player:BuffP(S.RuleofThreesBuff) and S.Overpowered:IsAvailable() and EnemiesCount < 3) then
            if HR.Cast(S.ArcaneBlast) then return "arcane_blast 60"; end
        end
        -- lights_judgment,if=buff.arcane_power.down
        if S.LightsJudgment:IsCastableP() and HR.CDsON() and (Player:BuffDownP(S.ArcanePowerBuff)) then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 72"; end
        end
        -- use_item,name=azsharas_font_of_power,if=cooldown.arcane_power.remains<5|time_to_die<cooldown.arcane_power.remains
        if I.AzsharasFontofPower:IsEquipReady() and TrinketON() and (S.ArcanePower:CooldownRemainsP() < 5 or Target:TimeToDie() < S.ArcanePower:CooldownRemainsP()) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 73"; end
        end
        -- rune_of_power,if=!buff.arcane_power.up&(mana.pct>=50|cooldown.arcane_power.remains=0)&(buff.arcane_charge.stack=buff.arcane_charge.max_stack)
        if S.RuneofPower:IsCastableP() and (not Player:BuffP(S.ArcanePowerBuff) and (Player:ManaPercentageP() >= 50 or S.ArcanePower:CooldownRemainsP() == 0) and (Player:ArcaneChargesP() == Player:ArcaneChargesMax())) then
            if HR.Cast(S.RuneofPower, Action.GetToggle(2, "OffGCDasOffGCD")) then return "rune_of_power 76"; end
        end
        -- berserking
        if S.Berserking:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 86"; end
        end
        -- arcane_power
        if S.ArcanePower:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.ArcanePower, Action.GetToggle(2, "OffGCDasOffGCD")) then return "arcane_power 88"; end
        end
        -- use_items,if=buff.arcane_power.up|target.time_to_die<cooldown.arcane_power.remains
        -- blood_fury
        if S.BloodFury:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 91"; end
        end
        -- fireblood
        if S.Fireblood:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 93"; end
        end
        -- ancestral_call
        if S.AncestralCall:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ancestral_call 95"; end
        end
        -- presence_of_mind,if=(talent.rune_of_power.enabled&buff.rune_of_power.remains<=buff.presence_of_mind.max_stack*action.arcane_blast.execute_time)|buff.arcane_power.remains<=buff.presence_of_mind.max_stack*action.arcane_blast.execute_time
        if S.PresenceofMind:IsCastableP() and HR.CDsON() and ((S.RuneofPower:IsAvailable() and Player:BuffRemainsP(S.RuneofPowerBuff) <= PresenceOfMindMax() * S.ArcaneBlast:ExecuteTime()) or Player:BuffRemainsP(S.ArcanePowerBuff) <= PresenceOfMindMax() * S.ArcaneBlast:ExecuteTime()) then
            if HR.Cast(S.PresenceofMind, Action.GetToggle(2, "OffGCDasOffGCD")) then return "presence_of_mind 97"; end
        end
        -- potion,if=buff.arcane_power.up&(buff.berserking.up|buff.blood_fury.up|!(race.troll|race.orc))
        if I.PotionofFocusedResolve:IsReady() and Action.GetToggle(1, "Potion") and (Player:BuffP(S.ArcanePowerBuff) and (Player:BuffP(S.BerserkingBuff) or Player:BuffP(S.BloodFuryBuff) or not (Player:IsRace("Troll") or Player:IsRace("Orc")))) then
            if HR.Cast(I.PotionofFocusedResolve) then return "battle_potion_of_intellect 117"; end
        end
        -- arcane_orb,if=buff.arcane_charge.stack=0|(active_enemies<3|(active_enemies<2&talent.resonance.enabled))
        if S.ArcaneOrb:IsCastableP() and (Player:ArcaneChargesP() == 0 or (EnemiesCount < 3 or (EnemiesCount < 2 and S.Resonance:IsAvailable()))) then
            if HR.Cast(S.ArcaneOrb) then return "arcane_orb 125"; end
        end
        -- arcane_barrage,if=active_enemies>=3&(buff.arcane_charge.stack=buff.arcane_charge.max_stack)
        if S.ArcaneBarrage:IsCastableP() and (EnemiesCount >= 3 and (Player:ArcaneChargesP() == Player:ArcaneChargesMax())) then
            if HR.Cast(S.ArcaneBarrage) then return "arcane_barrage 143"; end
        end
        -- arcane_explosion,if=active_enemies>=3
        if S.ArcaneExplosion:IsReadyP() and (EnemiesCount >= 3) then
            if HR.Cast(S.ArcaneExplosion) then return "arcane_explosion 155"; end
        end
        -- arcane_missiles,if=buff.clearcasting.react&active_enemies<3&(talent.amplification.enabled|(!talent.overpowered.enabled&azerite.arcane_pummeling.rank>=2)|buff.arcane_power.down),chain=1
        if S.ArcaneMissiles:IsCastableP() and (bool(Player:BuffStackP(S.ClearcastingBuff)) and EnemiesCount < 3 and (S.Amplification:IsAvailable() or (not S.Overpowered:IsAvailable() and S.ArcanePummeling:AzeriteRank() >= 2) or Player:BuffDownP(S.ArcanePowerBuff))) then
            if HR.Cast(S.ArcaneMissiles) then return "arcane_missiles 163"; end
        end
        -- arcane_blast,if=active_enemies<3
        if S.ArcaneBlast:IsReadyP() and (EnemiesCount < 3) then
            if HR.Cast(S.ArcaneBlast) then return "arcane_blast 181"; end
        end
        -- variable,name=average_burn_length,op=set,value=(variable.average_burn_length*variable.total_burns-variable.average_burn_length+(burn_phase_duration))%variable.total_burns
        if (true) then
            VarAverageBurnLength = (VarAverageBurnLength * VarTotalBurns - VarAverageBurnLength + (BurnPhase:Duration())) / VarTotalBurns
        end
        -- evocation,interrupt_if=mana.pct>=85,interrupt_immediate=1
        if S.Evocation:IsCastableP() then
            if HR.Cast(S.Evocation) then return "evocation 199"; end
        end
        -- arcane_barrage
        if S.ArcaneBarrage:IsCastableP() then
            if HR.Cast(S.ArcaneBarrage) then return "arcane_barrage 201"; end
        end
    end
    local function Conserve()
        -- mirror_image
        if S.MirrorImage:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.MirrorImage) then return "mirror_image 203"; end
        end
        -- charged_up,if=buff.arcane_charge.stack=0
        if S.ChargedUp:IsCastableP() and (Player:ArcaneChargesP() == 0) then
            if HR.Cast(S.ChargedUp) then return "charged_up 205"; end
        end
        -- nether_tempest,if=(refreshable|!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.rune_of_power.down&buff.arcane_power.down
        if S.NetherTempest:IsCastableP() and ((Target:DebuffRefreshableCP(S.NetherTempestDebuff) or not Target:DebuffP(S.NetherTempestDebuff)) and Player:ArcaneChargesP() == Player:ArcaneChargesMax() and Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff)) then
            if HR.Cast(S.NetherTempest) then return "nether_tempest 209"; end
        end
        -- arcane_orb,if=buff.arcane_charge.stack<=2&(cooldown.arcane_power.remains>10|active_enemies<=2)
        if S.ArcaneOrb:IsCastableP() and (Player:ArcaneChargesP() <= 2 and (S.ArcanePower:CooldownRemainsP() > 10 or EnemiesCount <= 2)) then
            if HR.Cast(S.ArcaneOrb) then return "arcane_orb 231"; end
        end
        -- arcane_blast,if=buff.rule_of_threes.up&buff.arcane_charge.stack>3
        if S.ArcaneBlast:IsReadyP() and (Player:BuffP(S.RuleofThreesBuff) and Player:ArcaneChargesP() > 3) then
            if HR.Cast(S.ArcaneBlast) then return "arcane_blast 243"; end
        end
        -- use_item,name=tidestorm_codex,if=buff.rune_of_power.down&!buff.arcane_power.react&cooldown.arcane_power.remains>20
        if I.TidestormCodex:IsEquipReady() and TrinketON() and (Player:BuffDownP(S.RuneofPowerBuff) and not bool(Player:BuffStackP(S.ArcanePowerBuff)) and S.ArcanePower:CooldownRemainsP() > 20) then
            if HR.Cast(I.TidestormCodex) then return "tidestorm_codex 249"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=buff.rune_of_power.down&!buff.arcane_power.react&cooldown.arcane_power.remains>20
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and TrinketON() and (Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff) and S.ArcanePower:CooldownRemainsP() > 20) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device 250"; end
        end
        -- rune_of_power,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&(full_recharge_time<=execute_time|full_recharge_time<=cooldown.arcane_power.remains|target.time_to_die<=cooldown.arcane_power.remains)
        if S.RuneofPower:IsCastableP() and (Player:ArcaneChargesP() == Player:ArcaneChargesMax() and (S.RuneofPower:FullRechargeTimeP() <= S.RuneofPower:ExecuteTime() or S.RuneofPower:FullRechargeTimeP() <= S.ArcanePower:CooldownRemainsP() or Target:TimeToDie() <= S.ArcanePower:CooldownRemainsP())) then
            if HR.Cast(S.RuneofPower, Action.GetToggle(2, "OffGCDasOffGCD")) then return "rune_of_power 257"; end
        end
        -- arcane_missiles,if=mana.pct<=95&buff.clearcasting.react&active_enemies<3,chain=1
        if S.ArcaneMissiles:IsCastableP() and (Player:ManaPercentageP() <= 95 and bool(Player:BuffStackP(S.ClearcastingBuff)) and EnemiesCount < 3) then
            if HR.Cast(S.ArcaneMissiles) then return "arcane_missiles 285"; end
        end
        -- arcane_barrage,if=((buff.arcane_charge.stack=buff.arcane_charge.max_stack)&((mana.pct<=variable.conserve_mana)|(talent.rune_of_power.enabled&cooldown.arcane_power.remains>cooldown.rune_of_power.full_recharge_time&mana.pct<=variable.conserve_mana+25))|(talent.arcane_orb.enabled&cooldown.arcane_orb.remains<=gcd&cooldown.arcane_power.remains>10))|mana.pct<=(variable.conserve_mana-10)
        if S.ArcaneBarrage:IsCastableP() and (((Player:ArcaneChargesP() == Player:ArcaneChargesMax()) and ((Player:ManaPercentageP() <= VarConserveMana) or (S.RuneofPower:IsAvailable() and S.ArcanePower:CooldownRemainsP() > S.RuneofPower:FullRechargeTimeP() and Player:ManaPercentageP() <= VarConserveMana + 25)) or (S.ArcaneOrb:IsAvailable() and S.ArcaneOrb:CooldownRemainsP() <= Player:GCD() and S.ArcanePower:CooldownRemainsP() > 10)) or Player:ManaPercentageP() <= (VarConserveMana - 10)) then
            if HR.Cast(S.ArcaneBarrage) then return "arcane_barrage 295"; end
        end
        -- supernova,if=mana.pct<=95
        if S.Supernova:IsCastableP() and (Player:ManaPercentageP() <= 95) then
            if HR.Cast(S.Supernova) then return "supernova 319"; end
        end
        -- arcane_explosion,if=active_enemies>=3&(mana.pct>=variable.conserve_mana|buff.arcane_charge.stack=3)
        if S.ArcaneExplosion:IsReadyP() and (EnemiesCount >= 3 and (Player:ManaPercentageP() >= VarConserveMana or Player:ArcaneChargesP() == 3)) then
            if HR.Cast(S.ArcaneExplosion) then return "arcane_explosion 321"; end
        end
        -- arcane_blast
        if S.ArcaneBlast:IsReadyP() then
            if HR.Cast(S.ArcaneBlast) then return "arcane_blast 333"; end
        end
        -- arcane_barrage
        if S.ArcaneBarrage:IsCastableP() then
            if HR.Cast(S.ArcaneBarrage) then return "arcane_barrage 335"; end
        end
    end
    local function Essences()
        -- blood_of_the_enemy,if=burn_phase&buff.arcane_power.down&buff.rune_of_power.down&buff.arcane_charge.stack=buff.arcane_charge.max_stack|time_to_die<cooldown.arcane_power.remains
        if S.BloodoftheEnemy:IsCastableP() and (BurnPhase:On() and Player:BuffDownP(S.ArcanePowerBuff) and Player:BuffDownP(S.RuneofPowerBuff) and Player:ArcaneChargesP() == Player:ArcaneChargesMax() or Target:TimeToDie() < S.ArcanePower:CooldownRemainsP()) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- concentrated_flame,line_cd=6,if=buff.rune_of_power.down&buff.arcane_power.down&(!burn_phase|time_to_die<cooldown.arcane_power.remains)&mana.time_to_max>=execute_time
        if S.ConcentratedFlame:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff) and (not BurnPhase:On() or Target:TimeToDie() < S.ArcanePower:CooldownRemainsP()) and Player:ManaTimeToMax() >= S.ConcentratedFlame:ExecuteTime()) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- focused_azerite_beam,if=buff.rune_of_power.down&buff.arcane_power.down
        if S.FocusedAzeriteBeam:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff)) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- guardian_of_azeroth,if=buff.rune_of_power.down&buff.arcane_power.down
        if S.GuardianofAzeroth:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff)) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- purifying_blast,if=buff.rune_of_power.down&buff.arcane_power.down
        if S.PurifyingBlast:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff)) then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- ripple_in_space,if=buff.rune_of_power.down&buff.arcane_power.down
        if S.RippleInSpace:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff)) then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
        -- the_unbound_force,if=buff.rune_of_power.down&buff.arcane_power.down
        if S.TheUnboundForce:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) and Player:BuffDownP(S.ArcanePowerBuff)) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- memory_of_lucid_dreams,if=!burn_phase&buff.arcane_power.down&cooldown.arcane_power.remains&buff.arcane_charge.stack=buff.arcane_charge.max_stack&(!talent.rune_of_power.enabled|action.rune_of_power.charges)|time_to_die<cooldown.arcane_power.remains
        if S.MemoryofLucidDreams:IsCastableP() and (not BurnPhase:On() and Player:BuffDownP(S.ArcanePowerBuff) and bool(S.ArcanePower:CooldownRemainsP()) and Player:ArcaneCharges() == Player:ArcaneChargesMax() and (not S.RuneofPower:IsAvailable() or bool(S.RuneofPower:Charges())) or Target:TimeToDie() < S.ArcanePower:CooldownRemainsP()) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- worldvein_resonance,if=burn_phase&buff.arcane_power.down&buff.rune_of_power.down&buff.arcane_charge.stack=buff.arcane_charge.max_stack|time_to_die<cooldown.arcane_power.remains
        if S.WorldveinResonance:IsCastableP() and (BurnPhase:On() and Player:BuffDownP(S.ArcanePowerBuff) and Player:BuffDownP(S.RuneofPowerBuff) and Player:ArcaneCharges() == Player:ArcaneChargesMax() or Target:TimeToDie() < S.ArcanePower:CooldownRemainsP()) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
    end
    local function Movement()
        -- blink_any,if=movement.distance>=10
        if BlinkAny:IsCastableP() and (not Target:IsInRange(S.ArcaneBlast:MaximumRange())) then
            if HR.Cast(BlinkAny) then return "blink_any 337"; end
        end
        -- presence_of_mind
        if S.PresenceofMind:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.PresenceofMind, Action.GetToggle(2, "OffGCDasOffGCD")) then return "presence_of_mind 339"; end
        end
        -- arcane_missiles
        if S.ArcaneMissiles:IsCastableP() then
            if HR.Cast(S.ArcaneMissiles) then return "arcane_missiles 341"; end
        end
        -- arcane_orb
        if S.ArcaneOrb:IsCastableP() then
            if HR.Cast(S.ArcaneOrb) then return "arcane_orb 343"; end
        end
        -- supernova
        if S.Supernova:IsCastableP() then
            if HR.Cast(S.Supernova) then return "supernova 345"; end
        end
    end
	
	-- Emergency situations
	local function Emergency()
	    if S.IceBlock:IsReady() and Player:HealthPercentage() <= Action.GetToggle(2, "IceBlock") then
            if HR.Cast(S.IceBlock) then return "IceBlock 786"; end
        end

        if S.PrismaticBarrier:IsReady() and not Player:Buff(S.PrismaticBarrier) and  Player:HealthPercentage() <= Action.GetToggle(2, "PrismaticBarrier") then
            if HR.Cast(S.PrismaticBarrier) then return "PrismaticBarrier 786"; end
        end
	end
    
    -- Protect against interrupt of channeled spells
    if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
        if HR.Cast(S.Channeling) then return "" end
    end  
	-- call DBM precombat
    --if not Player:AffectingCombat() and Action.GetToggle(1, "DBM") and not Player:IsCasting() then
    --    local ShouldReturn = Precombat_DBM(); 
    --        if ShouldReturn then return ShouldReturn; 
   --     end    
   -- end
    -- call non DBM precombat
    if not Player:AffectingCombat() and not Action.GetToggle(1, "DBM") and not Player:IsCasting() then        
        local ShouldReturn = Precombat(); 
            if ShouldReturn then return ShouldReturn; 
        end    
    end
    
    --- In Combat
    if Player:AffectingCombat() then

	    -- Interrupt Handler
        local randomInterrupt = math.random(25, 70)
        local unit = "target"
        local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
        
		-- Counterspell
        if useKick and S.Counterspell:IsReady() and Target:IsInterruptible() then 
		    if Target:CastPercentage() >= randomInterrupt then
                if HR.Cast(S.Counterspell, true) then return "Counterspell 5"; end
            else 
                return
            end 
        end    
		
		-- Purge
		-- Note: Toggles  ("UseDispel", "UsePurge", "UseExpelEnrage")
        -- Category ("Dispel", "MagicMovement", "PurgeFriendly", "PurgeHigh", "PurgeLow", "Enrage")
        if S.Spellsteal:IsReady() and not ShouldStop and Action.AuraIsValid("player", "UsePurge", "PurgeHigh") then
            if HR.Cast(S.Spellsteal) then return "" end
        end	
		-- Emergency
		local ShouldReturn = Emergency(); if ShouldReturn then return ShouldReturn; end		
        -- call_action_list,name=essences
        if (true) then
            local ShouldReturn = Essences(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=burn,if=burn_phase|target.time_to_die<variable.average_burn_length
        if HR.CDsON() and (BurnPhase:On() or Target:TimeToDie() < VarAverageBurnLength) then
            local ShouldReturn = Burn(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=burn,if=(cooldown.arcane_power.remains=0&cooldown.evocation.remains<=variable.average_burn_length&(buff.arcane_charge.stack=buff.arcane_charge.max_stack|(talent.charged_up.enabled&cooldown.charged_up.remains=0&buff.arcane_charge.stack<=1)))
        if HR.CDsON() and ((S.ArcanePower:CooldownRemainsP() == 0 and S.Evocation:CooldownRemainsP() <= VarAverageBurnLength and (Player:ArcaneChargesP() == Player:ArcaneChargesMax() or (S.ChargedUp:IsAvailable() and S.ChargedUp:CooldownRemainsP() == 0 and Player:ArcaneChargesP() <= 1)))) then
            local ShouldReturn = Burn(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=conserve,if=!burn_phase
        if (not BurnPhase:On()) then
            local ShouldReturn = Conserve(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=movement
        if (true) then
            local ShouldReturn = Movement(); if ShouldReturn then return ShouldReturn; end
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

