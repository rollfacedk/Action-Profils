--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_DRUID_BALANCE] = {
    -- Racial
    ArcaneTorrent                         = Action.Create({ Type = "Spell", ID = 50613     }),
    BloodFury                             = Action.Create({ Type = "Spell", ID = 20572      }),
    Fireblood                             = Action.Create({ Type = "Spell", ID = 265221     }),
    AncestralCall                         = Action.Create({ Type = "Spell", ID = 274738     }),
    Berserking                            = Action.Create({ Type = "Spell", ID = 26297    }),
    ArcanePulse                           = Action.Create({ Type = "Spell", ID = 260364    }),
    QuakingPalm                           = Action.Create({ Type = "Spell", ID = 107079     }),
    Haymaker                              = Action.Create({ Type = "Spell", ID = 287712     }), 
    BullRush                              = Action.Create({ Type = "Spell", ID = 255654     }),    
    WarStomp                              = Action.Create({ Type = "Spell", ID = 20549     }),
    GiftofNaaru                           = Action.Create({ Type = "Spell", ID = 59544    }),
    Shadowmeld                            = Action.Create({ Type = "Spell", ID = 58984    }), -- usable in Action Core 
    Stoneform                             = Action.Create({ Type = "Spell", ID = 20594    }), 
    WilloftheForsaken                     = Action.Create({ Type = "Spell", ID = 7744        }), -- not usable in APL but user can Queue it    
    EscapeArtist                          = Action.Create({ Type = "Spell", ID = 20589    }), -- not usable in APL but user can Queue it
    EveryManforHimself                    = Action.Create({ Type = "Spell", ID = 59752    }), -- not usable in APL but user can Queue it
    PetKick                               = Action.Create({ Type = "Spell", ID = 47482, Color = "RED", Desc = "RED" }),  
    -- Generics Spells 
    StreakingStars                        = Action.Create({ Type = "Spell", ID = 272871     }),
    ArcanicPulsar                         = Action.Create({ Type = "Spell", ID = 287773     }),
    Starlord                              = Action.Create({ Type = "Spell", ID = 202345     }),
    TwinMoons                             = Action.Create({ Type = "Spell", ID = 279620     }),
    MoonkinForm                           = Action.Create({ Type = "Spell", ID = 24858     }),
    SolarWrath                            = Action.Create({ Type = "Spell", ID = 190984     }),
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
    WarriorofElune                        = Action.Create({ Type = "Spell", ID = 202425     }),
    Innervate                             = Action.Create({ Type = "Spell", ID = 29166     }),
    LivelySpirit                          = Action.Create({ Type = "Spell", ID = 279642     }),
    Incarnation                           = Action.Create({ Type = "Spell", ID = 102560     }),
    CelestialAlignment                    = Action.Create({ Type = "Spell", ID = 194223     }),
    StellarFlare                          = Action.Create({ Type = "Spell", ID = 202347     }),
    FuryofElune                           = Action.Create({ Type = "Spell", ID = 202770     }),
    ForceofNature                         = Action.Create({ Type = "Spell", ID = 205636     }),
    Starfall                              = Action.Create({ Type = "Spell", ID = 191034     }),
    Starsurge                             = Action.Create({ Type = "Spell", ID = 78674     }),
    Sunfire                               = Action.Create({ Type = "Spell", ID = 93402     }),
    Moonfire                              = Action.Create({ Type = "Spell", ID = 8921     }),
    NewMoon                               = Action.Create({ Type = "Spell", ID = 274281     }),
    HalfMoon                              = Action.Create({ Type = "Spell", ID = 274282     }),
    FullMoon                              = Action.Create({ Type = "Spell", ID = 274283     }),
    LunarStrike                           = Action.Create({ Type = "Spell", ID = 194153     }),
    ShootingStars                         = Action.Create({ Type = "Spell", ID = 202342     }),
    NaturesBalance                        = Action.Create({ Type = "Spell", ID = 202430     }),
    Renewal                               = Action.Create({ Type = "Spell", ID = 108238     }),
    SolarBeam                             = Action.Create({ Type = "Spell", ID = 78675     }),
    CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 167672     }),
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
    Thorns                                = Action.Create({ Type = "Spell", ID = 236696     }),
	-- Utilities
	Typhoon                               = Action.Create({ Type = "Spell", ID = 132469   }),
	MightyBash                            = Action.Create({ Type = "Spell", ID = 5211   }),
	Soothe                                = Action.Create({ Type = "Spell", ID = 2908   }),
    -- Defensive
	Barkskin                              = Action.Create({ Type = "Spell", ID = 22812   }),	
    -- Buffs
    ArcanicPulsarBuff                     = Action.Create({ Type = "Spell", ID = 287790     }),
    StarlordBuff                          = Action.Create({ Type = "Spell", ID = 279709     }),
    LivelySpiritBuff                      = Action.Create({ Type = "Spell", ID = 279646     }),	
    LunarEmpowermentBuff                  = Action.Create({ Type = "Spell", ID = 164547     }),
    SolarEmpowermentBuff                  = Action.Create({ Type = "Spell", ID = 164545     }),
    WarriorofEluneBuff                    = Action.Create({ Type = "Spell", ID = 202425     }),	
    AzsharasFontofPowerBuff               = Action.Create({ Type = "Spell", ID = 296962     }),
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932     }),	
	-- Debuffs 
    SunfireDebuff                         = Action.Create({ Type = "Spell", ID = 164815     }),
    MoonfireDebuff                        = Action.Create({ Type = "Spell", ID = 164812     }),
    StellarFlareDebuff                    = Action.Create({ Type = "Spell", ID = 202347     }),
    ShiverVenomDebuff                     = Action.Create({ Type = "Spell", ID = 301624     }),		
    -- Misc
    Channeling                            = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),	
    -- Trinkets
    GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
    GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
    TrinketTest                           = Action.Create({ Type = "Trinket", ID = 122530, QueueForbidden = true }),
    TrinketTest2                          = Action.Create({ Type = "Trinket", ID = 159611, QueueForbidden = true }), 
    AzsharasFontofPower                   = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    PocketsizedComputationDevice          = Action.Create({ Type = "Trinket", ID = 167555 }),
    RotcrustedVoodooDoll                  = Action.Create({ Type = "Trinket", ID = 159624, QueueForbidden = true }),
    ShiverVenomRelic                      = Action.Create({ Type = "Trinket", ID = 168905, QueueForbidden = true }),
    AquipotentNautilus                    = Action.Create({ Type = "Trinket", ID = 169305, QueueForbidden = true }),
    TidestormCodex                        = Action.Create({ Type = "Trinket", ID = 165576, QueueForbidden = true }),
    VialofStorms                          = Action.Create({ Type = "Trinket", ID = 158224, QueueForbidden = true }),
	AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
    -- Potions
    PotionofUnbridledFury                 = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
    PotionofFocusedResolve                = Action.Create({ Type = "Potion", ID = 168506, QueueForbidden = true }),
    PotionTest                            = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
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
	CondensedLifeforce                    = Action.Create({ Type = "HeartOfAzeroth", ID = 295834, Hidden = true}),
	CondensedLifeforce2                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299354, Hidden = true}),
	CondensedLifeforce3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299357, Hidden = true}),
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_DRUID_BALANCE)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_DRUID_BALANCE], { __index = Action })

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


-- Rotation Var
local ShouldReturn; -- Used to get the return string
local ForceOffGCD = {true, false};
local Everyone = HR.Commons.Everyone;
local EnemiesCount;

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
    S.CondensedLifeforce = S.CondensedLifeforce2:IsAvailable() and S.CondensedLifeforce2 or S.CondensedLifeforce
    S.CondensedLifeforce = S.CondensedLifeforce3:IsAvailable() and S.CondensedLifeforce3 or S.CondensedLifeforce
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

-- Variables
local VarAzSs = 0;
local VarAzAp = 0;
local VarSfTargets = 0;

HL:RegisterForEvent(function()
    VarAzSs = 0
    VarAzAp = 0
    VarSfTargets = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {40, 15, 8}
local function UpdateRanges()
    for _, i in ipairs(EnemyRanges) do
        HL.GetEnemies(i);
    end
end

local function num(val)
    if val then return 1 else return 0 end
end

local function bool(val)
    return val ~= 0
end

local function FutureAstralPower()
    local AstralPower=Player:AstralPower()
    if not Player:IsCasting() then
        return AstralPower
    else
        if Player:IsCasting(S.NewMoon) then
            return AstralPower + 10
        elseif Player:IsCasting(S.HalfMoon) then
            return AstralPower + 20
        elseif Player:IsCasting(S.FullMoon) then
            return AstralPower + 40
        elseif Player:IsCasting(S.StellarFlare) then
            return AstralPower + 8
        elseif Player:IsCasting(S.SolarWrath) then
            return AstralPower + 8
        elseif Player:IsCasting(S.LunarStrike) then
            return AstralPower + 12
        else
           return AstralPower
        end
    end
end

local function CaInc()
    return S.Incarnation:IsAvailable() and S.Incarnation or S.CelestialAlignment
end

local function AP_Check(spell)
  local APGen = 0
  local CurAP = Player:AstralPower()
  if spell == S.Sunfire or spell == S.Moonfire then 
    APGen = 3
  elseif spell == S.StellarFlare or spell == S.SolarWrath then
    APGen = 8
  elseif spell == S.Incarnation or spell == S.CelestialAlignment then
    APGen = 40
  elseif spell == S.ForceofNature then
    APGen = 20
  elseif spell == S.LunarStrike then
    APGen = 12
  end
  
  if S.ShootingStars:IsAvailable() then 
    APGen = APGen + 4
  end
  if S.NaturesBalance:IsAvailable() then
    APGen = APGen + 2
  end
  
  if CurAP + APGen < Player:AstralPowerMax() then
    return true
  else
    return false
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

local function DoTsUp()
    return (Target:DebuffP(S.MoonfireDebuff) and Target:DebuffP(S.Sunfire) and (not S.StellarFlare:IsAvailable() or Target:DebuffP(S.StellarFlareDebuff)))
end

local function EvaluateCycleGuardianofAzeroth78(Target)
    return (Target:DebuffP(S.MoonfireDebuff) and Target:DebuffP(S.SunfireDebuff) and (not S.StellarFlare:IsAvailable() or Target:DebuffP(S.StellarFlareDebuff))) and ((not S.Starlord:IsAvailable() or Player:BuffP(S.StarlordBuff)) and Player:BuffDownP(CaInc()))
end

local function EvaluateCyclePocketsizedComputationDevice103(Target)
    return (Target:DebuffP(S.MoonfireDebuff) and Target:DebuffP(S.SunfireDebuff) and (not S.StellarFlare:IsAvailable() or Target:DebuffP(S.StellarFlareDebuff))) and (I.PocketsizedComputationDevice:IsEquipped() and Player:BuffDownP(CaInc()))
end

local function EvaluateCycleShiverVenomRelic104(Target)
    return (Player:BuffDownP(CaInc()) and Target:DebuffStackP(S.ShiverVenomDebuff) >= 5)
end

local function EvaluateCycleMemoryofLucidDreams135(Target)
    return (Target:DebuffRemainsP(S.SunfireDebuff) > 10 and Target:DebuffRemainsP(S.MoonfireDebuff) > 10 and (not S.StellarFlare:IsAvailable() or Target:DebuffRemainsP(S.StellarFlareDebuff) > 10)) and (Player:BuffDownP(CaInc()) and (FutureAstralPower() < 25 or CaInc():CooldownRemainsP() > 30))
end

local function EvaluateCycleTheUnboundForce160(Target)
    return (Target:DebuffP(S.MoonfireDebuff) and Target:DebuffP(S.SunfireDebuff) and (not S.StellarFlare:IsAvailable() or Target:DebuffP(S.StellarFlareDebuff))) and (Player:BuffP(S.RecklessForceBuff))
end

local function EvaluateCycleFocusedAzeriteBeam179(Target)
    return (Target:DebuffP(S.MoonfireDebuff) and Target:DebuffP(S.SunfireDebuff) and (not S.StellarFlare:IsAvailable() or Target:DebuffP(S.StellarFlareDebuff))) and ((not bool(VarAzSs) or Player:BuffDownP(CaInc())))
end

local function EvaluateCycleSunfire250(Target)
    return (Target:DebuffRefreshableCP(S.SunfireDebuff)) and (AP_Check(S.Sunfire) and math.floor (Target:TimeToDie() / (2 * Player:SpellHaste())) * EnemiesCount >= math.ceil (math.floor (2 / EnemiesCount) * 1.5) + 2 * EnemiesCount and (EnemiesCount > 1 + num(S.TwinMoons:IsAvailable()) or Target:DebuffP(S.MoonfireDebuff)) and (not bool(VarAzSs) or Player:BuffDownP(CaInc()) or not Player:PrevGCDP(1, S.Sunfire)) and (Player:BuffRemainsP(CaInc()) > Target:DebuffRemainsP(S.SunfireDebuff) or Player:BuffDownP(CaInc())))
end

local function EvaluateCycleMoonfire313(Target)
    return (Target:DebuffRefreshableCP(S.MoonfireDebuff)) and (AP_Check(S.Moonfire) and math.floor (Target:TimeToDie() / (2 * Player:SpellHaste())) * EnemiesCount >= 6 and (not bool(VarAzSs) or Player:BuffDownP(CaInc()) or not Player:PrevGCDP(1, S.Moonfire)) and (Player:BuffRemainsP(CaInc()) > Target:DebuffRemainsP(S.MoonfireDebuff) or Player:BuffDownP(CaInc())))
end

local function EvaluateCycleStellarFlare348(Target)
    return (Target:DebuffRefreshableCP(S.StellarFlareDebuff)) and (AP_Check(S.StellarFlare) and math.floor (Target:TimeToDie() / (2 * Player:SpellHaste())) >= 5 and (not bool(VarAzSs) or Player:BuffDownP(CaInc()) or not Player:PrevGCDP(1, S.StellarFlare)) and not Player:IsCasting(S.StellarFlare))
end

-- Initiate Nucleus Ability registration
local function Init()
    HL.RegisterNucleusAbility(164815, 8, 6)               -- Sunfire DoT
    HL.RegisterNucleusAbility(191037, 15, 6)              -- Starfall
    HL.RegisterNucleusAbility(194153, 8, 6)               -- Lunar Strike
end

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    EnemiesCount = GetEnemiesCount(40)
    HL.GetEnemies(40) -- To populate Cache.Enemies[40] for CastCycles
	DetermineEssenceRanks()
	-- Init data for splash data (To Check)
	Init()
	
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
        -- augmentation
        -- snapshot_stats
		if Everyone.TargetIsValid() then
        -- variable,name=az_ss,value=azerite.streaking_stars.rank
        if (true) then
            VarAzSs = S.StreakingStars:AzeriteRank()
        end
        -- variable,name=az_ap,value=azerite.arcanic_pulsar.rank
        if (true) then
            VarAzAp = S.ArcanicPulsar:AzeriteRank()
        end
        -- variable,name=sf_targets,value=4
        if (true) then
            VarSfTargets = 4
        end
        -- variable,name=sf_targets,op=add,value=1,if=azerite.arcanic_pulsar.enabled
        if (S.ArcanicPulsar:AzeriteEnabled()) then
            VarSfTargets = VarSfTargets + 1
        end
        -- variable,name=sf_targets,op=add,value=1,if=talent.starlord.enabled
        if (S.Starlord:IsAvailable()) then
            VarSfTargets = VarSfTargets + 1
        end
        -- variable,name=sf_targets,op=add,value=1,if=azerite.streaking_stars.rank>2&azerite.arcanic_pulsar.enabled
        if (S.StreakingStars:AzeriteRank() > 2 and S.ArcanicPulsar:AzeriteEnabled()) then
            VarSfTargets = VarSfTargets + 1
        end
        -- variable,name=sf_targets,op=sub,value=1,if=!talent.twin_moons.enabled
        if (not S.TwinMoons:IsAvailable()) then
            VarSfTargets = VarSfTargets - 1
        end
        -- moonkin_form
        if S.MoonkinForm:IsCastableP() and not ShouldStop and Player:BuffDownP(S.MoonkinForm) then
            if HR.Cast(S.MoonkinForm, Action.GetToggle(2, "GCDasOffGCD")) then return "moonkin_form 39"; end
        end
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and TrinketON() then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power precombat"; end
        end
        -- potion,dynamic_prepot=1
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 42"; end
        end
        -- solar_wrath
        if S.SolarWrath:IsCastableP() and not ShouldStop and (not Player:PrevGCDP(1, S.SolarWrath) and not Player:PrevGCDP(2, S.SolarWrath)) then
            if HR.Cast(S.SolarWrath) then return "solar_wrath 43"; end
        end
        -- solar_wrath
        if S.SolarWrath:IsCastableP() and not ShouldStop and (Player:PrevGCDP(1, S.SolarWrath) and not Player:PrevGCDP(2, S.SolarWrath)) then
            if HR.Cast(S.SolarWrath) then return "solar_wrath 44"; end
        end
        -- starsurge
        if S.Starsurge:IsReadyP() then
            if HR.Cast(S.Starsurge) then return "starsurge 45"; end
        end
		end
    end
	
    -- Moonkin Form OOC, if setting is true
    if S.MoonkinForm:IsCastableP() and not ShouldStop and Player:BuffDownP(S.MoonkinForm) and Action.GetToggle(2, "ShowMoonkinFormOOC") then
        if HR.Cast(S.MoonkinForm) then return "moonkin_form ooc"; end
    end
    
    -- Protect against interrupt of channeled spells
    if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
        if HR.Cast(S.Channeling) then return "" end
    end  
	-- call DBM precombat
   --if not Player:AffectingCombat() and Action.GetToggle(1, "DBM") and not Player:IsCasting() then
    --    local ShouldReturn = Precombat_DBM(); 
    --        if ShouldReturn then return ShouldReturn; 
    --    end    
    --end
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
        
  	    -- SkullBash
  	    if useKick and S.SkullBash:IsReady() and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.SkullBash, true) then return "SkullBash 5"; end
         	else 
          	    return
         	end 
      	end 
	
     	-- MightyBash
      	if useCC and S.MightyBash:IsAvailable() and S.MightyBash:IsReady() and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.MightyBash, true) then return "MightyBash 5"; end
     	    else 
     	        return
     	    end 
     	end 
        -- Defensives
        if S.Renewal:IsCastableP() and not ShouldStop and Player:HealthPercentage() <= Action.GetToggle(2, "RenewalHP") then
            if HR.Cast(S.Renewal, Action.GetToggle(2, "GCDasOffGCD")) then return "renewal defensive"; end
        end
        if S.Barkskin:IsCastableP() and not ShouldStop and Player:HealthPercentage() <= Action.GetToggle(2, "BarkskinHP") then
            if HR.Cast(S.Barkskin, Action.GetToggle(2, "GCDasOffGCD")) then return "barkskin defensive"; end
        end
        -- potion,if=buff.celestial_alignment.remains>13|buff.incarnation.remains>16.5
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (Player:BuffRemainsP(S.CelestialAlignment) > 13 or Player:BuffRemainsP(S.Incarnation) > 16.5) then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 57"; end
        end
        -- berserking,if=buff.ca_inc.up
        if S.Berserking:IsCastableP() and not ShouldStop and HR.CDsON() and (Player:BuffP(CaInc())) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "GCDasOffGCD")) then return "berserking 65"; end
        end
        -- use_item,name=azsharas_font_of_power,if=!buff.ca_inc.up,target_if=dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled|dot.stellar_flare.ticking)
        if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and TrinketON() and (Player:BuffDownP(CaInc()) and DoTsUp())then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 73" end
        end
        -- guardian_of_azeroth,if=(!talent.starlord.enabled|buff.starlord.up)&!buff.ca_inc.up,target_if=dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled|dot.stellar_flare.ticking)
        if S.GuardianofAzeroth:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") and EvaluateCycleGuardianofAzeroth78(Target) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 94" end
        end
        -- use_item,effect_name=cyclotronic_blast,if=!buff.ca_inc.up,target_if=dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled|dot.stellar_flare.ticking)
        if I.PocketsizedComputationDevice:IsEquipped() and EvaluateCyclePocketsizedComputationDevice103(Target) and I.PocketsizedComputationDevice:IsReady() and S.CyclotronicBlast:IsAvailable() and TrinketON() then
            if HR.CastCycle(I.PocketsizedComputationDevice) then return "pocketsized_computation_device 117" end
        end
        -- use_item,name=shiver_venom_relicif=!buff.ca_inc.up,target_if=dot.shiver_venom.stack>=5
        if I.ShiverVenomRelic:IsEquipped() and I.ShiverVenomRelic:IsReady() and TrinketON() and EvaluateCycleShiverVenomRelic104(Target) then
            if HR.CastCycle(I.ShiverVenomRelic) then return "shiver_venom_relic 105"; end
        end
        -- blood_of_the_enemy,if=cooldown.ca_inc.remains>30
        if S.BloodoftheEnemy:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") and Action.GetToggle(1, "HeartOfAzeroth") and (CaInc():CooldownRemainsP() > 30) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- memory_of_lucid_dreams,if=!buff.ca_inc.up&(astral_power<25|cooldown.ca_inc.remains>30),target_if=dot.sunfire.remains>10&dot.moonfire.remains>10&(!talent.stellar_flare.enabled|dot.stellar_flare.remains>10)
        if S.MemoryofLucidDreams:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") and EvaluateCycleMemoryofLucidDreams135(Target) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 149" end
        end
        -- purifying_blast
        if S.PurifyingBlast:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
        -- concentrated_flame
        if S.ConcentratedFlame:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up,target_if=dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled|dot.stellar_flare.ticking)
        if S.TheUnboundForce:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") and EvaluateCycleTheUnboundForce160(Target) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force 172" end
        end
        -- worldvein_resonance
        if S.WorldveinResonance:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- focused_azerite_beam,if=(!variable.az_ss|!buff.ca_inc.up),target_if=dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled|dot.stellar_flare.ticking)
        if S.FocusedAzeriteBeam:IsCastableP() and not ShouldStop and Action.GetToggle(1, "HeartOfAzeroth") and EvaluateCycleFocusedAzeriteBeam179(Target) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam 193" end
        end
        -- thorns
        if S.Thorns:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Thorns) then return "thorns"; end
        end
        -- use_items,slots=trinket1,if=!trinket.1.has_proc.any|buff.ca_inc.up
        -- use_items,slots=trinket2,if=!trinket.2.has_proc.any|buff.ca_inc.up
        -- use_items
        -- warrior_of_elune
        if S.WarriorofElune:IsCastableP() and not ShouldStop then
            if HR.Cast(S.WarriorofElune, Action.GetToggle(2, "GCDasOffGCD")) then return "warrior_of_elune 108"; end
        end
        -- innervate,if=azerite.lively_spirit.enabled&(cooldown.incarnation.remains<2|cooldown.celestial_alignment.remains<12)
        if S.Innervate:IsCastableP() and not ShouldStop and HR.CDsON() and (S.LivelySpirit:AzeriteEnabled() and (S.Incarnation:CooldownRemainsP() < 2 or S.CelestialAlignment:CooldownRemainsP() < 12)) then
            if HR.Cast(S.Innervate) then return "innervate 110"; end
        end
        -- force_of_nature,if=(variable.az_ss&!buff.ca_inc.up|!variable.az_ss&(buff.ca_inc.up|cooldown.ca_inc.remains>30))&ap_check
        if S.ForceofNature:IsCastableP() and not ShouldStop and ((bool(VarAzSs) and Player:BuffDownP(CaInc()) or not bool(VarAzSs) and (Player:BuffP(CaInc()) or CaInc():CooldownRemainsP() > 30)) and AP_Check(S.ForceofNature)) then
            if HR.Cast(S.ForceofNature, Action.GetToggle(2, "GCDasOffGCD")) then return "force_of_nature 1111"; end
        end
        -- incarnation,if=!buff.ca_inc.up&(buff.memory_of_lucid_dreams.up|((cooldown.memory_of_lucid_dreams.remains>20|!essence.memory_of_lucid_dreams.major)&ap_check))&(buff.memory_of_lucid_dreams.up|ap_check),target_if=dot.sunfire.remains>8&dot.moonfire.remains>12&(dot.stellar_flare.remains>6|!talent.stellar_flare.enabled)
        if S.Incarnation:IsCastableP() and not ShouldStop and (Player:BuffDownP(CaInc()) and (Player:BuffP(S.MemoryofLucidDreams) or ((S.MemoryofLucidDreams:CooldownRemainsP() > 20 or not S.MemoryofLucidDreams:IsAvailable()) and AP_Check(S.Incarnation))) and (Player:BuffP(S.MemoryofLucidDreams) or AP_Check(S.Incarnation)) and (Target:DebuffRemainsP(S.SunfireDebuff) > 8 and Target:DebuffRemainsP(S.MoonfireDebuff) > 12 and (Target:DebuffRemainsP(S.StellarFlareDebuff) > 6 or not S.StellarFlare:IsAvailable()))) then
            if HR.Cast(S.Incarnation, Action.GetToggle(2, "GCDasOffGCD")) then return "incarnation 228" end
        end
        -- celestial_alignment,if=!buff.ca_inc.up&(!talent.starlord.enabled|buff.starlord.up)&(buff.memory_of_lucid_dreams.up|((cooldown.memory_of_lucid_dreams.remains>20|!essence.memory_of_lucid_dreams.major)&ap_check))&(!azerite.lively_spirit.enabled|buff.lively_spirit.up),target_if=(dot.sunfire.remains>2&dot.moonfire.ticking&(dot.stellar_flare.ticking|!talent.stellar_flare.enabled))
        if S.CelestialAlignment:IsCastableP() and not ShouldStop and HR.CDsON() and (Player:BuffDownP(CaInc()) and (not S.Starlord:IsAvailable() or Player:BuffP(S.StarlordBuff)) and (Player:BuffP(S.MemoryofLucidDreams) or ((S.MemoryofLucidDreams:CooldownRemainsP() > 20 or not S.MemoryofLucidDreams:IsAvailable()) and AP_Check(S.CelestialAlignment))) and (not S.LivelySpirit:AzeriteEnabled() or Player:BuffP(S.LivelySpiritBuff)) and (Target:DebuffRemainsP(S.SunfireDebuff) > 2 and Target:DebuffP(S.MoonfireDebuff) and (Target:DebuffP(S.StellarFlareDebuff) or not S.StellarFlare:IsAvailable()))) then
            if HR.Cast(S.CelestialAlignment, Action.GetToggle(2, "GCDasOffGCD")) then return "celestial_alignment 253" end
        end
        -- fury_of_elune,if=(buff.ca_inc.up|cooldown.ca_inc.remains>30)&solar_wrath.ap_check
        if S.FuryofElune:IsCastableP() and not ShouldStop and ((Player:BuffP(CaInc()) or CaInc():CooldownRemainsP() > 30) and AP_Check(S.SolarWrath)) then
            if HR.Cast(S.FuryofElune, Action.GetToggle(2, "GCDasOffGCD")) then return "fury_of_elune 146"; end
        end
        -- cancel_buff,name=starlord,if=buff.starlord.remains<3&!solar_wrath.ap_check
        -- if (Player:BuffRemainsP(S.StarlordBuff) < 3 and not bool(solar_wrath.ap_check)) then
            -- if HR.Cancel(S.StarlordBuff) then return ""; end
        -- end
        -- starfall,if=(buff.starlord.stack<3|buff.starlord.remains>=8)&spell_targets>=variable.sf_targets&(target.time_to_die+1)*spell_targets>cost%2.5
        if S.Starfall:IsReadyP() and EnemiesCount > 3 and ((Player:BuffStackP(S.StarlordBuff) < 3 or Player:BuffRemainsP(S.StarlordBuff) >= 8) and EnemiesCount >= VarSfTargets and (Target:TimeToDie() + 1) * EnemiesCount > S.Starfall:Cost() / 2.5) then
            if HR.Cast(S.Starfall, Action.GetToggle(2, "GCDasOffGCD")) then return "starfall 164"; end
        end
        -- starsurge,if=(talent.starlord.enabled&(buff.starlord.stack<3|buff.starlord.remains>=5&buff.arcanic_pulsar.stack<8)|!talent.starlord.enabled&(buff.arcanic_pulsar.stack<8|buff.ca_inc.up))&spell_targets.starfall<variable.sf_targets&buff.lunar_empowerment.stack+buff.solar_empowerment.stack<4&buff.solar_empowerment.stack<3&buff.lunar_empowerment.stack<3&(!variable.az_ss|!buff.ca_inc.up|!prev.starsurge)|target.time_to_die<=execute_time*astral_power%40|!solar_wrath.ap_check
        if S.Starsurge:IsReadyP() and ((S.Starlord:IsAvailable() and (Player:BuffStackP(S.StarlordBuff) < 3 or Player:BuffRemainsP(S.StarlordBuff) >= 5 and Player:BuffStackP(S.ArcanicPulsarBuff) < 8) or not S.Starlord:IsAvailable() and (Player:BuffStackP(S.ArcanicPulsarBuff) < 8 or Player:BuffP(CaInc()))) and EnemiesCount < VarSfTargets and Player:BuffStackP(S.LunarEmpowermentBuff) + Player:BuffStackP(S.SolarEmpowermentBuff) < 4 and Player:BuffStackP(S.SolarEmpowermentBuff) < 3 and Player:BuffStackP(S.LunarEmpowermentBuff) < 3 and (not bool(VarAzSs) or Player:BuffDownP(CaInc()) or not Player:PrevGCDP(1, S.Starsurge)) or Target:TimeToDie() <= S.Starsurge:ExecuteTime() * FutureAstralPower() / 40 or not AP_Check(S.SolarWrath)) then
            if HR.Cast(S.Starsurge) then return "starsurge 188"; end
        end
        -- sunfire,if=buff.ca_inc.up&buff.ca_inc.remains<gcd.max&variable.az_ss&dot.moonfire.remains>remains
        if S.Sunfire:IsCastableP() and not ShouldStop and (Player:BuffP(CaInc()) and Player:BuffRemainsP(CaInc()) < Player:GCD() and bool(VarAzSs) and Target:DebuffRemainsP(S.MoonfireDebuff) > Target:DebuffRemainsP(S.SunfireDebuff)) then
            if HR.Cast(S.Sunfire) then return "sunfire 222"; end
        end
        -- moonfire,if=buff.ca_inc.up&buff.ca_inc.remains<gcd.max&variable.az_ss
        if S.Moonfire:IsCastableP() and not ShouldStop and (Player:BuffP(CaInc()) and Player:BuffRemainsP(CaInc()) < Player:GCD() and bool(VarAzSs)) then
            if HR.Cast(S.Moonfire) then return "moonfire 238"; end
        end
        -- sunfire,target_if=refreshable,if=ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=ceil(floor(2%spell_targets)*1.5)+2*spell_targets&(spell_targets>1+talent.twin_moons.enabled|dot.moonfire.ticking)&(!variable.az_ss|!buff.ca_inc.up|!prev.sunfire)&(buff.ca_inc.remains>remains|!buff.ca_inc.up)
        if S.Sunfire:IsCastableP() and not ShouldStop and EvaluateCycleSunfire250(Target) then
            if HR.Cast(S.Sunfire) then return "sunfire 308" end
        end
        -- moonfire,target_if=refreshable,if=ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=6&(!variable.az_ss|!buff.ca_inc.up|!prev.moonfire)&(buff.ca_inc.remains>remains|!buff.ca_inc.up)
        if S.Moonfire:IsCastableP() and not ShouldStop and EvaluateCycleMoonfire313(Target) then
            if HR.Cast(S.Moonfire) then return "moonfire 343" end
        end
        -- stellar_flare,target_if=refreshable,if=ap_check&floor(target.time_to_die%(2*spell_haste))>=5&(!variable.az_ss|!buff.ca_inc.up|!prev.stellar_flare)
        if S.StellarFlare:IsCastableP() and not ShouldStop and EvaluateCycleStellarFlare348(Target) then
            if HR.Cast(S.StellarFlare) then return "stellar_flare 360" end
        end
        -- new_moon,if=ap_check
        if S.NewMoon:IsCastableP() and not ShouldStop and (AP_Check(S.NewMoon)) then
            if HR.Cast(S.NewMoon) then return "new_moon 361"; end
        end
        -- half_moon,if=ap_check
        if S.HalfMoon:IsCastableP() and not ShouldStop and (AP_Check(S.HalfMoon)) then
            if HR.Cast(S.HalfMoon) then return "half_moon 363"; end
        end
        -- full_moon,if=ap_check
        if S.FullMoon:IsCastableP() and not ShouldStop and (AP_Check(S.FullMoon)) then
            if HR.Cast(S.FullMoon) then return "full_moon 365"; end
        end
        -- lunar_strike,if=buff.solar_empowerment.stack<3&(ap_check|buff.lunar_empowerment.stack=3)&((buff.warrior_of_elune.up|buff.lunar_empowerment.up|spell_targets>=2&!buff.solar_empowerment.up)&(!variable.az_ss|!buff.ca_inc.up)|variable.az_ss&buff.ca_inc.up&prev.solar_wrath)
        if S.LunarStrike:IsCastableP() and not ShouldStop and (Player:BuffStackP(S.SolarEmpowermentBuff) < 3 and (AP_Check(S.LunarStrike) or Player:BuffStackP(S.LunarEmpowermentBuff) == 3) and ((Player:BuffP(S.WarriorofEluneBuff) or Player:BuffP(S.LunarEmpowermentBuff) or EnemiesCount >= 2 and Player:BuffDownP(S.SolarEmpowermentBuff)) and (not bool(VarAzSs) or Player:BuffDownP(CaInc())) or bool(VarAzSs) and Player:BuffP(CaInc()) and Player:PrevGCDP(1, S.SolarWrath))) then
            if HR.Cast(S.LunarStrike) then return "lunar_strike 367"; end
        end
        -- solar_wrath,if=variable.az_ss<3|!buff.ca_inc.up|!prev.solar_wrath
        if S.SolarWrath:IsCastableP() and not ShouldStop and (VarAzSs < 3 or Player:BuffDownP(CaInc()) or not Player:PrevGCDP(1, S.SolarWrath)) then
            if HR.Cast(S.SolarWrath) then return "solar_wrath 393"; end
        end
        -- sunfire
        if S.Sunfire:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Sunfire) then return "sunfire 399"; end
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

