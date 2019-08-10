--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_WARLOCK_DEMO] = {
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
    SummonPet                            = Action.Create({ Type = "Spell", ID = 30146}),
    InnerDemons                          = Action.Create({ Type = "Spell", ID = 267216}),
    Demonbolt                            = Action.Create({ Type = "Spell", ID = 264178}),
    SoulStrike                           = Action.Create({ Type = "Spell", ID = 264057}),
    DemonicConsumption                   = Action.Create({ Type = "Spell", ID = 267215}),
    HandofGuldan                         = Action.Create({ Type = "Spell", ID = 105174}),
    ShadowBolt                           = Action.Create({ Type = "Spell", ID = 686}),
    ExplosivePotential                   = Action.Create({ Type = "Spell", ID = 275395}),
    Implosion                            = Action.Create({ Type = "Spell", ID = 196277}),
    Doom                                 = Action.Create({ Type = "Spell", ID = 265412}),
    DemonicStrength                      = Action.Create({ Type = "Spell", ID = 267171}),
    BilescourgeBombers                   = Action.Create({ Type = "Spell", ID = 267211}),
    SummonVilefiend                      = Action.Create({ Type = "Spell", ID = 264119}),
    GrimoireFelguard                     = Action.Create({ Type = "Spell", ID = 111898}),
    CallDreadstalkers                    = Action.Create({ Type = "Spell", ID = 104316}),
    SummonDemonicTyrant                  = Action.Create({ Type = "Spell", ID = 265187}),
    DemonicCalling                       = Action.Create({ Type = "Spell", ID = 205145}),
    DoomDebuff                           = Action.Create({ Type = "Spell", ID = 265412}),
    NetherPortal                         = Action.Create({ Type = "Spell", ID = 267217}),
    PowerSiphon                          = Action.Create({ Type = "Spell", ID = 264130}),
    BalefulInvocation                    = Action.Create({ Type = "Spell", ID = 287059}),
    ShadowsBite                          = Action.Create({ Type = "Spell", ID = 272944}),    
    SpellLock                            = Action.Create({ Type = "Spell", ID = 19647}),
    AxeToss                              = Action.Create({ Type = "Spell", ID = 89766}),
    -- Defensive
    UnendingResolve                      = Action.Create({ Type = "Spell", ID = 104773     }),
    -- Misc
    BurningRush                          = Action.Create({ Type = "Spell", ID = 278727     }),
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    -- Buffs
    RecklessForceBuff                    = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),
	ShadowsBiteBuff                      = Action.Create({ Type = "Spell", ID = 272945}),
	NetherPortalBuff                     = Action.Create({ Type = "Spell", ID = 267218}),
    DemonicCallingBuff                   = Action.Create({ Type = "Spell", ID = 205146}),
    DemonicCoreBuff                      = Action.Create({ Type = "Spell", ID = 264173}),
    DemonicPowerBuff                     = Action.Create({ Type = "Spell", ID = 265273}),
    ExplosivePotentialBuff               = Action.Create({ Type = "Spell", ID = 275398}),	
    -- Debuffs 
    ShiverVenomDebuff                    = Action.Create({ Type = "Spell", ID = 301624}),
    -- Trinkets
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
	VisionofPerfection                    = Action.Create({ Type = "HeartOfAzeroth", ID = 296325, Hidden = true}),
    VisionofPerfection2                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299368, Hidden = true}),
    VisionofPerfection3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299370, Hidden = true}),
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_WARLOCK_DEMO)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_WARLOCK_DEMO], { __index = Action })

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
local EnemiesCount;

-- HeroLib EnemiesCount handler
local EnemyRanges = {40, 5}
local function UpdateRanges()
    for _, i in ipairs(EnemyRanges) do
        HL.GetEnemies(i);
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
    S.VisionofPerfection = S.VisionofPerfection2:IsAvailable() and S.VisionofPerfection2 or S.VisionofPerfection
    S.VisionofPerfection = S.VisionofPerfection3:IsAvailable() and S.VisionofPerfection3 or S.VisionofPerfection
    S.GuardianofAzeroth = S.GuardianofAzeroth2:IsAvailable() and S.GuardianofAzeroth2 or S.GuardianofAzeroth
    S.GuardianofAzeroth = S.GuardianofAzeroth3:IsAvailable() and S.GuardianofAzeroth3 or S.GuardianofAzeroth
end

-- Stuns
local StunInterrupts = {
  {S.AxeToss, "Cast Axe Toss (Interrupt)", function () return true; end},
};

local EnemyRanges = {40}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i);
  end
end

S.HandofGuldan:RegisterInFlight()
S.ConcentratedFlame:RegisterInFlight()

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

local function EvaluateCycleDoom198(TargetUnit)
  return TargetUnit:DebuffRefreshableCP(S.DoomDebuff)
end

local function GetEnemiesCount(range)
    -- Unit Update - Update differently depending on if splash data is being used
    if HR.AoEON() then
        if Action.GetToggle(2, "UseSplashData") then
		    -- Use splash data 
            HL.GetEnemies(range, nil, true, Target)
            return Cache.EnemiesCount[range]
        else
		    -- Else use CLEU events to get enemy count
            UpdateRanges()
            return active_enemies()
        end
    else
        return 1
    end
end

-- Demono pets function start
HL.GuardiansTable = {
    --{ID, name, spawnTime, ImpCasts, Duration, despawnTime}
    Pets = { 
    },
    ImpCount = 0,
    ImpCastsRemaing = 0,
    ImpTotalEnergy = 0,
    WildImpDuration = 0,
    FelguardDuration = 0,
    DreadstalkerDuration = 0,
    DemonicTyrantDuration = 0,
    VilefiendDuration = 0,
    -- Used for Wild Imps spawn prediction
    InnerDemonsNextCast = 0,
    ImpsSpawnedFromHoG = 0         
};

-- local for pets count & duration functions        
local PetDurations = {
    -- en, fr ,de ,ru
    ["Traqueffroi"] = 12.25,
    ["Dreadstalker"] = 12.25, 
    ["Зловещий охотник"] = 12.25, 
    ["Schreckenspirscher"] = 12.25, 
    ["Diablotin sauvage"] = 20, 
    ["Wild Imp"] = 20, 
    ["Дикий бес"] = 20, 
    ["Wildwichtel"] = 20,  
    ["Gangregarde"] = 28, 
    ["Felguard"] = 20, 
    ["Страж Скверны"] = 20, 
    ["Teufelswache"] = 20,  
    ["Tyran démoniaque"] = 15, 
    ["Demonic Tyrant"] = 20, 
    ["Демонический тиран"] = 20, 
    ["Dämonischer Tyrann"] = 20, 
    ["Démon abject"] = 15,
    ["Vilefiend"] = 20, 
    ["Мерзотень"] = 20, 
    ["Finsteres Scheusal"] = 20  
 };

 local PetTypes = {
    -- en, fr ,de ,ru
    ["Traqueffroi"] = true, 
    ["Dreadstalker"] = true, 
    ["Зловещий охотник"] = true, 
    ["Schreckenspirscher"] = true,
    ["Diablotin sauvage"]  = true, 
    ["Wild Imp"] = true, 
    ["Дикий бес"] = true, 
    ["Wildwichtel"] = true, 
    ["Gangregarde"] = true, 
    ["Felguard"] = true, 
    ["Страж Скверны"] = true, 
    ["Teufelswache"] = true,   
    ["Tyran démoniaque"] = true, 
    ["Demonic Tyrant"] = true, 
    ["Демонический тиран"] = true, 
    ["Dämonischer Tyrann"] = true,  
    ["Démon abject"] = true,
    ["Vilefiend"] = true, 
    ["Мерзотень"] = true, 
    ["Finsteres Scheusal"] = true  
};

local PetsData = {
    [98035] = {
        name = "Dreadstalker",
        duration = 12.25
    },
    [55659] = {
        name = "Wild Imp",
        duration = 20
    },
    [143622] = {
        name = "Wild Imp",
        duration = 20
    },
    [17252] = {
        name = "Felguard",
        duration = 28
    },
    [135002] = {
        name = "Demonic Tyrant",
        duration = 15
    },
    [135816] = {
        name = "Vilefiend",
        duration = 15
    },
};  
--------------------------
----- Demonology ---------
--------------------------
-- Update the GuardiansTable
function UpdatePetTable()
    for key, petTable in pairs(HL.GuardiansTable.Pets) do
        if petTable then
            -- Remove expired pets
            if HL.GetTime() >= petTable.despawnTime then
                if petTable.name == "Wild Imp" then
                    HL.GuardiansTable.ImpCount = HL.GuardiansTable.ImpCount - 1
                end
                if petTable.name == "Felguard" then
                    HL.GuardiansTable.FelguardDuration = 0
                elseif petTable.name == "Dreadstalker" then
                    HL.GuardiansTable.DreadstalkerDuration = 0
                elseif petTable.name == "Demonic Tyrant" then
                    HL.GuardiansTable.DemonicTyrantDuration = 0
                elseif petTable.name == "Vilefiend" then
                    HL.GuardiansTable.VilefiendDuration = 0
                elseif petTable.name == "Wild Imp" then
                    HL.GuardiansTable.WildImpDuration = 0
                    HL.GuardiansTable.ImpCastsRemaing = HL.GuardiansTable.ImpCastsRemaing - petTable.ImpCasts
                    HL.GuardiansTable.ImpTotalEnergy =  HL.GuardiansTable.ImpCastsRemaing * 20
                end
                    HL.GuardiansTable.Pets[key] = nil
            end
        end
        -- Remove any imp that has casted all of its bolts
        if petTable.ImpCasts <= 0 and  petTable.WildImpFrozenEnd < 1 then
            HL.GuardiansTable.ImpCount = HL.GuardiansTable.ImpCount - 1
            HL.GuardiansTable.Pets[key] = nil
        end
        -- Update Durations
        if HL.GetTime() <= petTable.despawnTime then
            petTable.Duration = petTable.despawnTime - HL.GetTime()
            if petTable.name == "Felguard" then
                HL.GuardiansTable.FelguardDuration = petTable.Duration
            elseif petTable.name == "Dreadstalker" then
                HL.GuardiansTable.DreadstalkerDuration = petTable.Duration
            elseif petTable.name == "Demonic Tyrant" then
                HL.GuardiansTable.DemonicTyrantDuration = petTable.Duration
            elseif petTable.name == "Vilefiend" then
                HL.GuardiansTable.VilefiendDuration = petTable.Duration
            elseif petTable.name == "Wild Imp" then
                HL.GuardiansTable.WildImpDuration = petTable.Duration
                if petTable.WildImpFrozenEnd ~= 0 then
                    local ImpTime =  math.floor(petTable.WildImpFrozenEnd - HL.GetTime() + 0.5)
                    if ImpTime < 1 then 
                        petTable.WildImpFrozenEnd = 0 
                    end
                end
            end    
            -- Add Time to pets  
            if TyrantSpawed then
                if PetsData[UnitPetID] and PetsData[UnitPetID].name == "Demonic Tyrant" then
                    for key, petTable in pairs(HL.GuardiansTable.Pets) do
                        if petTable then
                            petTable.spawnTime = HL.GetTime() + petTable.Duration + 15 - PetDurations[petTable.name]
                            petTable.despawnTime = petTable.spawnTime + PetDurations[petTable.name]
                            if petTable.name == "Wild Imp" then
                                petTable.WildImpFrozenEnd = HL.GetTime() + 15
                            end
                        end
                    end
                end
            end
        end
        if TyrantSpawed then 
            TyrantSpawed = false 
        end  
    end    
end    

-- Add demon to table
HL:RegisterForSelfCombatEvent(
    function (...)
    --timestamp,Event,_,_,_,_,_,UnitPetGUID,petName,_,_,SpellID=select(1,...)
    local timestamp,Event,_,_,_,_,_,UnitPetGUID,_,_,_,SpellID=select(1,...)
    local _, _, _, _, _, _, _, UnitPetID = string.find(UnitPetGUID, "(%S+)-(%d+)-(%d+)-(%d+)-(%d+)-(%d+)-(%S+)")
    UnitPetID = tonumber(UnitPetID)
                
    -- Add pet
    if (UnitPetGUID ~= UnitGUID("pet") and Event == "SPELL_SUMMON" and PetsData[UnitPetID]) then
        local summonedPet = PetsData[UnitPetID]
        local petTable = {
            ID = UnitPetGUID,
            name = summonedPet.name,
            spawnTime = HL.GetTime(),
            ImpCasts = 5,
            Duration = summonedPet.duration,
            WildImpFrozenEnd = 0,
            despawnTime = HL.GetTime() + tonumber(summonedPet.duration)
        }
        
		table.insert(HL.GuardiansTable.Pets,petTable)
            if summonedPet.name == "Wild Imp" then
                HL.GuardiansTable.ImpCount = HL.GuardiansTable.ImpCount + 1
                HL.GuardiansTable.ImpCastsRemaing = HL.GuardiansTable.ImpCastsRemaing + 5
                HL.GuardiansTable.WildImpDuration = PetDurations[petName]
                petTable.WildImpFrozenEnd = 0 
            elseif summonedPet.name == "Felguard" then
                HL.GuardiansTable.FelguardDuration = PetDurations[petName]
            elseif summonedPet.name == "Dreadstalker" then
                HL.GuardiansTable.DreadstalkerDuration = PetDurations[petName]
            elseif summonedPet.name == "Demonic Tyrant" then
                if not TyrantSpawed then TyrantSpawed = true  end
                    HL.GuardiansTable.DemonicTyrantDuration = PetDurations[petName]
                    UpdatePetTable()
            elseif summonedPet.name == "Vilefiend" then
                HL.GuardiansTable.VilefiendDuration = PetDurations[petName]   
            end
        end        
        
        -- Update when next Wild Imp will spawn from Inner Demons talent
        if UnitPetID == 143622 then
            HL.GuardiansTable.InnerDemonsNextCast = HL.GetTime() + 12
        end

        -- Updates how many Wild Imps have yet to spawn from HoG cast
        if UnitPetID == 55659 and HL.GuardiansTable.ImpsSpawnedFromHoG > 0 then
            HL.GuardiansTable.ImpsSpawnedFromHoG = HL.GuardiansTable.ImpsSpawnedFromHoG - 1
        end
        
        -- Update the pet table
        UpdatePetTable()
    end
, "SPELL_SUMMON"
);
    
-- Decrement ImpCasts and Implosion Listener
HL:RegisterForCombatEvent(
    function (...)
    --local timestamp,Event,_,SourceGUID,SourceName,_,_,UnitPetGUID,petName,_,_,SpellID = select(4, ...);
    --local timestamp,Event,_,SourceGUID,SourceName,_,_,UnitPetGUID,petName,_,_,spell,SpellName=select(1,...)
    local SourceGUID,_,_,_,UnitPetGUID,_,_,_,SpellID = select(4, ...);
        
    -- Check for imp bolt casts
    if SpellID == 104318 then
        for key, petTable in pairs(HL.GuardiansTable.Pets) do
            if SourceGUID == petTable.ID then
                if  petTable.WildImpFrozenEnd < 1 then
                    petTable.ImpCasts = petTable.ImpCasts - 1
                    HL.GuardiansTable.ImpCastsRemaing = HL.GuardiansTable.ImpCastsRemaing - 1
                end
            end
        end
        HL.GuardiansTable.ImpTotalEnergy =  HL.GuardiansTable.ImpCastsRemaing * 20
    end
                
    -- Clear the imp table upon Implosion cast or Demonic Tyrant cast if Demonic Consumption is talented
    if SourceGUID == Player:GUID() and (SpellID == 196277 or (SpellID == 265187 and Spell(267215):IsAvailable())) then
        for key, petTable in pairs(HL.GuardiansTable.Pets) do
            if petTable.name == "Wild Imp" then
                HL.GuardiansTable.Pets[key] = nil
            end
        end
        HL.GuardiansTable.ImpCount = 0
        HL.GuardiansTable.ImpCastsRemaing = 0
        HL.GuardiansTable.ImpTotalEnergy = 0
    end
    -- Update the imp table
        UpdatePetTable()
    end
, "SPELL_CAST_SUCCESS"
);

-- Keep track how many Soul Shards we have
local SoulShards = 0;
function UpdateSoulShards()
        SoulShards = Player:SoulShards()
end

-- On Successful HoG cast add how many Imps will spawn
HL:RegisterForSelfCombatEvent(
    function(_, event, _, _, _, _, _, _, _, _, _, SpellID)
        if SpellID == 105174 then
            HL.GuardiansTable.ImpsSpawnedFromHoG = HL.GuardiansTable.ImpsSpawnedFromHoG + (SoulShards >= 3 and 3 or SoulShards)
        end
    end
, "SPELL_CAST_SUCCESS"
);

local function ImpsSpawnedDuring(miliseconds)
  local ImpSpawned = 0
  local SpellCastTime = ( miliseconds / 1000 ) * Player:SpellHaste()

  if HL.GetTime() <= HL.GuardiansTable.InnerDemonsNextCast and (HL.GetTime() + SpellCastTime) >= HL.GuardiansTable.InnerDemonsNextCast then
        ImpSpawned = ImpSpawned + 1
  end

  if Player:IsCasting(S.HandOfGuldan) then
        ImpSpawned = ImpSpawned + (Player:SoulShards() >= 3 and 3 or Player:SoulShards())
  end

  ImpSpawned = ImpSpawned +  HL.GuardiansTable.ImpsSpawnedFromHoG

  return ImpSpawned
end

-- Pets reference ---
-- Get if the pet are invoked. Parameter = true if you also want to test big pets
local function IsPetInvoked (testBigPets)
  testBigPets = testBigPets or false
  return S.Suffering:IsLearned() or S.SpellLock:IsLearned() or S.Whiplash:IsLearned() or S.CauterizeMaster:IsLearned() or S.PetStun:IsLearned() or (testBigPets and (S.ShadowLock:IsLearned() or S.MeteorStrike:IsLearned()))
end    
    
-- Function to check for imp count
local function WildImpsCount()
    return HL.GuardiansTable.ImpCount or 0
end

-- Function to check for remaining Dreadstalker duration
local function DreadStalkersTime()
    return HL.GuardiansTable.DreadstalkerDuration or 0
end

-- Function to check for remaining Grimoire Felguard duration
local function GrimoireFelguardTime()
    return HL.GuardiansTable.FelguardDuration or 0
end

-- Function to check for Demonic Tyrant duration
local function DemonicTyrantTime()
    return HL.GuardiansTable.DemonicTyrantDuration or 0
end         

-- Function to check Total active Imp Energy (More accurate than imp count for "Demonic Consumption" talent)
local function WildImpTotalEnergy()
    return HL.GuardiansTable.ImpTotalEnergy or 0
end

-- Check for Real Tyran summoned since VoP randomly summon a Tyran for 35% of its base duration
local function RealTyranIsActive()
    if DemonicTyrantTime() > 5.25 then
        return true
    else
        return false
    end
end

-- SummonDemonicTyrant checker
local function MegaTyrant()
    
    if WildImpTotalEnergy() >= 1000 then 
        return true
    end
    
    if WildImpsCount() >= 6 and not Player:BuffP(S.DemonicCoreBuff) then
        return true
    end
    
    if WildImpsCount() + ImpsSpawnedDuring(2000) >= 10 then
        return true
    end        
    
    return false    
end
    
-- Calculate future shard count
local function FutureShard()
    local Shard = Player:SoulShards()
    if not Player:IsCasting() then
        return Shard
    else
        if Player:IsCasting(S.NetherPortal) then
            return Shard - 1
        elseif Player:IsCasting(S.CallDreadStalkers) and not Player:BuffP(S.DemonicCallingBuff) then
            return Shard - 2
        elseif Player:IsCasting(S.BilescourgeBombers) then
            return Shard - 2
        elseif Player:IsCasting(S.SummonVilefiend) then
            return Shard - 1
        elseif Player:IsCasting(S.SummonFelguard) then
            return Shard - 1
        elseif Player:IsCasting(S.GrimoireFelguard) then
            return Shard - 1
        elseif Player:IsCasting(S.CallDreadStalkers) and Player:BuffP(S.DemonicCallingBuff) then
            return Shard - 1
        elseif Player:IsCasting(S.SummonDemonicTyrant) and S.BalefulInvocation:AzeriteEnabled() then
            return 5
        elseif Player:IsCasting(S.HandOfGuldan) then
            if Shard > 3 then
                return Shard - 3
            else
                return 0
            end
        elseif Player:IsCasting(S.Demonbolt) then
            if Shard >= 4 then
                return 5
            else
                return Shard + 2
            end
        elseif Player:IsCasting(S.ShadowBolt) then
            if Shard == 5 then
                return Shard
            else
                return Shard + 1
            end
        elseif Player:IsCasting(S.SoulStrike) then
            if Shard == 5 then
                return Shard
            else
                return Shard + 1
            end
        else
            return Shard
        end
    end
end



--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    EnemiesCount = GetEnemiesCount(8)
    HL.GetEnemies(40, true) -- To populate Cache.Enemies[40] for CastCycles
    UpdatePetTable()
    UpdateSoulShards()
    DetermineEssenceRanks()
	
	if Player:IsCasting() or Player:IsChanneling() then
	    ShouldStop = true
	else
	    ShouldStop = false
	end
    
      Precombat = function()
    -- flask
    -- food
    -- augmentation
    -- summon_pet
    if S.SummonPet:IsReadyP() and not Pet:Exists() then
        if HR.Cast(S.SummonPet, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_pet 3"; end
    end
    -- inner_demons,if=talent.inner_demons.enabled
    -- snapshot_stats
    --if Everyone.TargetIsValid() then
        -- potion
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") then
          if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 10"; end
        end
        -- demonbolt
        if S.Demonbolt:IsCastableP() then
          if HR.Cast(S.Demonbolt) then return "demonbolt 12"; end
        end
    --end
  end
  BuildAShard = function()
    -- memory_of_lucid_dreams,if=soul_shard<2
    if S.MemoryofLucidDreams:IsCastableP() and (Player:SoulShardsP() < 2) then
        if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams build_a_shard"; end
    end
    -- soul_strike,if=!talent.demonic_consumption.enabled|time>15|prev_gcd.1.hand_of_guldan&!buff.bloodlust.remains
    if S.SoulStrike:IsCastableP() and (not S.DemonicConsumption:IsAvailable() or HL.CombatTime() > 15 or Player:PrevGCDP(1, S.HandofGuldan) and not Player:HasHeroism()) then
        if HR.Cast(S.SoulStrike) then return "soul_strike 14"; end
    end
    -- shadow_bolt
    if S.ShadowBolt:IsCastableP() then
        if HR.Cast(S.ShadowBolt) then return "shadow_bolt 20"; end
    end
  end
  Opener = function()
    -- hand_of_guldan,line_cd=30,if=azerite.explosive_potential.enabled
    if S.HandofGuldan:IsReadyP() and HL.CombatTime() < 2 and not Player:PrevGCDP(1, S.HandOfGuldan) and Player:SoulShardsP() > 2 and (S.ExplosivePotential:AzeriteEnabled()) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 30"; end
    end
    -- implosion,if=azerite.explosive_potential.enabled&buff.wild_imps.stack>2&buff.explosive_potential.down
    if S.Implosion:IsReadyP() and (S.ExplosivePotential:AzeriteEnabled() and WildImpsCount() > 2 and Player:BuffDownP(S.ExplosivePotentialBuff)) then
        if HR.Cast(S.Implosion) then return "implosion 31"; end
    end
    -- doom,line_cd=30
    -- Manually added DebuffDownP check to avoid getting stuck at this line
    if S.Doom:IsCastableP() and (Target:DebuffDownP(S.DoomDebuff)) then
        if HR.Cast(S.Doom) then return "doom 32"; end
    end
    -- guardian_of_azeroth
    if S.GuardianofAzeroth:IsCastableP() then
        if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 33"; end
    end
    -- hand_of_guldan,if=prev_gcd.1.hand_of_guldan&soul_shard>0&prev_gcd.2.soul_strike
    if S.HandofGuldan:IsReadyP() and (Player:PrevGCDP(1, S.HandofGuldan) and Player:SoulShardsP() > 0 and Player:PrevGCDP(2, S.SoulStrike)) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 34"; end
    end
    -- demonic_strength,if=prev_gcd.1.hand_of_guldan&!prev_gcd.2.hand_of_guldan&(buff.wild_imps.stack>1&action.hand_of_guldan.in_flight)
    if S.DemonicStrength:IsCastableP() and (Player:PrevGCDP(1, S.HandofGuldan) and not Player:PrevGCDP(2, S.HandofGuldan) and (WildImpsCount() > 1 and S.HandofGuldan:InFlight())) then
        if HR.Cast(S.DemonicStrength, Action.GetToggle(2, "OffGCDasOffGCD")) then return "demonic_strength 35"; end
    end
    -- bilescourge_bombers
    if S.BilescourgeBombers:IsReadyP() then
        if HR.Cast(S.BilescourgeBombers) then return "bilescourge_bombers 36"; end
    end
    -- soul_strike,line_cd=30,if=!buff.bloodlust.remains|time>5&prev_gcd.1.hand_of_guldan
    if S.SoulStrike:IsCastableP() and (not Player:HasHeroism() or HL.CombatTime() > 5 and Player:PrevGCDP(1, S.HandofGuldan)) then
        if HR.Cast(S.SoulStrike) then return "soul_strike 37"; end
    end
    -- summon_vilefiend,if=soul_shard=5
    if S.SummonVilefiend:IsReadyP() and (Player:SoulShardsP() == 5) then
        if HR.Cast(S.SummonVilefiend) then return "summon_vilefiend 38"; end
    end
    -- grimoire_felguard,if=soul_shard=5
    if S.GrimoireFelguard:IsReadyP() and (Player:SoulShardsP() == 5) then
        if HR.Cast(S.GrimoireFelguard, Action.GetToggle(2, "OffGCDasOffGCD")) then return "grimoire_felguard 39"; end
    end
    -- call_dreadstalkers,if=soul_shard=5
    if S.CallDreadstalkers:IsReadyP() and (Player:SoulShardsP() == 5) then
        if HR.Cast(S.CallDreadstalkers) then return "call_dreadstalkers 40"; end
    end
    -- hand_of_guldan,if=soul_shard=5
    if S.HandofGuldan:IsReadyP() and (Player:SoulShardsP() == 5) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 41"; end
    end
    -- hand_of_guldan,if=soul_shard>=3&prev_gcd.2.hand_of_guldan&time>5&(prev_gcd.1.soul_strike|!talent.soul_strike.enabled&prev_gcd.1.shadow_bolt)
    if S.HandofGuldan:IsReadyP() and (Player:SoulShardsP() >= 3 and Player:PrevGCDP(2, S.HandofGuldan) and HL.CombatTime() > 5 and (Player:PrevGCDP(1, S.SoulStrike) or not S.SoulStrike:IsAvailable() and Player:PrevGCDP(1, S.ShadowBolt))) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 42"; end
    end
    -- summon_demonic_tyrant,if=prev_gcd.1.demonic_strength|prev_gcd.1.hand_of_guldan&prev_gcd.2.hand_of_guldan|!talent.demonic_strength.enabled&buff.wild_imps.stack+imps_spawned_during.2000%spell_haste>=6
    if S.SummonDemonicTyrant:IsReadyP() and (Player:PrevGCDP(1, S.DemonicStrength) or Player:PrevGCDP(1, S.HandofGuldan) and Player:PrevGCDP(2, S.HandofGuldan) or not S.DemonicStrength:IsAvailable() and WildImpsCount() + ImpsSpawnedDuring(S.SummonDemonicTyrant:CastTime()) >= 6) then
        if HR.Cast(S.SummonDemonicTyrant, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_demonic_tyrant 43"; end
    end
    -- demonbolt,if=soul_shard<=3&buff.demonic_core.remains
    if S.Demonbolt:IsCastableP() and (Player:SoulShardsP() <= 3 and Player:BuffP(S.DemonicCoreBuff)) then
        if HR.Cast(S.Demonbolt) then return "demonbolt 44"; end
    end
    -- call_action_list,name=build_a_shard
    if (true) then
        local ShouldReturn = BuildAShard(); if ShouldReturn then return ShouldReturn; end
    end
  end
  Implosion = function()
    -- implosion,if=(buff.wild_imps.stack>=6&(soul_shard<3|prev_gcd.1.call_dreadstalkers|buff.wild_imps.stack>=9|prev_gcd.1.bilescourge_bombers|(!prev_gcd.1.hand_of_guldan&!prev_gcd.2.hand_of_guldan))&!prev_gcd.1.hand_of_guldan&!prev_gcd.2.hand_of_guldan&buff.demonic_power.down)|(time_to_die<3&buff.wild_imps.stack>0)|(prev_gcd.2.call_dreadstalkers&buff.wild_imps.stack>2&!talent.demonic_calling.enabled)
    if S.Implosion:IsCastableP() and ((WildImpsCount() >= 6 and (Player:SoulShardsP() < 3 or Player:PrevGCDP(1, S.CallDreadstalkers) or WildImpsCount() >= 9 or Player:PrevGCDP(1, S.BilescourgeBombers) or (not Player:PrevGCDP(1, S.HandofGuldan) and not Player:PrevGCDP(2, S.HandofGuldan))) and not Player:PrevGCDP(1, S.HandofGuldan) and not Player:PrevGCDP(2, S.HandofGuldan) and Player:BuffDownP(S.DemonicPowerBuff)) or (Target:TimeToDie() < 3 and WildImpsCount() > 0) or (Player:PrevGCDP(2, S.CallDreadstalkers) and WildImpsCount() > 2 and not S.DemonicCalling:IsAvailable())) then
        if HR.Cast(S.Implosion) then return "implosion 96"; end
    end
    -- grimoire_felguard,if=cooldown.summon_demonic_tyrant.remains<13|!equipped.132369
    if S.GrimoireFelguard:IsReadyP() and (S.SummonDemonicTyrant:CooldownRemainsP() < 13) then
        if HR.Cast(S.GrimoireFelguard, Action.GetToggle(2, "OffGCDasOffGCD")) then return "grimoire_felguard 128"; end
    end
    -- call_dreadstalkers,if=(cooldown.summon_demonic_tyrant.remains<9&buff.demonic_calling.remains)|(cooldown.summon_demonic_tyrant.remains<11&!buff.demonic_calling.remains)|cooldown.summon_demonic_tyrant.remains>14
    if S.CallDreadstalkers:IsReadyP() and ((S.SummonDemonicTyrant:CooldownRemainsP() < 9 and bool(Player:BuffRemainsP(S.DemonicCallingBuff))) or (S.SummonDemonicTyrant:CooldownRemainsP() < 11 and not bool(Player:BuffRemainsP(S.DemonicCallingBuff))) or S.SummonDemonicTyrant:CooldownRemainsP() > 14) then
        if HR.Cast(S.CallDreadstalkers) then return "call_dreadstalkers 134"; end
    end
    -- summon_demonic_tyrant
    if S.SummonDemonicTyrant:IsCastableP() then
        if HR.Cast(S.SummonDemonicTyrant, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_demonic_tyrant 146"; end
    end
    -- hand_of_guldan,if=soul_shard>=5
    if S.HandofGuldan:IsCastableP() and (Player:SoulShardsP() >= 5) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 148"; end
    end
    -- hand_of_guldan,if=soul_shard>=3&(((prev_gcd.2.hand_of_guldan|buff.wild_imps.stack>=3)&buff.wild_imps.stack<9)|cooldown.summon_demonic_tyrant.remains<=gcd*2|buff.demonic_power.remains>gcd*2)
    if S.HandofGuldan:IsCastableP() and (Player:SoulShardsP() >= 3 and (((Player:PrevGCDP(2, S.HandofGuldan) or WildImpsCount() >= 3) and WildImpsCount() < 9) or S.SummonDemonicTyrant:CooldownRemainsP() <= Player:GCD() * 2 or Player:BuffRemainsP(S.DemonicPowerBuff) > Player:GCD() * 2)) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 150"; end
    end
    -- demonbolt,if=prev_gcd.1.hand_of_guldan&soul_shard>=1&(buff.wild_imps.stack<=3|prev_gcd.3.hand_of_guldan)&soul_shard<4&buff.demonic_core.up
    if S.Demonbolt:IsCastableP() and (Player:PrevGCDP(1, S.HandofGuldan) and Player:SoulShardsP() >= 1 and (WildImpsCount() <= 3 or Player:PrevGCDP(3, S.HandofGuldan)) and Player:SoulShardsP() < 4 and Player:BuffP(S.DemonicCoreBuff)) then
        if HR.Cast(S.Demonbolt) then return "demonbolt 162"; end
    end
    -- summon_vilefiend,if=(cooldown.summon_demonic_tyrant.remains>40&spell_targets.implosion<=2)|cooldown.summon_demonic_tyrant.remains<12
    if S.SummonVilefiend:IsReadyP() and ((S.SummonDemonicTyrant:CooldownRemainsP() > 40 and EnemiesCount <= 2) or S.SummonDemonicTyrant:CooldownRemainsP() < 12) then
        if HR.Cast(S.SummonVilefiend) then return "summon_vilefiend 172"; end
    end
    -- bilescourge_bombers,if=cooldown.summon_demonic_tyrant.remains>9
    if S.BilescourgeBombers:IsReadyP() and (S.SummonDemonicTyrant:CooldownRemainsP() > 9) then
        if HR.Cast(S.BilescourgeBombers) then return "bilescourge_bombers 178"; end
    end
    -- focused_azerite_beam
    if S.FocusedAzeriteBeam:IsCastableP() then
        if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam implosion"; end
    end
    -- purifying_blast
    if S.PurifyingBlast:IsCastableP() then
        if HR.Cast(S.PurifyingBlast) then return "purifying_blast implosion"; end
    end
    -- blood_of_the_enemy
    if S.BloodoftheEnemy:IsCastableP() then
        if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy implosion"; end
    end
    -- concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight&spell_targets.implosion<5
    if S.ConcentratedFlame:IsCastableP() and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight() and EnemiesCount < 5) then
        if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame implosion"; end
    end
    -- soul_strike,if=soul_shard<5&buff.demonic_core.stack<=2
    if S.SoulStrike:IsCastableP() and (Player:SoulShardsP() < 5 and Player:BuffStackP(S.DemonicCoreBuff) <= 2) then
        if HR.Cast(S.SoulStrike) then return "soul_strike 182"; end
    end
    -- demonbolt,if=soul_shard<=3&buff.demonic_core.up&(buff.demonic_core.stack>=3|buff.demonic_core.remains<=gcd*5.7)
    if S.Demonbolt:IsCastableP() and (Player:SoulShardsP() <= 3 and Player:BuffP(S.DemonicCoreBuff) and (Player:BuffStackP(S.DemonicCoreBuff) >= 3 or Player:BuffRemainsP(S.DemonicCoreBuff) <= Player:GCD() * 5.7)) then
        if HR.Cast(S.Demonbolt) then return "demonbolt 186"; end
    end
    -- doom,cycle_targets=1,max_cycle_targets=7,if=refreshable
    if S.Doom:IsCastableP() and EvaluateCycleDoom198(Target) then
        if HR.CastCycle(S.Doom) then return "doom 206" end
    end
    -- call_action_list,name=build_a_shard
    if (true) then
        local ShouldReturn = BuildAShard(); if ShouldReturn then return ShouldReturn; end
    end
  end
  NetherPortal = function()
    -- call_action_list,name=nether_portal_building,if=cooldown.nether_portal.remains<20
    if (S.NetherPortal:CooldownRemainsP() < 20) then
        local ShouldReturn = NetherPortalBuilding(); if ShouldReturn then return ShouldReturn; end
    end
    -- call_action_list,name=nether_portal_active,if=cooldown.nether_portal.remains>165
    if (S.NetherPortal:CooldownRemainsP() > 165) then
        local ShouldReturn = NetherPortalActive(); if ShouldReturn then return ShouldReturn; end
    end
  end
  NetherPortalActive = function()
    -- bilescourge_bombers
    if S.BilescourgeBombers:IsReadyP() then
        if HR.Cast(S.BilescourgeBombers) then return "bilescourge_bombers 217"; end
    end
    -- grimoire_felguard,if=cooldown.summon_demonic_tyrant.remains<13|!equipped.132369
    if S.GrimoireFelguard:IsReadyP() and (S.SummonDemonicTyrant:CooldownRemainsP() < 13) then
        if HR.Cast(S.GrimoireFelguard, Action.GetToggle(2, "OffGCDasOffGCD")) then return "grimoire_felguard 219"; end
    end
    -- summon_vilefiend,if=cooldown.summon_demonic_tyrant.remains>40|cooldown.summon_demonic_tyrant.remains<12
    if S.SummonVilefiend:IsReadyP() and (S.SummonDemonicTyrant:CooldownRemainsP() > 40 or S.SummonDemonicTyrant:CooldownRemainsP() < 12) then
        if HR.Cast(S.SummonVilefiend) then return "summon_vilefiend 225"; end
    end
    -- call_dreadstalkers,if=(cooldown.summon_demonic_tyrant.remains<9&buff.demonic_calling.remains)|(cooldown.summon_demonic_tyrant.remains<11&!buff.demonic_calling.remains)|cooldown.summon_demonic_tyrant.remains>14
    if S.CallDreadstalkers:IsReadyP() and ((S.SummonDemonicTyrant:CooldownRemainsP() < 9 and bool(Player:BuffRemainsP(S.DemonicCallingBuff))) or (S.SummonDemonicTyrant:CooldownRemainsP() < 11 and not bool(Player:BuffRemainsP(S.DemonicCallingBuff))) or S.SummonDemonicTyrant:CooldownRemainsP() > 14) then
        if HR.Cast(S.CallDreadstalkers) then return "call_dreadstalkers 231"; end
    end
    -- call_action_list,name=build_a_shard,if=soul_shard=1&(cooldown.call_dreadstalkers.remains<action.shadow_bolt.cast_time|(talent.bilescourge_bombers.enabled&cooldown.bilescourge_bombers.remains<action.shadow_bolt.cast_time))
    if (Player:SoulShardsP() == 1 and (S.CallDreadstalkers:CooldownRemainsP() < S.ShadowBolt:CastTime() or (S.BilescourgeBombers:IsAvailable() and S.BilescourgeBombers:CooldownRemainsP() < S.ShadowBolt:CastTime()))) then
        local ShouldReturn = BuildAShard(); if ShouldReturn then return ShouldReturn; end
    end
    -- hand_of_guldan,if=((cooldown.call_dreadstalkers.remains>action.demonbolt.cast_time)&(cooldown.call_dreadstalkers.remains>action.shadow_bolt.cast_time))&cooldown.nether_portal.remains>(165+action.hand_of_guldan.cast_time)
    if S.HandofGuldan:IsCastableP() and (Player:SoulShardsP() > 0 and ((S.CallDreadstalkers:CooldownRemainsP() > S.Demonbolt:CastTime()) and (S.CallDreadstalkers:CooldownRemainsP() > S.ShadowBolt:CastTime())) and S.NetherPortal:CooldownRemainsP() > (165 + S.HandofGuldan:CastTime())) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 259"; end
    end
    -- summon_demonic_tyrant,if=buff.nether_portal.remains<5&soul_shard=0
    if S.SummonDemonicTyrant:IsCastableP() and (Player:BuffRemainsP(S.NetherPortalBuff) < 5 and Player:SoulShardsP() == 0) then
        if HR.Cast(S.SummonDemonicTyrant, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_demonic_tyrant 279"; end
    end
    -- summon_demonic_tyrant,if=buff.nether_portal.remains<action.summon_demonic_tyrant.cast_time+0.5
    if S.SummonDemonicTyrant:IsCastableP() and (Player:BuffRemainsP(S.NetherPortalBuff) < S.SummonDemonicTyrant:CastTime() + 0.5) then
        if HR.Cast(S.SummonDemonicTyrant, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_demonic_tyrant 283"; end
    end
    -- demonbolt,if=buff.demonic_core.up&soul_shard<=3
    if S.Demonbolt:IsCastableP() and (Player:BuffP(S.DemonicCoreBuff) and Player:SoulShardsP() <= 3) then
        if HR.Cast(S.Demonbolt) then return "demonbolt 291"; end
    end
    -- call_action_list,name=build_a_shard
    if (true) then
        local ShouldReturn = BuildAShard(); if ShouldReturn then return ShouldReturn; end
    end
  end
  NetherPortalBuilding = function()
    -- use_item,name=azsharas_font_of_power,if=cooldown.nether_portal.remains<=5*spell_haste
    if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (S.NetherPortal:CooldownRemainsP() <= 5 * Player:SpellHaste()) then
        if HR.Cast(I.AzsharasFontofPower) then reutrn "azsharas_font_of_power 295"; end
    end
    -- guardian_of_azeroth,if=!cooldown.nether_portal.remains&soul_shard>=5
    if S.GuardianofAzeroth:IsCastableP() and (S.NetherPortal:CooldownUpP() and Player:SoulShardsP() >= 5) then
        if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 296"; end
    end
    -- nether_portal,if=soul_shard>=5
    if S.NetherPortal:IsReadyP() and (Player:SoulShardsP() >= 5) then
        if HR.Cast(S.NetherPortal, Action.GetToggle(2, "OffGCDasOffGCD")) then return "nether_portal 297"; end
    end
    -- call_dreadstalkers,if=time>=30
    if S.CallDreadstalkers:IsReadyP() and (HL.CombatTime() >= 30) then
        if HR.Cast(S.CallDreadstalkers) then return "call_dreadstalkers 303"; end
    end
    -- hand_of_guldan,if=time>=30&cooldown.call_dreadstalkers.remains>18&soul_shard>=3
    if S.HandofGuldan:IsCastableP() and (HL.CombatTime() >= 30 and S.CallDreadstalkers:CooldownRemainsP() > 18 and Player:SoulShardsP() >= 3) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 305"; end
    end
    -- power_siphon,if=time>=30&buff.wild_imps.stack>=2&buff.demonic_core.stack<=2&buff.demonic_power.down&soul_shard>=3
    if S.PowerSiphon:IsCastableP() and (HL.CombatTime() >= 30 and WildImpsCount() >= 2 and Player:BuffStackP(S.DemonicCoreBuff) <= 2 and Player:BuffDownP(S.DemonicPowerBuff) and Player:SoulShardsP() >= 3) then
        if HR.Cast(S.PowerSiphon) then return "power_siphon 309"; end
    end
    -- hand_of_guldan,if=time>=30&soul_shard>=5
    if S.HandofGuldan:IsCastableP() and (HL.CombatTime() >= 30 and Player:SoulShardsP() >= 5) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 317"; end
    end
    -- call_action_list,name=build_a_shard
    if (true) then
        local ShouldReturn = BuildAShard(); if ShouldReturn then return ShouldReturn; end
    end
  end
	

    
    -- Protect against interrupt of channeled spells
    if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
        if HR.Cast(S.Channeling) then return "" end
    end  
	-- call DBM precombat
   -- if not Player:AffectingCombat() and Action.GetToggle(1, "DBM") and not Player:IsCasting() then
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
    
    --- In Combat
    if Player:AffectingCombat() then
        -- Interrupts
    --Everyone.Interrupt(40, S.SpellLock, Settings.Commons.OffGCDasOffGCD.SpellLock, StunInterrupts);
    -- potion,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major|!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)&(!talent.nether_portal.enabled|cooldown.nether_portal.remains>160)|target.time_to_die<30
    if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (DemonicTyrantTime() > 0 and (not S.VisionofPerfection:IsAvailable() or not S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() >= S.SummonDemonicTyrant:BaseDuration() - 5) and (not S.NetherPortal:IsAvailable() or S.NetherPortal:CooldownRemainsP() > 160) or Target:TimeToDie() < 30) then
        if HR.CastSuggested(I.PotionofUnbridledFury) then return "battle_potion_of_intellect 322"; end
    end
    -- use_item,name=azsharas_font_of_power,if=cooldown.summon_demonic_tyrant.remains<=20&!talent.nether_portal.enabled
    if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (S.SummonDemonicTyrant:CooldownRemainsP() <= 20 and not S.NetherPortal:IsAvailable()) then
        if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power"; end
    end
    -- use_items,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major|!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)|target.time_to_die<=15
    -- berserking,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major|!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)|target.time_to_die<=15
    if S.Berserking:IsCastableP() and HR.CDsON() and (DemonicTyrantTime() > 0 and (not S.VisionofPerfection:IsAvailable() or not S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() >= S.SummonDemonicTyrant:BaseDuration() - 5) or Target:TimeToDie() <= 15) then
        if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 329"; end
    end
    -- blood_fury,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major|!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)|target.time_to_die<=15
    if S.BloodFury:IsCastableP() and HR.CDsON() and (DemonicTyrantTime() > 0 and (not S.VisionofPerfection:IsAvailable() or not S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() >= S.SummonDemonicTyrant:BaseDuration() - 5) or Target:TimeToDie() <= 15) then
        if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 331"; end
    end
    -- fireblood,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major|!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)|target.time_to_die<=15
    if S.Fireblood:IsCastableP() and HR.CDsON() and (DemonicTyrantTime() > 0 and (not S.VisionofPerfection:IsAvailable() or not S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() >= S.SummonDemonicTyrant:BaseDuration() - 5) or Target:TimeToDie() <= 15) then
        if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 333"; end
    end
    -- blood_of_the_enemy,if=pet.demonic_tyrant.active&pet.demonic_tyrant.remains<=15-gcd*3&(!essence.vision_of_perfection.major|!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)
    if S.BloodoftheEnemy:IsCastableP() and (DemonicTyrantTime() > 0 and DemonicTyrantTime() <= 15 - Player:GCD() * 3 and (not S.VisionofPerfection:IsAvailable() or not S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() >= S.SummonDemonicTyrant:BaseDuration() - 5)) then
        if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
    end
    -- worldvein_resonance,if=buff.lifeblood.stack<3&(pet.demonic_tyrant.active&(!essence.vision_of_perfection.major|!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)|target.time_to_die<=15)
    if S.WorldveinResonance:IsCastableP() and (Player:BuffStackP(S.LifebloodBuff) < 3 and (DemonicTyrantTime() > 0 and (not S.VisionofPerfection:IsAvailable() or not S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() >= S.SummonDemonicTyrant:BaseDuration() - 5) or Target:TimeToDie() <= 15)) then
        if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance 334"; end
    end
    -- ripple_in_space,if=pet.demonic_tyrant.active&(!essence.vision_of_perfection.major|!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>=cooldown.summon_demonic_tyrant.duration-5)|target.time_to_die<=15
    if S.RippleInSpace:IsCastableP() and (DemonicTyrantTime() > 0 and (not S.VisionofPerfection:IsAvailable() or not S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() >= S.SummonDemonicTyrant:BaseDuration() - 5) or Target:TimeToDie() <= 15) then
        if HR.Cast(S.RippleInSpace) then return "ripple_in_space 335"; end
    end
    -- use_item,name=pocketsized_computation_device,if=cooldown.summon_demonic_tyrant.remains>=20&cooldown.summon_demonic_tyrant.remains<=cooldown.summon_demonic_tyrant.duration-15|target.time_to_die<=30
    if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (S.SummonDemonicTyrant:CooldownRemainsP() >= 20 and S.SummonDemonicTyrant:CooldownRemainsP() <= 75 or Target:TimeToDie() <= 30) then
        if HR.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device"; end
    end
    -- use_item,name=rotcrusted_voodoo_doll,if=(cooldown.summon_demonic_tyrant.remains>=25|target.time_to_die<=30)
    if I.RotcrustedVoodooDoll:IsEquipped() and I.RotcrustedVoodooDoll:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (S.SummonDemonicTyrant:CooldownRemainsP() >= 25 or Target:TimeToDie() <= 30) then
        if HR.Cast(I.RotcrustedVoodooDoll) then return "rotcrusted_voodoo_doll"; end
    end
    -- use_item,name=shiver_venom_relic,if=(cooldown.summon_demonic_tyrant.remains>=25|target.time_to_die<=30)
    if I.ShiverVenomRelic:IsEquipped() and I.ShiverVenomRelic:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (S.SummonDemonicTyrant:CooldownRemainsP() >= 25 or Target:TimeToDie() <= 30) then
        if HR.Cast(I.ShiverVenomRelic) then return "shiver_venom_relic"; end
    end
    -- use_item,name=aquipotent_nautilus,if=(cooldown.summon_demonic_tyrant.remains>=25|target.time_to_die<=30)
    if I.AquipotentNautilus:IsEquipped() and I.AquipotentNautilus:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (S.SummonDemonicTyrant:CooldownRemainsP() >= 25 or Target:TimeToDie() <= 30) then
        if HR.Cast(I.AquipotentNautilus) then return "aquipotent_nautilus"; end
    end
    -- use_item,name=tidestorm_codex,if=(cooldown.summon_demonic_tyrant.remains>=25|target.time_to_die<=30)
    if I.TidestormCodex:IsEquipped() and I.TidestormCodex:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (S.SummonDemonicTyrant:CooldownRemainsP() >= 25 or Target:TimeToDie() <= 30) then
        if HR.Cast(I.TidestormCodex) then return "tidestorm_codex"; end
    end
    -- use_item,name=vial_of_storms,if=(cooldown.summon_demonic_tyrant.remains>=25|target.time_to_die<=30)
    if I.VialofStorms:IsEquipped() and I.VialofStorms:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (S.SummonDemonicTyrant:CooldownRemainsP() >= 25 or Target:TimeToDie() <= 30) then
        if HR.Cast(I.VialofStorms) then return "vial_of_storms"; end
    end
    -- call_action_list,name=opener,if=!talent.nether_portal.enabled&time<30&!cooldown.summon_demonic_tyrant.remains
    if (not S.NetherPortal:IsAvailable() and HL.CombatTime() < 30 and not bool(S.SummonDemonicTyrant:CooldownRemainsP())) then
        local ShouldReturn = Opener(); if ShouldReturn then return ShouldReturn; end
    end
    -- use_item,name=azsharas_font_of_power,if=(time>30|!talent.nether_portal.enabled)&talent.grimoire_felguard.enabled&(target.time_to_die>120|target.time_to_die<cooldown.summon_demonic_tyrant.remains+15)|target.time_to_die<=35
    if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and ((HL.CombatTime() > 30 or not S.NetherPortal:IsAvailable()) and S.GrimoireFelguard:IsAvailable() and (Target:TimeToDie() > 120 or Target:TimeToDie() < S.SummonDemonicTyrant:CooldownRemainsP() + 15) or Target:TimeToDie() <= 35) then
        if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power"; end
    end
    -- hand_of_guldan,if=azerite.explosive_potential.rank&time<5&soul_shard>2&buff.explosive_potential.down&buff.wild_imps.stack<3&!prev_gcd.1.hand_of_guldan&&!prev_gcd.2.hand_of_guldan
    if S.HandofGuldan:IsCastableP() and (bool(S.ExplosivePotential:AzeriteRank()) and HL.CombatTime() < 5 and Player:SoulShardsP() > 2 and Player:BuffDownP(S.ExplosivePotentialBuff) and WildImpsCount() < 3 and not Player:PrevGCDP(1, S.HandofGuldan) and not Player:PrevGCDP(2, S.HandofGuldan)) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 341"; end
    end
    -- demonbolt,if=soul_shard<=3&buff.demonic_core.up&buff.demonic_core.stack=4
    if S.Demonbolt:IsCastableP() and (Player:SoulShardsP() <= 3 and Player:BuffP(S.DemonicCoreBuff) and Player:BuffStackP(S.DemonicCoreBuff) == 4) then
        if HR.Cast(S.Demonbolt) then return "demonbolt 353"; end
    end
    -- implosion,if=azerite.explosive_potential.rank&buff.wild_imps.stack>2&buff.explosive_potential.remains<action.shadow_bolt.execute_time&(!talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains>12)
    if S.Implosion:IsCastableP() and (bool(S.ExplosivePotential:AzeriteRank()) and WildImpsCount() > 2 and Player:BuffRemainsP(S.ExplosivePotentialBuff) < S.ShadowBolt:ExecuteTime() and (not S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() > 12)) then
        if HR.Cast(S.Implosion) then return "implosion 359"; end
    end
    -- doom,if=!ticking&time_to_die>30&spell_targets.implosion<2&!buff.nether_portal.remains
    if S.Doom:IsCastableP() and (not Target:DebuffP(S.DoomDebuff) and Target:TimeToDie() > 30 and EnemiesCount < 2 and Player:BuffDownP(S.NetherPortalBuff)) then
        if HR.Cast(S.Doom) then return "doom 375"; end
    end
    -- bilescourge_bombers,if=azerite.explosive_potential.rank>0&time<10&spell_targets.implosion<2&buff.dreadstalkers.remains&talent.nether_portal.enabled
    if S.BilescourgeBombers:IsReadyP() and (S.ExplosivePotential:AzeriteRank() > 0 and HL.CombatTime() < 10 and EnemiesCount < 2 and DreadStalkersTime() > 0 and S.NetherPortal:IsAvailable()) then
        if HR.Cast(S.BilescourgeBombers) then return "bilescourge_bombers 389"; end
    end
    -- demonic_strength,if=(buff.wild_imps.stack<6|buff.demonic_power.up)|spell_targets.implosion<2
    if S.DemonicStrength:IsReadyP() and ((WildImpsCount() < 6 or Player:BuffP(S.DemonicPowerBuff)) or EnemiesCount < 2) then
        if HR.Cast(S.DemonicStrength, Action.GetToggle(2, "OffGCDasOffGCD")) then return "demonic_strength 397"; end
    end
    -- call_action_list,name=nether_portal,if=talent.nether_portal.enabled&spell_targets.implosion<=2
    if (S.NetherPortal:IsAvailable() and EnemiesCount <= 2) then
        local ShouldReturn = NetherPortal(); if ShouldReturn then return ShouldReturn; end
    end
    -- call_action_list,name=implosion,if=spell_targets.implosion>1
    if (EnemiesCount > 1) then
        local ShouldReturn = Implosion(); if ShouldReturn then return ShouldReturn; end
    end
    -- guardian_of_azeroth,if=cooldown.summon_demonic_tyrant.remains<=15|target.time_to_die<=30
    if S.GuardianofAzeroth:IsCastableP() and (S.SummonDemonicTyrant:CooldownRemainsP() <= 15 or Target:TimeToDie() <= 30) then
        if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 408"; end
    end
    -- grimoire_felguard,if=(target.time_to_die>120|target.time_to_die<cooldown.summon_demonic_tyrant.remains+15|cooldown.summon_demonic_tyrant.remains<13)
    if S.GrimoireFelguard:IsReadyP() and ((Target:TimeToDie() > 120 or Target:TimeToDie() < S.SummonDemonicTyrant:CooldownRemainsP() + 15 or S.SummonDemonicTyrant:CooldownRemainsP() < 13)) then
        if HR.Cast(S.GrimoireFelguard, Action.GetToggle(2, "OffGCDasOffGCD")) then return "grimoire_felguard 409"; end
    end
    -- summon_vilefiend,if=cooldown.summon_demonic_tyrant.remains>40|cooldown.summon_demonic_tyrant.remains<12
    if S.SummonVilefiend:IsReadyP() and (S.SummonDemonicTyrant:CooldownRemainsP() > 40 or S.SummonDemonicTyrant:CooldownRemainsP() < 12) then
        if HR.Cast(S.SummonVilefiend) then return "summon_vilefiend 415"; end
    end
    -- call_dreadstalkers,if=(cooldown.summon_demonic_tyrant.remains<9&buff.demonic_calling.remains)|(cooldown.summon_demonic_tyrant.remains<11&!buff.demonic_calling.remains)|cooldown.summon_demonic_tyrant.remains>14
    if S.CallDreadstalkers:IsReadyP() and ((S.SummonDemonicTyrant:CooldownRemainsP() < 9 and bool(Player:BuffRemainsP(S.DemonicCallingBuff))) or (S.SummonDemonicTyrant:CooldownRemainsP() < 11 and not bool(Player:BuffRemainsP(S.DemonicCallingBuff))) or S.SummonDemonicTyrant:CooldownRemainsP() > 14) then
        if HR.Cast(S.CallDreadstalkers) then return "call_dreadstalkers 421"; end
    end
    -- the_unbound_force,if=buff.reckless_force.react
    if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff)) then
        if HR.Cast(S.TheUnboundForce) then return "the_unbound_force 422"; end
    end
    -- bilescourge_bombers
    if S.BilescourgeBombers:IsReadyP() then
        if HR.Cast(S.BilescourgeBombers) then return "bilescourge_bombers 433"; end
    end
    -- hand_of_guldan,if=(azerite.baleful_invocation.enabled|talent.demonic_consumption.enabled)&prev_gcd.1.hand_of_guldan&cooldown.summon_demonic_tyrant.remains<2
    if S.HandofGuldan:IsCastableP() and ((S.BalefulInvocation:AzeriteEnabled() or S.DemonicConsumption:IsAvailable()) and Player:PrevGCDP(1, S.HandofGuldan) and S.SummonDemonicTyrant:CooldownRemainsP() < 2 and Player:SoulShardsP() > 0) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 435"; end
    end
    -- summon_demonic_tyrant,if=soul_shard<3&(!talent.demonic_consumption.enabled|buff.wild_imps.stack+imps_spawned_during.2000%spell_haste>=6&time_to_imps.all.remains<cast_time)|target.time_to_die<20
    if S.SummonDemonicTyrant:IsCastableP() and (Player:SoulShardsP() < 3 and (not S.DemonicConsumption:IsAvailable() or WildImpsCount() + ImpsSpawnedDuring(2000) >= 6) or Target:TimeToDie() < 20) then
        if HR.Cast(S.SummonDemonicTyrant, Action.GetToggle(2, "OffGCDasOffGCD")) then return "summon_demonic_tyrant 445"; end
    end
    -- power_siphon,if=buff.wild_imps.stack>=2&buff.demonic_core.stack<=2&buff.demonic_power.down&spell_targets.implosion<2
    if S.PowerSiphon:IsCastableP() and (WildImpsCount() >= 2 and Player:BuffStackP(S.DemonicCoreBuff) <= 2 and Player:BuffDownP(S.DemonicPowerBuff) and EnemiesCount < 2) then
        if HR.Cast(S.PowerSiphon) then return "power_siphon 455"; end
    end
    -- doom,if=talent.doom.enabled&refreshable&time_to_die>(dot.doom.remains+30)
    if S.Doom:IsCastableP() and (S.Doom:IsAvailable() and Target:DebuffRefreshableCP(S.DoomDebuff) and Target:TimeToDie() > (Target:DebuffRemainsP(S.DoomDebuff) + 30)) then
        if HR.Cast(S.Doom) then return "doom 463"; end
    end
    -- hand_of_guldan,if=soul_shard>=5|(soul_shard>=3&cooldown.call_dreadstalkers.remains>4&(cooldown.summon_demonic_tyrant.remains>20|(cooldown.summon_demonic_tyrant.remains<gcd*2&talent.demonic_consumption.enabled|cooldown.summon_demonic_tyrant.remains<gcd*4&!talent.demonic_consumption.enabled))&(!talent.summon_vilefiend.enabled|cooldown.summon_vilefiend.remains>3))
    if S.HandofGuldan:IsCastableP() and (Player:SoulShardsP() >= 5 or (Player:SoulShardsP() >= 3 and S.CallDreadstalkers:CooldownRemainsP() > 4 and (S.SummonDemonicTyrant:CooldownRemainsP() > 20 or (S.SummonDemonicTyrant:CooldownRemainsP() < Player:GCD() * 2 and S.DemonicConsumption:IsAvailable() or S.SummonDemonicTyrant:CooldownRemainsP() < Player:GCD() * 4 and not S.DemonicConsumption:IsAvailable())) and (not S.SummonVilefiend:IsAvailable() or S.SummonVilefiend:CooldownRemainsP() > 3))) then
        if HR.Cast(S.HandofGuldan) then return "hand_of_guldan 481"; end
    end
    -- soul_strike,if=soul_shard<5&buff.demonic_core.stack<=2
    if S.SoulStrike:IsCastableP() and (Player:SoulShardsP() < 5 and Player:BuffStackP(S.DemonicCoreBuff) <= 2) then
        if HR.Cast(S.SoulStrike) then return "soul_strike 499"; end
    end
    -- demonbolt,if=soul_shard<=3&buff.demonic_core.up&((cooldown.summon_demonic_tyrant.remains<6|cooldown.summon_demonic_tyrant.remains>22&!azerite.shadows_bite.enabled)|buff.demonic_core.stack>=3|buff.demonic_core.remains<5|time_to_die<25|buff.shadows_bite.remains)
    if S.Demonbolt:IsCastableP() and (Player:SoulShardsP() <= 3 and Player:BuffP(S.DemonicCoreBuff) and ((S.SummonDemonicTyrant:CooldownRemainsP() < 6 or S.SummonDemonicTyrant:CooldownRemainsP() > 22 and not S.ShadowsBite:AzeriteEnabled()) or Player:BuffStackP(S.DemonicCoreBuff) >= 3 or Player:BuffRemainsP(S.DemonicCoreBuff) < 5 or Target:TimeToDie() < 25 or bool(Player:BuffRemainsP(S.ShadowsBiteBuff)))) then
        if HR.Cast(S.Demonbolt) then return "demonbolt 503"; end
    end
    -- purifying_blast
    if S.PurifyingBlast:IsCastableP() then
        if HR.Cast(S.PurifyingBlast) then return "purifying_blast 504"; end
    end
    -- blood_of_the_enemy
    if S.BloodoftheEnemy:IsCastableP() then
        if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy 505"; end
    end
    -- concentrated_flame,if=!dot.concentrated_flame_burn.remains&!action.concentrated_flame.in_flight&!pet.demonic_tyrant.active
    if S.ConcentratedFlame:IsCastableP() and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight() and DemonicTyrantTime() == 0) then
        if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 506"; end
    end
    -- call_action_list,name=build_a_shard
    if (true) then
        local ShouldReturn = BuildAShard(); if ShouldReturn then return ShouldReturn; end
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

