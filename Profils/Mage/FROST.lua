--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_MAGE_FROST] = {
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
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
    -- Generics Spells    
    ArcaneIntellect                       = Action.Create({ Type = "Spell", ID = 1459     }),
    SummonWaterElemental                  = Action.Create({ Type = "Spell", ID = 31687     }),
    MirrorImage                           = Action.Create({ Type = "Spell", ID = 55342     }),
    Frostbolt                             = Action.Create({ Type = "Spell", ID = 116     }),
    FrozenOrb                             = Action.Create({ Type = "Spell", ID = 84714     }),
    Blizzard                              = Action.Create({ Type = "Spell", ID = 190356     }),
    CometStorm                            = Action.Create({ Type = "Spell", ID = 153595     }),
    IceNova                               = Action.Create({ Type = "Spell", ID = 157997     }),
    Flurry                                = Action.Create({ Type = "Spell", ID = 44614     }),
    Ebonbolt                              = Action.Create({ Type = "Spell", ID = 257537     }),
    GlacialSpike                          = Action.Create({ Type = "Spell", ID = 199786     }),
    IceLance                              = Action.Create({ Type = "Spell", ID = 30455     }),
    RayofFrost                            = Action.Create({ Type = "Spell", ID = 205021     }),
    ConeofCold                            = Action.Create({ Type = "Spell", ID = 120     }),
    IcyVeins                              = Action.Create({ Type = "Spell", ID = 12472     }),
    RuneofPower                           = Action.Create({ Type = "Spell", ID = 116011     }),
    Shimmer                               = Action.Create({ Type = "Spell", ID = 212653     }),
    Blink                                 = Action.Create({ Type = "Spell", ID = 1953     }),
    IceFloes                              = Action.Create({ Type = "Spell", ID = 108839     }),
    SplittingIce                          = Action.Create({ Type = "Spell", ID = 56377     }),
    FreezingRain                          = Action.Create({ Type = "Spell", ID = 240555     }),
    IncantersFlow                         = Action.Create({ Type = "Spell", ID = 1463     }),
    -- Utilities
    Counterspell                         = Action.Create({ Type = "Spell", ID = 2139}),
    Spellsteal                           = Action.Create({ Type = "Spell", ID = 30449}),
	Polymorph                            = Action.Create({ Type = "Spell", ID = 118}),
	-- Defensives
    IceBlock                             = Action.Create({ Type = "Spell", ID = 45438}),
    IceBarrier                       = Action.Create({ Type = "Spell", ID = 11426}),
    -- Misc
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    RecklessForceBuff                    = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),
    ConcentratedFlameBurn                = Action.Create({ Type = "Spell", ID = 295368, Hidden = true     }),
    CyclotronicBlast                     = Action.Create({ Type = "Spell", ID = 167672, Hidden = true     }),
    HarmonicDematerializer               = Action.Create({ Type = "Spell", ID = 293512, Hidden = true     }),
    -- Buffs
    GlacialSpikeBuff                      = Action.Create({ Type = "Spell", ID = 199844     }),
    IceFloesBuff                          = Action.Create({ Type = "Spell", ID = 108839     }),
    RuneofPowerBuff                       = Action.Create({ Type = "Spell", ID = 116014     }),
    FingersofFrostBuff                    = Action.Create({ Type = "Spell", ID = 44544     }),
    BrainFreezeBuff                       = Action.Create({ Type = "Spell", ID = 190446     }),
    ArcaneIntellectBuff                   = Action.Create({ Type = "Spell", ID = 1459     }),
    IciclesBuff                           = Action.Create({ Type = "Spell", ID = 205473     }),
    -- Debuffs 
    WintersChillDebuff                    = Action.Create({ Type = "Spell", ID = 228358     }),
    -- Potions
    PotionofUnbridledFury                = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
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
Action:CreateEssencesFor(ACTION_CONST_MAGE_FROST)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_MAGE_FROST], { __index = Action })

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

local EnemyRanges = {35, 10}
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

S.FrozenOrb:RegisterInFlight()

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

S.FrozenOrb.EffectID = 84721
S.Frostbolt:RegisterInFlight()

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

-- Initiate Nucleus Ability registration
local function Init ()
  HL.RegisterNucleusAbility(84714, 8, 6)               -- Frost Orb
  HL.RegisterNucleusAbility(190356, 8, 6)              -- Blizzard
  HL.RegisterNucleusAbility(153595, 8, 6)              -- Comet Storm
  HL.RegisterNucleusAbility(120, 12, 6)                -- Cone of Cold
end
-- Init data for splash data (To Check)
Init()

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    local BlinkAny = S.Shimmer:IsAvailable() and S.Shimmer or S.Blink
    EnemiesCount = GetEnemiesCount(8)
    HL.GetEnemies(40, 12) -- For interrupts
    DetermineEssenceRanks()
	
	
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
        -- arcane_intellect
        if S.ArcaneIntellect:IsCastableP() and Player:BuffDownP(S.ArcaneIntellectBuff, true) then
            if HR.Cast(S.ArcaneIntellect) then return "arcane_intellect 3"; end
        end
        -- summon_water_elemental
        if S.SummonWaterElemental:IsCastableP() and not Pet:Exists() then
            if HR.Cast(S.SummonWaterElemental) then return "summon_water_elemental 7"; end
        end
        -- snapshot_stats
        if Everyone.TargetIsValid() then
            -- mirror_image
            if S.MirrorImage:IsCastableP() and HR.CDsON() then
                if HR.Cast(S.MirrorImage, Action.GetToggle(2, "OffGCDasOffGCD")) then return "mirror_image 10"; end
            end
            -- potion
            if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") then
                if HR.CastSuggested(I.PotionofUnbridledFury) then return "prolonged_power 12"; end
            end
            -- frostbolt
            if S.Frostbolt:IsCastableP() then
                if HR.Cast(S.Frostbolt) then return "frostbolt 14"; end
            end
        end
    end
    local function Essences()
        -- focused_azerite_beam,if=buff.rune_of_power.down|active_enemies>3
        if S.FocusedAzeriteBeam:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) or EnemiesCount > 3) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- memory_of_lucid_dreams,if=active_enemies<5&(buff.icicles.stack<=1|!talent.glacial_spike.enabled)&cooldown.frozen_orb.remains>10
        if S.MemoryofLucidDreams:IsCastableP() and (EnemiesCount < 5 and (Player:BuffStackP(S.IciclesBuff) <= 1 or not S.GlacialSpike:IsAvailable()) and S.FrozenOrb:CooldownRemainsP() > 10) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- blood_of_the_enemy,if=(talent.glacial_spike.enabled&buff.icicles.stack=5&(buff.brain_freeze.react|prev_gcd.1.ebonbolt))|((active_enemies>3|!talent.glacial_spike.enabled)&(prev_gcd.1.frozen_orb|ground_aoe.frozen_orb.remains>5))
        if S.BloodoftheEnemy:IsCastableP() and ((S.GlacialSpike:IsAvailable() and Player:BuffStackP(S.IciclesBuff) == 5 and (Player:BuffP(S.BrainFreezeBuff) or Player:PrevGCDP(1, S.Ebonbolt))) or ((EnemiesCount > 3 or not S.GlacialSpike:IsAvailable()) and (Player:PrevGCDP(1, S.FrozenOrb) or Player:FrozenOrbGroundAoeRemains() > 5))) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- purifying_blast,if=buff.rune_of_power.down|active_enemies>3
        if S.PurifyingBlast:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) or EnemiesCount > 3) then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- ripple_in_space,if=buff.rune_of_power.down|active_enemies>3
        if S.RippleInSpace:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) or EnemiesCount > 3) then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
        -- concentrated_flame,line_cd=6,if=buff.rune_of_power.down
        if S.ConcentratedFlame:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff)) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up
        if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff)) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- worldvein_resonance,if=buff.rune_of_power.down|active_enemies>3
        if S.WorldveinResonance:IsCastableP() and (Player:BuffDownP(S.RuneofPowerBuff) or EnemiesCount > 3) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
    end
    local function Aoe()
        -- frozen_orb
        if S.FrozenOrb:IsCastableP() then
            if HR.Cast(S.FrozenOrb, Action.GetToggle(2, "OffGCDasOffGCD")) then return "frozen_orb 16"; end
        end
        -- blizzard
        if S.Blizzard:IsCastableP() then
            if HR.Cast(S.Blizzard) then return "blizzard 18"; end
        end
        -- call_action_list,name=essences
        local ShouldReturn = Essences(); if ShouldReturn then return ShouldReturn; end
        -- comet_storm
        if S.CometStorm:IsCastableP() then
            if HR.Cast(S.CometStorm) then return "comet_storm 20"; end
        end
        -- ice_nova
        if S.IceNova:IsCastableP() then
            if HR.Cast(S.IceNova) then return "ice_nova 22"; end
        end
        -- flurry,if=prev_gcd.1.ebonbolt|buff.brain_freeze.react&(prev_gcd.1.frostbolt&(buff.icicles.stack<4|!talent.glacial_spike.enabled)|prev_gcd.1.glacial_spike)
        if S.Flurry:IsCastableP() and Player:PrevGCDP(1, S.Ebonbolt) or Player:BuffP(S.BrainFreezeBuff) and (Player:PrevGCDP(1, S.Frostbolt) and (Player:BuffStackP(S.IciclesBuff) < 4 or not S.GlacialSpike:IsAvailable()) or Player:PrevGCDP(1, S.GlacialSpike)) then
            if HR.Cast(S.Flurry) then return "flurry 24"; end
        end
        -- ice_lance,if=buff.fingers_of_frost.react
        if S.IceLance:IsCastableP() and (bool(Player:BuffStackP(S.FingersofFrostBuff))) then
            if HR.Cast(S.IceLance) then return "ice_lance 38"; end
        end
        -- ray_of_frost
        if S.RayofFrost:IsCastableP() then
            if HR.Cast(S.RayofFrost) then return "ray_of_frost 42"; end
        end
        -- ebonbolt
        if S.Ebonbolt:IsCastableP() then
            if HR.Cast(S.Ebonbolt) then return "ebonbolt 44"; end
        end
        -- glacial_spike
        if S.GlacialSpike:IsCastableP() then
            if HR.Cast(S.GlacialSpike) then return "glacial_spike 46"; end
        end
        -- cone_of_cold
        if S.ConeofCold:IsCastableP() and (EnemiesCount >= 1) then
            if HR.Cast(S.ConeofCold) then return "cone_of_cold 48"; end
        end
        -- use_item,name=tidestorm_codex,if=buff.icy_veins.down&buff.rune_of_power.down
        if I.TidestormCodex:IsEquipReady() and TrinketON() and (Player:BuffDownP(S.IcyVeins) and Player:BuffDownP(S.RuneofPowerBuff)) then
            if HR.Cast(I.TidestormCodex) then return "tidestorm_codex 49"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=buff.icy_veins.down&buff.rune_of_power.down
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and TrinketON() and (Player:BuffDownP(S.IcyVeins) and Player:BuffDownP(S.RuneofPowerBuff)) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device aoe"; end
        end
        -- frostbolt
        if S.Frostbolt:IsCastableP() then
            if HR.Cast(S.Frostbolt) then return "frostbolt 50"; end
        end
        -- call_action_list,name=movement
        if (true) then
            local ShouldReturn = Movement(); if ShouldReturn then return ShouldReturn; end
        end
        -- ice_lance
        if S.IceLance:IsCastableP() then
            if HR.Cast(S.IceLance) then return "ice_lance 54"; end
        end
    end
    local function Cooldowns()
        -- guardian_of_azeroth
        if S.GuardianofAzeroth:IsCastableP() then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- icy_veins
        if S.IcyVeins:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.IcyVeins, Action.GetToggle(2, "OffGCDasOffGCD")) then return "icy_veins 56"; end
        end
        -- mirror_image
        if S.MirrorImage:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.MirrorImage, Action.GetToggle(2, "OffGCDasOffGCD")) then return "mirror_image 58"; end
        end
        -- rune_of_power,if=prev_gcd.1.frozen_orb|target.time_to_die>10+cast_time&target.time_to_die<20
        if S.RuneofPower:IsCastableP() and (Player:PrevGCDP(1, S.FrozenOrb) or Target:TimeToDie() > 10 + S.RuneofPower:CastTime() and Target:TimeToDie() < 20) then
            if HR.Cast(S.RuneofPower, Action.GetToggle(2, "OffGCDasOffGCD")) then return "rune_of_power 60"; end
        end
        -- call_action_list,name=talent_rop,if=talent.rune_of_power.enabled&active_enemies=1&cooldown.rune_of_power.full_recharge_time<cooldown.frozen_orb.remains
        if (S.RuneofPower:IsAvailable() and EnemiesCount == 1 and S.RuneofPower:FullRechargeTimeP() < S.FrozenOrb:CooldownRemainsP()) then
            local ShouldReturn = TalentRop(); if ShouldReturn then return ShouldReturn; end
        end
        -- potion,if=prev_gcd.1.icy_veins|target.time_to_die<30
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (Player:PrevGCDP(1, S.IcyVeins) or Target:TimeToDie() < 30) then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "prolonged_power 96"; end
        end
        -- use_item,name=balefire_branch,if=!talent.glacial_spike.enabled|buff.brain_freeze.react&prev_gcd.1.glacial_spike
        if I.BalefireBranch:IsEquipReady() and (not S.GlacialSpike:IsAvailable() or Player:BuffP(S.BrainFreezeBuff) and Player:PrevGCDP(1, S.GlacialSpike)) then
            if HR.Cast(I.BalefireBranch) then return "balefire_branch 98"; end
        end
        -- use_items
        -- use_item,name=pocketsized_computation_device,if=!cooldown.cyclotronic_blast.duration
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and TrinketON() then
            if HR.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device 100"; end
        end
        -- blood_fury
        if S.BloodFury:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 101"; end
        end
        -- berserking
        if S.Berserking:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 103"; end
        end
        -- lights_judgment
        if S.LightsJudgment:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 105"; end
        end
        -- fireblood
        if S.Fireblood:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 107"; end
        end
        -- ancestral_call
        if S.AncestralCall:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ancestral_call 109"; end
        end
    end
    local function Movement()
        -- blink,if=movement.distance>10
        if BlinkAny:IsCastableP() and (not Target:IsInRange(S.Frostbolt:MaximumRange())) then
            if HR.Cast(BlinkAny) then return "blink 111"; end
        end
        -- ice_floes,if=buff.ice_floes.down
        if S.IceFloes:IsCastableP() and (Player:BuffDownP(S.IceFloesBuff)) then
            if HR.Cast(S.IceFloes, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ice_floes 113"; end
        end
    end
    local function Single()
        -- ice_nova,if=cooldown.ice_nova.ready&debuff.winters_chill.up
        if S.IceNova:IsCastableP() and (S.IceNova:CooldownUpP() and Target:DebuffP(S.WintersChillDebuff)) then
            if HR.Cast(S.IceNova) then return "ice_nova 117"; end
        end
        -- flurry,if=talent.ebonbolt.enabled&prev_gcd.1.ebonbolt&buff.brain_freeze.react
        if S.Flurry:IsCastableP() and S.Ebonbolt:IsAvailable() and Player:PrevGCDP(1, S.Ebonbolt) and Player:BuffP(S.BrainFreezeBuff) then
            if HR.Cast(S.Flurry) then return "flurry 123"; end
        end
        -- flurry,if=prev_gcd.1.glacial_spike&buff.brain_freeze.react
        if S.Flurry:IsCastableP() and Player:PrevGCDP(1, S.GlacialSpike) and Player:BuffP(S.BrainFreezeBuff) then
            if HR.Cast(S.Flurry) then return "flurry 135"; end
        end
        -- flurry,if=prev_gcd.1.glacial_spike&buff.brain_freeze.react
        if S.Flurry:IsCastableP() and Player:BuffP(S.BrainFreezeBuff) then
            if HR.Cast(S.Flurry) then return "flurry 135"; end
        end
        -- call_action_list,name=essences
        local ShouldReturn = Essences(); if ShouldReturn then return ShouldReturn; end
        -- frozen_orb
        if S.FrozenOrb:IsCastableP() then
            if HR.Cast(S.FrozenOrb, Action.GetToggle(2, "OffGCDasOffGCD")) then return "frozen_orb 153"; end
        end
        -- blizzard,if=active_enemies>2|active_enemies>1&!talent.splitting_ice.enabled
        if S.Blizzard:IsCastableP() and (EnemiesCount > 2 or EnemiesCount > 1 and not S.SplittingIce:IsAvailable()) then
            if HR.Cast(S.Blizzard) then return "blizzard 155"; end
        end
        -- comet_storm
        if S.CometStorm:IsCastableP() then
            if HR.Cast(S.CometStorm) then return "comet_storm 179"; end
        end
        -- ebonbolt,if=buff.icicles.stack=5&!buff.brain_freeze.react
        if S.Ebonbolt:IsCastableP() and Player:BuffStackP(S.IciclesBuff) == 5 and Player:BuffDownP(S.BrainFreezeBuff) then
            if HR.Cast(S.Ebonbolt) then return "ebonbolt 181"; end
        end
        -- glacial_spike,if=buff.brain_freeze.react|prev_gcd.1.ebonbolt|talent.incanters_flow.enabled&cast_time+travel_time>incanters_flow_time_to.5.up&cast_time+travel_time<incanters_flow_time_to.4.down
        -- TODO: Add handling for the Incanter's Flow conditions
        if S.GlacialSpike:IsReadyP() and (Player:BuffP(S.BrainFreezeBuff) or Player:PrevGCDP(1, S.Ebonbolt)) then
            if HR.Cast(S.GlacialSpike) then return "glacial_spike 182"; end
        end
        -- ice_nova
        if S.IceNova:IsCastableP() then
            if HR.Cast(S.IceNova) then return "ice_nova 183"; end
        end
        -- use_item,name=tidestorm_codex,if=buff.icy_veins.down&buff.rune_of_power.down
        if I.TidestormCodex:IsEquipReady() and TrinketON() and (Player:BuffDownP(S.IcyVeins) and Player:BuffDownP(S.RuneofPowerBuff)) then
            if HR.Cast(I.TidestormCodex) then return "tidestorm_codex 218"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=buff.icy_veins.down&buff.rune_of_power.down
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and TrinketON() and (Player:BuffDownP(S.IcyVeins) and Player:BuffDownP(S.RuneofPowerBuff)) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device single"; end
        end
        -- Manual addition of Ice Lance with FoF proc if not using Glacial Spike
        if S.IceLance:IsCastableP() and (not S.GlacialSpike:IsAvailable() and Player:BuffP(S.FingersofFrostBuff)) then
            if HR.Cast(S.IceLance) then return "ice_lance 218"; end
        end
        -- frostbolt
        if S.Frostbolt:IsCastableP() then
            if HR.Cast(S.Frostbolt) then return "frostbolt 219"; end
        end
        -- call_action_list,name=movement
        -- if (true) then
        --     local ShouldReturn = Movement(); if ShouldReturn then return ShouldReturn; end
        -- end
        -- ice_lance
        if S.IceLance:IsCastableP() then
            if HR.Cast(S.IceLance) then return "ice_lance 223"; end
        end
    end
    local function TalentRop()
        -- rune_of_power,if=talent.glacial_spike.enabled&buff.icicles.stack=5&(buff.brain_freeze.react|talent.ebonbolt.enabled&cooldown.ebonbolt.remains<cast_time)
        if S.RuneofPower:IsCastableP() and (S.GlacialSpike:IsAvailable() and Player:BuffStackP(S.IciclesBuff) == 5 and (Player:BuffP(S.BrainFreezeBuff) or S.Ebonbolt:IsAvailable() and S.Ebonbolt:CooldownRemainsP() < S.RuneofPower:CastTime())) then
            if HR.Cast(S.RuneofPower, Action.GetToggle(2, "OffGCDasOffGCD")) then return "rune_of_power 225"; end
        end
        -- rune_of_power,if=!talent.glacial_spike.enabled&(talent.ebonbolt.enabled&cooldown.ebonbolt.remains<cast_time|talent.comet_storm.enabled&cooldown.comet_storm.remains<cast_time|talent.ray_of_frost.enabled&cooldown.ray_of_frost.remains<cast_time|charges_fractional>1.9)
        if S.RuneofPower:IsCastableP() and (not S.GlacialSpike:IsAvailable() and (S.Ebonbolt:IsAvailable() and S.Ebonbolt:CooldownRemainsP() < S.RuneofPower:CastTime() or S.CometStorm:IsAvailable() and S.CometStorm:CooldownRemainsP() < S.RuneofPower:CastTime() or S.RayofFrost:IsAvailable() and S.RayofFrost:CooldownRemainsP() < S.RuneofPower:CastTime() or S.RuneofPower:ChargesFractionalP() > 1.9)) then
            if HR.Cast(S.RuneofPower, Action.GetToggle(2, "OffGCDasOffGCD")) then return "rune_of_power 243"; end
        end
    end
	
	-- Emergency situations
	local function Emergency()
	    if S.IceBlock:IsReady() and Player:HealthPercentage() <= Action.GetToggle(2, "IceBlock") then
            if HR.Cast(S.IceBlock) then return "IceBlock 786"; end
        end

        if S.IceBarrier:IsReady() and not Player:Buff(S.IceBarrier) and  Player:HealthPercentage() <= Action.GetToggle(2, "IceBarrier") then
            if HR.Cast(S.Gla) then return "IceBarrier 786"; end
        end
	end
    
    -- Protect against interrupt of channeled spells
    if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
        if HR.Cast(S.Channeling) then return "" end
    end  
	-- call DBM precombat
   --if not Player:AffectingCombat() and Action.GetToggle(1, "DBM") and not Player:IsCasting() then
   --     local ShouldReturn = Precombat_DBM(); 
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
        -- call_action_list,name=cooldowns
        if (HR.CDsON()) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=aoe,if=active_enemies>3&talent.freezing_rain.enabled|active_enemies>4
        if (EnemiesCount > 3 and S.FreezingRain:IsAvailable() or EnemiesCount > 4) then
            local ShouldReturn = Aoe(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=single
        if (true) then
            local ShouldReturn = Single(); if ShouldReturn then return ShouldReturn; end
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

