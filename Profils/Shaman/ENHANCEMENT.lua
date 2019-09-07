--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_SHAMAN_ENCHANCEMENT] = {
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
    LightningShield                       = Action.Create({ Type = "Spell", ID = 192106     }),
    CrashLightning                        = Action.Create({ Type = "Spell", ID = 187874     }),
    Rockbiter                             = Action.Create({ Type = "Spell", ID = 193786     }),
    Landslide                             = Action.Create({ Type = "Spell", ID = 197992     }),
    Windstrike                            = Action.Create({ Type = "Spell", ID = 115356     }),
    Berserking                            = Action.Create({ Type = "Spell", ID = 26297     }),
    BloodFury                             = Action.Create({ Type = "Spell", ID = 20572     }),
    Fireblood                             = Action.Create({ Type = "Spell", ID = 265221     }),
    AncestralCall                         = Action.Create({ Type = "Spell", ID = 274738     }),
    Ascendance                            = Action.Create({ Type = "Spell", ID = 114051     }),
    FeralSpirit                           = Action.Create({ Type = "Spell", ID = 51533     }),
    IcyEdgeBuff                           = Action.Create({ Type = "Spell", ID = 224126     }),
    EarthenSpike                          = Action.Create({ Type = "Spell", ID = 188089     }),
    Stormstrike                           = Action.Create({ Type = "Spell", ID = 17364     }),
    LightningConduit                      = Action.Create({ Type = "Spell", ID = 275388     }),
    LightningBolt                         = Action.Create({ Type = "Spell", ID = 187837     }),
    Overcharge                            = Action.Create({ Type = "Spell", ID = 210727     }),
    Sundering                             = Action.Create({ Type = "Spell", ID = 197214     }),
    Thundercharge                         = Action.Create({ Type = "Spell", ID = 204366     }),
    ForcefulWinds                         = Action.Create({ Type = "Spell", ID = 262647     }),
    Flametongue                           = Action.Create({ Type = "Spell", ID = 193796     }),
    SearingAssault                        = Action.Create({ Type = "Spell", ID = 192087     }),
    LavaLash                              = Action.Create({ Type = "Spell", ID = 60103     }),
    PrimalPrimer                          = Action.Create({ Type = "Spell", ID = 272992     }),
    HotHand                               = Action.Create({ Type = "Spell", ID = 201900     }),
    CrashingStorm                         = Action.Create({ Type = "Spell", ID = 192246     }),
    Frostbrand                            = Action.Create({ Type = "Spell", ID = 196834     }),
    Hailstorm                             = Action.Create({ Type = "Spell", ID = 210853     }),
    FuryofAir                             = Action.Create({ Type = "Spell", ID = 197211     }),
    TotemMastery                          = Action.Create({ Type = "Spell", ID = 262395     }),
    NaturalHarmony                        = Action.Create({ Type = "Spell", ID = 278697     }),
    WindShear                             = Action.Create({ Type = "Spell", ID = 57994     }),
    Boulderfist                           = Action.Create({ Type = "Spell", ID = 246035     }),
    StrengthofEarth                       = Action.Create({ Type = "Spell", ID = 273461     }),
    CapacitorTotem                        = Action.Create({ Type = "Spell", ID = 192058     }),
    ElementalSpirits                      = Action.Create({ Type = "Spell", ID = 262624     }),
    RecklessForceCounter                  = Action.Create({ Type = "Spell", ID = 302917     }),
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
	-- Utilities
	CapacitorTotem                        = Action.Create({ Type = "Spell", ID = 192058     }),
    Purge                                 = Action.Create({ Type = "Spell", ID = 370     }),
    -- Defensive
	AstralShift                           = Action.Create({ Type = "Spell", ID = 108271     }),	
    -- Buffs
    LifebloodBuff                         = Action.Create({ Type = "Spell", ID = 295137, Hidden = true}),
    LifebloodBuff2                        = Action.Create({ Type = "Spell", ID = 305694, Hidden = true}),
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932     }),
    SeethingRageBuff                      = Action.Create({ Type = "Spell", ID = 297126     }),
    NaturalHarmonyFrostBuff               = Action.Create({ Type = "Spell", ID = 279029     }),
    NaturalHarmonyFireBuff                = Action.Create({ Type = "Spell", ID = 279028     }),
    NaturalHarmonyNatureBuff              = Action.Create({ Type = "Spell", ID = 279033     }),
    FuryofAirBuff                         = Action.Create({ Type = "Spell", ID = 197211     }),
    FrostbrandBuff                        = Action.Create({ Type = "Spell", ID = 196834     }),
    FlametongueBuff                       = Action.Create({ Type = "Spell", ID = 194084     }),
    StrengthofEarthBuff                   = Action.Create({ Type = "Spell", ID = 273465     }),
    HotHandBuff                           = Action.Create({ Type = "Spell", ID = 215785     }),
    GatheringStormsBuff                   = Action.Create({ Type = "Spell", ID = 198300     }),
    CracklingSurgeBuff                    = Action.Create({ Type = "Spell", ID = 224127     }),
    MoltenWeaponBuff                      = Action.Create({ Type = "Spell", ID = 224125     }),
    StormbringerBuff                      = Action.Create({ Type = "Spell", ID = 201845     }),
    AscendanceBuff                        = Action.Create({ Type = "Spell", ID = 114051     }),
    LandslideBuff                         = Action.Create({ Type = "Spell", ID = 202004     }),
    CrashLightningBuff                    = Action.Create({ Type = "Spell", ID = 187874     }),
	-- Debuffs 
    RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568     }),
    ConductiveInkDebuff                   = Action.Create({ Type = "Spell", ID = 302565     }),
    PrimalPrimerDebuff                    = Action.Create({ Type = "Spell", ID = 273006     }),
    SunderingDebuff                       = Action.Create({ Type = "Spell", ID = 197214     }),
    LightningConduitDebuff                = Action.Create({ Type = "Spell", ID = 275391     }),
    EarthenSpikeDebuff                    = Action.Create({ Type = "Spell", ID = 188089     }),
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
Action:CreateEssencesFor(ACTION_CONST_SHAMAN_ENCHANCEMENT)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_SHAMAN_ENCHANCEMENT], { __index = Action })

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
    S.LifebloodBuff = S.LifebloodBuff2:IsAvailable() and S.LifebloodBuff2 or S.LifebloodBuff
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
local VarFurycheckCl = 0;
local VarCooldownSync = 0;
local VarFurycheckEs = 0;
local VarFurycheckSs = 0;
local VarFurycheckLb = 0;
local VarOcpoolSs = 0;
local VarOcpoolCl = 0;
local VarOcpoolLl = 0;
local VarFurycheckLl = 0;
local VarFurycheckFb = 0;
local VarClpoolLl = 0;
local VarClpoolSs = 0;
local VarFreezerburnEnabled = 0;
local VarOcpool = 0;
local VarOcpoolFb = 0;
local VarRockslideEnabled = 0;

HL:RegisterForEvent(function()
  VarFurycheckCl = 0
  VarCooldownSync = 0
  VarFurycheckEs = 0
  VarFurycheckSs = 0
  VarFurycheckLb = 0
  VarOcpoolSs = 0
  VarOcpoolCl = 0
  VarOcpoolLl = 0
  VarFurycheckLl = 0
  VarFurycheckFb = 0
  VarClpoolLl = 0
  VarClpoolSs = 0
  VarFreezerburnEnabled = 0
  VarOcpool = 0
  VarOcpoolFb = 0
  VarRockslideEnabled = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {8, 5}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i);
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

local function FeralSpiritRemains()
  if S.FeralSpirit:CooldownRemainsP() == 0 then return 0; end
  if S.ElementalSpirits:IsAvailable() then
    return (S.FeralSpirit:CooldownRemainsP() - 74)
  else
    return (S.FeralSpirit:CooldownRemainsP() - 104)
  end
end

local function SetVariables()
  -- variable,name=cooldown_sync,value=(talent.ascendance.enabled&(buff.ascendance.up|cooldown.ascendance.remains>50))|(!talent.ascendance.enabled&(feral_spirit.remains>5|cooldown.feral_spirit.remains>50))
  VarCooldownSync = num((S.Ascendance:IsAvailable() and (Player:BuffP(S.AscendanceBuff) or S.Ascendance:CooldownRemainsP() > 50)) or (not S.Ascendance:IsAvailable() and (FeralSpiritRemains() > 5 or S.FeralSpirit:CooldownRemainsP() > 50)))
  -- variable,name=furyCheck_SS,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.stormstrike.cost))
  VarFurycheckSs = num(Player:Maelstrom() >= (num(S.FuryofAir:IsAvailable()) * (6 + S.Stormstrike:Cost())))
  -- variable,name=furyCheck_LL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.lava_lash.cost))
  VarFurycheckLl = num(Player:Maelstrom() >= (num(S.FuryofAir:IsAvailable()) * (6 + S.LavaLash:Cost())))
  -- variable,name=furyCheck_CL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.crash_lightning.cost))
  VarFurycheckCl = num(Player:Maelstrom() >= (num(S.FuryofAir:IsAvailable()) * (6 + S.CrashLightning:Cost())))
  -- variable,name=furyCheck_FB,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.frostbrand.cost))
  VarFurycheckFb = num(Player:Maelstrom() >= (num(S.FuryofAir:IsAvailable()) * (6 + S.Frostbrand:Cost())))
  -- variable,name=furyCheck_ES,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.earthen_spike.cost))
  VarFurycheckEs = num(Player:Maelstrom() >= (num(S.FuryofAir:IsAvailable()) * (6 + S.EarthenSpike:Cost())))
  -- variable,name=furyCheck_LB,value=maelstrom>=(talent.fury_of_air.enabled*(6+40))
  VarFurycheckLb = num(Player:Maelstrom() >= (num(S.FuryofAir:IsAvailable()) * (6 + 40)))
  -- variable,name=OCPool,value=(active_enemies>1|(cooldown.lightning_bolt.remains>=2*gcd))
  VarOcpool = num((Cache.EnemiesCount[8] > 1 or (S.LightningBolt:CooldownRemainsP() >= 2 * Player:GCD())))
  -- variable,name=OCPool_SS,value=(variable.OCPool|maelstrom>=(talent.overcharge.enabled*(40+action.stormstrike.cost)))
  VarOcpoolSs = num((bool(VarOcpool) or Player:Maelstrom() >= (num(S.Overcharge:IsAvailable()) * (40 + S.Stormstrike:Cost()))))
  -- variable,name=OCPool_LL,value=(variable.OCPool|maelstrom>=(talent.overcharge.enabled*(40+action.lava_lash.cost)))
  VarOcpoolLl = num((bool(VarOcpool) or Player:Maelstrom() >= (num(S.Overcharge:IsAvailable()) * (40 + S.LavaLash:Cost()))))
  -- variable,name=OCPool_CL,value=(variable.OCPool|maelstrom>=(talent.overcharge.enabled*(40+action.crash_lightning.cost)))
  VarOcpoolCl = num((bool(VarOcpool) or Player:Maelstrom() >= (num(S.Overcharge:IsAvailable()) * (40 + S.CrashLightning:Cost()))))
  -- variable,name=OCPool_FB,value=(variable.OCPool|maelstrom>=(talent.overcharge.enabled*(40+action.frostbrand.cost)))
  VarOcpoolFb = num((bool(VarOcpool) or Player:Maelstrom() >= (num(S.Overcharge:IsAvailable()) * (40 + S.Frostbrand:Cost()))))
  -- variable,name=CLPool_LL,value=active_enemies=1|maelstrom>=(action.crash_lightning.cost+action.lava_lash.cost)
  VarClpoolLl = num(Cache.EnemiesCount[8] == 1 or Player:Maelstrom() >= (S.CrashLightning:Cost() + S.LavaLash:Cost()))
  -- variable,name=CLPool_SS,value=active_enemies=1|maelstrom>=(action.crash_lightning.cost+action.stormstrike.cost)
  VarClpoolSs = num(Cache.EnemiesCount[8] == 1 or Player:Maelstrom() >= (S.CrashLightning:Cost() + S.Stormstrike:Cost()))
  -- variable,name=freezerburn_enabled,value=(talent.hot_hand.enabled&talent.hailstorm.enabled&azerite.primal_primer.enabled)
  VarFreezerburnEnabled = num((S.HotHand:IsAvailable() and S.Hailstorm:IsAvailable() and S.PrimalPrimer:AzeriteEnabled()))
  -- variable,name=rockslide_enabled,value=(!variable.freezerburn_enabled&(talent.boulderfist.enabled&talent.landslide.enabled&azerite.strength_of_earth.enabled))
  VarRockslideEnabled = num((not bool(VarFreezerburnEnabled) and (S.Boulderfist:IsAvailable() and S.Landslide:IsAvailable() and S.StrengthofEarth:AzeriteEnabled())))
end

local function EvaluateCycleStormstrike119(Target)
  return Cache.EnemiesCount[8] > 1 and S.LightningConduit:AzeriteEnabled() and not Target:DebuffP(S.LightningConduitDebuff) and bool(VarFurycheckSs)
end

local function EvaluateTargetIfFilterLavaLash281(Target)
  return Target:DebuffStackP(S.PrimalPrimerDebuff)
end

local function EvaluateTargetIfLavaLash296(Target)
  return S.PrimalPrimer:AzeriteRank() >= 2 and Target:DebuffStackP(S.PrimalPrimerDebuff) == 10 and bool(VarFurycheckLl) and bool(VarClpoolLl)
end

local function EvaluateCycleStormstrike307(Target)
  return Cache.EnemiesCount[8] > 1 and S.LightningConduit:AzeriteEnabled() and not Target:DebuffP(S.LightningConduitDebuff) and bool(VarFurycheckSs)
end

-- Stuns
local StunInterrupts = {
  {S.Sundering, "Cast Sundering (Interrupt)", function () return true; end},
  {S.CapacitorTotem, "Cast Capacitor Totem (Interrupt)", function () return true; end},
}

local function Init()
  HL.RegisterNucleusAbility(187874, 8, 6)               -- Bladestorm
  HL.RegisterNucleusAbility(197214, 11, 6)              -- Sundering
  HL.RegisterNucleusAbility(197211, 8, 6)               -- Fury of Air
end
Init()

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    UpdateRanges()
    Everyone.AoEToggleEnemiesUpdate()
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
        -- snapshot_stats
        if Everyone.TargetIsValid() then
            -- potion
            if I.PotionofUnbridledFury:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") then
                if HR.CastSuggested(I.PotionofUnbridledFury) then return "potion_of_unbridled_fury 4"; end
            end
            -- lightning_shield
            if S.LightningShield:IsCastableP() and not ShouldStop and Player:BuffDownP(S.LightningShield) then
                if HR.Cast(S.LightningShield) then return "lightning_shield 6"; end
            end
            -- use_item,name=azsharas_font_of_power
            if I.AzsharasFontofPower:IsEquipReady() and TrinketON() then
                if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 8"; end
            end
            -- rockbiter,if=maelstrom<15&time<gcd
            if S.Rockbiter:IsCastableP() and not ShouldStop then
                if HR.Cast(S.Rockbiter) then return "rockbiter 9"; end
            end
        end
    end
    local function Asc()
        -- crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL
        if S.CrashLightning:IsReadyP() and not ShouldStop and (Player:BuffDownP(S.CrashLightningBuff) and Cache.EnemiesCount[8] > 1 and bool(VarFurycheckCl)) then
            if HR.Cast(S.CrashLightning) then return "crash_lightning 10"; end
        end
        -- rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7
        if S.Rockbiter:IsCastableP() and not ShouldStop and (S.Landslide:IsAvailable() and Player:BuffDownP(S.LandslideBuff) and S.Rockbiter:ChargesFractionalP() > 1.7) then
            if HR.Cast(S.Rockbiter) then return "rockbiter 24"; end
        end
        -- windstrike
        if S.Windstrike:IsReadyP() and not ShouldStop then
            if HR.Cast(S.Windstrike) then return "windstrike 34"; end
        end
    end
    local function Cds()
        -- bloodlust,if=azerite.ancestral_resonance.enabled
        -- berserking,if=variable.cooldown_sync
        if S.Berserking:IsCastableP() and not ShouldStop and HR.CDsON() and (bool(VarCooldownSync)) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 37"; end
        end
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipReady() and TrinketON() then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 41"; end
        end
        -- blood_fury,if=variable.cooldown_sync
        if S.BloodFury:IsCastableP() and not ShouldStop and HR.CDsON() and (bool(VarCooldownSync)) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 43"; end
        end
        -- fireblood,if=variable.cooldown_sync
        if S.Fireblood:IsCastableP() and not ShouldStop and HR.CDsON() and (bool(VarCooldownSync)) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 47"; end
        end
        -- ancestral_call,if=variable.cooldown_sync
        if S.AncestralCall:IsCastableP() and not ShouldStop and HR.CDsON() and (bool(VarCooldownSync)) then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ancestral_call 51"; end
        end
        -- potion,if=buff.ascendance.up|!talent.ascendance.enabled&feral_spirit.remains>5|target.time_to_die<=60
        if I.PotionofUnbridledFury:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") and (Player:BuffP(S.AscendanceBuff) or not S.Ascendance:IsAvailable() and FeralSpiritRemains() > 5 or Target:TimeToDie() <= 60) then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "potion_of_unbridled_fury 55"; end
        end
        -- guardian_of_azeroth
        if S.GuardianofAzeroth:IsCastableP() and not ShouldStop then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth 61"; end
        end
        -- feral_spirit
        if S.FeralSpirit:IsCastableP() and not ShouldStop and Action.GetToggle(2, "EnableFS") then
            if HR.Cast(S.FeralSpirit, Action.GetToggle(2, "OffGCDasOffGCD")) then return "feral_spirit 65"; end
        end
        -- blood_of_the_enemy,if=raid_event.adds.in>90|active_enemies>1
        if S.BloodoftheEnemy:IsCastableP() and not ShouldStop then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy 67"; end
        end
        -- ascendance,if=cooldown.strike.remains>0
        -- Storm Strike???
        if S.Ascendance:IsCastableP() and not ShouldStop and (S.Stormstrike:CooldownRemainsP() > 0) then
            if HR.Cast(S.Ascendance, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ascendance 69"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down|(target.time_to_die<20&debuff.razor_coral_debuff.stack>2)
        if I.AshvanesRazorCoral:IsEquipReady() and TrinketON() and (Target:DebuffDownP(S.RazorCoralDebuff) or (Target:TimeToDie() < 20 and Target:DebuffStackP(S.RazorCoralDebuff) > 2)) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 73"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.stack>2&debuff.conductive_ink_debuff.down&(buff.ascendance.remains>10|buff.molten_weapon.remains>10|buff.crackling_surge.remains>10|buff.icy_edge.remains>10|debuff.earthen_spike.remains>6)
        if I.AshvanesRazorCoral:IsEquipReady() and TrinketON() and (Target:DebuffStackP(S.RazorCoralDebuff) > 2 and Target:DebuffDownP(S.ConductiveInkDebuff) and (Player:BuffRemainsP(S.AscendanceBuff) > 10 or Player:BuffRemainsP(S.MoltenWeaponBuff) > 10 or Player:BuffRemainsP(S.CracklingSurgeBuff) > 10 or Player:BuffRemainsP(S.IcyEdgeBuff) > 10 or Target:DebuffRemainsP(S.EarthenSpikeDebuff) > 6)) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 79"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=(debuff.conductive_ink_debuff.up|buff.ascendance.remains>10|buff.molten_weapon.remains>10|buff.crackling_surge.remains>10|buff.icy_edge.remains>10|debuff.earthen_spike.remains>6)&target.health.pct<31
        if I.AshvanesRazorCoral:IsEquipReady() and TrinketON() and ((Target:DebuffP(S.ConductiveInkDebuff) or Player:BuffRemainsP(S.AscendanceBuff) > 10 or Player:BuffRemainsP(S.MoltenWeaponBuff) > 10 or Player:BuffRemainsP(S.CracklingSurgeBuff) > 10 or Player:BuffRemainsP(S.IcyEdgeBuff) > 10 or Target:DebuffRemainsP(S.EarthenSpikeDebuff) > 6) and Target:HealthPercentage() < 31) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 95"; end
        end
        -- use_items
        -- earth_elemental
    end
    local function DefaultCore()
        -- earthen_spike,if=variable.furyCheck_ES
        if S.EarthenSpike:IsReadyP() and not ShouldStop and (bool(VarFurycheckEs)) then
            if HR.Cast(S.EarthenSpike) then return "earthen_spike 111"; end
        end
        -- stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS
        if S.Stormstrike:IsReadyP() and EvaluateCycleStormstrike119(Target) and not ShouldStop then
            if HR.Cast(S.Stormstrike) then return "stormstrike 133" end
        end
        -- stormstrike,if=buff.stormbringer.up|(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)
        if S.Stormstrike:IsReadyP() and not ShouldStop and (Player:BuffP(S.StormbringerBuff) or (Cache.EnemiesCount[8] > 1 and Player:BuffP(S.GatheringStormsBuff) and bool(VarFurycheckSs))) then
            if HR.Cast(S.Stormstrike) then return "stormstrike 134"; end
        end
        -- crash_lightning,if=active_enemies>=3&variable.furyCheck_CL
        if S.CrashLightning:IsReadyP() and not ShouldStop and (Cache.EnemiesCount[8] >= 3 and bool(VarFurycheckCl)) then
            if HR.Cast(S.CrashLightning) then return "crash_lightning 148"; end
        end
        -- lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40
        if S.LightningBolt:IsCastableP() and not ShouldStop and (S.Overcharge:IsAvailable() and Cache.EnemiesCount[8] == 1 and bool(VarFurycheckLb) and Player:Maelstrom() >= 40) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 160"; end
        end
        -- stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS
        if S.Stormstrike:IsReadyP() and not ShouldStop and (bool(VarOcpoolSs) and bool(VarFurycheckSs)) then
            if HR.Cast(S.Stormstrike) then return "stormstrike 172"; end
        end
    end
    local function Filler()
        -- sundering,if=raid_event.adds.in>40
        if S.Sundering:IsReadyP() and not ShouldStop then
            if HR.Cast(S.Sundering, Action.GetToggle(2, "OffGCDasOffGCD")) then return "sundering 178"; end
        end
        -- focused_azerite_beam,if=raid_event.adds.in>90&!buff.ascendance.up&!buff.molten_weapon.up&!buff.icy_edge.up&!buff.crackling_surge.up&!debuff.earthen_spike.up
        if S.FocusedAzeriteBeam:IsCastableP() and not ShouldStop and (Player:BuffDownP(S.AscendanceBuff) and Player:BuffDownP(S.MoltenWeaponBuff) and Player:BuffDownP(S.IcyEdgeBuff) and Player:BuffDownP(S.CracklingSurgeBuff) and not Target:DebuffP(S.EarthenSpikeDebuff)) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam 188"; end
        end
        -- purifying_blast,if=raid_event.adds.in>60
        if S.PurifyingBlast:IsCastableP() and not ShouldStop then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast 200"; end
        end
        -- ripple_in_space,if=raid_event.adds.in>60
        if S.RippleInSpace:IsCastableP() and not ShouldStop then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space 202"; end
        end
        -- thundercharge
        if S.Thundercharge:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Thundercharge) then return "thundercharge 204"; end
        end
        -- concentrated_flame
        if S.ConcentratedFlame:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 206"; end
        end
        -- crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck_CL
        if S.CrashLightning:IsReadyP() and not ShouldStop and (S.ForcefulWinds:IsAvailable() and Cache.EnemiesCount[8] > 1 and bool(VarFurycheckCl)) then
            if HR.Cast(S.CrashLightning) then return "crash_lightning 212"; end
        end
        -- flametongue,if=talent.searing_assault.enabled
        if S.Flametongue:IsCastableP() and not ShouldStop and (S.SearingAssault:IsAvailable()) then
            if HR.Cast(S.Flametongue) then return "flametongue 226"; end
        end
        -- lava_lash,if=!azerite.primal_primer.enabled&talent.hot_hand.enabled&buff.hot_hand.react
        if S.LavaLash:IsReadyP() and not ShouldStop and (not S.PrimalPrimer:AzeriteEnabled() and S.HotHand:IsAvailable() and bool(Player:BuffStackP(S.HotHandBuff))) then
            if HR.Cast(S.LavaLash) then return "lava_lash 230"; end
        end
        -- crash_lightning,if=active_enemies>1&variable.furyCheck_CL
        if S.CrashLightning:IsReadyP() and not ShouldStop and (Cache.EnemiesCount[8] > 1 and bool(VarFurycheckCl)) then
            if HR.Cast(S.CrashLightning) then return "crash_lightning 238"; end
        end
        -- rockbiter,if=maelstrom<70&!buff.strength_of_earth.up
        if S.Rockbiter:IsCastableP() and not ShouldStop and (Player:Maelstrom() < 70 and Player:BuffDownP(S.StrengthofEarthBuff)) then
            if HR.Cast(S.Rockbiter) then return "rockbiter 250"; end
        end
        -- crash_lightning,if=talent.crashing_storm.enabled&variable.OCPool_CL
        if S.CrashLightning:IsReadyP() and not ShouldStop and (S.CrashingStorm:IsAvailable() and bool(VarOcpoolCl)) then
            if HR.Cast(S.CrashLightning) then return "crash_lightning 254"; end
        end
        -- lava_lash,if=variable.OCPool_LL&variable.furyCheck_LL
        if S.LavaLash:IsReadyP() and not ShouldStop and (bool(VarOcpoolLl) and bool(VarFurycheckLl)) then
            if HR.Cast(S.LavaLash) then return "lava_lash 260"; end
        end
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastableP() and not ShouldStop then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 63"; end
        end
        -- rockbiter
        if S.Rockbiter:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Rockbiter) then return "rockbiter 266"; end
        end
        -- frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck_FB
        if S.Frostbrand:IsReadyP() and not ShouldStop and (S.Hailstorm:IsAvailable() and Player:BuffRemainsP(S.FrostbrandBuff) < 4.8 + Player:GCD() and bool(VarFurycheckFb)) then
            if HR.Cast(S.Frostbrand) then return "frostbrand 268"; end
        end
        -- flametongue
        if S.Flametongue:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Flametongue) then return "flametongue 276"; end
        end
        -- worldvein_resonance,if=buff.lifeblood.stack<4
        if S.WorldveinResonance:IsCastableP() and not ShouldStop and (Player:BuffStackP(S.LifebloodBuff) < 4) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance 208"; end
        end
    end
    local function FreezerburnCore()
        -- lava_lash,target_if=max:debuff.primal_primer.stack,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&variable.furyCheck_LL&variable.CLPool_LL
        if S.LavaLash:IsReadyP() and EvaluateTargetIfFilterLavaLash281(Target) and EvaluateTargetIfLavaLash296(Target) and not ShouldStop then
            if HR.Cast(S.LavaLash) then return "lava_lash 298" end
        end
        -- earthen_spike,if=variable.furyCheck_ES
        if S.EarthenSpike:IsReadyP() and not ShouldStop and (bool(VarFurycheckEs)) then
            if HR.Cast(S.EarthenSpike) then return "earthen_spike 299"; end
        end
        -- stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS
        if S.Stormstrike:IsReadyP() and EvaluateCycleStormstrike307(Target) and not ShouldStop then
            if HR.Cast(S.Stormstrike) then return "stormstrike 321" end
        end
        -- stormstrike,if=buff.stormbringer.up|(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)
        if S.Stormstrike:IsReadyP() and not ShouldStop and (Player:BuffP(S.StormbringerBuff) or (Cache.EnemiesCount[8] > 1 and Player:BuffP(S.GatheringStormsBuff) and bool(VarFurycheckSs))) then
            if HR.Cast(S.Stormstrike) then return "stormstrike 322"; end
        end
        -- crash_lightning,if=active_enemies>=3&variable.furyCheck_CL
        if S.CrashLightning:IsReadyP() and not ShouldStop and (Cache.EnemiesCount[8] >= 3 and bool(VarFurycheckCl)) then
            if HR.Cast(S.CrashLightning) then return "crash_lightning 336"; end
        end
        -- lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40
        if S.LightningBolt:IsCastableP() and not ShouldStop and (S.Overcharge:IsAvailable() and Cache.EnemiesCount[8] == 1 and bool(VarFurycheckLb) and Player:Maelstrom() >= 40) then
            if HR.Cast(S.LightningBolt) then return "lightning_bolt 348"; end
        end
        -- lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack>7&variable.furyCheck_LL&variable.CLPool_LL
        if S.LavaLash:IsReadyP() and not ShouldStop and (S.PrimalPrimer:AzeriteRank() >= 2 and Target:DebuffStackP(S.PrimalPrimerDebuff) > 7 and bool(VarFurycheckLl) and bool(VarClpoolLl)) then
            if HR.Cast(S.LavaLash) then return "lava_lash 360"; end
        end
        -- stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS&variable.CLPool_SS
        if S.Stormstrike:IsReadyP() and not ShouldStop and (bool(VarOcpoolSs) and bool(VarFurycheckSs) and bool(VarClpoolSs)) then
            if HR.Cast(S.Stormstrike) then return "stormstrike 370"; end
        end
        -- lava_lash,if=debuff.primal_primer.stack=10&variable.furyCheck_LL
        if S.LavaLash:IsReadyP() and not ShouldStop and (Target:DebuffStackP(S.PrimalPrimerDebuff) == 10 and bool(VarFurycheckLl)) then
            if HR.Cast(S.LavaLash) then return "lava_lash 378"; end
        end
    end
    local function Maintenance()
        -- flametongue,if=!buff.flametongue.up
        if S.Flametongue:IsCastableP() and not ShouldStop and (Player:BuffDownP(S.FlametongueBuff)) then
            if HR.Cast(S.Flametongue) then return "flametongue 384"; end
        end
        -- frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck_FB
        if S.Frostbrand:IsReadyP() and not ShouldStop and (S.Hailstorm:IsAvailable() and Player:BuffDownP(S.FrostbrandBuff) and bool(VarFurycheckFb)) then
            if HR.Cast(S.Frostbrand) then return "frostbrand 388"; end
        end
    end
    local function Priority()
        -- crash_lightning,if=active_enemies>=(8-(talent.forceful_winds.enabled*3))&variable.freezerburn_enabled&variable.furyCheck_CL
        if S.CrashLightning:IsReadyP() and not ShouldStop and (Cache.EnemiesCount[8] >= (8 - (num(S.ForcefulWinds:IsAvailable()) * 3)) and bool(VarFreezerburnEnabled) and bool(VarFurycheckCl)) then
            if HR.Cast(S.CrashLightning) then return "crash_lightning 398"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|time<5
        if S.TheUnboundForce:IsCastableP() and not ShouldStop and (Player:BuffP(S.RecklessForceBuff) or HL.CombatTime() < 5) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force 414"; end
        end
        -- lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&active_enemies=1&variable.freezerburn_enabled&variable.furyCheck_LL
        if S.LavaLash:IsReadyP() and not ShouldStop and (S.PrimalPrimer:AzeriteRank() >= 2 and Target:DebuffStackP(S.PrimalPrimerDebuff) == 10 and Cache.EnemiesCount[8] == 1 and bool(VarFreezerburnEnabled) and bool(VarFurycheckLl)) then
            if HR.Cast(S.LavaLash) then return "lava_lash 418"; end
        end
        -- crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL
        if S.CrashLightning:IsReadyP() and not ShouldStop and (Player:BuffDownP(S.CrashLightningBuff) and Cache.EnemiesCount[8] > 1 and bool(VarFurycheckCl)) then
            if HR.Cast(S.CrashLightning) then return "crash_lightning 434"; end
        end
        -- fury_of_air,if=!buff.fury_of_air.up&maelstrom>=20&spell_targets.fury_of_air_damage>=(1+variable.freezerburn_enabled)
        if S.FuryofAir:IsCastableP() and not ShouldStop and (Player:BuffDownP(S.FuryofAirBuff) and Player:Maelstrom() >= 20 and Cache.EnemiesCount[5] >= (1 + VarFreezerburnEnabled)) then
            if HR.Cast(S.FuryofAir) then return "fury_of_air 448"; end
        end
        -- fury_of_air,if=buff.fury_of_air.up&&spell_targets.fury_of_air_damage<(1+variable.freezerburn_enabled)
        if S.FuryofAir:IsCastableP() and not ShouldStop and (Player:BuffP(S.FuryofAirBuff) and true and Cache.EnemiesCount[5] < (1 + VarFreezerburnEnabled)) then
            if HR.Cast(S.FuryofAir) then return "fury_of_air 454"; end
        end
        -- totem_mastery,if=buff.resonance_totem.remains<=2*gcd
        if S.TotemMastery:IsCastableP() and not ShouldStop and (ResonanceTotemTime() <= 2 * Player:GCD()) then
            if HR.Cast(S.TotemMastery) then return "totem_mastery 460"; end
        end
        -- sundering,if=active_enemies>=3&(!essence.blood_of_the_enemy.major|(essence.blood_of_the_enemy.major&(buff.seething_rage.up|cooldown.blood_of_the_enemy.remains>40)))
        if S.Sundering:IsReadyP() and not ShouldStop and (Cache.EnemiesCount[8] >= 3 and (not S.BloodoftheEnemy:IsAvailable() or (S.BloodoftheEnemy:IsAvailable() and (Player:BuffP(S.SeethingRageBuff) or S.BloodoftheEnemy:CooldownRemainsP() > 40)))) then
            if HR.Cast(S.Sundering, Action.GetToggle(2, "OffGCDasOffGCD")) then return "sundering 464"; end
        end
        -- focused_azerite_beam,if=active_enemies>1
        if S.FocusedAzeriteBeam:IsCastableP() and not ShouldStop and (Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam 478"; end
        end
        -- purifying_blast,if=active_enemies>1
        if S.PurifyingBlast:IsCastableP() and not ShouldStop and (Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast 486"; end
        end
        -- ripple_in_space,if=active_enemies>1
        if S.RippleInSpace:IsCastableP() and not ShouldStop and (Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space 494"; end
        end
        -- rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7
        if S.Rockbiter:IsCastableP() and not ShouldStop and (S.Landslide:IsAvailable() and Player:BuffDownP(S.LandslideBuff) and S.Rockbiter:ChargesFractionalP() > 1.7) then
            if HR.Cast(S.Rockbiter) then return "rockbiter 502"; end
        end
        -- frostbrand,if=(azerite.natural_harmony.enabled&buff.natural_harmony_frost.remains<=2*gcd)&talent.hailstorm.enabled&variable.furyCheck_FB
        if S.Frostbrand:IsReadyP() and not ShouldStop and ((S.NaturalHarmony:AzeriteEnabled() and Player:BuffRemainsP(S.NaturalHarmonyFrostBuff) <= 2 * Player:GCD()) and S.Hailstorm:IsAvailable() and bool(VarFurycheckFb)) then
            if HR.Cast(S.Frostbrand) then return "frostbrand 512"; end
        end
        -- flametongue,if=(azerite.natural_harmony.enabled&buff.natural_harmony_fire.remains<=2*gcd)
        if S.Flametongue:IsCastableP() and not ShouldStop and ((S.NaturalHarmony:AzeriteEnabled() and Player:BuffRemainsP(S.NaturalHarmonyFireBuff) <= 2 * Player:GCD())) then
            if HR.Cast(S.Flametongue) then return "flametongue 522"; end
        end
        -- rockbiter,if=(azerite.natural_harmony.enabled&buff.natural_harmony_nature.remains<=2*gcd)&maelstrom<70
        if S.Rockbiter:IsCastableP() and not ShouldStop and ((S.NaturalHarmony:AzeriteEnabled() and Player:BuffRemainsP(S.NaturalHarmonyNatureBuff) <= 2 * Player:GCD()) and Player:Maelstrom() < 70) then
            if HR.Cast(S.Rockbiter) then return "rockbiter 528"; end
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
    --    end    
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
	
     	 -- WindShear
      	if useCC and S.WindShear:IsReady() and not ShouldStop and Target:IsInterruptible() then 
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
        -- Set Variables; Moved to function for cleanliness
        if (true) then
            SetVariables();
        end
        -- auto_attack
        -- call_action_list,name=opener -- Moved to Precombat
        -- call_action_list,name=asc,if=buff.ascendance.up
        if (Player:BuffP(S.AscendanceBuff)) then
            local ShouldReturn = Asc(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=priority
        if (true) then
            local ShouldReturn = Priority(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=maintenance,if=active_enemies<3
        if (Cache.EnemiesCount[8] < 3) then
            local ShouldReturn = Maintenance(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=cds
        if (HR.CDsON()) then
            local ShouldReturn = Cds(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=freezerburn_core,if=variable.freezerburn_enabled
        if (bool(VarFreezerburnEnabled)) then
            local ShouldReturn = FreezerburnCore(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=default_core,if=!variable.freezerburn_enabled
        if (not bool(VarFreezerburnEnabled)) then
            local ShouldReturn = DefaultCore(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=maintenance,if=active_enemies>=3
        if (Cache.EnemiesCount[8] >= 3) then
            local ShouldReturn = Maintenance(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=filler
        if (true) then
            local ShouldReturn = Filler(); if ShouldReturn then return ShouldReturn; end
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

