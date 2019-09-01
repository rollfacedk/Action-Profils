--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_HUNTER_SURVIVAL] = {
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
    SummonPet                             = Action.Create({ Type = "Spell", ID = 883     }),
    SteelTrap                             = Action.Create({ Type = "Spell", ID = 162488     }),
    Harpoon                               = Action.Create({ Type = "Spell", ID = 190925     }),
    --MongooseBite                          = MultiSpell(259387, 265888     }),
    --RaptorStrike                          = MultiSpell(186270, 265189     }),
    MongooseBiteEagle                     = Action.Create({ Type = "Spell", ID = 265888     }),
    MongooseBite                          = Action.Create({ Type = "Spell", ID = 259387     }),
    RaptorStrikeEagle                     = Action.Create({ Type = "Spell", ID = 265189     }),
    RaptorStrike                          = Action.Create({ Type = "Spell", ID = 186270     }),
    FlankingStrike                        = Action.Create({ Type = "Spell", ID = 269751     }),
    KillCommand                           = Action.Create({ Type = "Spell", ID = 259489     }),
    --WildfireBomb                          = MultiSpell(259495, 270335, 270323, 271045     }),
	WingClip                              = Action.Create({ Type = "Spell", ID = 195645     }),
    WildfireBomb                          = Action.Create({ Type = "Spell", ID = 259495     }),
    ShrapnelBomb                          = Action.Create({ Type = "Spell", ID = 270335     }),
    PheromoneBomb                         = Action.Create({ Type = "Spell", ID = 270323     }),
    VolatileBomb                          = Action.Create({ Type = "Spell", ID = 271045     }),
    SerpentSting                          = Action.Create({ Type = "Spell", ID = 259491     }),
    AMurderofCrows                        = Action.Create({ Type = "Spell", ID = 131894     }),
    CoordinatedAssault                    = Action.Create({ Type = "Spell", ID = 266779     }),
    Chakrams                              = Action.Create({ Type = "Spell", ID = 259391     }),
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
    AspectoftheEagle                      = Action.Create({ Type = "Spell", ID = 186289     }),
    Exhilaration                          = Action.Create({ Type = "Spell", ID = 109304     }),
    Muzzle                                = Action.Create({ Type = "Spell", ID = 187707     }),
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
    Carve                                 = Action.Create({ Type = "Spell", ID = 187708     }),
    GuerrillaTactics                      = Action.Create({ Type = "Spell", ID = 264332     }),
    Butchery                              = Action.Create({ Type = "Spell", ID = 212436     }),
    WildfireInfusion                      = Action.Create({ Type = "Spell", ID = 271014     }),
    TermsofEngagement                     = Action.Create({ Type = "Spell", ID = 265895     }),
    VipersVenom                           = Action.Create({ Type = "Spell", ID = 268501     }),
    AlphaPredator                         = Action.Create({ Type = "Spell", ID = 269737     }),
    -- Pet
    CallPet                               = Action.Create({ Type = "Spell", ID = 883     }),
    Intimidation                          = Action.Create({ Type = "Spell", ID = 19577     }),
    MendPet                               = Action.Create({ Type = "Spell", ID = 136     }),
    RevivePet                             = Action.Create({ Type = "Spell", ID = 982     }),
	-- Defensives
	AspectoftheTurtle                    = Action.Create({ Type = "Spell", ID = 274441 }),
    -- Misc
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    RecklessForceBuff                    = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),
    ConcentratedFlameBurn                = Action.Create({ Type = "Spell", ID = 295368, Hidden = true     }),
    CyclotronicBlast                     = Action.Create({ Type = "Spell", ID = 167672, Hidden = true     }),
    HarmonicDematerializer               = Action.Create({ Type = "Spell", ID = 293512, Hidden = true     }),
    RecklessForceCounter                 = Action.Create({ Type = "Spell", ID = 298409, Hidden = true     }),
    RecklessForceCounter2                = Action.Create({ Type = "Spell", ID = 302917, Hidden = true     }),
    -- Buffs
    VipersVenomBuff                       = Action.Create({ Type = "Spell", ID = 268552, Hidden = true     }),
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),
    TipoftheSpearBuff                     = Action.Create({ Type = "Spell", ID = 260286, Hidden = true     }),
    MongooseFuryBuff                      = Action.Create({ Type = "Spell", ID = 259388, Hidden = true     }),
    CoordinatedAssaultBuff                = Action.Create({ Type = "Spell", ID = 266779, Hidden = true     }),
    BlurofTalonsBuff                      = Action.Create({ Type = "Spell", ID = 277969, Hidden = true     }),
    BerserkingBuff                        = Action.Create({ Type = "Spell", ID = 26297, Hidden = true     }),
    BloodFuryBuff                         = Action.Create({ Type = "Spell", ID = 20572, Hidden = true     }),
	-- Debuffs 
    RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568, Hidden = true     }),
    LatentPoisonDebuff                    = Action.Create({ Type = "Spell", ID = 273286, Hidden = true     }),
    BloodseekerDebuff                     = Action.Create({ Type = "Spell", ID = 259277, Hidden = true     }),
    InternalBleedingDebuff                = Action.Create({ Type = "Spell", ID = 270343, Hidden = true     }),
    SerpentStingDebuff                    = Action.Create({ Type = "Spell", ID = 259491, Hidden = true     }),
    ShrapnelBombDebuff                    = Action.Create({ Type = "Spell", ID = 270339, Hidden = true     }),
    WildfireBombDebuff                    = Action.Create({ Type = "Spell", ID = 269747, Hidden = true     }),
    SteelTrapDebuff                       = Action.Create({ Type = "Spell", ID = 162487, Hidden = true     }),
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
	GalecallersBoon                      = Action.Create({ Type = "Trinket", ID = 159614, QueueForbidden = true }),
    DribblingInkpod                      = Action.Create({ Type = "Trinket", ID = 169319, QueueForbidden = true }),
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
Action:CreateEssencesFor(ACTION_CONST_HUNTER_SURVIVAL)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_HUNTER_SURVIVAL], { __index = Action })

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
local EnemiesCount, GCDMax;

-- Stuns
local StunInterrupts = {
  {S.Intimidation, "Cast Intimidation (Interrupt)", function () return true; end},
};

S.ConcentratedFlame:RegisterInFlight()

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

-- Variables
local VarCarveCdr = 0;

HL:RegisterForEvent(function()
  VarCarveCdr = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {8}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i);
  end
end

local function EvaluateTargetIfFilterMongooseBite396(TargetUnit)
  return TargetUnit:DebuffStackP(S.LatentPoisonDebuff)
end

local function EvaluateTargetIfMongooseBite405(TargetUnit)
  return TargetUnit:DebuffStackP(S.LatentPoisonDebuff) == 10
end

local function EvaluateTargetIfFilterKillCommand413(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.BloodseekerDebuff)
end

local function EvaluateTargetIfKillCommand426(TargetUnit)
  return Player:Focus() + Player:FocusCastRegen(S.KillCommand:ExecuteTime()) < Player:FocusMax()
end

local function EvaluateTargetIfFilterSerpentSting462(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.SerpentStingDebuff)
end

local function EvaluateTargetIfSerpentSting479(TargetUnit)
  return bool(Player:BuffStackP(S.VipersVenomBuff))
end

local function EvaluateTargetIfFilterSerpentSting497(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.SerpentStingDebuff)
end

local function EvaluateTargetIfSerpentSting520(TargetUnit)
  return TargetUnit:DebuffRefreshableCP(S.SerpentStingDebuff) and Player:BuffStackP(S.TipoftheSpearBuff) < 3
end

local function EvaluateTargetIfFilterMongooseBite526(TargetUnit)
  return TargetUnit:DebuffStackP(S.LatentPoisonDebuff)
end

local function EvaluateTargetIfFilterRaptorStrike537(TargetUnit)
  return TargetUnit:DebuffStackP(S.LatentPoisonDebuff)
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

local function UpdateRaptorStrikeID()
    S.RaptorStrike = S.RaptorStrikeEagle:IsAvailable() and S.RaptorStrikeEagle or S.RaptorStrike
end

	
local function UpdateMangooseBiteID()
    S.MongooseBite = S.MongooseBiteEagle:IsAvailable() and S.MongooseBiteEagle or S.MongooseBite
end

local function cacheOverwrite()
    Cache.Persistent.SpellLearned.Player[S.MendPet.SpellID] = true
end

S.MongooseBite.TextureSpellID = { 224795 } -- Raptor Strikes
S.Butchery.TextureSpellID = { 203673 } -- Carve
S.ShrapnelBomb.TextureSpellID = { 269747 }
S.PheromoneBomb.TextureSpellID = { 269747 }
S.VolatileBomb.TextureSpellID = { 269747 }
S.WildfireBomb.TextureSpellID = { 269747 }
S.WingClip.TextureSpellID = { 76151 }

local function UpdateWFB()
    if S.ShrapnelBomb:IsReady() and not ShouldStop then
        S.WildfireBomb = S.ShrapnelBomb
    elseif S.VolatileBomb:IsReady() and not ShouldStop then
        S.WildfireBomb = S.VolatileBomb
    elseif S.PheromoneBomb:IsReady() and not ShouldStop then
        S.WildfireBomb = S.PheromoneBomb
    else
        S.WildfireBomb = S.WildfireBomb
    end
    S.ShrapnelBomb.TextureSpellID = { 269747 }
    S.PheromoneBomb.TextureSpellID = { 269747 }
    S.VolatileBomb.TextureSpellID = { 269747 }
    S.WildfireBomb.TextureSpellID = { 269747 }
end

-- Initiate Nucleus Ability registration
local function Init ()
  HL.RegisterNucleusAbility(187708, 8, 6)                           -- Carve
  HL.RegisterNucleusAbility(212436, 8, 6)                           -- Butchery
  HL.RegisterNucleusAbility({259495, 270335, 270323, 271045}, 8, 6) -- Bombs
  HL.RegisterNucleusAbility(259391, 40, 6)                          -- Chakrams
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
	--print(EnemiesCount)
    HL.GetEnemies(40) -- To populate Cache.Enemies[40] for CastCycles
    DetermineEssenceRanks()
    UpdateWFB()
	UpdateMangooseBiteID()
	UpdateRaptorStrikeID()
	UpdateRanges()


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
        if S.SummonPet:IsCastableP() and not ShouldStop and not Pet:Exists() then
            if HR.Cast(S.SummonPet, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_pet 3"; end
        end
        -- snapshot_stats
        --if Everyone.TargetIsValid() then
            -- potion
            if I.PotionofUnbridledFury:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") then
                if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_agility 6"; end
            end
            -- use_item,name=azsharas_font_of_power
            if I.AzsharasFontofPower:IsEquipReady() and TrinketON() then
                if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 7"; end
            end
            -- use_item,effect_name=cyclotronic_blast,if=!raid_event.invulnerable.exists
            if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and not ShouldStop and TrinketON() then
                if HR.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device 8"; end
            end
            -- guardian_of_azeroth
            if S.GuardianofAzeroth:IsCastableP() and not ShouldStop then
                if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 9"; end
            end
            -- steel_trap
            if S.SteelTrap:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseSteelTrap") and Player:DebuffDownP(S.SteelTrapDebuff) then
                if HR.Cast(S.SteelTrap) then return "steel_trap 10"; end
            end
            -- harpoon
            if S.Harpoon:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseHarpoonOOR") and Target:MinDistanceToPlayer(true) >= 8 and Target:MaxDistanceToPlayer(true) <= 30 then
                if HR.Cast(S.Harpoon, Action.GetToggle(2, "OffGCDasOffGCD")) then return "harpoon 12"; end
            end
        --end
    end
    local function Apst()
        -- mongoose_bite,if=buff.coordinated_assault.up&(buff.coordinated_assault.remains<1.5*gcd|buff.blur_of_talons.up&buff.blur_of_talons.remains<1.5*gcd)
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Player:BuffP(S.CoordinatedAssaultBuff) and (Player:BuffRemainsP(S.CoordinatedAssaultBuff) < 1.5 * Player:GCD() or Player:BuffP(S.BlurofTalonsBuff) and Player:BuffRemainsP(S.BlurofTalonsBuff) < 1.5 * Player:GCD())) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 14"; end
        end
        -- raptor_strike,if=buff.coordinated_assault.up&(buff.coordinated_assault.remains<1.5*gcd|buff.blur_of_talons.up&buff.blur_of_talons.remains<1.5*gcd)
        if S.RaptorStrike:IsReadyP() and not ShouldStop and (Player:BuffP(S.CoordinatedAssaultBuff) and (Player:BuffRemainsP(S.CoordinatedAssaultBuff) < 1.5 * Player:GCD() or Player:BuffP(S.BlurofTalonsBuff) and Player:BuffRemainsP(S.BlurofTalonsBuff) < 1.5 * Player:GCD())) then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 24"; end
        end
        -- flanking_strike,if=focus+cast_regen<focus.max
        if S.FlankingStrike:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.FlankingStrike:ExecuteTime()) < Player:FocusMax()) then
            if HR.Cast(S.FlankingStrike) then return "flanking_strike 34"; end
        end
        -- kill_command,if=full_recharge_time<1.5*gcd&focus+cast_regen<focus.max-10
        if S.KillCommand:IsCastableP() and not ShouldStop and (S.KillCommand:FullRechargeTimeP() < 1.5 * Player:GCD() and Player:Focus() + Player:FocusCastRegen(S.KillCommand:ExecuteTime()) < Player:FocusMax() - 10) then
            if HR.Cast(S.KillCommand) then return "kill_command 42"; end
        end
        -- steel_trap,if=focus+cast_regen<focus.max
        if S.SteelTrap:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseSteelTrap") and (Player:Focus() + Player:FocusCastRegen(S.SteelTrap:ExecuteTime()) < Player:FocusMax()) then
            if HR.Cast(S.SteelTrap) then return "steel_trap 54"; end
        end
        -- wildfire_bomb,if=focus+cast_regen<focus.max&!ticking&!buff.memory_of_lucid_dreams.up&(full_recharge_time<1.5*gcd|!dot.wildfire_bomb.ticking&!buff.coordinated_assault.up)
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.WildfireBomb:ExecuteTime()) < Player:FocusMax() and not Target:DebuffP(S.WildfireBombDebuff) and not Player:BuffP(S.MemoryofLucidDreams) and (S.WildfireBomb:FullRechargeTimeP() < 1.5 * Player:GCD() or not Target:DebuffP(S.WildfireBombDebuff) and not Player:BuffP(S.CoordinatedAssaultBuff))) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 64"; end
        end
        -- serpent_sting,if=!dot.serpent_sting.ticking&!buff.coordinated_assault.up
        if S.SerpentSting:IsReadyP() and not ShouldStop and (not Target:DebuffP(S.SerpentStingDebuff) and not Player:BuffP(S.CoordinatedAssaultBuff)) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 90"; end
        end
        -- kill_command,if=focus+cast_regen<focus.max&(buff.mongoose_fury.stack<5|focus<action.mongoose_bite.cost)
        if S.KillCommand:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.KillCommand:ExecuteTime()) < Player:FocusMax() and (Player:BuffStackP(S.MongooseFuryBuff) < 5 or Player:Focus() < S.MongooseBite:Cost())) then
            if HR.Cast(S.KillCommand) then return "kill_command 96"; end
        end
        -- serpent_sting,if=refreshable&!buff.coordinated_assault.up&buff.mongoose_fury.stack<5
        if S.SerpentSting:IsReadyP() and not ShouldStop and (Target:DebuffRefreshableCP(S.SerpentStingDebuff) and not Player:BuffP(S.CoordinatedAssaultBuff) and Player:BuffStackP(S.MongooseFuryBuff) < 5) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 110"; end
        end
        -- a_murder_of_crows,if=!buff.coordinated_assault.up
        if S.AMurderofCrows:IsCastableP() and not ShouldStop and (not Player:BuffP(S.CoordinatedAssaultBuff)) then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 122"; end
        end
        -- coordinated_assault
        if S.CoordinatedAssault:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.CoordinatedAssault, Action.GetToggle(2, "OffGCDasOffGCD")) then return "coordinated_assault 126"; end
        end
        -- mongoose_bite,if=buff.mongoose_fury.up|focus+cast_regen>focus.max-10|buff.coordinated_assault.up
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Player:BuffP(S.MongooseFuryBuff) or Player:Focus() + Player:FocusCastRegen(S.MongooseBite:ExecuteTime()) > Player:FocusMax() - 10 or Player:BuffP(S.CoordinatedAssaultBuff)) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 128"; end
        end
        -- raptor_strike
        if S.RaptorStrike:IsReadyP() and not ShouldStop then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 140"; end
        end
        -- wildfire_bomb,if=!ticking
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (not Target:DebuffP(S.WildfireBombDebuff)) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 142"; end
        end
    end
    local function Apwfi()
        -- mongoose_bite,if=buff.blur_of_talons.up&buff.blur_of_talons.remains<gcd
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Player:BuffP(S.BlurofTalonsBuff) and Player:BuffRemainsP(S.BlurofTalonsBuff) < Player:GCD()) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 150"; end
        end
        -- raptor_strike,if=buff.blur_of_talons.up&buff.blur_of_talons.remains<gcd
        if S.RaptorStrike:IsReadyP() and not ShouldStop and (Player:BuffP(S.BlurofTalonsBuff) and Player:BuffRemainsP(S.BlurofTalonsBuff) < Player:GCD()) then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 156"; end
        end
        -- serpent_sting,if=!dot.serpent_sting.ticking
        if S.SerpentSting:IsReadyP() and not ShouldStop and (not Target:DebuffP(S.SerpentStingDebuff)) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 162"; end
        end
        -- a_murder_of_crows
        if S.AMurderofCrows:IsCastableP() and not ShouldStop then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 166"; end
        end
        -- wildfire_bomb,if=full_recharge_time<1.5*gcd|focus+cast_regen<focus.max&(next_wi_bomb.volatile&dot.serpent_sting.ticking&dot.serpent_sting.refreshable|next_wi_bomb.pheromone&!buff.mongoose_fury.up&focus+cast_regen<focus.max-action.kill_command.cast_regen*3)
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (S.WildfireBomb:FullRechargeTimeP() < 1.5 * Player:GCD() or Player:Focus() + Player:FocusCastRegen(S.WildfireBomb:ExecuteTime()) < Player:FocusMax() and (S.VolatileBomb:IsLearned() and Target:DebuffP(S.SerpentStingDebuff) and Target:DebuffRefreshableCP(S.SerpentStingDebuff) or S.PheromoneBomb:IsLearned() and not Player:BuffP(S.MongooseFuryBuff) and Player:Focus() + Player:FocusCastRegen(S.WildfireBomb:ExecuteTime()) < Player:FocusMax() - Player:FocusCastRegen(S.KillCommand:ExecuteTime()) * 3)) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 168"; end
        end
        -- coordinated_assault
        if S.CoordinatedAssault:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.CoordinatedAssault, Action.GetToggle(2, "OffGCDasOffGCD")) then return "coordinated_assault 204"; end
        end
        -- mongoose_bite,if=buff.mongoose_fury.remains&next_wi_bomb.pheromone
        if S.MongooseBite:IsReadyP() and not ShouldStop and (bool(Player:BuffRemainsP(S.MongooseFuryBuff)) and S.PheromoneBomb:IsLearned()) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 206"; end
        end
        -- kill_command,if=full_recharge_time<1.5*gcd&focus+cast_regen<focus.max-20
        if S.KillCommand:IsCastableP() and not ShouldStop and (S.KillCommand:FullRechargeTimeP() < 1.5 * Player:GCD() and Player:Focus() + Player:FocusCastRegen(S.KillCommand:ExecuteTime()) < Player:FocusMax() - 20) then
            if HR.Cast(S.KillCommand) then return "kill_command 210"; end
        end
        -- steel_trap,if=focus+cast_regen<focus.max
        if S.SteelTrap:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseSteelTrap") and (Player:Focus() + Player:FocusCastRegen(S.SteelTrap:ExecuteTime()) < Player:FocusMax()) then
            if HR.Cast(S.SteelTrap) then return "steel_trap 222"; end
        end
        -- raptor_strike,if=buff.tip_of_the_spear.stack=3|dot.shrapnel_bomb.ticking
        if S.RaptorStrike:IsReadyP() and not ShouldStop and (Player:BuffStackP(S.TipoftheSpearBuff) == 3 or Target:DebuffP(S.ShrapnelBombDebuff)) then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 232"; end
        end
        -- mongoose_bite,if=dot.shrapnel_bomb.ticking
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Target:DebuffP(S.ShrapnelBombDebuff)) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 238"; end
        end
        -- wildfire_bomb,if=next_wi_bomb.shrapnel&focus>30&dot.serpent_sting.remains>5*gcd
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (S.ShrapnelBomb:IsLearned() and Player:Focus() > 30 and Target:DebuffRemainsP(S.SerpentStingDebuff) > 5 * Player:GCD()) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 242"; end
        end
        -- chakrams,if=!buff.mongoose_fury.remains
        if S.Chakrams:IsCastableP() and not ShouldStop and (not bool(Player:BuffRemainsP(S.MongooseFuryBuff))) then
            if HR.Cast(S.Chakrams) then return "chakrams 246"; end
        end
        -- serpent_sting,if=refreshable
        if S.SerpentSting:IsReadyP() and not ShouldStop and (Target:DebuffRefreshableCP(S.SerpentStingDebuff)) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 250"; end
        end
        -- kill_command,if=focus+cast_regen<focus.max&(buff.mongoose_fury.stack<5|focus<action.mongoose_bite.cost)
        if S.KillCommand:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.KillCommand:ExecuteTime()) < Player:FocusMax() and (Player:BuffStackP(S.MongooseFuryBuff) < 5 or Player:Focus() < S.MongooseBite:Cost())) then
            if HR.Cast(S.KillCommand) then return "kill_command 258"; end
        end
        -- raptor_strike
        if S.RaptorStrike:IsReadyP() and not ShouldStop then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 272"; end
        end
        -- mongoose_bite,if=buff.mongoose_fury.up|focus>40|dot.shrapnel_bomb.ticking
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Player:BuffP(S.MongooseFuryBuff) or Player:Focus() > 40 or Target:DebuffP(S.ShrapnelBombDebuff)) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 274"; end
        end
        -- wildfire_bomb,if=next_wi_bomb.volatile&dot.serpent_sting.ticking|next_wi_bomb.pheromone|next_wi_bomb.shrapnel&focus>50
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (S.VolatileBomb:IsLearned() and Target:DebuffP(S.SerpentStingDebuff) or S.PheromoneBomb:IsLearned() or S.ShrapnelBomb:IsLearned() and Player:Focus() > 50) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 280"; end
        end
    end
    local function Cds()
        -- blood_fury,if=cooldown.coordinated_assault.remains>30
        if S.BloodFury:IsCastableP() and not ShouldStop and HR.CDsON() and (S.CoordinatedAssault:CooldownRemainsP() > 30) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 284"; end
        end
        -- ancestral_call,if=cooldown.coordinated_assault.remains>30
        if S.AncestralCall:IsCastableP() and not ShouldStop and HR.CDsON() and (S.CoordinatedAssault:CooldownRemainsP() > 30) then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ancestral_call 288"; end
        end
        -- fireblood,if=cooldown.coordinated_assault.remains>30
        if S.Fireblood:IsCastableP() and not ShouldStop and HR.CDsON() and (S.CoordinatedAssault:CooldownRemainsP() > 30) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 292"; end
        end
        -- lights_judgment
        if S.LightsJudgment:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 296"; end
        end
        -- berserking,if=cooldown.coordinated_assault.remains>60|time_to_die<13
        if S.Berserking:IsCastableP() and not ShouldStop and HR.CDsON() and (S.CoordinatedAssault:CooldownRemainsP() > 60 or Target:TimeToDie() < 13) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 298"; end
        end
        -- potion,if=buff.coordinated_assault.up&(buff.berserking.up|buff.blood_fury.up|!race.troll&!race.orc)|(consumable.potion_of_unbridled_fury&target.time_to_die<61|target.time_to_die<26)
        if I.PotionofUnbridledFury:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") and (Player:BuffP(S.CoordinatedAssaultBuff) and (Player:BuffP(S.BerserkingBuff) or Player:BuffP(S.BloodFuryBuff) or not Player:IsRace("Troll") and not Player:IsRace("Orc")) or Target:TimeToDie() < 61) then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_agility 308"; end
        end
        -- aspect_of_the_eagle,if=target.distance>=6
        if S.AspectoftheEagle:IsCastableP() and not ShouldStop and HR.CDsON() and (not Target:IsInRange(8) and Target:IsInRange(40)) then
            if HR.Cast(S.AspectoftheEagle, Action.GetToggle(2, "OffGCDasOffGCD")) then return "aspect_of_the_eagle 320"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=equipped.dribbling_inkpod&(debuff.razor_coral_debuff.down|time_to_pct_30<1|(health.pct<30&buff.guardian_of_azeroth.up|buff.memory_of_lucid_dreams.up))|(!equipped.dribbling_inkpod&(buff.memory_of_lucid_dreams.up|buff.guardian_of_azeroth.up)|debuff.razor_coral_debuff.down)|target.time_to_die<20
        if I.AshvanesRazorCoral:IsEquipReady() and TrinketON() and (I.DribblingInkpod:IsEquipped() and (Target:DebuffDownP(S.RazorCoralDebuff) or Target:TimeToX(30) < 1 or (Target:HealthPercentage() < 30 and (S.GuardianofAzeroth:IsAvailable() and S.GuardianofAzeroth:CooldownRemainsP() > 150) or Player:BuffP(S.MemoryofLucidDreams))) or (not I.DribblingInkpod:IsEquipped() and (Player:BuffP(S.MemoryofLucidDreams) or (S.GuardianofAzeroth:IsAvailable() and S.GuardianofAzeroth:CooldownRemainsP() > 150)) or Target:DebuffDownP(S.RazorCoralDebuff)) or Target:TimeToDie() < 20) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 321"; end
        end
        -- use_item,name=galecallers_boon,if=cooldown.memory_of_lucid_dreams.remains|talent.wildfire_infusion.enabled&cooldown.coordinated_assault.remains|cooldown.cyclotronic_blast.remains|!essence.memory_of_lucid_dreams.major&cooldown.coordinated_assault.remains
        if I.GalecallersBoon:IsEquipReady() and TrinketON() and (bool(S.MemoryofLucidDreams:CooldownRemainsP()) or S.WildfireInfusion:IsAvailable() and bool(S.CoordinatedAssault:CooldownRemainsP()) or bool(I.PocketsizedComputationDevice:CooldownRemainsP()) or not S.MemoryofLucidDreams:IsAvailable() and bool(S.CoordinatedAssault:CooldownRemainsP())) then
            if HR.Cast(I.GalecallersBoon) then return "galecallers_boon 322"; end
        end
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipReady() and TrinketON() then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 323"; end
        end
        -- focused_azerite_beam
        if S.FocusedAzeriteBeam:IsCastableP() and not ShouldStop then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam 324"; end
        end
        -- memory_of_lucid_dreams,if=focus<focus.max-30&buff.coordinated_assault.up
        if S.MemoryofLucidDreams:IsCastableP() and not ShouldStop and (Player:FocusDeficit() > 30 and Player:BuffP(S.CoordinatedAssaultBuff)) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 325"; end
        end
        -- blood_of_the_enemy,if=buff.coordinated_assault.up
        if S.BloodoftheEnemy:IsCastableP() and not ShouldStop and (Player:BuffP(S.CoordinatedAssaultBuff)) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy 328"; end
        end
        -- purifying_blast
        if S.PurifyingBlast:IsCastableP() and not ShouldStop then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast 332"; end
        end
        -- guardian_of_azeroth
        if S.GuardianofAzeroth:IsCastableP() and not ShouldStop then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 334"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastableP() and not ShouldStop then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space 336"; end
        end
        -- concentrated_flame,if=full_recharge_time<1*gcd
        if S.ConcentratedFlame:IsCastableP() and not ShouldStop and (S.ConcentratedFlame:FullRechargeTimeP() < 1 * Player:GCD()) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 338"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up
        if S.TheUnboundForce:IsCastableP() and not ShouldStop and (Player:BuffP(S.RecklessForceBuff)) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force 344"; end
        end
        -- worldvein_resonance
        if S.WorldveinResonance:IsCastableP() and not ShouldStop then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance 348"; end
        end
    end
    local function Cleave()
        -- variable,name=carve_cdr,op=setif,value=active_enemies,value_else=5,condition=active_enemies<5
        VarCarveCdr = math.min(Cache.EnemiesCount[8], 5)
        -- a_murder_of_crows
        if S.AMurderofCrows:IsCastableP() and not ShouldStop then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 375"; end
        end
        -- coordinated_assault
        if S.CoordinatedAssault:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.CoordinatedAssault, Action.GetToggle(2, "OffGCDasOffGCD")) then return "coordinated_assault 377"; end
        end
        -- carve,if=dot.shrapnel_bomb.ticking
        if S.Carve:IsReadyP() and not ShouldStop and (Target:DebuffP(S.ShrapnelBombDebuff)) then
            if HR.Cast(S.Carve) then return "carve 379"; end
        end
        -- wildfire_bomb,if=!talent.guerrilla_tactics.enabled|full_recharge_time<gcd
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (not S.GuerrillaTactics:IsAvailable() or S.WildfireBomb:FullRechargeTimeP() < Player:GCD()) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 383"; end
        end
        -- mongoose_bite,target_if=max:debuff.latent_poison.stack,if=debuff.latent_poison.stack=10
        if S.MongooseBite:IsReadyP() and not ShouldStop and EvaluateTargetIfFilterMongooseBite396(Target) and EvaluateTargetIfMongooseBite405(Target) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 407" end
        end
        -- chakrams
        if S.Chakrams:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Chakrams) then return "chakrams 408"; end
        end
        -- kill_command,target_if=min:bloodseeker.remains,if=focus+cast_regen<focus.max
        if S.KillCommand:IsCastableP() and not ShouldStop and EvaluateTargetIfFilterKillCommand413(Target) and EvaluateTargetIfKillCommand426(Target) then
            if HR.Cast(S.KillCommand) then return "kill_command 428" end
        end
        -- butchery,if=full_recharge_time<gcd|!talent.wildfire_infusion.enabled|dot.shrapnel_bomb.ticking&dot.internal_bleeding.stack<3
        if S.Butchery:IsCastableP() and not ShouldStop and (S.Butchery:FullRechargeTimeP() < Player:GCD() or not S.WildfireInfusion:IsAvailable() or Target:DebuffP(S.ShrapnelBombDebuff) and Target:DebuffStackP(S.InternalBleedingDebuff) < 3) then
            if HR.Cast(S.Butchery, Action.GetToggle(2, "OffGCDasOffGCD")) then return "butchery 429"; end
        end
        -- carve,if=talent.guerrilla_tactics.enabled
        if S.Carve:IsReadyP() and not ShouldStop and (S.GuerrillaTactics:IsAvailable()) then
            if HR.Cast(S.Carve) then return "carve 441"; end
        end
        -- flanking_strike,if=focus+cast_regen<focus.max
        if S.FlankingStrike:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.FlankingStrike:ExecuteTime()) < Player:FocusMax()) then
            if HR.Cast(S.FlankingStrike) then return "flanking_strike 445"; end
        end
        -- wildfire_bomb,if=dot.wildfire_bomb.refreshable|talent.wildfire_infusion.enabled
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (Target:DebuffRefreshableCP(S.WildfireBombDebuff) or S.WildfireInfusion:IsAvailable()) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 453"; end
        end
        -- serpent_sting,target_if=min:remains,if=buff.vipers_venom.react
        if S.SerpentSting:IsReadyP() and not ShouldStop and EvaluateTargetIfFilterSerpentSting462(Target) and EvaluateTargetIfSerpentSting479(Target) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 481" end
        end
        -- carve,if=cooldown.wildfire_bomb.remains>variable.carve_cdr%2
        if S.Carve:IsReadyP() and not ShouldStop and (S.WildfireBomb:CooldownRemainsP() > VarCarveCdr / 2) then
            if HR.Cast(S.Carve) then return "carve 482"; end
        end
        -- steel_trap
        if S.SteelTrap:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseSteelTrap") then
            if HR.Cast(S.SteelTrap) then return "steel_trap 488"; end
        end
        -- harpoon,if=talent.terms_of_engagement.enabled
        if S.Harpoon:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseHarpoonOOR") and Target:MinDistanceToPlayer(true) >= 8 and Target:MaxDistanceToPlayer(true) <= 30 and (S.TermsofEngagement:IsAvailable()) then
            if HR.Cast(S.Harpoon, Action.GetToggle(2, "OffGCDasOffGCD")) then return "harpoon 490"; end
        end
        -- serpent_sting,target_if=min:remains,if=refreshable&buff.tip_of_the_spear.stack<3
        if S.SerpentSting:IsReadyP() and not ShouldStop and EvaluateTargetIfFilterSerpentSting497(Target) and EvaluateTargetIfSerpentSting520(Target) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 522" end
        end
        -- mongoose_bite,target_if=max:debuff.latent_poison.stack
        if S.MongooseBite:IsReadyP() and not ShouldStop and EvaluateTargetIfFilterMongooseBite526(Target) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 533" end
        end
        -- raptor_strike,target_if=max:debuff.latent_poison.stack
        if S.RaptorStrike:IsReadyP() and not ShouldStop and EvaluateTargetIfFilterRaptorStrike537(Target) then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 544" end
        end
    end
    local function St()
        -- harpoon,if=talent.terms_of_engagement.enabled
        if S.Harpoon:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseHarpoonOOR") and Target:MinDistanceToPlayer(true) >= 8 and Target:MaxDistanceToPlayer(true) <= 30 and (S.TermsofEngagement:IsAvailable()) then
            if HR.Cast(S.Harpoon, Action.GetToggle(2, "OffGCDasOffGCD")) then return "harpoon 545"; end
        end
        -- flanking_strike,if=focus+cast_regen<focus.max
        if S.FlankingStrike:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.FlankingStrike:ExecuteTime()) < Player:FocusMax()) then
            if HR.Cast(S.FlankingStrike) then return "flanking_strike 549"; end
        end
        -- raptor_strike,if=buff.coordinated_assault.up&(buff.coordinated_assault.remains<1.5*gcd|buff.blur_of_talons.up&buff.blur_of_talons.remains<1.5*gcd)
        if S.RaptorStrike:IsReadyP() and not ShouldStop and (Player:BuffP(S.CoordinatedAssaultBuff) and (Player:BuffRemainsP(S.CoordinatedAssaultBuff) < 1.5 * Player:GCD() or Player:BuffP(S.BlurofTalonsBuff) and Player:BuffRemainsP(S.BlurofTalonsBuff) < 1.5 * Player:GCD())) then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 557"; end
        end
        -- mongoose_bite,if=buff.coordinated_assault.up&(buff.coordinated_assault.remains<1.5*gcd|buff.blur_of_talons.up&buff.blur_of_talons.remains<1.5*gcd)
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Player:BuffP(S.CoordinatedAssaultBuff) and (Player:BuffRemainsP(S.CoordinatedAssaultBuff) < 1.5 * Player:GCD() or Player:BuffP(S.BlurofTalonsBuff) and Player:BuffRemainsP(S.BlurofTalonsBuff) < 1.5 * Player:GCD())) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 567"; end
        end
        -- kill_command,if=focus+cast_regen<focus.max
        if S.KillCommand:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.KillCommand:ExecuteTime()) + 15 < Player:FocusMax()) then
            if HR.Cast(S.KillCommand) then return "kill_command 568"; end
        end
        -- steel_trap,if=focus+cast_regen<focus.max
        if S.SteelTrap:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseSteelTrap") and (Player:Focus() + Player:FocusCastRegen(S.SteelTrap:ExecuteTime()) < Player:FocusMax()) then
            if HR.Cast(S.SteelTrap) then return "steel_trap 577"; end
        end
        -- wildfire_bomb,if=focus+cast_regen<focus.max&!ticking&!buff.memory_of_lucid_dreams.up&(full_recharge_time<1.5*gcd|!dot.wildfire_bomb.ticking&!buff.coordinated_assault.up)
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.WildfireBomb:ExecuteTime()) < Player:FocusMax() and not Target:DebuffP(S.WildfireBombDebuff) and not Player:BuffP(S.MemoryofLucidDreams) and (S.WildfireBomb:FullRechargeTimeP() < 1.5 * Player:GCD() or not Target:DebuffP(S.WildfireBombDebuff) and not Player:BuffP(S.CoordinatedAssaultBuff))) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 587"; end
        end
        -- mongoose_bite,if=buff.mongoose_fury.stack>5&!cooldown.coordinated_assault.remains
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Player:BuffStackP(S.MongooseFuryBuff) > 5 and not bool(S.CoordinatedAssault:CooldownRemainsP())) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 613"; end
        end
        -- serpent_sting,if=buff.vipers_venom.up&dot.serpent_sting.remains<4*gcd|dot.serpent_sting.refreshable&!buff.coordinated_assault.up
        if S.SerpentSting:IsReadyP() and not ShouldStop and (Player:BuffP(S.VipersVenomBuff) and Target:DebuffRemainsP(S.SerpentStingDebuff) < 4 * Player:GCD() or Target:DebuffRefreshableCP(S.SerpentStingDebuff) and not Player:BuffP(S.CoordinatedAssaultBuff)) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 619"; end
        end
        -- a_murder_of_crows,if=!buff.coordinated_assault.up
        if S.AMurderofCrows:IsCastableP() and not ShouldStop and (not Player:BuffP(S.CoordinatedAssaultBuff)) then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 629"; end
        end
        -- coordinated_assault
        if S.CoordinatedAssault:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.CoordinatedAssault, Action.GetToggle(2, "OffGCDasOffGCD")) then return "coordinated_assault 633"; end
        end
        -- mongoose_bite,if=buff.mongoose_fury.up|focus+cast_regen>focus.max-20&talent.vipers_venom.enabled|focus+cast_regen>focus.max-1&talent.terms_of_engagement.enabled|buff.coordinated_assault.up
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Player:BuffP(S.MongooseFuryBuff) or Player:Focus() + Player:FocusCastRegen(S.MongooseBite:ExecuteTime()) > Player:FocusMax() - 20 and S.VipersVenom:IsAvailable() or Player:Focus() + Player:FocusCastRegen(S.MongooseBite:ExecuteTime()) > Player:FocusMax() - 1 and S.TermsofEngagement:IsAvailable() or Player:BuffP(S.CoordinatedAssaultBuff)) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 635"; end
        end
        -- raptor_strike
        if S.RaptorStrike:IsReadyP() and not ShouldStop then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 657"; end
        end
        -- wildfire_bomb,if=dot.wildfire_bomb.refreshable
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (Target:DebuffRefreshableCP(S.WildfireBombDebuff)) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 659"; end
        end
        -- serpent_sting,if=buff.vipers_venom.up
        if S.SerpentSting:IsReadyP() and not ShouldStop and (Player:BuffP(S.VipersVenomBuff)) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 663"; end
        end
    end
    local function Wfi()
        -- harpoon,if=focus+cast_regen<focus.max&talent.terms_of_engagement.enabled
        if S.Harpoon:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseHarpoonOOR") and Target:MinDistanceToPlayer(true) >= 8 and Target:MaxDistanceToPlayer(true) <= 30 and (Player:Focus() + Player:FocusCastRegen(S.Harpoon:ExecuteTime()) < Player:FocusMax() and S.TermsofEngagement:IsAvailable()) then
            if HR.Cast(S.Harpoon, Action.GetToggle(2, "OffGCDasOffGCD")) then return "harpoon 667"; end
        end
        -- mongoose_bite,if=buff.blur_of_talons.up&buff.blur_of_talons.remains<gcd
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Player:BuffP(S.BlurofTalonsBuff) and Player:BuffRemainsP(S.BlurofTalonsBuff) < Player:GCD()) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 677"; end
        end
        -- raptor_strike,if=buff.blur_of_talons.up&buff.blur_of_talons.remains<gcd
        if S.RaptorStrike:IsReadyP() and not ShouldStop and (Player:BuffP(S.BlurofTalonsBuff) and Player:BuffRemainsP(S.BlurofTalonsBuff) < Player:GCD()) then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 683"; end
        end
        -- serpent_sting,if=buff.vipers_venom.up&buff.vipers_venom.remains<1.5*gcd|!dot.serpent_sting.ticking
        if S.SerpentSting:IsReadyP() and not ShouldStop and (Player:BuffP(S.VipersVenomBuff) and Player:BuffRemainsP(S.VipersVenomBuff) < 1.5 * Player:GCD() or not Target:DebuffP(S.SerpentStingDebuff)) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 689"; end
        end
        -- wildfire_bomb,if=full_recharge_time<1.5*gcd&focus+cast_regen<focus.max|(next_wi_bomb.volatile&dot.serpent_sting.ticking&dot.serpent_sting.refreshable|next_wi_bomb.pheromone&!buff.mongoose_fury.up&focus+cast_regen<focus.max-action.kill_command.cast_regen*3)
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (S.WildfireBomb:FullRechargeTimeP() < 1.5 * Player:GCD() and Player:Focus() + Player:FocusCastRegen(S.WildfireBomb:ExecuteTime()) < Player:FocusMax() or (S.VolatileBomb:IsLearned() and Target:DebuffP(S.SerpentStingDebuff) and Target:DebuffRefreshableCP(S.SerpentStingDebuff) or S.PheromoneBomb:IsLearned() and not Player:BuffP(S.MongooseFuryBuff) and Player:Focus() + Player:FocusCastRegen(S.WildfireBomb:ExecuteTime()) < Player:FocusMax() - Player:FocusCastRegen(S.KillCommand:ExecuteTime()) * 3)) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 697"; end
        end
        -- kill_command,if=focus+cast_regen<focus.max-focus.regen
        if S.KillCommand:IsCastableP() and not ShouldStop and (Player:Focus() + Player:FocusCastRegen(S.KillCommand:ExecuteTime()) < Player:FocusMax() - Player:FocusRegen()) then
            if HR.Cast(S.KillCommand) then return "kill_command 733"; end
        end
        -- a_murder_of_crows
        if S.AMurderofCrows:IsCastableP() and not ShouldStop then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 741"; end
        end
        -- steel_trap,if=focus+cast_regen<focus.max
        if S.SteelTrap:IsCastableP() and not ShouldStop and Action.GetToggle(2, "UseSteelTrap") and (Player:Focus() + Player:FocusCastRegen(S.SteelTrap:ExecuteTime()) < Player:FocusMax()) then
            if HR.Cast(S.SteelTrap) then return "steel_trap 743"; end
        end
        -- wildfire_bomb,if=full_recharge_time<1.5*gcd
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (S.WildfireBomb:FullRechargeTimeP() < 1.5 * Player:GCD()) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 753"; end
        end
        -- coordinated_assault
        if S.CoordinatedAssault:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.CoordinatedAssault, Action.GetToggle(2, "OffGCDasOffGCD")) then return "coordinated_assault 761"; end
        end
        -- serpent_sting,if=buff.vipers_venom.up&dot.serpent_sting.remains<4*gcd
        if S.SerpentSting:IsReadyP() and not ShouldStop and (Player:BuffP(S.VipersVenomBuff) and Target:DebuffRemainsP(S.SerpentStingDebuff) < 4 * Player:GCD()) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 763"; end
        end
        -- mongoose_bite,if=dot.shrapnel_bomb.ticking|buff.mongoose_fury.stack=5
        if S.MongooseBite:IsReadyP() and not ShouldStop and (Target:DebuffP(S.ShrapnelBombDebuff) or Player:BuffStackP(S.MongooseFuryBuff) == 5) then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 769"; end
        end
        -- wildfire_bomb,if=next_wi_bomb.shrapnel&dot.serpent_sting.remains>5*gcd
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (S.ShrapnelBomb:IsLearned() and Target:DebuffRemainsP(S.SerpentStingDebuff) > 5 * Player:GCD()) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 775"; end
        end
        -- serpent_sting,if=refreshable
        if S.SerpentSting:IsReadyP() and not ShouldStop and (Target:DebuffRefreshableCP(S.SerpentStingDebuff)) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 779"; end
        end
        -- chakrams,if=!buff.mongoose_fury.remains
        if S.Chakrams:IsCastableP() and not ShouldStop and (not bool(Player:BuffRemainsP(S.MongooseFuryBuff))) then
            if HR.Cast(S.Chakrams) then return "chakrams 787"; end
        end
        -- mongoose_bite
        if S.MongooseBite:IsReadyP() and not ShouldStop then
            if HR.Cast(S.MongooseBite) then return "mongoose_bite 791"; end
        end
        -- raptor_strike
        if S.RaptorStrike:IsReadyP() and not ShouldStop then
            if HR.Cast(S.RaptorStrike) then return "raptor_strike 793"; end
        end
        -- serpent_sting,if=buff.vipers_venom.up
        if S.SerpentSting:IsReadyP() and not ShouldStop and (Player:BuffP(S.VipersVenomBuff)) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 795"; end
        end
        -- wildfire_bomb,if=next_wi_bomb.volatile&dot.serpent_sting.ticking|next_wi_bomb.pheromone|next_wi_bomb.shrapnel
        if S.WildfireBomb:IsCastableP() and not ShouldStop and (S.VolatileBomb:IsLearned() and Target:DebuffP(S.SerpentStingDebuff) or S.PheromoneBomb:IsLearned() or S.ShrapnelBomb:IsLearned()) then
            if HR.Cast(S.WildfireBomb) then return "wildfire_bomb 799"; end
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
        
  	    -- Muzzle
  	    if useKick and S.Muzzle:IsReady() and not ShouldStop and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.Muzzle, true) then return "Muzzle 5"; end
         	else 
          	    return
         	end 
      	end 		
		-- Self heal, if below setting value
        if S.Exhilaration:IsCastableP() and not ShouldStop and Player:HealthPercentage() <= Action.GetToggle(2, "ExhilarationHP") then
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
        -- Self heal, if below setting value
        if S.Exhilaration:IsCastableP() and not ShouldStop and Player:HealthPercentage() <= Action.GetToggle(2, "ExhilarationHP") then
            if HR.Cast(S.Exhilaration, Action.GetToggle(2, "OffGCDasOffGCD")) then return "exhilaration"; end
        end
        -- auto_attack
        -- use_items
        -- call_action_list,name=cds
        if (HR.CDsON()) then
            local ShouldReturn = Cds(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=apwfi,if=active_enemies<3&talent.chakrams.enabled&talent.alpha_predator.enabled
        if (Cache.EnemiesCount[8] < 3 and S.Chakrams:IsAvailable() and S.AlphaPredator:IsAvailable()) then
            local ShouldReturn = Apwfi(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=wfi,if=active_enemies<3&talent.chakrams.enabled
        if (Cache.EnemiesCount[8] < 3 and S.Chakrams:IsAvailable()) then
            local ShouldReturn = Wfi(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=st,if=active_enemies<3&!talent.alpha_predator.enabled&!talent.wildfire_infusion.enabled
        if (Cache.EnemiesCount[8] < 3 and not S.AlphaPredator:IsAvailable() and not S.WildfireInfusion:IsAvailable()) then
            local ShouldReturn = St(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=apst,if=active_enemies<3&talent.alpha_predator.enabled&!talent.wildfire_infusion.enabled
        if (Cache.EnemiesCount[8] < 3 and S.AlphaPredator:IsAvailable() and not S.WildfireInfusion:IsAvailable()) then
            local ShouldReturn = Apst(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=apwfi,if=active_enemies<3&talent.alpha_predator.enabled&talent.wildfire_infusion.enabled
        if (Cache.EnemiesCount[8] < 3 and S.AlphaPredator:IsAvailable() and S.WildfireInfusion:IsAvailable()) then
            local ShouldReturn = Apwfi(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=wfi,if=active_enemies<3&!talent.alpha_predator.enabled&talent.wildfire_infusion.enabled
        if (Cache.EnemiesCount[8] < 3 and not S.AlphaPredator:IsAvailable() and S.WildfireInfusion:IsAvailable()) then
            local ShouldReturn = Wfi(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=cleave,if=active_enemies>1
        if (Cache.EnemiesCount[8] > 1) then
            local ShouldReturn = Cleave(); if ShouldReturn then return ShouldReturn; end
        end
        -- concentrated_flame
        if S.ConcentratedFlame:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 886"; end
        end
        -- arcane_torrent
        if S.ArcaneTorrent:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return "arcane_torrent 888"; end
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
	
	--something if needed
end

