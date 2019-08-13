--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_DRUID_FERAL] = {
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
    Regrowth                              = Action.Create({ Type = "Spell", ID = 8936    }),
    Bloodtalons                           = Action.Create({ Type = "Spell", ID = 155672    }),
    WildFleshrending                      = Action.Create({ Type = "Spell", ID = 279527    }),
    CatForm                               = Action.Create({ Type = "Spell", ID = 768    }),
    Prowl                                 = Action.Create({ Type = "Spell", ID = 5215    }),
    Berserk                               = Action.Create({ Type = "Spell", ID = 106951    }),
    TigersFury                            = Action.Create({ Type = "Spell", ID = 5217    }),
    Berserking                            = Action.Create({ Type = "Spell", ID = 26297    }),
    FeralFrenzy                           = Action.Create({ Type = "Spell", ID = 274837    }),
    Incarnation                           = Action.Create({ Type = "Spell", ID = 102543    }),
    Shadowmeld                            = Action.Create({ Type = "Spell", ID = 58984    }),
    Rake                                  = Action.Create({ Type = "Spell", ID = 1822    }),
    SavageRoar                            = Action.Create({ Type = "Spell", ID = 52610    }),
    --PoolResource                          = Action.Create({ Type = "Spell", ID = 9999000010    }), -- Pool icon
    PrimalWrath                           = Action.Create({ Type = "Spell", ID = 285381    }),
    Rip                                   = Action.Create({ Type = "Spell", ID = 1079    }),
    Sabertooth                            = Action.Create({ Type = "Spell", ID = 202031    }),
    Maim                                  = Action.Create({ Type = "Spell", ID = 22570    }),    
    FerociousBiteMaxEnergy                = Action.Create({ Type = "Spell", ID = 22568    }),
    FerociousBite                         = Action.Create({ Type = "Spell", ID = 22568    }),
    LunarInspiration                      = Action.Create({ Type = "Spell", ID = 155580    }),
    BrutalSlash                           = Action.Create({ Type = "Spell", ID = 202028    }),
    ThrashCat                             = Action.Create({ Type = "Spell", ID = 106830    }),
    ScentofBlood                          = Action.Create({ Type = "Spell", ID = 285564    }),
    SwipeCat                              = Action.Create({ Type = "Spell", ID = 106785    }),
    MoonfireCat                           = Action.Create({ Type = "Spell", ID = 155625    }),
    Shred                                 = Action.Create({ Type = "Spell", ID = 5221    }),
    SkullBash                             = Action.Create({ Type = "Spell", ID = 106839    }),
    JungleFury                            = Action.Create({ Type = "Spell", ID = 274424    }),
    CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 167672    }),
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368    }),
    Thorns                                = Action.Create({ Type = "Spell", ID = 236696    }),
    HeartEssence                          = Action.Create({ Type = "Spell", ID = 298554    }),
	-- Utilities
	Typhoon                               = Action.Create({ Type = "Spell", ID = 132469   }),
	MightyBash                            = Action.Create({ Type = "Spell", ID = 5211   }),
	IncapacitatingRoar                    = Action.Create({ Type = "Spell", ID = 99  }),
	Soothe                                = Action.Create({ Type = "Spell", ID = 2908   }),
    -- Defensive
	SurvivalInstincts                     = Action.Create({ Type = "Spell", ID = 61336   }),
    -- Buffs
    BloodtalonsBuff                       = Action.Create({ Type = "Spell", ID = 145152   , Hidden = true}),
    CatFormBuff                           = Action.Create({ Type = "Spell", ID = 768    , Hidden = true}),
    ProwlBuff                             = Action.Create({ Type = "Spell", ID = 5215    , Hidden = true}),
    TigersFuryBuff                        = Action.Create({ Type = "Spell", ID = 5217    , Hidden = true}),
    SavageRoarBuff                        = Action.Create({ Type = "Spell", ID = 52610    , Hidden = true}),
    IncarnationBuff                       = Action.Create({ Type = "Spell", ID = 102543    , Hidden = true}),
    IronJawsBuff                          = Action.Create({ Type = "Spell", ID = 276026    , Hidden = true}),
    PredatorySwiftnessBuff                = Action.Create({ Type = "Spell", ID = 69369    , Hidden = true}),
    ScentofBloodBuff                      = Action.Create({ Type = "Spell", ID = 285646    , Hidden = true}),
    ClearcastingBuff                      = Action.Create({ Type = "Spell", ID = 135700    , Hidden = true}),
    ShadowmeldBuff                        = Action.Create({ Type = "Spell", ID = 58984   , Hidden = true}),
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932    , Hidden = true}),
    BerserkBuff                           = Action.Create({ Type = "Spell", ID = 106951    , Hidden = true}),
	-- Debuffs 
    RipDebuff                             = Action.Create({ Type = "Spell", ID = 1079, Hidden = true}),
    RakeDebuff                            = Action.Create({ Type = "Spell", ID = 155722, Hidden = true}),
    ThrashCatDebuff                       = Action.Create({ Type = "Spell", ID = 106830, Hidden = true}),
    MoonfireCatDebuff                     = Action.Create({ Type = "Spell", ID = 155625, Hidden = true}),
    RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568, Hidden = true}),
    ConductiveInkDebuff                   = Action.Create({ Type = "Spell", ID = 302565, Hidden = true}),
    -- Misc
    Channeling                            = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),	
    -- Trinkets
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
	CondensedLifeforce                    = Action.Create({ Type = "HeartOfAzeroth", ID = 295834, Hidden = true}),
	CondensedLifeforce2                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299354, Hidden = true}),
	CondensedLifeforce3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299357, Hidden = true}),
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_DRUID_FERAL)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_DRUID_FERAL], { __index = Action })

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


-- Rotation Var
local ShouldReturn; -- Used to get the return string

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

-- Variables
local VarUseThrash = 0;
local VarOpenerDone = 0;

HL:RegisterForEvent(function()
  VarUseThrash = 0
  VarOpenerDone = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {40, 8, 5}
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

S.FerociousBiteMaxEnergy.CustomCost = {
  [3] = function ()
          if (Player:BuffP(S.IncarnationBuff) or Player:BuffP(S.BerserkBuff)) then return 25
          else return 50
          end
        end
}

S.Rip:RegisterPMultiplier({S.BloodtalonsBuff, 1.2}, {S.SavageRoar, 1.15}, {S.TigersFury, 1.15})
S.Rake:RegisterPMultiplier(
  S.RakeDebuff,
  {function ()
    return Player:IsStealthed(true, true) and 2 or 1;
  end},
  {S.BloodtalonsBuff, 1.2}, {S.SavageRoar, 1.15}, {S.TigersFury, 1.15}
)

local function EvaluateCyclePrimalWrath95(TargetUnit)
  return Cache.EnemiesCount[5] > 1 and TargetUnit:DebuffRemainsP(S.RipDebuff) < 4
end

local function EvaluateCyclePrimalWrath106(TargetUnit)
  return Cache.EnemiesCount[5] >= 2
end

local function EvaluateCycleRip115(TargetUnit)
  return not TargetUnit:DebuffP(S.RipDebuff) or (TargetUnit:DebuffRemainsP(S.RipDebuff) <= S.RipDebuff:BaseDuration() * 0.3) and (not S.Sabertooth:IsAvailable()) or (TargetUnit:DebuffRemainsP(S.RipDebuff) <= S.RipDebuff:BaseDuration() * 0.8 and Player:PMultiplier(S.Rip) > TargetUnit:PMultiplier(S.Rip)) and TargetUnit:TimeToDie() > 8
end

local function EvaluateCycleRake228(TargetUnit)
  return not TargetUnit:DebuffP(S.RakeDebuff) or (not S.Bloodtalons:IsAvailable() and TargetUnit:DebuffRemainsP(S.RakeDebuff) < S.RakeDebuff:BaseDuration() * 0.3) and TargetUnit:TimeToDie() > 4
end

local function EvaluateCycleRake257(TargetUnit)
  return S.Bloodtalons:IsAvailable() and Player:BuffP(S.BloodtalonsBuff) and ((TargetUnit:DebuffRemainsP(S.RakeDebuff) <= 7) and Player:PMultiplier(S.Rake) > TargetUnit:PMultiplier(S.Rake) * 0.85) and TargetUnit:TimeToDie() > 4
end

local function EvaluateCycleMoonfireCat302(TargetUnit)
  return TargetUnit:DebuffRefreshableCP(S.MoonfireCatDebuff)
end

local function EvaluateCycleFerociousBite418(TargetUnit)
  return TargetUnit:DebuffP(S.RipDebuff) and TargetUnit:DebuffRemainsP(S.RipDebuff) < 3 and TargetUnit:TimeToDie() > 10 and (S.Sabertooth:IsAvailable())
end

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    UpdateRanges()
    HL.GetEnemies(40, true) -- To populate Cache.Enemies[40] for CastCycles
	DetermineEssenceRanks()
	
	if Player:IsCasting() or Player:IsChanneling() then
	    ShouldStop = true
	else
	    ShouldStop = false
	end
    
    local function Precombat()
        -- flask
        -- food
        -- augmentation
        -- snapshot_stats
        -- variable,name=use_thrash,value=0
        if (true) then
            VarUseThrash = 0
        end
        -- variable,name=use_thrash,value=2,if=azerite.wild_fleshrending.enabled
        if (S.WildFleshrending:AzeriteEnabled()) then
            VarUseThrash = 2
        end
        -- regrowth,if=talent.bloodtalons.enabled
        if S.Regrowth:IsCastableP() and (S.Bloodtalons:IsAvailable()) then
            if HR.Cast(S.Regrowth) then return "regrowth 3"; end
        end
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 10"; end
        end
        -- cat_form
        if S.CatForm:IsCastableP() and Player:BuffDownP(S.CatFormBuff) then
            if HR.Cast(S.CatForm, Action.GetToggle(2, "OffGCDasOffGCD")) then return "cat_form 15"; end
        end
        -- prowl
        if S.Prowl:IsCastableP() and Player:BuffDownP(S.ProwlBuff) then
            if HR.Cast(S.Prowl, Action.GetToggle(2, "OffGCDasOffGCD")) then return "prowl 19"; end
        end
        -- potion,dynamic_prepot=1
        if I.PotionofFocusedResolve:IsReady() and Action.GetToggle(1, "Potion") then
            if HR.Cast(I.PotionofFocusedResolve) then return "battle_potion_of_agility 24"; end
        end
        -- berserk
        if S.Berserk:IsCastableP() and Player:BuffDownP(S.BerserkBuff) and HR.CDsON() then
            if HR.Cast(S.Berserk, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserk 26"; end
        end
    end
	
    local function Cooldowns()
        -- berserk,if=energy>=30&(cooldown.tigers_fury.remains>5|buff.tigers_fury.up)
        if S.Berserk:IsCastableP() and HR.CDsON() and (Player:EnergyPredicted() >= 30 and (S.TigersFury:CooldownRemainsP() > 5 or Player:BuffP(S.TigersFuryBuff))) then
            if HR.Cast(S.Berserk,  Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserk 30"; end
        end
        -- tigers_fury,if=energy.deficit>=60
        if S.TigersFury:IsCastableP() and (Player:EnergyDeficitPredicted() >= 60) then
            if HR.Cast(S.TigersFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "tigers_fury 36"; end
        end
        -- berserking
        if S.Berserking:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 38"; end
        end
        -- thorns,if=active_enemies>desired_targets|raid_event.adds.in>45
        if S.Thorns:IsCastableP() and (Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.Thorns) then return "thorns"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|buff.tigers_fury.up
        if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff) or Player:BuffP(S.TigersFuryBuff)) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- memory_of_lucid_dreams,if=buff.tigers_fury.up&buff.berserk.down
        if S.MemoryofLucidDreams:IsCastableP() and (Player:BuffP(S.TigersFuryBuff) and Player:BuffDownP(S.BerserkBuff)) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- blood_of_the_enemy,if=buff.tigers_fury.up
        if S.BloodoftheEnemy:IsCastableP() and (Player:BuffP(S.TigersFuryBuff)) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- feral_frenzy,if=combo_points=0
        if S.FeralFrenzy:IsCastableP() and (Player:ComboPoints() == 0) then
            if HR.Cast(S.FeralFrenzy) then return "feral_frenzy 40"; end
        end
        -- focused_azerite_beam,if=active_enemies>desired_targets|(raid_event.adds.in>90&energy.deficit>=50)
        if S.FocusedAzeriteBeam:IsCastableP() and (Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- purifying_blast,if=active_enemies>desired_targets|raid_event.adds.in>60
        if S.PurifyingBlast:IsCastableP() and (Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- heart_essence,if=buff.tigers_fury.up
        if S.HeartEssence:IsCastableP() and (Player:BuffP(S.TigersFuryBuff)) then
            if HR.Cast(S.HeartEssence) then return "heart_essence"; end
        end
        -- incarnation,if=energy>=30&(cooldown.tigers_fury.remains>15|buff.tigers_fury.up)
        if S.Incarnation:IsCastableP() and HR.CDsON() and (Player:EnergyPredicted() >= 30 and (S.TigersFury:CooldownRemainsP() > 15 or Player:BuffP(S.TigersFuryBuff))) then
            if HR.Cast(S.Incarnation, Action.GetToggle(2, "OffGCDasOffGCD")) then return "incarnation 42"; end
        end
        -- potion,if=target.time_to_die<65|(time_to_die<180&(buff.berserk.up|buff.incarnation.up))
        if I.PotionofFocusedResolve:IsReady() and Action.GetToggle(1, "Potion") and (Target:TimeToDie() < 65 or (Target:TimeToDie() < 180 and (Player:BuffP(S.BerserkBuff) or Player:BuffP(S.IncarnationBuff)))) then
            if HR.Cast(I.PotionofFocusedResolve) then return "battle_potion_of_agility 48"; end
        end
        -- shadowmeld,if=combo_points<5&energy>=action.rake.cost&dot.rake.pmultiplier<2.1&buff.tigers_fury.up&(buff.bloodtalons.up|!talent.bloodtalons.enabled)&(!talent.incarnation.enabled|cooldown.incarnation.remains>18)&!buff.incarnation.up
        if S.Shadowmeld:IsCastableP() and HR.CDsON() and (Player:ComboPoints() < 5 and Player:EnergyPredicted() >= S.Rake:Cost() and Target:PMultiplier(S.Rake) < 2.1 and Player:BuffP(S.TigersFuryBuff) and (Player:BuffP(S.BloodtalonsBuff) or not S.Bloodtalons:IsAvailable()) and (not S.Incarnation:IsAvailable() or S.Incarnation:CooldownRemainsP() > 18) and not Player:BuffP(S.IncarnationBuff)) then
            if HR.Cast(S.Shadowmeld, Action.GetToggle(2, "OffGCDasOffGCD")) then return "shadowmeld 58"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down|debuff.conductive_ink_debuff.up&target.time_to_pct_30<1.5|!debuff.conductive_ink_debuff.up&(debuff.razor_coral_debuff.stack>=25-10*debuff.blood_of_the_enemy.up|target.time_to_die<40)&buff.tigers_fury.remains>10
        if I.AshvanesRazorCoral:IsEquipped() and I.AshvanesRazorCoral:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (Target:DebuffDownP(S.RazorCoralDebuff) or Target:DebuffP(S.ConductiveInkDebuff) and Target:TimeToX(30) < 1.5 or Target:DebuffDownP(S.ConductiveInkDebuff) and (Target:DebuffStackP(S.RazorCoralDebuff) >= 25 - 10 * num(Target:DebuffP(S.BloodoftheEnemy)) or Target:TimeToDie() < 40) and Player:BuffRemainsP(S.TigersFuryBuff) > 10) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 59"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=(energy.deficit>=energy.regen*3)&buff.tigers_fury.down&!azerite.jungle_fury.enabled
        if I.PocketsizedComputationDevice:IsEquipped() and S.CyclotronicBlast:IsAvailable() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and ((Player:EnergyDeficitPredicted() >= Player:EnergyRegen() * 3) and Player:BuffDownP(S.TigersFuryBuff) and not S.JungleFury:AzeriteEnabled()) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "cyclotronic_blast 60"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=buff.tigers_fury.up&azerite.jungle_fury.enabled
        if I.PocketsizedComputationDevice:IsEquipped() and S.CyclotronicBlast:IsAvailable() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (Player:BuffP(S.TigersFuryBuff) and S.JungleFury:AzeriteEnabled()) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "cyclotronic_blast 61"; end
        end
        -- use_item,effect_name=azsharas_font_of_power,if=energy.deficit>=50
        if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and (Action.GetToggle(1, "Trinkets")[1] or Action.GetToggle(1, "Trinkets")[2]) and (Player:EnergyDeficitPredicted() >= 50) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 62"; end
        end
        -- use_items,if=buff.tigers_fury.up|target.time_to_die<20
    end
	
    local function Finishers()
        -- pool_resource,for_next=1
        -- savage_roar,if=buff.savage_roar.down
        if S.SavageRoar:IsCastableP() and (Player:BuffDownP(S.SavageRoarBuff)) then
            if S.SavageRoar:IsUsablePPool() then
                if HR.Cast(S.SavageRoar) then return "savage_roar 84"; end
            else
                if HR.Cast(S.Channeling) then return "pool_resource 85"; end
            end
        end
        -- pool_resource,for_next=1
        -- primal_wrath,target_if=spell_targets.primal_wrath>1&dot.rip.remains<4
        if S.PrimalWrath:IsCastableP() and EvaluateCyclePrimalWrath95(Target) then
            if HR.Cast(S.PrimalWrath) then return "primal_wrath 99" end
        end
        -- pool_resource,for_next=1
        -- primal_wrath,target_if=spell_targets.primal_wrath>=2
        if S.PrimalWrath:IsCastableP() and EvaluateCyclePrimalWrath106(Target) then
            if HR.Cast(S.PrimalWrath) then return "primal_wrath 108" end
        end
        -- pool_resource,for_next=1
        -- rip,target_if=!ticking|(remains<=duration*0.3)&(!talent.sabertooth.enabled)|(remains<=duration*0.8&persistent_multiplier>dot.rip.pmultiplier)&target.time_to_die>8
        if S.Rip:IsCastableP() and EvaluateCycleRip115(Target) then
            if HR.Cast(S.Rip) then return "rip 155" end
        end
        -- pool_resource,for_next=1
        -- savage_roar,if=buff.savage_roar.remains<12
        if S.SavageRoar:IsCastableP() and (Player:BuffRemainsP(S.SavageRoarBuff) < 12) then
            if S.SavageRoar:IsUsablePPool() then
                if HR.Cast(S.SavageRoar) then return "savage_roar 157"; end
            else
                if HR.Cast(S.Channeling) then return "pool_resource 158"; end
            end
        end
        -- pool_resource,for_next=1
        -- maim,if=buff.iron_jaws.up
        if S.Maim:IsCastableP() and (Player:BuffP(S.IronJawsBuff)) then
            if S.Maim:IsUsablePPool() then
                if HR.Cast(S.Maim) then return "maim 163"; end
            else
                if HR.Cast(S.Channeling) then return "pool_resource 164"; end
            end
        end
        -- ferocious_bite,max_energy=1
        if S.FerociousBiteMaxEnergy:IsReadyP() and Player:ComboPoints() > 0 then
            if HR.Cast(S.FerociousBiteMaxEnergy) then return "ferocious_bite 168"; end
        end
        -- Pool if nothing else to do
        if (true) then
            if HR.Cast(S.Channeling) then return "pool_resource"; end
        end
    end
	
    local function Generators()
        -- regrowth,if=talent.bloodtalons.enabled&buff.predatory_swiftness.up&buff.bloodtalons.down&combo_points=4&dot.rake.remains<4
        if S.Regrowth:IsCastableP() and (S.Bloodtalons:IsAvailable() and Player:BuffP(S.PredatorySwiftnessBuff) and Player:BuffDownP(S.BloodtalonsBuff) and Player:ComboPoints() == 4 and Target:DebuffRemainsP(S.RakeDebuff) < 4) then
            if HR.Cast(S.Regrowth) then return "regrowth 174"; end
        end
        -- regrowth,if=talent.bloodtalons.enabled&buff.bloodtalons.down&buff.predatory_swiftness.up&talent.lunar_inspiration.enabled&dot.rake.remains<1
        if S.Regrowth:IsCastableP() and (S.Bloodtalons:IsAvailable() and Player:BuffDownP(S.BloodtalonsBuff) and Player:BuffP(S.PredatorySwiftnessBuff) and S.LunarInspiration:IsAvailable() and Target:DebuffRemainsP(S.RakeDebuff) < 1) then
            if HR.Cast(S.Regrowth) then return "regrowth 184"; end
        end
        -- brutal_slash,if=spell_targets.brutal_slash>desired_targets
        if S.BrutalSlash:IsCastableP() and (Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.BrutalSlash) then return "brutal_slash 196"; end
        end
        -- pool_resource,for_next=1
        -- thrash_cat,if=(refreshable)&(spell_targets.thrash_cat>2)
        if S.ThrashCat:IsCastableP() and ((Target:DebuffRefreshableCP(S.ThrashCatDebuff)) and (Cache.EnemiesCount[8] > 2)) then
            if S.ThrashCat:IsUsablePPool() then
                if HR.Cast(S.ThrashCat) then return "thrash_cat 199"; end
            else
                if HR.Cast(S.Channeling) then return "pool_resource 200"; end
            end
        end
        -- pool_resource,for_next=1
        -- thrash_cat,if=(talent.scent_of_blood.enabled&buff.scent_of_blood.down)&spell_targets.thrash_cat>3
        if S.ThrashCat:IsCastableP() and ((S.ScentofBlood:IsAvailable() and Player:BuffDownP(S.ScentofBloodBuff)) and Cache.EnemiesCount[8] > 3) then
            if S.ThrashCat:IsUsablePPool() then
                if HR.Cast(S.ThrashCat) then return "thrash_cat 209"; end
            else
                if HR.Cast(S.Channeling) then return "pool_resource 210"; end
            end
        end
        -- pool_resource,for_next=1
        -- swipe_cat,if=buff.scent_of_blood.up|(action.swipe_cat.damage*spell_targets.swipe_cat>(action.rake.damage+(action.rake_bleed.tick_damage*5)))
        -- TODO: Create RegisterDamage entries for this condition
        if S.SwipeCat:IsCastableP() and (Player:BuffP(S.ScentofBloodBuff)) then
            if S.SwipeCat:IsUsablePPool() then
                if HR.Cast(S.SwipeCat) then return "swipe_cat 217"; end
            else
                if HR.Cast(S.Channeling) then return "pool_resource 218"; end
            end
        end
        -- pool_resource,for_next=1
        -- rake,target_if=!ticking|(!talent.bloodtalons.enabled&remains<duration*0.3)&target.time_to_die>4
        if S.Rake:IsCastableP() and EvaluateCycleRake228(Target) then
            if HR.Cast(S.Rake) then return "rake 250" end
        end
        -- pool_resource,for_next=1
        -- rake,target_if=talent.bloodtalons.enabled&buff.bloodtalons.up&((remains<=7)&persistent_multiplier>dot.rake.pmultiplier*0.85)&target.time_to_die>4
        if S.Rake:IsCastableP() and EvaluateCycleRake257(Target) then
            if HR.Cast(S.Rake) then return "rake 275" end
        end
        -- moonfire_cat,if=buff.bloodtalons.up&buff.predatory_swiftness.down&combo_points<5
        if S.MoonfireCat:IsCastableP() and (Player:BuffP(S.BloodtalonsBuff) and Player:BuffDownP(S.PredatorySwiftnessBuff) and Player:ComboPoints() < 5) then
            if HR.Cast(S.MoonfireCat) then return "moonfire_cat 276"; end
        end
        -- brutal_slash,if=(buff.tigers_fury.up&(raid_event.adds.in>(1+max_charges-charges_fractional)*recharge_time))
        if S.BrutalSlash:IsCastableP() and ((Player:BuffP(S.TigersFuryBuff) and (10000000000 > (1 + S.BrutalSlash:MaxCharges() - S.BrutalSlash:ChargesFractionalP()) * S.BrutalSlash:RechargeP()))) then
            if HR.Cast(S.BrutalSlash) then return "brutal_slash 282"; end
        end
        -- moonfire_cat,target_if=refreshable
        if S.MoonfireCat:IsCastableP() and EvaluateCycleMoonfireCat302(Target) then
            if HR.Cast(S.MoonfireCat) then return "moonfire_cat 310" end
        end
        -- pool_resource,for_next=1
        -- thrash_cat,if=refreshable&((variable.use_thrash=2&(!buff.incarnation.up|azerite.wild_fleshrending.enabled))|spell_targets.thrash_cat>1)
        if S.ThrashCat:IsCastableP() and (Target:DebuffRefreshableCP(S.ThrashCatDebuff) and ((VarUseThrash == 2 and (not Player:BuffP(S.IncarnationBuff) or S.WildFleshrending:AzeriteEnabled())) or Cache.EnemiesCount[8] > 1)) then
            if S.ThrashCat:IsUsablePPool() then
                if HR.Cast(S.ThrashCat) then return "thrash_cat 312"; end
            else
                if HR.Cast(S.Channeling) then return "pool_resource 313"; end
            end
        end
        -- thrash_cat,if=refreshable&variable.use_thrash=1&buff.clearcasting.react&(!buff.incarnation.up|azerite.wild_fleshrending.enabled)
        if S.ThrashCat:IsCastableP() and (Target:DebuffRefreshableCP(S.ThrashCatDebuff) and VarUseThrash == 1 and bool(Player:BuffStackP(S.ClearcastingBuff)) and (not Player:BuffP(S.IncarnationBuff) or S.WildFleshrending:AzeriteEnabled())) then
            if HR.Cast(S.ThrashCat) then return "thrash_cat 327"; end
        end
        -- pool_resource,for_next=1
        -- swipe_cat,if=spell_targets.swipe_cat>1
        if S.SwipeCat:IsCastableP() and (Cache.EnemiesCount[8] > 1) then
            if S.SwipeCat:IsUsablePPool() then
                if HR.Cast(S.SwipeCat) then return "swipe_cat 344"; end
            else
                if HR.Cast(S.Channeling) then return "pool_resource 345"; end
            end
        end
        -- shred,if=dot.rake.remains>(action.shred.cost+action.rake.cost-energy)%energy.regen|buff.clearcasting.react
        if S.Shred:IsCastableP() and (Target:DebuffRemainsP(S.RakeDebuff) > (S.Shred:Cost() + S.Rake:Cost() - Player:EnergyPredicted()) / Player:EnergyRegen() or bool(Player:BuffStackP(S.ClearcastingBuff))) then
            if HR.Cast(S.Shred) then return "shred 347"; end
        end
        -- Pool if nothing else to do
        if (true) then
            if HR.Cast(S.Channeling) then return "Channeling"; end
        end
    end
	
    local function Opener()
        -- tigers_fury
        if S.TigersFury:IsCastableP() then
            if HR.Cast(S.TigersFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "tigers_fury 363"; end
        end
        -- rake,if=!ticking|buff.prowl.up
        if S.Rake:IsCastableP() and (not Target:DebuffP(S.RakeDebuff) or Player:BuffP(S.ProwlBuff)) then
            if HR.Cast(S.Rake) then return "rake 365"; end
        end
        -- variable,name=opener_done,value=dot.rip.ticking
        if (true) then
            VarOpenerDone = num(Target:DebuffP(S.RipDebuff))
        end
        -- wait,sec=0.001,if=dot.rip.ticking
        -- moonfire_cat,if=!ticking
        if S.MoonfireCat:IsCastableP() and (not Target:DebuffP(S.MoonfireCatDebuff)) then
            if HR.Cast(S.MoonfireCat) then return "moonfire_cat 380"; end
        end
        -- rip,if=!ticking
        -- Manual addition: Use Primal Wrath if >= 2 targets or Rip if only 1 target
        if S.PrimalWrath:IsCastableP() and (S.PrimalWrath:IsAvailable() and not Target:DebuffP(S.RipDebuff) and Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.PrimalWrath) then return "primal_wrath opener"; end
        end
        if S.Rip:IsCastableP() and (not Target:DebuffP(S.RipDebuff)) then
            if HR.Cast(S.Rip) then return "rip 388"; end
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

     	 -- IncapacitatingRoar
      	if useCC and (not S.MightyBash:IsAvailable() or not S.MightyBash:IsReady()) and S.IncapacitatingRoar:IsReady() and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.IncapacitatingRoar, true) then return "IncapacitatingRoar 5"; end
     	    else 
     	        return
     	    end 
     	end 		
		-- Soothe
		-- Note: Toggles  ("UseDispel", "UsePurge", "UseExpelEnrage")
        -- Category ("Dispel", "MagicMovement", "PurgeFriendly", "PurgeHigh", "PurgeLow", "Enrage")
        if S.Soothe:IsReady() and not ShouldStop and Action.AuraIsValid("player", "UseExpelEnrage", "Enrage") then
            if HR.Cast(S.Soothe) then return "" end
        end	
        -- auto_attack,if=!buff.prowl.up&!buff.shadowmeld.up
        -- run_action_list,name=opener,if=variable.opener_done=0
        if (VarOpenerDone == 0) then
            return Opener();
        end
        -- cat_form,if=!buff.cat_form.up
        if S.CatForm:IsCastableP() and (not Player:BuffP(S.CatFormBuff)) then
            if HR.Cast(S.CatForm, Action.GetToggle(2, "OffGCDasOffGCD")) then return "cat_form 402"; end
        end
        -- rake,if=buff.prowl.up|buff.shadowmeld.up
        if S.Rake:IsCastableP() and (Player:BuffP(S.ProwlBuff) or Player:BuffP(S.ShadowmeldBuff)) then
            if HR.Cast(S.Rake) then return "rake 406"; end
        end
        -- call_action_list,name=cooldowns
        if (HR.CDsON()) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- ferocious_bite,target_if=dot.rip.ticking&dot.rip.remains<3&target.time_to_die>10&(talent.sabertooth.enabled)
        if S.FerociousBite:IsReadyP() and Player:ComboPoints() > 0 and EvaluateCycleFerociousBite418(Target) then
            if HR.Cast(S.FerociousBite) then return "ferocious_bite 426" end
        end
        -- regrowth,if=combo_points=5&buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.down&(!buff.incarnation.up|dot.rip.remains<8)
        if S.Regrowth:IsCastableP() and (Player:ComboPoints() == 5 and Player:BuffP(S.PredatorySwiftnessBuff) and S.Bloodtalons:IsAvailable() and Player:BuffDownP(S.BloodtalonsBuff) and (not Player:BuffP(S.IncarnationBuff) or Target:DebuffRemainsP(S.RipDebuff) < 8)) then
            if HR.Cast(S.Regrowth) then return "regrowth 427"; end
        end
        -- run_action_list,name=finishers,if=combo_points>4
        if (Player:ComboPoints() > 4) then
            return Finishers();
        end
        -- run_action_list,name=generators
        if (true) then
            return Generators();
        end
        -- Pool if nothing else to do
        if (true) then
            if HR.Cast(S.Channeling) then return "Channeling"; end
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

