-----------------------------
-- Taste TMW Action Rotation
-----------------------------

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action
local TeamCache = Action.TeamCache
local EnemyTeam = Action.EnemyTeam
local FriendlyTeam = Action.FriendlyTeam
--local HealingEngine = Action.HealingEngine
local LoC = Action.LossOfControl
local ActionPlayer = Action.Player 
local MultiUnits = Action.MultiUnits
local UnitCooldown = Action.UnitCooldown
local ActionUnit = Action.Unit 
--local Pet = LibStub("PetLibrary")
--local Azerite = LibStub("AzeriteTraits")
local TR                                     = Action.TasteRotation

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
    Revive				            		= Action.Create({ Type = "Spell", ID = 50769    }),
    Rebirth				            		= Action.Create({ Type = "Spell", ID = 20484    }),
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
    Gore                                  = Action.Create({ Type = "Spell", ID = 93622     }),
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
    EntangleRoots                          = Action.Create({ Type = "Spell", ID = 339    }),
    MassEntanglement                          = Action.Create({ Type = "Spell", ID = 102359    }),
    UrsolsVortex                          = Action.Create({ Type = "Spell", ID = 102793    }),
    StampedRoar                           = Action.Create({ Type = "Spell", ID = 77761     }), 
    RemoveCorruption						= Action.Create({ Type = "Spell", ID = 2782}),
    TravelForm                               = Action.Create({ Type = "Spell", ID = 783   }),
	Typhoon                               = Action.Create({ Type = "Spell", ID = 132469   }),
	MightyBash                            = Action.Create({ Type = "Spell", ID = 5211   }),
	IncapacitatingRoar                    = Action.Create({ Type = "Spell", ID = 99  }),
	Soothe                                = Action.Create({ Type = "Spell", ID = 2908   }),
    -- Defensive
    Swiftmend								= Action.Create({ Type = "Spell", ID = 18562}),
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
    Bursting                                 = Action.Create({ Type = "Spell", ID = 240443, Hidden = true     }), -- Corruption pet chasing you	
    Dash                                    = Action.Create({ Type = "Spell", ID = 1850, Hidden = true     }),
    TigerDash                               = Action.Create({ Type = "Spell", ID = 252216, Hidden = true     }),
    Channeling                            = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    Souldoftheforest                           = Action.Create({ Type = "Spell", ID = 158477, Hidden = true     }),		
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
    LingeringPsychicShell                    = Action.Create({ Type = "Trinket", ID = 174277, QueueForbidden = true }),
    -- Potions
    PotionofUnbridledFury                 = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
    PotionofFocusedResolve                = Action.Create({ Type = "Potion", ID = 168506, QueueForbidden = true }),
    PotionTest                            = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
    -- Hidden Heart of Azeroth
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368    }),
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
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() , it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady()  instead of Action[PLAYERSPEC].Guard:IsReady() 
local A = setmetatable(Action[ACTION_CONST_DRUID_GUARDIAN], { __index = Action })

-- Simcraft Imported
-- HeroLib
local HL         = HeroLib
local Cache      = HeroCache
local Unit       = HL.Unit
local Player     = Unit.Player
local MouseOver  = Unit.MouseOver
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

-- Create table to exclude above trinkets from On Use function

local OnUseExcludes = { 169311, 167555 }

-- Rotation Var
local ShouldReturn; -- Used to get the return string
local IsTanking;
local Fourty; -- Range variables
local AoERadius; -- Range variables
local MeleeRadius; -- Range variables
local EnemiesCount;
local UseMaul;
local ForceOffGCD = {true, false};

local EnemyRanges = {11, 8}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i);
  end
end

HL:RegisterForEvent(function()
  S.ConcentratedFlame:RegisterInFlight();
end, "LEARNED_SPELL_IN_TAB")
S.ConcentratedFlame:RegisterInFlight();

local function num(val)
  if val then return 1 else return 0 end
end

local function bool(val)
  return val ~= 0
end

local function EvaluateCyclePulverize77(Target)
  return Target:DebuffStackP(S.ThrashBearDebuff) == 3 and not Player:BuffP(S.PulverizeBuff)
end

local function EvaluateCycleMoonfire88(Target)
  return Target:DebuffRefreshableCP(S.MoonfireDebuff) and EnemiesCount < 2
end

local function EvaluateCycleMoonfire139(Target)
  return Player:BuffP(S.GalacticGuardianBuff) and EnemiesCount < 2
end
local function Init ()
  HL.RegisterNucleusAbility(77758, 8, 6)               -- Thrash (Bear)
  HL.RegisterNucleusAbility(213771, 8, 6)              -- Swipe (Bear)
end
Init()

--- ======= ACTION LISTS =======
local function APL(icon) 
    local Precombat, Cleave, Essences, Multi, Cooldowns
    -- Action specifics remap
    local Trinket1IsAllowed, Trinket2IsAllowed = TR.TrinketIsAllowed()
	local Pull = Action.BossMods_Pulling()
    -- Determine ranges
    if S.BalanceAffinity:IsAvailable() then
        AoERadius = 11
    else
        AoERadius = 8
    end

    -- 40
    if S.BalanceAffinity:IsAvailable() then
        Fourty = 43
    else
        Fourty = 40
    end

    -- Determine ranges
    if S.BalanceAffinity:IsAvailable() then
        MeleeRadius = 9
    else
        MeleeRadius = "Melee"
    end
    UpdateRanges()
    EnemiesCount = Cache.EnemiesCount[AoERadius]
    IsTanking = Player:IsTankingAoE(AoERadius) or Player:IsTanking(Target)
    UseMaul = false
    if (not Action.GetToggle(2, "RageDefensive") or (Action.GetToggle(2, "RageDefensive") and (not IsTanking or Player:RageDeficit() <= 10))) then
        UseMaul = true
    end   
    if Player:BuffP(S.CatForm) or Player:BuffP(S.TravelForm) then
        return Action.ShouldStop()
    end
    -- Stop DPS Bursting
    if Player:DebuffStackP(S.Bursting) > 3 then
        if HR.Cast(S.Bursting) then return ""; end
    end
     -- Rebirth
     if Player:Rage() >= 30 and ActionUnit("mouseover"):IsPlayer() and FriendlyTeam("mouseover") and ActionUnit("mouseover"):IsDead() and Player:AffectingCombat() then
        if HR.Cast(S.Rebirth, ForceOffGCD) then return ""; end
    end
    -- Revive
    if S.Revive:IsReady() and ActionUnit("mouseover"):IsPlayer() and FriendlyTeam("mouseover") and ActionUnit("mouseover"):IsDead() and not Player:AffectingCombat() then
        if HR.Cast(S.Revive) then return ""; end
    end
    -- mangle explosives
    if S.Mangle:IsCastableP(MeleeRadius) and ActionUnit("target"):IsExplosives() then
        if HR.Cast(S.Mangle) then return ""; end
    end
    if S.Moonfire:IsCastableP(MeleeRadius) and Player:BuffP(S.GalacticGuardianBuff) and ActionUnit("target"):IsExplosives() then
        if HR.Cast(S.Moonfire) then return ""; end
    end
    local function Precombat()
        -- flask
        -- food
        -- augmentation
        -- snapshot_stats
        -- memory_of_lucid_dreams
        -- bear_form
        if S.BearForm:IsCastableP() and Player:BuffDownP(S.BearForm) then
            if HR.Cast(S.BearForm) then return "bear_form 3"; end
        end
        if S.MemoryofLucidDreams:IsCastableP() and Pull > 0.1 and Pull <= 1  then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- bear_form
        if S.BearForm:IsCastableP() and Player:BuffDownP(S.BearForm) then
            if HR.Cast(S.BearForm) then return "bear_form 3"; end
        end
        -- potion
        if I.PotionofFocusedResolve:IsReady()  and Action.GetToggle(1, "Potion") and Pull > 0.1 and Pull <= 1 then
            if HR.Cast(I.PotionofFocusedResolve) then return "battle_potion_of_agility 8"; end
        end
    end
    Cleave = function()
        -- pulverize,target_if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks
        if S.Pulverize:IsReadyP(AoERadius) and (Target:DebuffStackP(S.ThrashBearDebuff) == 3) then
            if HR.Cast(S.Pulverize) then return ""; end
        end
        -- maul,if=rage.deficit<=10
        if S.Maul:IsReadyP(MeleeRadius) and UseMaul and (Player:RageDeficit() <= 20) then
          if HR.Cast(S.Maul) then return "maul 51"; end
        end
        -- ironfur,if=cost<=0
        if S.Ironfur:IsReadyP() and (S.Ironfur:Cost() <= 0) then
            if HR.Cast(S.Ironfur) then return "ironfur 93"; end
        end
        -- pulverize,target_if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks
        if S.Pulverize:IsReadyP(MeleeRadius) and (Target:DebuffStackP(S.ThrashBearDebuff) == 3) then
          if HR.Cast(S.Pulverize) then return "pulverize 55"; end
        end
        -- moonfire,target_if=!dot.moonfire.ticking
        if S.Moonfire:IsCastableP(MeleeRadius) and (Target:DebuffDownP(S.MoonfireDebuff)) then
            if HR.Cast(S.Moonfire, nil, nil, 40) then return "moonfire 57"; end
        end
        -- mangle,if=dot.thrash_bear.ticking
        if S.Mangle:IsCastableP(MeleeRadius) and (Target:DebuffP(S.ThrashBearDebuff)) then
          if HR.Cast(S.Mangle) then return "mangle 59"; end
        end
        -- moonfire,target_if=buff.galactic_guardian.up&active_enemies=1|dot.moonfire.refreshable
        if (S.Moonfire:IsCastableP(MeleeRadius) and Target:AffectingCombat()) and (Player:BuffP(S.GalacticGuardianBuff) and Cache.EnemiesCount[8] == 1  or Target:DebuffRefreshableCP(S.MoonfireDebuff)) then
          if HR.Cast(S.Moonfire) then return "moonfire 61"; end
        end
        -- maul
        if S.Maul:IsReadyP(MeleeRadius) and UseMaul then
          if HR.Cast(S.Maul) then return "maul 63"; end
        end
        -- thrash
        if S.ThrashBear:IsCastableP(AoERadius) then
          if HR.Cast(S.ThrashBear) then return "thrash 65"; end
        end
        -- swipe
        if S.SwipeBear:IsCastableP(AoERadius) then
          if HR.Cast(S.SwipeBear) then return "swipe 67"; end
        end
    end
    Essences = function()
        -- concentrated_flame,if=essence.the_crucible_of_flame.major&((!dot.concentrated_flame_burn.ticking&!action.concentrated_flame_missile.in_flight)^time_to_die<=7)
        if S.ConcentratedFlame:IsCastableP(Fourty) and ((Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight()) or Target:BossTimeToDie() <= 7) then
          if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 71"; end
        end
        -- anima_of_death,if=essence.anima_of_life_and_death.major
        if S.AnimaofDeath:IsCastableP(8) and HR.CDsON() then
          if HR.Cast(S.AnimaofDeath) then return "anima_of_death 73"; end
        end
        -- memory_of_lucid_dreams,if=essence.memory_of_lucid_dreams.major
        if S.MemoryofLucidDreams:IsCastableP() and HR.CDsON() then
          if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 75"; end
        end
        -- worldvein_resonance,if=essence.worldvein_resonance.major
        if S.WorldveinResonance:IsCastableP() and HR.CDsON() then
          if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance 77"; end
        end
        -- ripple_in_space,if=essence.ripple_in_space.major
        if S.RippleInSpace:IsCastableP() and HR.CDsON() then
          if HR.Cast(S.RippleInSpace) then return "ripple_in_space 79"; end
        end
    end
    Multi = function()
        -- maul,if=essence.conflict_and_strife.major&!buff.sharpened_claws.up
        if S.Maul:IsReadyP(MeleeRadius) and UseMaul and (Spell:MajorEssenceEnabled(S.ConflictandStrife) and Player:BuffDownP(S.SharpenedClawsBuff)) then
          if HR.Cast(S.Maul) then return "maul 91"; end
        end
        -- ironfur,if=(rage>=cost&azerite.layered_mane.enabled)|rage.deficit<10
        if S.Ironfur:IsReadyP() and (S.LayeredMane:AzeriteEnabled() or Player:RageDeficit() < 10) then
          if HR.Cast(S.Ironfur) then return "ironfur 93"; end
        end
        -- thrash,if=(buff.incarnation.up&active_enemies>=4)|cooldown.thrash_bear.up
        if S.ThrashBear:IsCastableP(AoERadius) and ((Player:BuffP(S.IncarnationBuff) and Cache.EnemiesCount[8] >= 4) or S.ThrashBear:CooldownUpP()) then
          if HR.Cast(S.ThrashBear) then return "thrash 95"; end
        end
        -- mangle,if=buff.incarnation.up&active_enemies=3&dot.thrash_bear.ticking
        if S.Mangle:IsCastableP(MeleeRadius) and (Player:BuffP(S.IncarnationBuff) and Cache.EnemiesCount[8] <= 5 and Target:DebuffP(S.ThrashBearDebuff)) then
          if HR.Cast(S.Mangle) then return "mangle 97"; end
        end
        -- moonfire,if=dot.moonfire.refreshable&active_enemies<=4
        --if S.Moonfire:IsCastableP(40) and (Target:DebuffRefreshableCP(S.MoonfireDebuff) and Cache.EnemiesCount[8] <= 4) then
           --if HR.Cast(S.Moonfire) then return "moonfire 98"; end
        --end
        -- swipe,if=buff.incarnation.down
        if S.SwipeBear:IsCastableP(AoERadius) and (Player:BuffDownP(S.IncarnationBuff)) then
          if HR.Cast(S.SwipeBear) then return "swipe 99"; end
        end
    end
    local function Cooldowns()
        -- potion
        if I.PotionofFocusedResolve:IsReady()  and Action.GetToggle(1, "Potion") then
            if HR.Cast(I.PotionofFocusedResolve) then return "battle_potion_of_agility 10"; end
        end
        if (HR.CDsON()) then
            -- heart_essence
            if S.HeartEssence:IsCastableP()  then
                if HR.Cast(S.HeartEssence) then return "heart_essence"; end
            end
            -- blood_fury
            if S.BloodFury:IsCastableP()  and HR.CDsON() then
                if HR.Cast(S.BloodFury) then return "blood_fury 12"; end
            end
            -- berserking
            if S.Berserking:IsCastableP()  and HR.CDsON() then
                if HR.Cast(S.Berserking) then return "berserking 14"; end
            end
            -- arcane_torrent
            if S.ArcaneTorrent:IsCastableP()  and HR.CDsON() then
                if HR.Cast(S.ArcaneTorrent) then return "arcane_torrent 16"; end
            end
            -- lights_judgment
            if S.LightsJudgment:IsCastableP()  and HR.CDsON() then
                if HR.Cast(S.LightsJudgment) then return "lights_judgment 18"; end
            end
            -- fireblood
            if S.Fireblood:IsCastableP()  and HR.CDsON() then
                if HR.Cast(S.Fireblood) then return "fireblood 20"; end
            end
            -- ancestral_call
            if S.AncestralCall:IsCastableP()  and HR.CDsON() then
                if HR.Cast(S.AncestralCall) then return "ancestral_call 22"; end
            end
        end
        
        -- Defensives and Bristling Fur
        if IsTanking and Player:BuffP(S.BearForm) then
            if Player:HealthPercentage() < Action.GetToggle(2, "FrenziedRegenerationHP") and S.FrenziedRegeneration:IsCastableP() and Player:Rage() > 10
                and not Player:Buff(S.FrenziedRegeneration) and not Player:HealingAbsorbed() then
                if HR.Cast(S.FrenziedRegeneration) then return "frenzied_regen defensive"; end
            end
            if S.Ironfur:IsCastableP()  and Player:Rage() >= S.Ironfur:Cost() + 1 and (not Player:Buff(S.Ironfur) 
                or (Player:BuffStack(S.Ironfur) < 2 and Player:BuffRefreshableP(S.Ironfur, 2.4))) then
                if HR.Cast(S.Ironfur) then return "ironfur defensive"; end
            end
            -- barkskin,if=buff.bear_form.up
            if S.Barkskin:IsCastableP()  and Player:HealthPercentage() < Action.GetToggle(2, "BarkskinHP") then
                if HR.Cast(S.Barkskin) then return "barkskin 24"; end
            end
            -- lunar_beam,if=buff.bear_form.up
            if S.LunarBeam:IsCastableP()  and Player:HealthPercentage() < Action.GetToggle(2, "LunarBeamHP") then
                if HR.Cast(S.LunarBeam) then return "lunar_beam 28"; end
            end
            -- Survival Instincts
            if S.SurvivalInstincts:IsCastableP()  and Player:HealthPercentage() < Action.GetToggle(2, "SurvivalInstinctsHP") then
                if HR.Cast(S.SurvivalInstincts) then return "survival_instincts defensive"; end
            end
            -- bristling_fur,if=buff.bear_form.up
            if S.BristlingFur:IsCastableP()  and Player:Rage() < Action.GetToggle(2, "BristlingFurRage") then
                if HR.Cast(S.BristlingFur) then return "bristling_fur 32"; end
            end
            -- moon fire
            if S.Moonfire:IsCastableP(Fourty) and Player:BuffP(S.GalacticGuardianBuff) and ActionUnit("target"):IsPlayer() then
                if HR.Cast(S.Moonfire) then return "moonfire 61"; end
            end
            if S.Moonfire:IsCastableP(Fourty) and ActionUnit("target"):IsPlayer() and (Target:DebuffDownP(S.MoonfireDebuff)) then
                if HR.Cast(S.Moonfire) then return "moonfire 57"; end
            end
            -- mangle
            --if S.Mangle:IsCastableP(MeleeRadius) and Target:DebuffP(S.ThrashBearDebuff) and not (Player:PrevGCDP(1, S.Mangle)) then
                --if HR.Cast(S.Mangle) then return "mangle 59"; end
            --end
            -- Pulverize 
            -- pulverize,target_if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks
            if S.Pulverize:IsReadyP(AoERadius) and (Target:DebuffStackP(S.ThrashBearDebuff) == 3 and Player:BuffRemainsP(S.PulverizeBuff) < 5) then
                if HR.Cast(S.Pulverize) then return ""; end
            end
        end
        -- incarnation,if=(dot.moonfire.ticking|active_enemies>1)&dot.thrash_bear.ticking
        if S.Incarnation:IsReadyP() and HR.CDsON() then
            if HR.Cast(S.Incarnation) then return "incarnation 33"; end
        end
        -- use_items
       
        local Trinket1IsAllowed, Trinket2IsAllowed = TR.TrinketIsAllowed()
        -- Non SIMC Custom Trinket1
        if Action.GetToggle(1, "Trinkets")[1] and A.Trinket1:IsReady("target") and Trinket1IsAllowed and Player:AffectingCombat() then	    
            if A.Trinket1:AbsentImun(unit, "DamageMagicImun")  then 
                    return A.Trinket1:Show(icon)
            end 		
        end

        -- Non SIMC Custom Trinket2
        if Action.GetToggle(1, "Trinkets")[2] and A.Trinket2:IsReady("target") and Trinket2IsAllowed and Player:AffectingCombat() then	    
                if A.Trinket2:AbsentImun(unit, "DamageMagicImun")  then 
                    return A.Trinket2:Show(icon)
                end 	
        end

    end  
    -- call precombat
    if not Player:AffectingCombat() then        
        local ShouldReturn = Precombat(); 
            if ShouldReturn then return ShouldReturn; 
        end    
    end	    
    --- In Combat
    if Player:AffectingCombat() then
        -- Soothe
		-- Note: Toggles  ("UseDispel", "UsePurge", "UseExpelEnrage")
        -- Category ("Dispel", "MagicMovement", "PurgeFriendly", "PurgeHigh", "PurgeLow", "Enrage")
        if S.Soothe:IsReady() and Action.AuraIsValid("target", "UseExpelEnrage", "Enrage") then
            if HR.Cast(S.Soothe) then return "" end
        end		
		-- Interrupt Handler
  		local unit = "target"
        local Trinket1IsAllowed, Trinket2IsAllowed = TR.TrinketIsAllowed()

        -- Supportive
        if A.RemoveCorruption:IsReady("player") and A.AuraIsValid("player", "UseDispel", "Dispel") then 
            if HR.Cast(S.RemoveCorruption) then return ""; end
        end
        -- bear_form
        if S.BearForm:IsCastableP() and Player:BuffDownP(S.BearForm) then
            if HR.Cast(S.BearForm) then return "bear_form 3"; end
        end
  	    -- SkullBash
  	    local unit = "target"
   		local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
		
  	    -- Disrupt
  	    if useKick and S.SkullBash:IsReady() and not ShouldStop then 
		  	if ActionUnit(unit):CanInterrupt(true, nil, 10, 10) or ActionUnit(unit):CanInterrupt(true, nil, 97, 97) then
          	    if HR.Cast(S.SkullBash, true) then return "Disrupt 5"; end
         	end 
      	end 
    
        -- auto_attack
        -- call_action_list,name=cooldowns
        if (true) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=essences
        if (true) then
            local ShouldReturn = Essences(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=cleave,if=active_enemies<=2
        if (Cache.EnemiesCount[8] <= 2) then
            local ShouldReturn = Cleave(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=multi,if=active_enemies>=3
        if (Cache.EnemiesCount[8] >= 3) then
            local ShouldReturn = Multi(); if ShouldReturn then return ShouldReturn; end
        end
        if S.Moonfire:IsCastableP(Fourty) and ActionUnit("target"):IsPlayer() then
            if HR.Cast(S.Moonfire) then return "moonfire 57"; end
        end
    end
end
-- Finished



-----------------------------------------
--                 ROTATION  
-----------------------------------------

-- [3] is Single rotation (supports all actions)
A[3] = function(icon)
    if APL(icon) then 
        return true 
    end
end

