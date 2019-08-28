--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_HUNTER_MARKSMANSHIP] = {
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
    HuntersMark                           = Action.Create({ Type = "Spell", ID = 257284     }),
    DoubleTap                             = Action.Create({ Type = "Spell", ID = 260402     }),
    Trueshot                              = Action.Create({ Type = "Spell", ID = 288613     }),
    AimedShot                             = Action.Create({ Type = "Spell", ID = 19434     }),
    UnerringVision                        = Action.Create({ Type = "Spell", ID = 274444     }),
    CallingtheShots                       = Action.Create({ Type = "Spell", ID = 260404     }),
    SurgingShots                          = Action.Create({ Type = "Spell", ID = 287707     }),
    Streamline                            = Action.Create({ Type = "Spell", ID = 260367     }),
    FocusedFire                           = Action.Create({ Type = "Spell", ID = 278531     }),
    RapidFire                             = Action.Create({ Type = "Spell", ID = 257044     }),
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
    CarefulAim                            = Action.Create({ Type = "Spell", ID = 260228     }),
    ExplosiveShot                         = Action.Create({ Type = "Spell", ID = 212431     }),
    Barrage                               = Action.Create({ Type = "Spell", ID = 120360     }),
    AMurderofCrows                        = Action.Create({ Type = "Spell", ID = 131894     }),
    SerpentSting                          = Action.Create({ Type = "Spell", ID = 271788     }),
    ArcaneShot                            = Action.Create({ Type = "Spell", ID = 185358     }),
    MasterMarksman                        = Action.Create({ Type = "Spell", ID = 260309     }),
    IntheRhythm                           = Action.Create({ Type = "Spell", ID = 264198     }),
    PiercingShot                          = Action.Create({ Type = "Spell", ID = 198670     }),
    SteadyFocus                           = Action.Create({ Type = "Spell", ID = 193533     }),
    SteadyShot                            = Action.Create({ Type = "Spell", ID = 56641     }),
    Multishot                             = Action.Create({ Type = "Spell", ID = 257620     }),
    CounterShot                           = Action.Create({ Type = "Spell", ID = 147362     }),
    Exhilaration                          = Action.Create({ Type = "Spell", ID = 109304     }), 
    -- Utilities
	-- Defensives
	AspectoftheTurtle                    = Action.Create({ Type = "Spell", ID = 274441 }),
    -- Misc
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    ConcentratedFlameBurn                = Action.Create({ Type = "Spell", ID = 295368, Hidden = true     }),
    CyclotronicBlast                     = Action.Create({ Type = "Spell", ID = 167672, Hidden = true     }),
    HarmonicDematerializer               = Action.Create({ Type = "Spell", ID = 293512, Hidden = true     }),
    -- Buffs
    RecklessForceBuff                    = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),
    TrickShotsBuff                        = Action.Create({ Type = "Spell", ID = 257622, Hidden = true     }),
    MasterMarksmanBuff                    = Action.Create({ Type = "Spell", ID = 269576, Hidden = true     }),
    PreciseShotsBuff                      = Action.Create({ Type = "Spell", ID = 260242, Hidden = true     }),
    UnerringVisionBuff                    = Action.Create({ Type = "Spell", ID = 274447, Hidden = true     }),
    TrueshotBuff                          = Action.Create({ Type = "Spell", ID = 288613, Hidden = true     }),
	-- Debuffs 
    RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568, Hidden = true     }),
    SerpentStingDebuff                    = Action.Create({ Type = "Spell", ID = 271788, Hidden = true     }),
    HuntersMarkDebuff                     = Action.Create({ Type = "Spell", ID = 257284, Hidden = true     }),
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
    RecklessForceCounter                = Action.Create({ Type = "Spell", ID = 298409, Hidden = true}),
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
Action:CreateEssencesFor(ACTION_CONST_HUNTER_MARKSMANSHIP)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_HUNTER_MARKSMANSHIP], { __index = Action })

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

S.SerpentSting:RegisterInFlight()
S.ConcentratedFlame:RegisterInFlight()

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

local function MasterMarksmanBuffCheck()
  return (Player:BuffP(S.MasterMarksmanBuff) or (Player:IsCasting(S.AimedShot) and S.MasterMarksman:IsAvailable()))
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

-- Initiate Nucleus Ability registration
local function Init ()
  HL.RegisterNucleusAbility(257620, 10, 6)               -- Multi-Shot
  HL.RegisterNucleusAbility(120360, 40, 6)               -- Barrage
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
    EnemiesCount = GetEnemiesCount(10)
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
        -- snapshot_stats
        --if Everyone.TargetIsValid() then
            -- potion
            if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") then
                if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_agility 12"; end
            end
            -- hunters_mark
            if S.HuntersMark:IsCastableP() and Target:DebuffDown(S.HuntersMarkDebuff) then
                if HR.Cast(S.HuntersMark, Action.GetToggle(2, "OffGCDasOffGCD")) then return "hunters_mark 14"; end
            end
            -- double_tap,precast_time=10
            if S.DoubleTap:IsCastableP() then
                if HR.Cast(S.DoubleTap, Action.GetToggle(2, "OffGCDasOffGCD")) then return "double_tap 18"; end
            end
            -- worldvein_resonance
            if S.WorldveinResonance:IsCastableP() then
                if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
            end
            -- guardian_of_azeroth
            if S.GuardianofAzeroth:IsCastableP() then
                if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
            end
            -- memory_of_lucid_dreams
            if S.MemoryofLucidDreams:IsCastableP() then
                if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
            end
            -- use_item,name=azsharas_font_of_power
            if I.AzsharasFontofPower:IsEquipReady() and TrinketON() then
                if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power"; end
            end
            -- trueshot,precast_time=1.5,if=active_enemies>2
            if S.Trueshot:IsCastableP() and Player:BuffDownP(S.TrueshotBuff) and (EnemiesCount > 2) then
                if HR.Cast(S.Trueshot, Action.GetToggle(2, "OffGCDasOffGCD")) then return "trueshot 20"; end
            end
            -- aimed_shot,if=active_enemies<3
            if S.AimedShot:IsReadyP() and (EnemiesCount < 3) then
                if HR.Cast(S.AimedShot) then return "aimed_shot 38"; end
            end
        --end
    end
    local function Cds()
        -- hunters_mark,if=debuff.hunters_mark.down&!buff.trueshot.up
        if S.HuntersMark:IsCastableP() and (Target:DebuffDown(S.HuntersMarkDebuff) and Player:BuffDownP(S.TrueshotBuff)) then
            if HR.Cast(S.HuntersMark, Action.GetToggle(2, "OffGCDasOffGCD")) then return "hunters_mark 46"; end
        end
        -- double_tap,if=cooldown.rapid_fire.remains<gcd|cooldown.rapid_fire.remains<cooldown.aimed_shot.remains|target.time_to_die<20
        if S.DoubleTap:IsCastableP() and (S.RapidFire:CooldownRemainsP() < Player:GCD() or S.RapidFire:CooldownRemainsP() < S.AimedShot:CooldownRemainsP() or Target:TimeToDie() < 20) then
            if HR.Cast(S.DoubleTap, Action.GetToggle(2, "OffGCDasOffGCD")) then return "double_tap 50"; end
        end
        -- berserking,if=buff.trueshot.up&(target.time_to_die>cooldown.berserking.duration+duration|(target.health.pct<20|!talent.careful_aim.enabled))|target.time_to_die<13
        if S.Berserking:IsCastableP() and HR.CDsON() and (Player:BuffP(S.TrueshotBuff) and (Target:TimeToDie() > S.Berserking:CooldownRemainsP() + S.Berserking:BaseDuration() or (Target:HealthPercentage() < 20 or not S.CarefulAim:IsAvailable())) or Target:TimeToDie() < 13) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 86"; end
        end
        -- blood_fury,if=buff.trueshot.up&(target.time_to_die>cooldown.blood_fury.duration+duration|(target.health.pct<20|!talent.careful_aim.enabled))|target.time_to_die<16
        if S.BloodFury:IsCastableP() and HR.CDsON() and (Player:BuffP(S.TrueshotBuff) and (Target:TimeToDie() > S.BloodFury:CooldownRemainsP() + S.BloodFury:BaseDuration() or (Target:HealthPercentage() < 20 or not S.CarefulAim:IsAvailable())) or Target:TimeToDie() < 16) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 90"; end
        end
        -- ancestral_call,if=buff.trueshot.up&(target.time_to_die>cooldown.ancestral_call.duration+duration|(target.health.pct<20|!talent.careful_aim.enabled))|target.time_to_die<16
        if S.AncestralCall:IsCastableP() and HR.CDsON() and (Player:BuffP(S.TrueshotBuff) and (Target:TimeToDie() > S.AncestralCall:CooldownRemainsP() + S.AncestralCall:BaseDuration() or (Target:HealthPercentage() < 20 or not S.CarefulAim:IsAvailable())) or Target:TimeToDie() < 16) then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ancestral_call 94"; end
        end
        -- fireblood,if=buff.trueshot.up&(target.time_to_die>cooldown.fireblood.duration+duration|(target.health.pct<20|!talent.careful_aim.enabled))|target.time_to_die<9
        if S.Fireblood:IsCastableP() and HR.CDsON() and (Player:BuffP(S.TrueshotBuff) and (Target:TimeToDie() > S.Fireblood:CooldownRemainsP() + S.Fireblood:BaseDuration() or (Target:HealthPercentage() < 20 or not S.CarefulAim:IsAvailable())) or Target:TimeToDie() < 9) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 98"; end
        end
        -- lights_judgment
        if S.LightsJudgment:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 102"; end
        end
        -- worldvein_resonance,if=buff.lifeblood.stack<4&!buff.trueshot.up
        if S.WorldveinResonance:IsCastableP() and (Player:BuffStackP(S.LifebloodBuff) < 4 and Player:BuffDownP(S.TrueshotBuff)) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- guardian_of_azeroth,if=(ca_execute|target.time_to_die>cooldown.guardian_of_azeroth.duration+duration)&(buff.trueshot.up|cooldown.trueshot.remains<16)|target.time_to_die<30
        if S.GuardianofAzeroth:IsCastableP() and (((Target:HealthPercentage() < 20 or Target:HealthPercentage() > 80) or Target:TimeToDie() > S.GuardianofAzeroth:Cooldown() + S.GuardianofAzeroth:BaseDuration()) and (Player:BuffP(S.TrueshotBuff) or S.Trueshot:CooldownRemainsP() < 16) or Target:TimeToDie() < 31) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- ripple_in_space,if=cooldown.trueshot.remains<7
        if S.RippleInSpace:IsCastableP() and (S.Trueshot:CooldownRemainsP() < 7) then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
        -- memory_of_lucid_dreams,if=!buff.trueshot.up
        if S.MemoryofLucidDreams:IsCastableP() and (Player:BuffDownP(S.TrueshotBuff)) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- potion,if=buff.trueshot.react&buff.bloodlust.react|buff.trueshot.up&ca_execute|(consumable.potion_of_unbridled_fury&target.time_to_die<61|target.time_to_die<26)
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (Player:BuffP(S.TrueshotBuff) and Player:HasHeroism() or Player:BuffP(S.TrueshotBuff) and ((Target:HealthPercentage() < 20 or Target:HealthPercentage() > 80) and S.CarefulAim:IsAvailable()) or Target:TimeToDie() < 61) then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_agility 104"; end
        end
        -- trueshot,if=focus>60&(buff.precise_shots.down&cooldown.rapid_fire.remains&target.time_to_die>cooldown.trueshot.duration_guess+duration|target.health.pct<20|!talent.careful_aim.enabled)|target.time_to_die<15
        if S.Trueshot:IsCastableP() and (Player:Focus() > 60 and (Player:BuffDownP(S.PreciseShotsBuff) and S.RapidFire:CooldownRemainsP() > 0 and Target:TimeToDie() > S.Trueshot:CooldownRemainsP() + S.Trueshot:BaseDuration() or Target:HealthPercentage() < 20 or not S.CarefulAim:IsAvailable()) or Target:TimeToDie() < 15) then
            if HR.Cast(S.Trueshot, Action.GetToggle(2, "OffGCDasOffGCD")) then return "trueshot 112"; end
        end
    end
    local function St()
        -- explosive_shot
        if S.ExplosiveShot:IsCastableP() then
            if HR.Cast(S.ExplosiveShot) then return "explosive_shot 126"; end
        end
        -- barrage,if=active_enemies>1
        if S.Barrage:IsReadyP() and (EnemiesCount > 1) then
            if HR.Cast(S.Barrage) then return "barrage 128"; end
        end
        -- a_murder_of_crows
        if S.AMurderofCrows:IsCastableP() then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 136"; end
        end
        -- serpent_sting,if=refreshable&!action.serpent_sting.in_flight
        if S.SerpentSting:IsCastableP() and (Target:DebuffRefreshableCP(S.SerpentStingDebuff) and not S.SerpentSting:InFlight()) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 138"; end
        end
        -- rapid_fire,if=buff.trueshot.down|focus<70
        if S.RapidFire:IsCastableP() and (Player:BuffDownP(S.TrueshotBuff) or Player:Focus() < 70) then
            if HR.Cast(S.RapidFire) then return "rapid_fire 152"; end
        end
        -- blood_of_the_enemy,if=buff.trueshot.up&(buff.unerring_vision.stack>4|!azerite.unerring_vision.enabled)|target.time_to_die<11
        if S.BloodoftheEnemy:IsCastableP() and (Player:BuffP(S.TrueshotBuff) and (Player:BuffStackP(S.UnerringVisionBuff) > 4 or not S.UnerringVision:AzeriteEnabled()) or Target:TimeToDie() < 11) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy st"; end
        end
        -- focused_azerite_beam,if=!buff.trueshot.up|target.time_to_die<5
        if S.FocusedAzeriteBeam:IsCastableP() and (Player:BuffDownP(S.TrueshotBuff) or Target:TimeToDie() < 5) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam st"; end
        end
        -- arcane_shot,if=buff.trueshot.up&buff.master_marksman.up&!buff.memory_of_lucid_dreams.up
        if S.ArcaneShot:IsCastableP() and (Player:BuffP(S.TrueshotBuff) and MasterMarksmanBuffCheck() and not Player:BuffP(S.MemoryofLucidDreams)) then
            if HR.Cast(S.ArcaneShot) then return "arcane_shot 158"; end
        end
        -- aimed_shot,if=buff.trueshot.up|(buff.double_tap.down|ca_execute)&buff.precise_shots.down|full_recharge_time<cast_time&cooldown.trueshot.remains
        if S.AimedShot:IsReadyP() and (Player:BuffP(S.TrueshotBuff) or (Player:BuffDownP(S.DoubleTap) or ((Target:HealthPercentage() < 20 or Target:HealthPercentage() > 80) and S.CarefulAim:IsAvailable())) and Player:BuffDownP(S.PreciseShotsBuff) or S.AimedShot:FullRechargeTimeP() < S.AimedShot:CastTime() and bool(S.Trueshot:CooldownRemainsP())) then
            if HR.Cast(S.AimedShot) then return "aimed_shot 170"; end
        end
        -- arcane_shot,if=buff.trueshot.up&buff.master_marksman.up&buff.memory_of_lucid_dreams.up
        if S.ArcaneShot:IsCastableP() and (Player:BuffP(S.TrueshotBuff) and MasterMarksmanBuffCheck() and Player:BuffP(S.MemoryofLucidDreams)) then
            if HR.Cast(S.ArcaneShot) then return "arcane_shot 176"; end
        end
        -- piercing_shot
        if S.PiercingShot:IsCastableP() then
            if HR.Cast(S.PiercingShot) then return "piercing_shot 198"; end
        end
        -- purifying_blast,if=!buff.trueshot.up|target.time_to_die<8
        if S.PurifyingBlast:IsCastableP() and (Player:BuffDownP(S.TrueshotBuff) or Target:TimeToDie() < 8) then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- concentrated_flame,if=focus+focus.regen*gcd<focus.max&buff.trueshot.down&(!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight)|full_recharge_time<gcd|target.time_to_die<5
        if S.ConcentratedFlame:IsCastableP() and (Player:Focus() + Player:FocusRegen() * Player:GCD() < Player:FocusMax() and Player:BuffDownP(S.TrueshotBuff) and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight()) or S.ConcentratedFlame:FullRechargeTimeP() < Player:GCD() or Target:TimeToDie() < 5) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10|target.time_to_die<5
        if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10 or Target:TimeToDie() < 5) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- arcane_shot,if=buff.trueshot.down&(buff.precise_shots.up&(focus>41|buff.master_marksman.up)|(focus>50&azerite.focused_fire.enabled|focus>75)&(cooldown.trueshot.remains>5|focus>80)|target.time_to_die<5)
        if S.ArcaneShot:IsCastableP() and (Player:BuffDownP(S.TrueshotBuff) and (Player:BuffP(S.PreciseShotsBuff) and (Player:Focus() > 41 or MasterMarksmanBuffCheck()) or (Player:Focus() > 50 and S.FocusedFire:IsAvailable() or Player:Focus() > 75) and (S.Trueshot:CooldownRemainsP() > 5 or Player:Focus() > 80) or Target:TimeToDie() < 5)) then
            if HR.Cast(S.ArcaneShot) then return "arcane_shot 200"; end
        end
        -- steady_shot
        if S.SteadyShot:IsCastableP() then
            if HR.Cast(S.SteadyShot) then return "steady_shot 208"; end
        end
    end
    local function Trickshots()
        -- barrage
        if S.Barrage:IsReadyP() then
            if HR.Cast(S.Barrage) then return "barrage 210"; end
        end
        -- explosive_shot
        if S.ExplosiveShot:IsCastableP() then
            if HR.Cast(S.ExplosiveShot) then return "explosive_shot 212"; end
        end
        -- aimed_shot,if=buff.trick_shots.up&ca_execute&buff.double_tap.up
        if S.AimedShot:IsReadyP() and (Player:BuffP(S.TrickShotsBuff) and ((Target:HealthPercentage() < 20 or Target:HealthPercentage() > 80) and S.CarefulAim:IsAvailable()) and Player:BuffP(S.DoubleTap)) then
            if HR.Cast(S.AimedShot) then return "aimed_shot 213"; end
        end
        -- rapid_fire,if=buff.trick_shots.up&(azerite.focused_fire.enabled|azerite.in_the_rhythm.rank>1|azerite.surging_shots.enabled|talent.streamline.enabled)
        if S.RapidFire:IsCastableP() and (Player:BuffP(S.TrickShotsBuff) and (S.FocusedFire:AzeriteEnabled() or S.IntheRhythm:AzeriteRank() > 1 or S.SurgingShots:AzeriteEnabled() or S.Streamline:IsAvailable())) then
            if HR.Cast(S.RapidFire) then return "rapid_fire 214"; end
        end
        -- aimed_shot,if=buff.trick_shots.up&(buff.precise_shots.down|cooldown.aimed_shot.full_recharge_time<action.aimed_shot.cast_time|buff.trueshot.up)
        if S.AimedShot:IsReadyP() and (Player:BuffP(S.TrickShotsBuff) and (Player:BuffDownP(S.PreciseShotsBuff) or S.AimedShot:FullRechargeTimeP() < S.AimedShot:CastTime() or Player:BuffP(S.TrueshotBuff))) then
            if HR.Cast(S.AimedShot) then return "aimed_shot 226"; end
        end
        -- rapid_fire,if=buff.trick_shots.up
        if S.RapidFire:IsCastableP() and (Player:BuffP(S.TrickShotsBuff)) then
            if HR.Cast(S.RapidFire) then return "rapid_fire 238"; end
        end
        -- multishot,if=buff.trick_shots.down|buff.precise_shots.up&!buff.trueshot.up|focus>70
        if S.Multishot:IsCastableP() and (Player:BuffDownP(S.TrickShotsBuff) or Player:BuffP(S.PreciseShotsBuff) and Player:BuffDownP(S.TrueshotBuff) or Player:Focus() > 70) then
            if HR.Cast(S.Multishot) then return "multishot 242"; end
        end
        -- focused_azerite_beam
        if S.FocusedAzeriteBeam:IsCastableP() then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- purifying_blast
        if S.PurifyingBlast:IsCastableP() then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- concentrated_flame
        if S.ConcentratedFlame:IsCastableP() then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- blood_of_the_enemy
        if S.BloodoftheEnemy:IsCastableP() then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10
        if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- piercing_shot
        if S.PiercingShot:IsCastableP() then
            if HR.Cast(S.PiercingShot) then return "piercing_shot 248"; end
        end
        -- a_murder_of_crows
        if S.AMurderofCrows:IsCastableP() then
            if HR.Cast(S.AMurderofCrows, Action.GetToggle(2, "OffGCDasOffGCD")) then return "a_murder_of_crows 250"; end
        end
        -- serpent_sting,if=refreshable&!action.serpent_sting.in_flight
        if S.SerpentSting:IsCastableP() and (Target:DebuffRefreshableCP(S.SerpentStingDebuff) and not S.SerpentSting:InFlight()) then
            if HR.Cast(S.SerpentSting) then return "serpent_sting 252"; end
        end
        -- steady_shot
        if S.SteadyShot:IsCastableP() then
            if HR.Cast(S.SteadyShot) then return "steady_shot 266"; end
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
        -- auto_shot
        -- use_item,name=azsharas_font_of_power,if=cooldown.trueshot.remains<18|target.time_to_die<40
        if I.AzsharasFontofPower:IsEquipReady() and TrinketON() and (S.Trueshot:CooldownRemainsP() < 18 or Target:TimeToDie() < 40) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=buff.trueshot.up&(buff.guardian_of_azeroth.up|!essence.condensed_lifeforce.major.rank3&ca_execute)|debuff.razor_coral_debuff.down|target.time_to_die<20
        if I.AshvanesRazorCoral:IsEquipReady() and TrinketON() and (Player:BuffP(S.TrueshotBuff) and ((S.GuardianofAzeroth:IsAvailable() and S.GuardianofAzeroth:CooldownRemainsP() > 150) or not Spell(299358):IsAvailable() and (Target:HealthPercentage() < 20 or Target:HealthPercentage() > 80)) or Target:DebuffDownP(S.RazorCoralDebuff) or Target:TimeToDie() < 20) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral"; end
        end
        -- use_item,name=pocketsized_computation_device,if=!buff.trueshot.up&!essence.blood_of_the_enemy.major.rank3|debuff.blood_of_the_enemy.up|target.time_to_die<5
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and TrinketON() and (Player:BuffDownP(S.TrueshotBuff) and not S.BloodoftheEnemy:ID() == "298277" or Target:DebuffP(S.BloodoftheEnemy) or Target:TimeToDie() < 5) then
            if Hr.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device"; end
        end
        -- use_items,if=buff.trueshot.up|!talent.calling_the_shots.enabled|target.time_to_die<20
        -- call_action_list,name=cds
        if (HR.CDsON()) then
            local ShouldReturn = Cds(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=st,if=active_enemies<3
        if (EnemiesCount < 3) then
            local ShouldReturn = St(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=trickshots,if=active_enemies>2
        if (EnemiesCount > 2) then
            local ShouldReturn = Trickshots(); if ShouldReturn then return ShouldReturn; end
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

