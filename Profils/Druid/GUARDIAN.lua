--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_DRUID_GUARDIAN] = {
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
    BearForm                              = Action.Create({ Type = "Spell", ID = 5487     }),
    CatForm                               = Action.Create({ Type = "Spell", ID = 768     }),
    BloodFury                             = Action.Create({ Type = "Spell", ID = 20572     }),
    Berserking                            = Action.Create({ Type = "Spell", ID = 26297     }),
    ArcaneTorrent                         = Action.Create({ Type = "Spell", ID = 50613     }),
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
    Fireblood                             = Action.Create({ Type = "Spell", ID = 265221     }),
    AncestralCall                         = Action.Create({ Type = "Spell", ID = 274738     }),
    Barkskin                              = Action.Create({ Type = "Spell", ID = 22812     }),
    LunarBeam                             = Action.Create({ Type = "Spell", ID = 204066     }),
    BristlingFur                          = Action.Create({ Type = "Spell", ID = 155835     }),
    Maul                                  = Action.Create({ Type = "Spell", ID = 6807     }),
    Ironfur                               = Action.Create({ Type = "Spell", ID = 192081     }),
    LayeredMane                           = Action.Create({ Type = "Spell", ID = 279552     }),
    Pulverize                             = Action.Create({ Type = "Spell", ID = 80313     }),
    Moonfire                              = Action.Create({ Type = "Spell", ID = 8921     }),
    Incarnation                           = Action.Create({ Type = "Spell", ID = 102558     }),
	ThrashCat                             = Action.Create({ Type = "Spell", ID = 106830     }),
    ThrashBear                            = Action.Create({ Type = "Spell", ID = 77758     }),
	SwipeCat                              = Action.Create({ Type = "Spell", ID = 106785     }),
    SwipeBear                             = Action.Create({ Type = "Spell", ID = 213771     }),
    Mangle                                = Action.Create({ Type = "Spell", ID = 33917     }),
    PoweroftheMoon                        = Action.Create({ Type = "Spell", ID = 273367     }),
    FrenziedRegeneration                  = Action.Create({ Type = "Spell", ID = 22842     }),
    BalanceAffinity                       = Action.Create({ Type = "Spell", ID = 197488     }),
    WildChargeTalent                      = Action.Create({ Type = "Spell", ID = 102401     }),
    WildChargeBear                        = Action.Create({ Type = "Spell", ID = 16979     }),
    SurvivalInstincts                     = Action.Create({ Type = "Spell", ID = 61336     }),
    SkullBash                             = Action.Create({ Type = "Spell", ID = 106839     }),
    HeartEssence                          = Action.Create({ Type = "Spell", ID = 298554     }),
	-- Utilities
	Typhoon                               = Action.Create({ Type = "Spell", ID = 132469   }),
	MightyBash                            = Action.Create({ Type = "Spell", ID = 5211   }),
	IncapacitatingRoar                    = Action.Create({ Type = "Spell", ID = 99  }),
	Soothe                                = Action.Create({ Type = "Spell", ID = 2908   }),
    -- Defensive
	SurvivalInstincts                     = Action.Create({ Type = "Spell", ID = 61336   }),
    -- Buffs
    PulverizeBuff                         = Action.Create({ Type = "Spell", ID = 158792     }),
    IncarnationBuff                       = Action.Create({ Type = "Spell", ID = 102558     }),
    GalacticGuardianBuff                  = Action.Create({ Type = "Spell", ID = 213708     }),
    SharpenedClawsBuff                    = Action.Create({ Type = "Spell", ID = 279943     }),
	-- Debuffs 
    ThrashBearDebuff                      = Action.Create({ Type = "Spell", ID = 192090     }),
    MoonfireDebuff                        = Action.Create({ Type = "Spell", ID = 164812     }),
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
	AnimaofDeath                          = Action.Create({ Type = "HeartOfAzeroth", ID = 294926, Hidden = true}),
	AnimaofDeath2                         = Action.Create({ Type = "HeartOfAzeroth", ID = 300002, Hidden = true}),
	AnimaofDeath3                         = Action.Create({ Type = "HeartOfAzeroth", ID = 300003, Hidden = true}),
	AnimaofLife                           = Action.Create({ Type = "HeartOfAzeroth", ID = 294964, Hidden = true}),
	AnimaofLife2                          = Action.Create({ Type = "HeartOfAzeroth", ID = 300004, Hidden = true}),
	AnimaofLife3                          = Action.Create({ Type = "HeartOfAzeroth", ID = 300005, Hidden = true}),
	Conflict                              = Action.Create({ Type = "HeartOfAzeroth", ID = 303823, Hidden = true}),
	Conflict2                             = Action.Create({ Type = "HeartOfAzeroth", ID = 304088, Hidden = true}),
	Conflict3                             = Action.Create({ Type = "HeartOfAzeroth", ID = 304121, Hidden = true}),
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_DRUID_GUARDIAN)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_DRUID_GUARDIAN], { __index = Action })

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
local IsTanking;
local AoERadius; -- Range variables
local EnemiesCount;

local EnemyRanges = {11, 8}
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

local function EvaluateCyclePulverize77(TargetUnit)
  return TargetUnit:DebuffStackP(S.ThrashBearDebuff) == 3 and not Player:BuffP(S.PulverizeBuff)
end

local function EvaluateCycleMoonfire88(TargetUnit)
  return TargetUnit:DebuffRefreshableCP(S.MoonfireDebuff) and EnemiesCount < 2
end

local function EvaluateCycleMoonfire139(TargetUnit)
  return Player:BuffP(S.GalacticGuardianBuff) and EnemiesCount < 2
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
    S.CondensedLifeforce = S.CondensedLifeforce2:IsAvailable() and S.CondensedLifeforce2 or S.CondensedLifeforce
    S.CondensedLifeforce = S.CondensedLifeforce3:IsAvailable() and S.CondensedLifeforce3 or S.CondensedLifeforce
    S.AnimaofDeath = S.AnimaofDeath2:IsAvailable() and S.AnimaofDeath2 or S.AnimaofDeath
    S.AnimaofDeath = S.AnimaofDeath3:IsAvailable() and S.AnimaofDeath3 or S.AnimaofDeath
    S.AnimaofLife = S.AnimaofLife2:IsAvailable() and S.AnimaofLife2 or S.AnimaofLife
    S.AnimaofLife = S.AnimaofLife3:IsAvailable() and S.AnimaofLife3 or S.AnimaofLife
    S.Conflict = S.Conflict2:IsAvailable() and S.Conflict2 or S.Conflict	
	S.Conflict = S.Conflict3:IsAvailable() and S.Conflict3 or S.Conflict
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

local function Swipe()
  if Player:Buff(S.CatForm) then
    return S.SwipeCat;
  else
    return S.SwipeBear;
  end
end

local function Thrash()
  if Player:Buff(S.CatForm) then
    return S.ThrashCat;
  else
    return S.ThrashBear;
  end
end

local function Init ()
  HL.RegisterNucleusAbility(77758, 8, 6)               -- Thrash (Bear)
  HL.RegisterNucleusAbility(213771, 8, 6)              -- Swipe (Bear)
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
	Init()
    EnemiesCount = Cache.EnemiesCount[AoERadius]
    IsTanking = Player:IsTankingAoE(AoERadius) or Player:IsTanking(Target)
	
	-- Determine ranges
    if S.BalanceAffinity:IsAvailable() then
        AoERadius = 11
    else
        AoERadius = 8
    end
	
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
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastableP() and not ShouldStop then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- bear_form
        if S.BearForm:IsCastableP() and not ShouldStop and Player:BuffDownP(S.BearForm) then
            if HR.Cast(S.BearForm) then return "bear_form 3"; end
        end
        -- potion
        if I.PotionofFocusedResolve:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") then
            if HR.CastSuggested(I.PotionofFocusedResolve) then return "battle_potion_of_agility 8"; end
        end
    end
    local function Cooldowns()
        -- potion
        if I.PotionofFocusedResolve:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") then
            if HR.CastSuggested(I.PotionofFocusedResolve) then return "battle_potion_of_agility 10"; end
        end
        -- heart_essence
        if S.HeartEssence:IsCastableP() and not ShouldStop then
            if HR.Cast(S.HeartEssence) then return "heart_essence"; end
        end
        -- blood_fury
        if S.BloodFury:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 12"; end
        end
        -- berserking
        if S.Berserking:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 14"; end
        end
        -- arcane_torrent
        if S.ArcaneTorrent:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return "arcane_torrent 16"; end
        end
        -- lights_judgment
        if S.LightsJudgment:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 18"; end
        end
        -- fireblood
        if S.Fireblood:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 20"; end
        end
        -- ancestral_call
        if S.AncestralCall:IsCastableP() and not ShouldStop and HR.CDsON() then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ancestral_call 22"; end
        end
        -- Defensives and Bristling Fur
        if IsTanking and Player:BuffP(S.BearForm) then
            if Player:HealthPercentage() < Action.GetToggle(2, "FrenziedRegenHP") and S.FrenziedRegeneration:IsCastableP() and not ShouldStop and Player:Rage() > 10
                and not Player:Buff(S.FrenziedRegeneration) and not Player:HealingAbsorbed() then
                if HR.Cast(S.FrenziedRegeneration, Action.GetToggle(2, "OffGCDasOffGCD")) then return "frenzied_regen defensive"; end
            end
            if S.Ironfur:IsCastableP() and not ShouldStop and Player:Rage() >= S.Ironfur:Cost() + 1 and IsTanking and (not Player:Buff(S.Ironfur) 
                or (Player:BuffStack(S.Ironfur) < 2 and Player:BuffRefreshableP(S.Ironfur, 2.4))) then
                if HR.Cast(S.Ironfur, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ironfur defensive"; end
            end
            -- barkskin,if=buff.bear_form.up
            if S.Barkskin:IsCastableP() and not ShouldStop and Player:HealthPercentage() < Action.GetToggle(2, "BarkskinHP") then
                if HR.Cast(S.Barkskin, Action.GetToggle(2, "OffGCDasOffGCD")) then return "barkskin 24"; end
            end
            -- lunar_beam,if=buff.bear_form.up
            if S.LunarBeam:IsCastableP() and not ShouldStop and Player:HealthPercentage() < Action.GetToggle(2, "LunarBeamHP") then
                if HR.Cast(S.LunarBeam, Action.GetToggle(2, "OffGCDasOffGCD")) then return "lunar_beam 28"; end
            end
            -- Survival Instincts
            if S.SurvivalInstincts:IsCastableP() and not ShouldStop and Player:HealthPercentage() < Action.GetToggle(2, "SurvivalInstinctsHP") then
                if HR.Cast(S.SurvivalInstincts, Action.GetToggle(2, "OffGCDasOffGCD")) then return "survival_instincts defensive"; end
            end
            -- bristling_fur,if=buff.bear_form.up
            if S.BristlingFur:IsCastableP() and not ShouldStop and Player:Rage() < Action.GetToggle(2, "BristlingFurRage") then
                if HR.Cast(S.BristlingFur) then return "bristling_fur 32"; end
            end
        end
        -- incarnation,if=(dot.moonfire.ticking|active_enemies>1)&dot.thrash_bear.ticking
        if S.Incarnation:IsReadyP() and not ShouldStop and ((Target:DebuffP(S.MoonfireDebuff) or EnemiesCount > 1) and Target:DebuffP(S.ThrashBearDebuff)) then
            if HR.Cast(S.Incarnation) then return "incarnation 33"; end
        end
        -- use_items
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
  	    if useKick and S.SkullBash:IsReady() and not ShouldStop and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.SkullBash, true) then return "SkullBash 5"; end
         	else 
          	    return
         	end 
      	end 
	
     	 -- MightyBash
      	if useCC and S.MightyBash:IsAvailable() and S.MightyBash:IsReady() and not ShouldStop and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.MightyBash, true) then return "MightyBash 5"; end
     	    else 
     	        return
     	    end 
     	end 

     	 -- IncapacitatingRoar
      	if useCC and (not S.MightyBash:IsAvailable() or not S.MightyBash:IsReady() and not ShouldStop) and S.IncapacitatingRoar:IsReady() and not ShouldStop and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.IncapacitatingRoar, true) then return "IncapacitatingRoar 5"; end
     	    else 
     	        return
     	    end 
     	end 		
		-- Soothe
		-- Note: Toggles  ("UseDispel", "UsePurge", "UseExpelEnrage")
        -- Category ("Dispel", "MagicMovement", "PurgeFriendly", "PurgeHigh", "PurgeLow", "Enrage")
        if S.Soothe:IsReady() and not ShouldStop and not ShouldStop and Action.AuraIsValid("player", "UseExpelEnrage", "Enrage") then
            if HR.Cast(S.Soothe) then return "" end
        end	
        
		-- Charge if out of range
        if S.WildChargeTalent:IsAvailable() and S.WildChargeBear:IsCastableP() and not ShouldStop and not Target:IsInRange(AoERadius) and Target:IsInRange(25) then
            if HR.Cast(S.WildChargeBear) then return "wild_charge in_combat"; end
        end

        -- auto_attack
        -- call_action_list,name=cooldowns
        if (true) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- maul,if=rage.deficit<10&active_enemies<4
        if S.Maul:IsReadyP() and not ShouldStop and (Player:RageDeficit() < 10 and EnemiesCount < 4) then
            if HR.Cast(S.Maul) then return "maul 41"; end
        end
        -- maul,if=essence.conflict_and_strife.major&!buff.sharpened_claws.up
        if S.Maul:IsReadyP() and not ShouldStop and (S.Conflict:IsAvailable() and Player:BuffDownP(S.SharpenedClawsBuff)) then
            if HR.Cast(S.Maul) then return "maul 42"; end
        end
        -- ironfur,if=cost=0|(rage>cost&azerite.layered_mane.enabled&active_enemies>2)
        if S.Ironfur:IsCastableP() and not ShouldStop and (S.Ironfur:Cost() == 0 or (Player:Rage() > S.Ironfur:Cost() and S.LayeredMane:AzeriteEnabled() and EnemiesCount > 2)) then
            if HR.Cast(S.Ironfur, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ironfur 49"; end
        end
        -- pulverize,target_if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks
        if S.Pulverize:IsCastableP() and EvaluateCyclePulverize77(Target) and not ShouldStop then
            if HR.Cast(S.Pulverize) then return "pulverize 83" end
        end
        if S.Pulverize:IsCastableP() and not ShouldStop and Target:DebuffStackP(S.ThrashBearDebuff) == 3 then
            if HR.Cast(S.Pulverize) then return "pulverize 84"; end
        end
        -- moonfire,target_if=dot.moonfire.refreshable&active_enemies<2
        if S.Moonfire:IsCastableP() and EvaluateCycleMoonfire88(Target) and not ShouldStop then
            if HR.Cast(S.Moonfire) then return "moonfire 100" end
        end
        -- thrash,if=(buff.incarnation.down&active_enemies>1)|(buff.incarnation.up&active_enemies>4)
        if Thrash():IsCastableP() and not ShouldStop and ((Player:BuffDownP(S.IncarnationBuff) and EnemiesCount > 1) or (Player:BuffP(S.IncarnationBuff) and EnemiesCount > 4)) then
            if HR.Cast(Thrash()) then return "thrash 103"; end
        end
        -- swipe,if=buff.incarnation.down&active_enemies>4
        if Swipe():IsCastableP() and not ShouldStop and (Player:BuffDownP(S.IncarnationBuff) and EnemiesCount > 4) then
            if HR.Cast(Swipe()) then return "swipe 121"; end
        end
        -- mangle,if=dot.thrash_bear.ticking
        if S.Mangle:IsCastableP() and not ShouldStop and (Target:DebuffP(S.ThrashBearDebuff)) then
            if HR.Cast(S.Mangle) then return "mangle 131"; end
        end
        -- moonfire,target_if=buff.galactic_guardian.up&active_enemies<2
        if S.Moonfire:IsCastableP() and EvaluateCycleMoonfire139(Target) and not ShouldStop then
            if HR.CastCycle(S.Moonfire) then return "moonfire 151" end
        end
        -- thrash
        if Thrash():IsCastableP() and not ShouldStop then
            if HR.Cast(Thrash()) then return "thrash 152"; end
        end
        -- maul
        if S.Maul:IsReadyP() and not ShouldStop and (not IsTanking or (Player:HealthPercentage() >= 80 and Player:Rage() > 85)) then
            if HR.Cast(S.Maul) then return "maul 154"; end
        end
        -- swipe
        if Swipe():IsCastableP() and not ShouldStop then
            if HR.Cast(Swipe()) then return "swipe 168"; end
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

