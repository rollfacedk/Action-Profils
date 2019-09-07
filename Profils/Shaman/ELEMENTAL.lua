--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action
local MultiUnits = Action.MultiUnits

Action[ACTION_CONST_SHAMAN_ELEMENTAL] = {
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
    TotemMastery                          = Action.Create({ Type = "Spell", ID = 210643     }),
    Stormkeeper                           = Action.Create({ Type = "Spell", ID = 191634     }),
    FireElemental                         = Action.Create({ Type = "Spell", ID = 198067     }),
    StormElemental                        = Action.Create({ Type = "Spell", ID = 192249     }),
    ElementalBlast                        = Action.Create({ Type = "Spell", ID = 117014     }),
    LavaBurst                             = Action.Create({ Type = "Spell", ID = 51505      }),
    ChainLightning                        = Action.Create({ Type = "Spell", ID = 188443     }),
    FlameShock                            = Action.Create({ Type = "Spell", ID = 188389     }),
    Ascendance                            = Action.Create({ Type = "Spell", ID = 114050     }),
    Icefury                               = Action.Create({ Type = "Spell", ID = 210714     }),
    LiquidMagmaTotem                      = Action.Create({ Type = "Spell", ID = 192222     }),
    Earthquake                            = Action.Create({ Type = "Spell", ID = 61882      }),
    MasteroftheElements                   = Action.Create({ Type = "Spell", ID = 16166      }),
    FrostShock                            = Action.Create({ Type = "Spell", ID = 196840     }),
    LavaBeam                              = Action.Create({ Type = "Spell", ID = 114074     }),
    IgneousPotential                      = Action.Create({ Type = "Spell", ID = 279829     }),
    NaturalHarmony                        = Action.Create({ Type = "Spell", ID = 278697     }),
    SurgeofPower                          = Action.Create({ Type = "Spell", ID = 262303     }),
    LightningBolt                         = Action.Create({ Type = "Spell", ID = 188196     }),
    LavaShock                             = Action.Create({ Type = "Spell", ID = 273448     }),
    TectonicThunder                       = Action.Create({ Type = "Spell", ID = 286949     }),
    CalltheThunder                        = Action.Create({ Type = "Spell", ID = 260897     }),
    EarthShock                            = Action.Create({ Type = "Spell", ID = 8042       }),
    EchooftheElementals                   = Action.Create({ Type = "Spell", ID = 275381     }),
    EchooftheElements                     = Action.Create({ Type = "Spell", ID = 108283     }),
    WindShear                             = Action.Create({ Type = "Spell", ID = 57994      }),
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
	-- Utilities
    LightningLasso                        = Action.Create({ Type = "Spell", ID = 305483     }),
    CapacitorTotem                        = Action.Create({ Type = "Spell", ID = 192058     }),
    Purge                                 = Action.Create({ Type = "Spell", ID = 370     }),
    GhostWolf                             = Action.Create({ Type = "Spell", ID = 2645     }),
    -- Defensive
	AstralShift                           = Action.Create({ Type = "Spell", ID = 108271     }),	
    -- Buffs
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932  , Hidden = true     }),	
    ResonanceTotemBuff                    = Action.Create({ Type = "Spell", ID = 202192  , Hidden = true     }),	
    TectonicThunderBuff                   = Action.Create({ Type = "Spell", ID = 286949  , Hidden = true     }),	
    LavaShockBuff                         = Action.Create({ Type = "Spell", ID = 273453 , Hidden = true     }),	
    SurgeofPowerBuff                      = Action.Create({ Type = "Spell", ID = 285514 , Hidden = true     }),	
    MasteroftheElementsBuff               = Action.Create({ Type = "Spell", ID = 260734 , Hidden = true     }),	
    LavaSurgeBuff                         = Action.Create({ Type = "Spell", ID = 77762  , Hidden = true     }),	
    AscendanceBuff                        = Action.Create({ Type = "Spell", ID = 114050, Hidden = true     }),	
    IcefuryBuff                           = Action.Create({ Type = "Spell", ID = 210714, Hidden = true     }),	
    StormkeeperBuff                       = Action.Create({ Type = "Spell", ID = 191634, Hidden = true     }),	
    WindGustBuff                          = Action.Create({ Type = "Spell", ID = 263806, Hidden = true     }),
    GhostWolfBuff                         = Action.Create({ Type = "Spell", ID = 2645     }),	
	-- Debuffs 
    FlameShockDebuff                      = Action.Create({ Type = "Spell", ID = 188389, Hidden = true     }),		
    -- Misc
    Channeling                            = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),	-- Show an icon during channeling
	TargetEnemy                           = Action.Create({ Type = "Spell", ID = 44603, Hidden = true     }),	-- Change Target (Tab button)
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
Action:CreateEssencesFor(ACTION_CONST_SHAMAN_ELEMENTAL)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_SHAMAN_ELEMENTAL], { __index = Action })

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
local EnemiesCount;
-- GUI Settings
local Everyone = HR.Commons.Everyone;

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


local EnemyRanges = {40, 5}
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
	        Everyone.AoEToggleEnemiesUpdate()
            return Cache.EnemiesCount[40]
        end
    else
        return 1
    end
end

local function ResonanceTotemTime()
  for index=1,4 do
    local _, totemName, startTime, duration = GetTotemInfo(index)
    if totemName == S.TotemMastery:Name() then
      return (floor(startTime + duration - GetTime() + 0.5)) or 0
    end
  end
  return 0
end

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

local function EvaluateCycleFlameShock47(Target)
  return Target:DebuffRefreshableCP(S.FlameShockDebuff) and (EnemiesCount < (5 - num(not S.TotemMastery:IsAvailable())) or not S.StormElemental:IsAvailable() and (S.FireElemental:CooldownRemainsP() > (120 + 14 * Player:SpellHaste()) or S.FireElemental:CooldownRemainsP() < (24 - 14 * Player:SpellHaste()))) and (not S.StormElemental:IsAvailable() or S.StormElemental:CooldownRemainsP() < 120 or EnemiesCount == 3 and Player:BuffStackP(S.WindGustBuff) < 14)
end

local function EvaluateCycleFlameShock148(Target)
  return Target:DebuffRefreshableCP(S.FlameShockDebuff)
end

local function EvaluateCycleFlameShock163(Target)
  return (not Target:DebuffP(S.FlameShockDebuff) or S.StormElemental:IsAvailable() and S.StormElemental:CooldownRemainsP() < 2 * Player:GCD() or Target:DebuffRemainsP(S.FlameShockDebuff) <= Player:GCD() or S.Ascendance:IsAvailable() and Target:DebuffRemainsP(S.FlameShockDebuff) < (S.Ascendance:CooldownRemainsP() + S.AscendanceBuff:BaseDuration()) and S.Ascendance:CooldownRemainsP() < 4 and (not S.StormElemental:IsAvailable() or S.StormElemental:IsAvailable() and S.StormElemental:CooldownRemainsP() < 120)) and (Player:BuffStackP(S.WindGustBuff) < 14 or S.IgneousPotential:AzeriteRank() >= 2 or Player:BuffP(S.LavaSurgeBuff) or not Player:HasHeroism()) and not Player:BuffP(S.SurgeofPowerBuff)
end

local function EvaluateCycleFlameShock390(Target)
  return Target:DebuffRefreshableCP(S.FlameShockDebuff) and EnemiesCount > 1 and Player:BuffP(S.SurgeofPowerBuff)
end

local function EvaluateCycleFlameShock511(Target)
  return Target:DebuffRefreshableCP(S.FlameShockDebuff) and not Player:BuffP(S.SurgeofPowerBuff)
end

local function EvaluateCycleFlameShock562(Target)
  return Target:DebuffRefreshableCP(S.FlameShockDebuff)
end

local function EvaluateCycleFlameShock702(Target)
  return ((not Target:DebuffP(S.FlameShockDebuff) or S.StormElemental:IsAvailable() and S.StormElemental:CooldownRemainsP() < 2 * Player:GCD() or Target:DebuffRemainsP(S.FlameShockDebuff) <= Player:GCD() or S.Ascendance:IsAvailable() and Target:DebuffRemainsP(S.FlameShockDebuff) < (S.Ascendance:CooldownRemainsP() + S.AscendanceBuff:BaseDuration()) and S.Ascendance:CooldownRemainsP() < 4 and (not S.StormElemental:IsAvailable() or S.StormElemental:IsAvailable() and S.StormElemental:CooldownRemainsP() < 120)) and (Player:BuffStackP(S.WindGustBuff) < 14 or S.IgneousPotential:AzeriteRank() >= 2 or Player:BuffP(S.LavaSurgeBuff) or not Player:HasHeroism()) and Player:BuffDownP(S.SurgeofPowerBuff))
end

-- Initiate Nucleus Ability registration
local function Init ()
    HL.RegisterNucleusAbility(188443, 10, 6)               -- Chain Lightning
    HL.RegisterNucleusAbility(61882, 8, 6)                 -- Earthquake
    HL.RegisterNucleusAbility(192222, 8, 6)                -- Liquid Magma Totem
end
-- Init data for splash data (To Check)
Init()

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    EnemiesCount = GetEnemiesCount(40)
    HL.GetEnemies(40) -- For CastCycle calls
	DetermineEssenceRanks()
    AppliedFlameShock = MultiUnits:GetByRangeAppliedDoTs(40, 10, 188389) --MultiDots(40, S.FlameShockDebuff, 15, 4) --MultiUnits:GetByRangeMissedDoTs(40, 10, 188389)  MultiUnits:GetByRangeMissedDoTs(range, stop, dots, ttd)
	--print(AppliedFlameShock)
	
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
            -- totem_mastery
            if S.TotemMastery:IsReadyP() and not ShouldStop and ResonanceTotemTime() < 6 then
                if HR.Cast(S.TotemMastery) then return "totem_mastery 4"; end
            end
            -- earth_elemental,if=!talent.primal_elementalist.enabled
            -- stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3|raid_event.adds.in>50)
            if S.Stormkeeper:IsCastableP() and not ShouldStop and Player:BuffDownP(S.StormkeeperBuff) and (S.Stormkeeper:IsAvailable() and ((EnemiesCount - 1) < 3)) then
                if HR.Cast(S.Stormkeeper) then return "stormkeeper 7"; end
            end
            -- fire_elemental,if=!talent.storm_elemental.enabled
            if S.FireElemental:IsCastableP() and not ShouldStop and HR.CDsON() and (not S.StormElemental:IsAvailable()) then
                if HR.Cast(S.FireElemental, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fire_elemental 19"; end
            end
            -- storm_elemental,if=talent.storm_elemental.enabled
            if S.StormElemental:IsCastableP() and not ShouldStop and HR.CDsON() and (S.StormElemental:IsAvailable()) then
                if HR.Cast(S.StormElemental, Action.GetToggle(2, "OffGCDasOffGCD")) then return "storm_elemental 23"; end
            end
            -- potion
            if I.PotionofUnbridledFury:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") then
                if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 27"; end
            end
            -- elemental_blast,if=talent.elemental_blast.enabled
            if S.ElementalBlast:IsCastableP() and not ShouldStop and (S.ElementalBlast:IsAvailable()) then
                if HR.Cast(S.ElementalBlast) then return "elemental_blast 29"; end
            end
            -- lava_burst,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning<3
            if S.LavaBurst:IsCastableP() and not ShouldStop and (not S.ElementalBlast:IsAvailable() and EnemiesCount < 3 and not Player:IsCasting(S.LavaBurst)) then
                if HR.Cast(S.LavaBurst) then return "lava_burst 33"; end
            end
            -- Add Flame Shock as part of the "opener" 
            if S.FlameShock:IsCastableP() and not ShouldStop and ((not Target:DebuffP(S.FlameShockDebuff)) and (Player:IsCasting(S.LavaBurst) or Player:PrevGCDP(1, S.LavaBurst))) then
                if HR.Cast(S.FlameShock) then return "flame_shock opener"; end
            end
            -- chain_lightning,if=spell_targets.chain_lightning>2
            if S.ChainLightning:IsCastableP() and not ShouldStop and (EnemiesCount > 2) then
                if HR.Cast(S.ChainLightning) then return "chain_lightning 37"; end
            end
        end
    end
    local function Aoe()
        -- stormkeeper,if=talent.stormkeeper.enabled
        if S.Stormkeeper:IsCastableP() and not ShouldStop and (S.Stormkeeper:IsAvailable()) then
            if HR.Cast(S.Stormkeeper) then return "stormkeeper 39"; end
        end
        -- flame_shock,target_if=refreshable&(spell_targets.chain_lightning<(5-!talent.totem_mastery.enabled)|!talent.storm_elemental.enabled&(cooldown.fire_elemental.remains>(120+14*spell_haste)|cooldown.fire_elemental.remains<(24-14*spell_haste)))&(!talent.storm_elemental.enabled|cooldown.storm_elemental.remains<120|spell_targets.chain_lightning=3&buff.wind_gust.stack<14)
        if S.FlameShock:IsCastableP() and not ShouldStop and EvaluateCycleFlameShock47(Target) then
            if HR.Cast(S.FlameShock) then return "flame_shock 69" end
        end 	  		
        -- ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15|!talent.storm_elemental.enabled)&(!talent.icefury.enabled|!buff.icefury.up&!cooldown.icefury.up)
        if S.Ascendance:IsCastableP() and not ShouldStop and HR.CDsON() and (S.Ascendance:IsAvailable() and (S.StormElemental:IsAvailable() and S.StormElemental:CooldownRemainsP() < 120 and S.StormElemental:CooldownRemainsP() > 15 or not S.StormElemental:IsAvailable()) and (not S.Icefury:IsAvailable() or not Player:BuffP(S.IcefuryBuff) and not S.Icefury:CooldownUpP())) then
            if HR.Cast(S.Ascendance, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ascendance 70"; end
        end
        -- liquid_magma_totem,if=talent.liquid_magma_totem.enabled
        if S.LiquidMagmaTotem:IsCastableP() and not ShouldStop and (S.LiquidMagmaTotem:IsAvailable()) then
            if HR.Cast(S.LiquidMagmaTotem) then return "liquid_magma_totem 88"; end
        end
        -- earthquake,if=!talent.master_of_the_elements.enabled|buff.stormkeeper.up|maelstrom>=(100-4*spell_targets.chain_lightning)|buff.master_of_the_elements.up|spell_targets.chain_lightning>3
        if S.Earthquake:IsReadyP() and not ShouldStop and (not S.MasteroftheElements:IsAvailable() or Player:BuffP(S.StormkeeperBuff) or Player:Maelstrom() >= (100 - 4 * EnemiesCount) or Player:BuffP(S.MasteroftheElementsBuff) or EnemiesCount > 3) then
            if HR.Cast(S.Earthquake) then return "earthquake 92"; end
        end
        -- chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack
        if S.ChainLightning:IsCastableP() and not ShouldStop and (Player:BuffRemainsP(S.StormkeeperBuff) < 3 * Player:GCD() * Player:BuffStackP(S.StormkeeperBuff)) then
            if HR.Cast(S.ChainLightning) then return "chain_lightning 100"; end
        end
        -- lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled|cooldown.storm_elemental.remains<120)&dot.flame_shock.ticking
        if S.LavaBurst:IsCastableP() and not ShouldStop and (Player:BuffP(S.LavaSurgeBuff) and EnemiesCount < 4 and (not S.StormElemental:IsAvailable() or S.StormElemental:CooldownRemainsP() < 120) and Target:DebuffP(S.FlameShockDebuff)) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 106"; end
        end
        -- icefury,if=spell_targets.chain_lightning<4&!buff.ascendance.up
        if S.Icefury:IsCastableP() and not ShouldStop and (EnemiesCount < 4 and not Player:BuffP(S.AscendanceBuff)) then
            if HR.Cast(S.Icefury) then return "icefury 116"; end
        end
        -- frost_shock,if=spell_targets.chain_lightning<4&buff.icefury.up&!buff.ascendance.up
        if S.FrostShock:IsCastableP() and not ShouldStop and (EnemiesCount < 4 and Player:BuffP(S.IcefuryBuff) and not Player:BuffP(S.AscendanceBuff)) then
            if HR.Cast(S.FrostShock) then return "frost_shock 120"; end
        end
        -- elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled|cooldown.storm_elemental.remains<120)
        if S.ElementalBlast:IsCastableP() and not ShouldStop and (S.ElementalBlast:IsAvailable() and EnemiesCount < 4 and (not S.StormElemental:IsAvailable() or S.StormElemental:CooldownRemainsP() < 120)) then
            if HR.Cast(S.ElementalBlast) then return "elemental_blast 126"; end
        end
        -- lava_beam,if=talent.ascendance.enabled
        if S.LavaBeam:IsCastableP() and not ShouldStop and (S.Ascendance:IsAvailable()) then
            if HR.Cast(S.LavaBeam) then return "lava_beam 134"; end
        end
        -- chain_lightning
        if S.ChainLightning:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ChainLightning) then return "chain_lightning 138"; end
        end
        -- lava_burst,moving=1,if=talent.ascendance.enabled
        if S.LavaBurst:IsCastableP() and not ShouldStop and Player:IsMoving() and (S.Ascendance:IsAvailable()) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 140"; end
        end
        -- flame_shock,moving=1,target_if=refreshable
        if S.FlameShock:IsCastableP() and not ShouldStop and EvaluateCycleFlameShock148(Target) and Player:IsMoving() then
            if HR.Cast(S.FlameShock) then return "flame_shock 156" end
        end
        -- frost_shock,moving=1
        if S.FrostShock:IsCastableP() and not ShouldStop and Player:IsMoving() then
            if HR.Cast(S.FrostShock) then return "frost_shock 157"; end
        end
    end
    local function Funnel()
        -- flame_shock,target_if=(!ticking|talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd|dot.flame_shock.remains<=gcd|talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled|talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120))&(buff.wind_gust.stack<14|azerite.igneous_potential.rank>=2|buff.lava_surge.up|!buff.bloodlust.up)&!buff.surge_of_power.up
        if S.FlameShock:IsCastableP() and not ShouldStop and EvaluateCycleFlameShock702(Target) then
            if HR.Cast(S.FlameShock) then return "flame_shock 704"; end
        end
        -- ascendance,if=talent.ascendance.enabled&(time>=60|buff.bloodlust.up)&cooldown.lava_burst.remains>0&(cooldown.storm_elemental.remains<120|!talent.storm_elemental.enabled)&(!talent.icefury.enabled|!buff.icefury.up&!cooldown.icefury.up)
        if S.Ascendance:IsCastableP() and not ShouldStop and (S.Ascendance:IsAvailable() and (HL.CombatTime() >= 60 or Player:HasHeroism()) and bool(S.LavaBurst:CooldownRemainsP()) and (S.StormElemental:CooldownRemainsP() < 120 or not S.StormElemental:IsAvailable()) and (not S.Icefury:IsAvailable() or Player:BuffDownP(S.IcefuryBuff) and not S.Icefury:CooldownUpP())) then
            if HR.Cast(S.Ascendance, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ascendance 706"; end
        end
        -- elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60|!talent.master_of_the_elements.enabled)&(!(cooldown.storm_elemental.remains>120&talent.storm_elemental.enabled)|azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)
        if S.ElementalBlast:IsCastableP() and not ShouldStop and (S.ElementalBlast:IsAvailable() and (S.MasteroftheElements:IsAvailable() and Player:BuffP(S.MasteroftheElementsBuff) and Player:Maelstrom() < 60 or not S.MasteroftheElements:IsAvailable()) and (not (S.StormElemental:CooldownRemainsP() > 120 and S.StormElemental:IsAvailable()) or S.NaturalHarmony:AzeriteRank() == 3 and Player:BuffStackP(S.WindGustBuff) < 14)) then
            if HR.Cast(S.ElementalBlast) then return "elemental_blast 708"; end
        end
        -- stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3|raid_event.adds.in>50)&(!talent.surge_of_power.enabled|buff.surge_of_power.up|maelstrom>=44)
        if S.Stormkeeper:IsCastableP() and not ShouldStop and (S.Stormkeeper:IsAvailable() and EnemiesCount < 3 and (not S.SurgeofPower:IsAvailable() or Player:BuffP(S.SurgeofPowerBuff) or Player:Maelstrom() >= 44)) then
            if HR.Cast(S.Stormkeeper) then return "stormkeeper 710"; end
        end
        -- liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3|raid_event.adds.in>50)
        if S.LiquidMagmaTotem:IsCastableP() and not ShouldStop and (S.LiquidMagmaTotem:IsAvailable() and EnemiesCount < 3) then
            if HR.Cast(S.LiquidMagmaTotem) then return "liquid_magma_totem 712"; end
        end
        -- lightning_bolt,if=buff.stormkeeper.up&spell_targets.chain_lightning<6&(azerite.lava_shock.rank*buff.lava_shock.stack)<36&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled|buff.surge_of_power.up)
        if S.LightningBolt:IsCastableP() and not ShouldStop and (Player:BuffP(S.StormkeeperBuff) and EnemiesCount < 6 and (S.LavaShock:AzeriteRank() * Player:BuffStackP(S.LavaShockBuff)) < 36 and (Player:BuffP(S.MasteroftheElementsBuff) and not S.SurgeofPower:IsAvailable() or Player:BuffP(S.SurgeofPowerBuff))) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 714"; end
        end
        -- earth_shock,if=!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up|cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled|(azerite.lava_shock.rank*buff.lava_shock.stack<36)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)
        if S.EarthShock:IsReadyP() and not ShouldStop and (Player:BuffDownP(S.SurgeofPowerBuff) and S.MasteroftheElements:IsAvailable() and (Player:BuffP(S.MasteroftheElementsBuff) or not S.LavaBurst:CooldownUpP() and Player:Maelstrom() >= 92 + 30 * num(S.CalltheThunder:IsAvailable()) or (S.LavaShock:AzeriteRank() * Player:BuffStackP(S.LavaShockBuff) < 36) and Player:BuffP(S.StormkeeperBuff) and S.LavaBurst:CooldownRemainsP() <= Player:GCD())) then
            if HR.Cast(S.EarthShock) then return "earth_shock 716"; end
        end
        -- earth_shock,if=!talent.master_of_the_elements.enabled&!(azerite.igneous_potential.rank>2&buff.ascendance.up)&(buff.stormkeeper.up|maelstrom>=90+30*talent.call_the_thunder.enabled|!(cooldown.storm_elemental.remains>120&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))
        if S.EarthShock:IsReadyP() and not ShouldStop and (not S.MasteroftheElements:IsAvailable() and not (S.IgneousPotential:AzeriteRank() > 2 and Player:BuffP(S.AscendanceBuff)) and (Player:BuffP(S.StormkeeperBuff) or Player:Maelstrom() >= 90 + 30 * num(S.CalltheThunder:IsAvailable()) or not (S.StormElemental:CooldownRemainsP() > 120 and S.StormElemental:IsAvailable()) and Target:TimeToDie() - S.StormElemental:CooldownRemainsP() - 150 * floor((Target:TimeToDie() - S.StormElemental:CooldownRemainsP()) % 150) >= 30 * (1 + num(S.EchooftheElementals:AzeriteRank() >= 2)))) then
            if HR.Cast(S.EarthShock) then return "earth_shock 718"; end
        end
        -- earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!(cooldown.fire_elemental.remains>120)|talent.storm_elemental.enabled&!(cooldown.storm_elemental.remains>120))
        if S.EarthShock:IsReadyP() and not ShouldStop and (S.SurgeofPower:IsAvailable() and Player:BuffDownP(S.SurgeofPowerBuff) and S.LavaBurst:CooldownRemainsP() <= Player:GCD() and (not S.StormElemental:IsAvailable() and not (S.FireElemental:CooldownRemainsP() > 120) or S.StormElemental:IsAvailable() and not (S.StormElemental:CooldownRemainsP() > 120))) then
            if HR.Cast(S.EarthShock) then return "earth_shock 720"; end
        end
        -- lightning_bolt,if=cooldown.storm_elemental.remains>120&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2|!buff.lava_surge.up&buff.bloodlust.up)
        if S.LightningBolt:IsCastableP() and not ShouldStop and (S.StormElemental:CooldownRemainsP() > 120 and S.StormElemental:IsAvailable() and (S.IgneousPotential:AzeriteRank() < 2 or Player:BuffDownP(S.LavaSurgeBuff) and Player:HasHeroism())) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 722"; end
        end
        -- lightning_bolt,if=(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack|buff.stormkeeper.up&buff.master_of_the_elements.up)
        if S.LightningBolt:IsCastableP() and not ShouldStop and (Player:BuffRemainsP(S.StormkeeperBuff) < 1.1 * Player:GCD() * Player:BuffStackP(S.StormkeeperBuff) or Player:BuffP(S.StormkeeperBuff) and Player:BuffP(S.MasteroftheElementsBuff)) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 724"; end
        end
        -- frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up
        if S.FrostShock:IsCastableP() and not ShouldStop and (S.Icefury:IsAvailable() and S.MasteroftheElements:IsAvailable() and Player:BuffP(S.IcefuryBuff) and Player:BuffP(S.MasteroftheElementsBuff)) then
            if HR.Cast(S.FrostShock) then return "frost_shock 726"; end
        end
        -- lava_burst,if=buff.ascendance.up
        if S.LavaBurst:IsReadyP() and not ShouldStop and (Player:BuffP(S.AscendanceBuff)) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 728"; end
        end
        -- flame_shock,target_if=refreshable&active_enemies>1&buff.surge_of_power.up
        if S.FlameShock:IsCastableP() and not ShouldStop and (Target:DebuffRefreshableCP(S.FlameShock) and EnemiesCount > 1 and Player:BuffP(S.SurgeofPowerBuff)) then
            if HR.Cast(S.FlameShock) then return "flame_shock 730"; end
        end
        -- lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))|(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))
        if S.LavaBurst:IsCastableP() and not ShouldStop and Player:BuffP(S.SurgeofPowerBuff) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 734"; end
        end
        -- lightning_bolt,if=buff.surge_of_power.up
        if S.LightningBolt:IsCastableP() and not ShouldStop and (Player:BuffP(S.SurgeofPowerBuff)) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 736"; end
        end
        -- lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled
        if S.LavaBurst:IsCastableP() and not ShouldStop and (Player:BuffP(S.LavaSurgeBuff) and not S.MasteroftheElements:IsAvailable()) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 738"; end
        end
        -- icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)&(!talent.storm_elemental.enabled|cooldown.storm_elemental.remains<120)
        if S.Icefury:IsCastableP() and not ShouldStop and (S.Icefury:IsAvailable() and not (Player:Maelstrom() > 75 and S.LavaBurst:CooldownUpP()) and (not S.StormElemental:IsAvailable() or S.StormElemental:CooldownRemainsP() < 120)) then
            if HR.Cast(S.Icefury) then return "icefury 740"; end
        end
        -- lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled
        if S.LavaBurst:IsCastableP() and not ShouldStop and (Player:BuffP(S.LavaSurgeBuff) and S.LavaBurst:ChargesP() > num(S.EchooftheElementals:IsAvailable())) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 742"; end
        end
        -- frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack
        if S.FrostShock:IsCastableP() and not ShouldStop and (S.Icefury:IsAvailable() and Player:BuffP(S.IcefuryBuff) and Player:BuffRemainsP(S.IcefuryBuff) < 1.1 * Player:GCD() * num(Player:BuffStackP(S.IcefuryBuff))) then
            if HR.Cast(S.FrostShock) then return "frost_shock 744"; end
        end
        -- lava_burst,if=cooldown_react
        if S.LavaBurst:IsCastableP() and not ShouldStop and (Player:BuffP(S.LavaSurgeBuff)) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 746"; end
        end
        -- flame_shock,target_if=refreshable&!buff.surge_of_power.up
        if S.FlameShock:IsCastableP() and not ShouldStop and (Target:DebuffRefreshableCP(S.FlameShockDebuff) and Player:BuffDownP(S.SurgeofPowerBuff)) then
            if HR.Cast(S.FlameShock) then return "flame_shock 748"; end
        end
        -- totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6|(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))
        if S.TotemMastery:IsReadyP() and not ShouldStop and (S.TotemMastery:IsAvailable() and (ResonanceTotemTime() < 6 or (ResonanceTotemTime() < (S.Ascendance:BaseDuration() + S.Ascendance:CooldownRemainsP()) and S.Ascendance:CooldownRemainsP() < 15))) then
            if HR.Cast(S.TotemMastery) then return "totem_mastery 750"; end
        end
        -- frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack|buff.stormkeeper.up|!talent.master_of_the_elements.enabled)
        if S.FrostShock:IsCastableP() and not ShouldStop and (S.Icefury:IsAvailable() and Player:BuffP(S.IcefuryBuff) and (Player:BuffRemainsP(S.IcefuryBuff) < Player:GCD() * 4 * Player:BuffStackP(S.IcefuryBuff) or Player:BuffP(S.StormkeeperBuff) or not S.MasteroftheElements:IsAvailable())) then
            if HR.Cast(S.FrostShock) then return "frost_shock 752"; end
        end
        -- flame_shock,moving=1,target_if=refreshable
        if S.FlameShock:IsCastableP() and not ShouldStop and (Player:IsMoving() and Target:DebuffRefreshableCP(S.FlameShockDebuff)) then
            if HR.Cast(S.FlameShock) then return "flame_shock 754"; end
        end
        -- flame_shock,moving=1,if=movement.distance>6
        -- frost_shock,moving=1
        if S.FlameShock:IsCastableP() and not ShouldStop and (Player:IsMoving()) then
            if HR.Cast(S.FlameShock) then return "flame_shock 756"; end
        end
        -- lightning_bolt
        -- Moved moving abilities above LB filler
        if S.LightningBolt:IsCastableP() and not ShouldStop then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 758"; end
        end
    end
    local function SingleTarget()
        -- flame_shock,target_if=(!ticking|talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd|dot.flame_shock.remains<=gcd|talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled|talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120))&(buff.wind_gust.stack<14|azerite.igneous_potential.rank>=2|buff.lava_surge.up|!buff.bloodlust.up)&!buff.surge_of_power.up
        if S.FlameShock:IsCastableP() and not ShouldStop and EvaluateCycleFlameShock163(Target) then
            if HR.Cast(S.FlameShock) then return "flame_shock 201" end
        end
        -- ascendance,if=talent.ascendance.enabled&(time>=60|buff.bloodlust.up)&cooldown.lava_burst.remains>0&(cooldown.storm_elemental.remains<120|!talent.storm_elemental.enabled)&(!talent.icefury.enabled|!buff.icefury.up&!cooldown.icefury.up)
        if S.Ascendance:IsCastableP() and not ShouldStop and HR.CDsON() and (S.Ascendance:IsAvailable() and (HL.CombatTime() >= 60 or Player:HasHeroism()) and S.LavaBurst:CooldownRemainsP() > 0 and (S.StormElemental:CooldownRemainsP() < 120 or not S.StormElemental:IsAvailable()) and (not S.Icefury:IsAvailable() or not Player:BuffP(S.IcefuryBuff) and not S.Icefury:CooldownUpP())) then
            if HR.Cast(S.Ascendance, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ascendance 202"; end
        end
        -- elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60|!talent.master_of_the_elements.enabled)&(!(cooldown.storm_elemental.remains>120&talent.storm_elemental.enabled)|azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)
        if S.ElementalBlast:IsCastableP() and not ShouldStop and (S.ElementalBlast:IsAvailable() and (S.MasteroftheElements:IsAvailable() and Player:BuffP(S.MasteroftheElementsBuff) and Player:Maelstrom() < 60 or not S.MasteroftheElements:IsAvailable()) and (not (S.StormElemental:CooldownRemainsP() > 120 and S.StormElemental:IsAvailable()) or S.NaturalHarmony:AzeriteRank() == 3 and Player:BuffStackP(S.WindGustBuff) < 14)) then
            if HR.Cast(S.ElementalBlast) then return "elemental_blast 218"; end
        end
        -- stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3|raid_event.adds.in>50)&(!talent.surge_of_power.enabled|buff.surge_of_power.up|maelstrom>=44)
        if S.Stormkeeper:IsCastableP() and not ShouldStop and (S.Stormkeeper:IsAvailable() and ((EnemiesCount - 1) < 3) and (not S.SurgeofPower:IsAvailable() or Player:BuffP(S.SurgeofPowerBuff) or Player:Maelstrom() >= 44)) then
            if HR.Cast(S.Stormkeeper) then return "stormkeeper 236"; end
        end
        -- liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3|raid_event.adds.in>50)
        if S.LiquidMagmaTotem:IsCastableP() and not ShouldStop and (S.LiquidMagmaTotem:IsAvailable() and ((EnemiesCount - 1) < 3)) then
            if HR.Cast(S.LiquidMagmaTotem) then return "liquid_magma_totem 246"; end
        end
        -- lightning_bolt,if=buff.stormkeeper.up&spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack)<26&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled|buff.surge_of_power.up)
        if S.LightningBolt:IsCastableP() and not ShouldStop and (Player:BuffP(S.StormkeeperBuff) and EnemiesCount < 2 and (S.LavaShock:AzeriteRank() * Player:BuffStackP(S.LavaShockBuff)) < 26 and (Player:BuffP(S.MasteroftheElementsBuff) and not S.SurgeofPower:IsAvailable() or Player:BuffP(S.SurgeofPowerBuff))) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 252"; end
        end
        -- earthquake,if=(spell_targets.chain_lightning>1|azerite.tectonic_thunder.rank>=3&!talent.surge_of_power.enabled&azerite.lava_shock.rank<1)&azerite.lava_shock.rank*buff.lava_shock.stack<(36+3*azerite.tectonic_thunder.rank*spell_targets.chain_lightning)&(!talent.surge_of_power.enabled|!dot.flame_shock.refreshable|cooldown.storm_elemental.remains>120)&(!talent.master_of_the_elements.enabled|buff.master_of_the_elements.up|cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled)
        if S.Earthquake:IsReadyP() and not ShouldStop and ((EnemiesCount > 1 or S.TectonicThunder:AzeriteRank() >= 3 and not S.SurgeofPower:IsAvailable() and S.LavaShock:AzeriteRank() < 1) and S.LavaShock:AzeriteRank() * Player:BuffStackP(S.LavaShockBuff) < (36 + 3 * S.TectonicThunder:AzeriteRank() * EnemiesCount) and (not S.SurgeofPower:IsAvailable() or not Target:DebuffRefreshableCP(S.FlameShockDebuff) or S.StormElemental:CooldownRemainsP() > 120) and (not S.MasteroftheElements:IsAvailable() or Player:BuffP(S.MasteroftheElementsBuff) or S.LavaBurst:CooldownRemainsP() > 0 and Player:Maelstrom() >= 92 + 30 * num(S.CalltheThunder:IsAvailable()))) then
            if HR.Cast(S.Earthquake) then return "earthquake 266"; end
        end
        -- earth_shock,if=!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up|cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled|spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack<26)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)
        if S.EarthShock:IsReadyP() and not ShouldStop and (not Player:BuffP(S.SurgeofPowerBuff) and S.MasteroftheElements:IsAvailable() and (Player:BuffP(S.MasteroftheElementsBuff) or S.LavaBurst:CooldownRemainsP() > 0 and Player:Maelstrom() >= 92 + 30 * num(S.CalltheThunder:IsAvailable()) or EnemiesCount < 2 and (S.LavaShock:AzeriteRank() * Player:BuffStackP(S.LavaShockBuff) < 26) and Player:BuffP(S.StormkeeperBuff) and S.LavaBurst:CooldownRemainsP() <= Player:GCD())) then
            if HR.Cast(S.EarthShock) then return "earth_shock 294"; end
        end
        -- earth_shock,if=!talent.master_of_the_elements.enabled&!(azerite.igneous_potential.rank>2&buff.ascendance.up)&(buff.stormkeeper.up|maelstrom>=90+30*talent.call_the_thunder.enabled|!(cooldown.storm_elemental.remains>120&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))
        if S.EarthShock:IsReadyP() and not ShouldStop and (not S.MasteroftheElements:IsAvailable() and not (S.IgneousPotential:AzeriteRank() > 2 and Player:BuffP(S.AscendanceBuff)) and (Player:BuffP(S.StormkeeperBuff) or Player:Maelstrom() >= 90 + 30 * num(S.CalltheThunder:IsAvailable()) or not (S.StormElemental:CooldownRemainsP() > 120 and S.StormElemental:IsAvailable()) and Target:TimeToDie() - S.StormElemental:CooldownRemainsP() - 150 * math.floor ((Target:TimeToDie() - S.StormElemental:CooldownRemainsP()) / 150) >= 30 * (1 + num((S.EchooftheElementals:AzeriteRank() >= 2))))) then
            if HR.Cast(S.EarthShock) then return "earth_shock 314"; end
        end
        -- earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!(cooldown.fire_elemental.remains>120)|talent.storm_elemental.enabled&!(cooldown.storm_elemental.remains>120))
        if S.EarthShock:IsReadyP() and not ShouldStop and (S.SurgeofPower:IsAvailable() and not Player:BuffP(S.SurgeofPowerBuff) and S.LavaBurst:CooldownRemainsP() <= Player:GCD() and (not S.StormElemental:IsAvailable() and not (S.FireElemental:CooldownRemainsP() > 120) or S.StormElemental:IsAvailable() and not (S.StormElemental:CooldownRemainsP() > 120))) then
            if HR.Cast(S.EarthShock) then return "earth_shock 336"; end
        end
        -- lightning_lasso
        if S.LightningLasso:IsCastableP() and not ShouldStop then
            if HR.Cast(S.LightningLasso) then return "lightning_lasso"; end
        end
        -- lightning_bolt,if=cooldown.storm_elemental.remains>120&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2|!buff.lava_surge.up&buff.bloodlust.up)
        if S.LightningBolt:IsCastableP() and not ShouldStop and (S.StormElemental:CooldownRemainsP() > 120 and S.StormElemental:IsAvailable() and (S.IgneousPotential:AzeriteRank() < 2 or not Player:BuffP(S.LavaSurgeBuff) and Player:HasHeroism())) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 352"; end
        end
        -- lightning_bolt,if=(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack|buff.stormkeeper.up&buff.master_of_the_elements.up)
        if S.LightningBolt:IsCastableP() and not ShouldStop and ((Player:BuffRemainsP(S.StormkeeperBuff) < 1.1 * Player:GCD() * Player:BuffStackP(S.StormkeeperBuff) or Player:BuffP(S.StormkeeperBuff) and Player:BuffP(S.MasteroftheElementsBuff))) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 362"; end
        end
        -- frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up
        if S.FrostShock:IsCastableP() and not ShouldStop and (S.Icefury:IsAvailable() and S.MasteroftheElements:IsAvailable() and Player:BuffP(S.IcefuryBuff) and Player:BuffP(S.MasteroftheElementsBuff)) then
            if HR.Cast(S.FrostShock) then return "frost_shock 372"; end
        end
        -- lava_burst,if=buff.ascendance.up
        if S.LavaBurst:IsCastableP() and not ShouldStop and (Player:BuffP(S.AscendanceBuff)) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 382"; end
        end
        -- flame_shock,target_if=refreshable&active_enemies>1&buff.surge_of_power.up
        if S.FlameShock:IsCastableP() and not ShouldStop and EvaluateCycleFlameShock390(Target)  then
            if HR.Cast(S.FlameShock) then return "flame_shock 408" end
        end
        -- lava_burst,if=talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))|(1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains)%150))<(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)))
        if S.LavaBurst:IsCastableP() and not ShouldStop and (S.StormElemental:IsAvailable() and S.LavaBurst:CooldownUpP() and Player:BuffP(S.SurgeofPowerBuff) and (Target:TimeToDie() - S.StormElemental:CooldownRemainsP() - 150 * math.floor ((Target:TimeToDie() - S.StormElemental:CooldownRemainsP()) / 150) < 30 * (1 + num((S.EchooftheElementals:AzeriteRank() >= 2))) or (1.16 * Target:TimeToDie() - S.StormElemental:CooldownRemainsP() - 150 * math.floor ((1.16 * Target:TimeToDie() - S.StormElemental:CooldownRemainsP()) / 150)) < (Target:TimeToDie() - S.StormElemental:CooldownRemainsP() - 150 * math.floor ((Target:TimeToDie() - S.StormElemental:CooldownRemainsP()) / 150)))) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 409"; end
        end
        -- lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))|(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))
        if S.LavaBurst:IsCastableP() and not ShouldStop and (not S.StormElemental:IsAvailable() and S.LavaBurst:CooldownUpP() and Player:BuffP(S.SurgeofPowerBuff) and (Target:TimeToDie() - S.FireElemental:CooldownRemainsP() - 150 * math.floor ((Target:TimeToDie() - S.FireElemental:CooldownRemainsP()) / 150) < 30 * (1 + num((S.EchooftheElementals:AzeriteRank() >= 2))) or (1.16 * Target:TimeToDie() - S.FireElemental:CooldownRemainsP() - 150 * math.floor ((1.16 * Target:TimeToDie() - S.FireElemental:CooldownRemainsP()) / 150)) < (Target:TimeToDie() - S.FireElemental:CooldownRemainsP() - 150 * math.floor ((Target:TimeToDie() - S.FireElemental:CooldownRemainsP()) / 150)))) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 433"; end
        end
        -- lightning_bolt,if=buff.surge_of_power.up
        if S.LightningBolt:IsCastableP() and not ShouldStop and (Player:BuffP(S.SurgeofPowerBuff)) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 457"; end
        end
        -- lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled
        if S.LavaBurst:IsCastableP() and not ShouldStop and (S.LavaBurst:CooldownUpP() and not S.MasteroftheElements:IsAvailable()) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 461"; end
        end
        -- icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)&(!talent.storm_elemental.enabled|cooldown.storm_elemental.remains<120)
        if S.Icefury:IsCastableP() and not ShouldStop and (S.Icefury:IsAvailable() and not (Player:Maelstrom() > 75 and S.LavaBurst:CooldownRemainsP() <= 0) and (not S.StormElemental:IsAvailable() or S.StormElemental:CooldownRemainsP() < 120)) then
            if HR.Cast(S.Icefury) then return "icefury 469"; end
        end
        -- lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled
        if S.LavaBurst:IsCastableP() and not ShouldStop and (S.LavaBurst:CooldownUpP() and S.LavaBurst:ChargesP() > num(S.EchooftheElements:IsAvailable())) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 479"; end
        end
        -- frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack
        if S.FrostShock:IsCastableP() and not ShouldStop and (S.Icefury:IsAvailable() and Player:BuffP(S.IcefuryBuff) and Player:BuffRemainsP(S.IcefuryBuff) < 1.1 * Player:GCD() * Player:BuffStackP(S.IcefuryBuff)) then
            if HR.Cast(S.FrostShock) then return "frost_shock 491"; end
        end
        -- lava_burst,if=cooldown_react
        if S.LavaBurst:IsCastableP() and not ShouldStop and (S.LavaBurst:CooldownUpP()) then
            if HR.Cast(S.LavaBurst) then return "lava_burst 501"; end
        end
        -- flame_shock,target_if=refreshable&!buff.surge_of_power.up
        if S.FlameShock:IsCastableP() and not ShouldStop and EvaluateCycleFlameShock511(Target) then
            if HR.Cast(S.FlameShock) then return "flame_shock 521" end
        end
        -- totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6|(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))
        if S.TotemMastery:IsReadyP() and not ShouldStop and (S.TotemMastery:IsAvailable() and (ResonanceTotemTime() < 6 or (ResonanceTotemTime() < (S.AscendanceBuff:BaseDuration() + S.Ascendance:CooldownRemainsP()) and S.Ascendance:CooldownRemainsP() < 15))) then
            if HR.Cast(S.TotemMastery) then return "totem_mastery 522"; end
        end
        -- frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack|buff.stormkeeper.up|!talent.master_of_the_elements.enabled)
        if S.FrostShock:IsCastableP() and not ShouldStop and (S.Icefury:IsAvailable() and Player:BuffP(S.IcefuryBuff) and (Player:BuffRemainsP(S.IcefuryBuff) < Player:GCD() * 4 * Player:BuffStackP(S.IcefuryBuff) or Player:BuffP(S.StormkeeperBuff) or not S.MasteroftheElements:IsAvailable())) then
            if HR.Cast(S.FrostShock) then return "frost_shock 536"; end
        end
        -- chain_lightning,if=buff.tectonic_thunder.up&!buff.stormkeeper.up&spell_targets.chain_lightning>1
        if S.ChainLightning:IsCastableP() and not ShouldStop and (Player:BuffP(S.TectonicThunderBuff) and not Player:BuffP(S.StormkeeperBuff) and EnemiesCount > 1) then
            if HR.Cast(S.ChainLightning) then return "chain_lightning 550"; end
        end
        -- lightning_bolt
        if S.LightningBolt:IsCastableP() and not ShouldStop then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 556"; end
        end
        -- flame_shock,moving=1,target_if=refreshable
        if S.FlameShock:IsCastableP() and not ShouldStop and EvaluateCycleFlameShock562(Target) and Player:IsMoving() then
            if HR.Cast(S.FlameShock) then return "flame_shock 570" end
        end
        -- flame_shock,moving=1,if=movement.distance>6
        if S.FlameShock:IsCastableP() and not ShouldStop and Player:IsMoving() and (movement.distance > 6) then
            if HR.Cast(S.FlameShock) then return "flame_shock 571"; end
        end
        -- frost_shock,moving=1
        if S.FrostShock:IsCastableP() and not ShouldStop and Player:IsMoving() then
            if HR.Cast(S.FrostShock) then return "frost_shock 573"; end
        end
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
        
  	    -- WindShear
  	    if useKick and S.WindShear:IsReady() and not ShouldStop and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.WindShear, true) then return "WindShear 5"; end
         	else 
          	    return
         	end 
      	end 
	
     	-- CapacitorTotem
      	if useCC and not S.WindShear:IsReady() and not ShouldStop and S.CapacitorTotem:IsReady() and not ShouldStop and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.CapacitorTotem, true) then return "CapacitorTotem 5"; end
     	    else 
     	        return
     	    end 
     	end 
		-- Purge
		-- Note: Toggles  ("UseDispel", "UsePurge", "UseExpelEnrage")
        -- Category ("Dispel", "MagicMovement", "PurgeFriendly", "PurgeHigh", "PurgeLow", "Enrage")
        if S.Purge:IsReady() and not ShouldStop and not ShouldStop and Action.AuraIsValid("target", "UsePurge", "PurgeHigh") then
            if HR.Cast(S.Purge) then return "" end
        end	
		-- Ghost Wolf
		if Player:MovingFor() >= 2 and S.GhostWolf:IsReadyP() and not ShouldStop and not Player:BuffP(S.GhostWolfBuff) and Action.GetToggle(2, "UseGhostWolf") then
		    if HR.Cast(S.GhostWolf) then return "GhostWolf 585"; end
		end
		
        -- bloodlust,if=azerite.ancestral_resonance.enabled
        -- potion,if=expected_combat_length-time<30|cooldown.fire_elemental.remains>120|cooldown.storm_elemental.remains>120
        if I.PotionofUnbridledFury:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") and (Target:TimeToDie() < 30 or S.FireElemental:CooldownRemainsP() > 120 or S.StormElemental:CooldownRemainsP() > 120) then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 577"; end
        end
        -- totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2
        if S.TotemMastery:IsReadyP() and not ShouldStop and ResonanceTotemTime() < 6 and (S.TotemMastery:IsAvailable() and not Player:BuffP(S.ResonanceTotemBuff)) then
            if HR.Cast(S.TotemMastery) then return "totem_mastery 585"; end
        end
        -- use_items
        -- fire_elemental,if=!talent.storm_elemental.enabled
        if S.FireElemental:IsCastableP() and not ShouldStop and HR.CDsON() and (not S.StormElemental:IsAvailable()) then
            if HR.Cast(S.FireElemental, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fire_elemental 591"; end
        end
        -- storm_elemental,if=talent.storm_elemental.enabled&(!talent.icefury.enabled|!buff.icefury.up&!cooldown.icefury.up)&(!talent.ascendance.enabled|!cooldown.ascendance.up)
        if S.StormElemental:IsCastableP() and not ShouldStop and HR.CDsON() and (S.StormElemental:IsAvailable() and (not S.Icefury:IsAvailable() or not Player:BuffP(S.IcefuryBuff) and not S.Icefury:CooldownUpP()) and (not S.Ascendance:IsAvailable() or not S.Ascendance:CooldownUpP())) then
            if HR.Cast(S.StormElemental, Action.GetToggle(2, "OffGCDasOffGCD")) then return "storm_elemental 595"; end
        end
        -- earth_elemental,if=!talent.primal_elementalist.enabled|talent.primal_elementalist.enabled&(cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled|cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled)
        -- concentrated_flame
        if S.ConcentratedFlame:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- blood_of_the_enemy
        if S.BloodoftheEnemy:IsCastableP() and not ShouldStop then
            if HR.CasT(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- guardian_of_azeroth
        if S.GuardianofAzeroth:IsCastableP() and not ShouldStop then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- focused_azerite_beam
        if S.FocusedAzeriteBeam:IsCastableP() and not ShouldStop then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- purifying_blast
        if S.PurifyingBlast:IsCastableP() and not ShouldStop then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- the_unbound_force
        if S.TheUnboundForce:IsCastableP() and not ShouldStop then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastableP() and not ShouldStop then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastableP() and not ShouldStop then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
        -- worldvein_resonance
        if S.WorldveinResonance:IsCastableP() and not ShouldStop then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- blood_fury,if=!talent.ascendance.enabled|buff.ascendance.up|cooldown.ascendance.remains>50
        if S.BloodFury:IsCastableP() and not ShouldStop and HR.CDsON() and (not S.Ascendance:IsAvailable() or Player:BuffP(S.AscendanceBuff) or S.Ascendance:CooldownRemainsP() > 50) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 611"; end
        end
        -- berserking,if=!talent.ascendance.enabled|buff.ascendance.up
        if S.Berserking:IsCastableP() and not ShouldStop and HR.CDsON() and (not S.Ascendance:IsAvailable() or Player:BuffP(S.AscendanceBuff)) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 619"; end
        end
        -- fireblood,if=!talent.ascendance.enabled|buff.ascendance.up|cooldown.ascendance.remains>50
        if S.Fireblood:IsCastableP() and not ShouldStop and HR.CDsON() and (not S.Ascendance:IsAvailable() or Player:BuffP(S.AscendanceBuff) or S.Ascendance:CooldownRemainsP() > 50) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 625"; end
        end
        -- ancestral_call,if=!talent.ascendance.enabled|buff.ascendance.up|cooldown.ascendance.remains>50
        if S.AncestralCall:IsCastableP() and not ShouldStop and HR.CDsON() and (not S.Ascendance:IsAvailable() or Player:BuffP(S.AscendanceBuff) or S.Ascendance:CooldownRemainsP() > 50) then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ancestral_call 633"; end
        end
			  
	    if not Player:PrevGCDP(1, S.TargetEnemy) and Action.GetToggle(2, "AutoDot") and AppliedFlameShock < EnemiesCount and EnemiesCount > 1 and EnemiesCount <= 7 and Target:DebuffRemainsP(S.FlameShockDebuff) >+ 15 then
            if HR.Cast(S.TargetEnemy) then return "TargetEnemy 69" end
        end		
		
        -- run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2|spell_targets.lava_beam>2)
        if (EnemiesCount > 2) then
            local ShouldReturn = Aoe(); if ShouldReturn then return ShouldReturn; end
        end
        -- run_action_list,name=funnel,if=active_enemies>=2&(spell_targets.chain_lightning<2|spell_targets.lava_beam<2)
        if (EnemiesCount < 2) then
            local ShouldReturn = Funnel(); if ShouldReturn then return ShouldReturn; end
        end
        -- run_action_list,name=single_target
        if (true) then
            local ShouldReturn = SingleTarget(); if ShouldReturn then return ShouldReturn; end
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

