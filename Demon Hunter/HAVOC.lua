--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_DEMONHUNTER_HAVOC] = {
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
  Imprison                             = Action.Create({ Type = "Spell", ID = 217832}),
  Metamorphosis                         = Action.Create({ Type = "Spell", ID = 191427}),
  ChaoticTransformation                 = Action.Create({ Type = "Spell", ID = 288754}),
  Demonic                               = Action.Create({ Type = "Spell", ID = 213410}),
  EyeBeam                               = Action.Create({ Type = "Spell", ID = 198013}),
  BladeDance                            = Action.Create({ Type = "Spell", ID = 188499}),
  Nemesis                               = Action.Create({ Type = "Spell", ID = 206491}),  
  DarkSlash                             = Action.Create({ Type = "Spell", ID = 258860}),
  Annihilation                          = Action.Create({ Type = "Spell", ID = 201427}),  
  ChaosStrike                           = Action.Create({ Type = "Spell", ID = 162794}),
  DeathSweep                            = Action.Create({ Type = "Spell", ID = 210152}),
  FelBarrage                            = Action.Create({ Type = "Spell", ID = 258925}),
  RevolvingBlades                       = Action.Create({ Type = "Spell", ID = 279581}),
  ImmolationAura                        = Action.Create({ Type = "Spell", ID = 258920}),
  Felblade                              = Action.Create({ Type = "Spell", ID = 232893}),
  FelRush                               = Action.Create({ Type = "Spell", ID = 195072}),
  DemonBlades                           = Action.Create({ Type = "Spell", ID = 203555}),
  DemonsBite                            = Action.Create({ Type = "Spell", ID = 162243}),
  ThrowGlaive                           = Action.Create({ Type = "Spell", ID = 185123}),
  VengefulRetreat                       = Action.Create({ Type = "Spell", ID = 198793}),
  Momentum                              = Action.Create({ Type = "Spell", ID = 206476}),  
  FelMastery                            = Action.Create({ Type = "Spell", ID = 192939}),
  BlindFury                             = Action.Create({ Type = "Spell", ID = 203550}),
  FirstBlood                            = Action.Create({ Type = "Spell", ID = 206416}),
  TrailofRuin                           = Action.Create({ Type = "Spell", ID = 258881}),  
  Disrupt                               = Action.Create({ Type = "Spell", ID = 183752}),
  FelEruption                           = Action.Create({ Type = "Spell", ID = 211881}),
  ChaosNova                             = Action.Create({ Type = "Spell", ID = 179057}),
  Blur                                  = Action.Create({ Type = "Spell", ID = 198589}),
  ConsumeMagic                          = Action.Create({ Type = "Spell", ID = 278326}),
  Darkness                              = Action.Create({ Type = "Spell", ID = 196718}),
  RecklessForceCounter1                 = Action.Create({ Type = "Spell", ID = 298409}),
  RecklessForceCounter2                 = Action.Create({ Type = "Spell", ID = 302917}),
  ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368}),
  -- Buffs
  MetamorphosisBuff                     = Action.Create({ Type = "Spell", ID = 162264, Hidden = true}),
  PreparedBuff                          = Action.Create({ Type = "Spell", ID = 203650, Hidden = true}),
  MomentumBuff                          = Action.Create({ Type = "Spell", ID = 208628, Hidden = true}),
  LifebloodBuff                         = Action.Create({ Type = "Spell", ID = 295137, Hidden = true}),
  LifebloodBuff2                        = Action.Create({ Type = "Spell", ID = 305694, Hidden = true}),
  RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932, Hidden = true}),
  -- Debuffs
  NemesisDebuff                         = Action.Create({ Type = "Spell", ID = 206491, Hidden = true}),
  DarkSlashDebuff                       = Action.Create({ Type = "Spell", ID = 258860, Hidden = true}),
  RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568, Hidden = true}),
  ConductiveInkDebuff                   = Action.Create({ Type = "Spell", ID = 302565, Hidden = true}),
  -- Trinkets
  AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
  DribblingInkpod                       = Action.Create({ Type = "Trinket", ID = 169319, QueueForbidden = true }),
  AzsharasFontofPower                   = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
  GalecallersBoon                       = Action.Create({ Type = "Trinket", ID = 159614, QueueForbidden = true }),
  PocketsizedComputationDevice          = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
  -- Potions
  PotionofUnbridledFury                 = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
  PotionTest                            = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
  PotionofFocusedResolve                = Action.Create({ Type = "Potion", ID = 168506, QueueForbidden = true }),
  -- Misc
  CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 293491, Hidden = true}),
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
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_DEMONHUNTER_HAVOC)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_DEMONHUNTER_HAVOC], { __index = Action })

-- Simcraft Imported
-- HeroLib
local HL         = HeroLib
local Cache      = HeroCache
local Unit       = HL.Unit
local Player     = Unit.Player
local Target     = Unit.Target
local Pet        = Unit.Pet
local Spell      = HL.Spell
--local MultiSpell = HL.MultiSpell
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

-- Variables
local VarPoolingForMeta = 0;
local VarWaitingForNemesis = 0;
local VarBladeDance = 0;
local VarPoolingForBladeDance = 0;
local VarPoolingForEyeBeam = 0;
local VarWaitingForMomentum = 0;
local VarWaitingForDarkSlash = 0;

HL:RegisterForEvent(function()
  VarPoolingForMeta = 0
  VarWaitingForNemesis = 0
  VarBladeDance = 0
  VarPoolingForBladeDance = 0
  VarPoolingForEyeBeam = 0
  VarWaitingForMomentum = 0
  VarWaitingForDarkSlash = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {40, 20, 8}
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

-- Check for melee range
local function IsInMeleeRange()
    if S.Felblade:TimeSinceLastCast() <= Player:GCD() then
        return true
    elseif S.VengefulRetreat:TimeSinceLastCast() < 1.0 then
        return false
    end
    return Target:IsInRange("Melee")
end

-- FelRush GUI Handler
local function CastFelRush()
    if not Action.GetToggle(2, "UseMoves") then 
        if Action.GetToggle(2, "FelRushDisplay") == "SUGGESTED" then
            return HR.Cast(S.FelRush);
        elseif Action.GetToggle(2, "FelRushDisplay") == "COOLDOWN" then
            if S.FelRush:TimeSinceLastDisplay() ~= 0 then
                return HR.Cast(S.FelRush, { true, false } );
            else
               return false;
            end
		end
    end  
    return HR.Cast(S.FelRush);
end

-- FelRush handler
local function UseMoves()
  return Action.GetToggle(2, "UseMoves") --or S.FelRush:Charges() == 2  
end

-- Local essence ranks (Is it really usefull?)
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

-- Interrupts handler
--[[local function Interrupts(Target, ShouldStop)
    local useKick, useCC, useRacial = Action.InterruptIsValid(Target, "TargetMouseover")    
    
	-- Disrupt
    if useKick and Action.InterruptIsValid(Target, "TargetMouseover") and S.Disrupt:IsReadyP(15) and Action.Disrupt:AbsentImun(Target, {"TotalImun", "DamagePhysImun", "KickImun"}, true) then 
        if Env.RandomKick(Target, true) then 
			if HR.Cast(S.Disrupt) then return ""; end
        else 
            return false
        end 
    end 
    
	-- ChaosNova if Target casting in 5yd range and Disrupt not ready
    if useCC and not ShouldStop and S.ChaosNova:IsReadyP(5) and Action.ChaosNova:AbsentImun(Target, {"StunImun", "CCTotalImun", "DamagePhysImun", "TotalImun"}, true) then  
		if HR.Cast(S.ChaosNova) then return ""; end
    end 
	
	-- FelEruption if talent is learned and no multiple Targets and not Disrupt ready
    if useCC and not ShouldStop and S.FelEruption:IsAvailable() and S.FelEruption:IsCastableP(20) and not ShouldStop and Action.FelEruption:AbsentImun(Target, {"StunImun", "TotalImun", "DamagePhysImun", "CCTotalImun"}) then  
       if HR.Cast(S.FelEruption) then return ""; end		
    end             
    -- Racials
    if useRacial and Action.QuakingPalm:AutoRacial(Target, true) then 
	    if HR.Cast(S.QuakingPalm) then return ""; end
    end 
    
    if useRacial and Action.Haymaker:AutoRacial(Target, true) then 
	    if HR.Cast(S.Haymaker) then return ""; end
    end 
    
    if useRacial and Action.WarStomp:AutoRacial(Target, true) then 
	    if HR.Cast(S.WarStomp) then return ""; end
    end 
    
    if useRacial and Action.BullRush:AutoRacial(Target, true) then 
	    if HR.Cast(S.BullRush) then return ""; end
    end      
end 
Interrupts = Action.MakeFunctionCachedDynamic(Interrupts)]]--

S.ConcentratedFlame:RegisterInFlight()

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    EnemiesCount = active_enemies()
    UpdateRanges() -- To populate Cache.Enemies[range] for CastCycles
    DetermineEssenceRanks()
	
	-- Anti channeling protection ? To see if its usefull
	--if Player:IsCasting() or Player:IsChanneling() then
	--    ShouldStop = true
	--else
	--    ShouldStop = false
	--end
	
    local function Precombat_DBM()
        -- flask
        -- augmentation
        -- food
        -- snapshot_stats
		-- Immolation Aura
        if S.ImmolationAura:IsCastableP() and not ShouldStop and Pull > 1.5 and Pull <= 2  then
            if HR.Cast(S.ImmolationAura) then return "immolation_aura 5"; end
        end
        -- potion
        if I.PotionofFocusedResolve:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") and Pull > 0.1 and Pull <= 1 then
            if HR.Cast(I.PotionofFocusedResolve) then return "battle_potion_of_agility 4"; end
        end
        -- metamorphosis,if=!azerite.chaotic_transformation.enabled
        if S.Metamorphosis:IsCastableP(40) and not ShouldStop and (Player:BuffDownP(S.MetamorphosisBuff) and not S.ChaoticTransformation:AzeriteEnabled()) and Pull > 0.1 and Pull <= 0.2 then
            if HR.Cast(S.Metamorphosis, Action.GetToggle(2, "OffGCDasOffGCD")) then return "metamorphosis 6"; end
        end
        -- use_item,name=azsharas_font_of_power
       -- if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and TrinketON() and not ShouldStop then
      --      if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 7"; end
      --  end
    end
    
    local function Precombat()
        -- flask
        -- augmentation
        -- food
        -- snapshot_stats
        -- potion
        -- Immolation Aura
        if S.ImmolationAura:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ImmolationAura) then return "immolation_aura 5"; end
        end
        -- metamorphosis,if=!azerite.chaotic_transformation.enabled
        if S.Metamorphosis:IsCastableP(40) and not ShouldStop and (Player:BuffDownP(S.MetamorphosisBuff) and not S.ChaoticTransformation:AzeriteEnabled()) then
            if HR.Cast(S.Metamorphosis, Action.GetToggle(2, "OffGCDasOffGCD")) then return "metamorphosis 6"; end
        end
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and TrinketON() and not ShouldStop then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 7"; end
        end
    end
    
	local function Essences()
        -- concentrated_flame,if=(!dot.concentrated_flame_burn.ticking&!action.concentrated_flame.in_flight|full_recharge_time<gcd.max)
        if S.ConcentratedFlame:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and not ShouldStop and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight() or S.ConcentratedFlame:FullRechargeTimeP() < Player:GCD()) then
            if HR.Cast(S.ConcentratedFlame, Action.GetToggle(2, "OffGCDasOffGCD")) then return "concentrated_flame"; end
        end
        -- blood_of_the_enemy,if=buff.metamorphosis.up|target.time_to_die<=10
        if S.BloodoftheEnemy:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and not ShouldStop and (Player:BuffP(S.MetamorphosisBuff) or Target:TimeToDie() <= 10) then
            if HR.Cast(S.BloodoftheEnemy, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_of_the_enemy"; end
        end
        -- guardian_of_azeroth,if=buff.metamorphosis.up|target.time_to_die<=30
        if S.GuardianofAzeroth:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and not ShouldStop and (Player:BuffP(S.MetamorphosisBuff) or Target:TimeToDie() <= 30) then
            if HR.Cast(S.GuardianofAzeroth, Action.GetToggle(2, "OffGCDasOffGCD")) then return "guardian_of_azeroth"; end
        end
        -- focused_azerite_beam,if=spell_targets.blade_dance1>=2|raid_event.adds.in>60
        if S.FocusedAzeriteBeam:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.FocusedAzeriteBeam, Action.GetToggle(2, "OffGCDasOffGCD")) then return "focused_azerite_beam"; end
        end
        -- purifying_blast,if=spell_targets.blade_dance1>=2|raid_event.adds.in>60
        if S.PurifyingBlast:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and not ShouldStop and (Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.PurifyingBlast, Action.GetToggle(2, "OffGCDasOffGCD")) then return "purifying_blast"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10
        if S.TheUnboundForce:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and not ShouldStop and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10) then
            if HR.Cast(S.TheUnboundForce, Action.GetToggle(2, "OffGCDasOffGCD")) then return "the_unbound_force"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and not ShouldStop then
            if HR.Cast(S.RippleInSpace, Action.GetToggle(2, "OffGCDasOffGCD")) then return "ripple_in_space"; end
        end
        -- worldvein_resonance,if=buff.lifeblood.stack<3
        if S.WorldveinResonance:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffStackP(S.LifebloodBuff) < 3) then
            if HR.Cast(S.WorldveinResonance, Action.GetToggle(2, "OffGCDasOffGCD")) then return "worldvein_resonance"; end
        end
        -- memory_of_lucid_dreams,if=fury<40&buff.metamorphosis.up
        if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and not ShouldStop and (Player:Fury() < 40 and Player:BuffP(S.MetamorphosisBuff)) then
            if HR.Cast(S.MemoryofLucidDreams, Action.GetToggle(2, "OffGCDasOffGCD")) then return "memory_of_lucid_dreams"; end
        end
    end
    
	local function Cooldown()
        -- metamorphosis,if=!(talent.demonic.enabled|variable.pooling_for_meta|variable.waiting_for_nemesis)|target.time_to_die<25
        if S.Metamorphosis:IsCastableP(40) and not ShouldStop and (Player:BuffDownP(S.MetamorphosisBuff) and not (S.Demonic:IsAvailable() or bool(VarPoolingForMeta) or bool(VarWaitingForNemesis)) or Target:TimeToDie() < 25) then
            if HR.Cast(S.Metamorphosis, Action.GetToggle(2, "OffGCDasOffGCD")) then return "metamorphosis 12"; end
        end
        -- metamorphosis,if=talent.demonic.enabled&(!azerite.chaotic_transformation.enabled|(cooldown.eye_beam.remains>20&(!variable.blade_dance|cooldown.blade_dance.remains>gcd.max)))
        if S.Metamorphosis:IsCastableP(40) and not ShouldStop and (Player:BuffDownP(S.MetamorphosisBuff) and S.Demonic:IsAvailable() and (not S.ChaoticTransformation:AzeriteEnabled() or (S.EyeBeam:CooldownRemainsP() > 12 and (not bool(VarBladeDance) or S.BladeDance:CooldownRemainsP() > Player:GCD())))) then
            if HR.Cast(S.Metamorphosis, Action.GetToggle(2, "OffGCDasOffGCD")) then return "metamorphosis 20"; end
        end
        -- nemesis,target_if=min:target.time_to_die,if=raid_event.adds.exists&debuff.nemesis.down&(active_enemies>desired_targets|raid_event.adds.in>60)
        -- nemesis,if=!raid_event.adds.exists
        if S.Nemesis:IsCastableP(50) and not ShouldStop and (not Cache.EnemiesCount[40] > 1) then
            if HR.Cast(S.Nemesis, Action.GetToggle(2, "OffGCDasOffGCD")) then return "nemesis 51"; end
        end
        -- potion,if=buff.metamorphosis.remains>25|target.time_to_die<60
        if I.PotionofFocusedResolve:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") and (Player:BuffRemainsP(S.MetamorphosisBuff) > 25 or Target:TimeToDie() < 60) then
            if HR.Cast(I.PotionofFocusedResolve) then return "battle_potion_of_agility 55"; end
        end
        -- use_item,name=galecallers_boon,if=!talent.fel_barrage.enabled|cooldown.fel_barrage.ready
        if I.GalecallersBoon:IsEquipped() and I.GalecallersBoon:IsReady() and TrinketON() and not ShouldStop and (not S.FelBarrage:IsAvailable() or S.FelBarrage:CooldownUpP()) then
            if HR.Cast(I.GalecallersBoon) then return "galecallers_boon 56"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=buff.metamorphosis.up&buff.memory_of_lucid_dreams.down&(!variable.blade_dance|!cooldown.blade_dance.ready)
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and TrinketON() and not ShouldStop and S.CyclotronicBlast:IsAvailable() and (Player:BuffP(S.MetamorphosisBuff) and Player:BuffDownP(S.MemoryofLucidDreams) and (not bool(VarBladeDance) or not S.BladeDance:IsReady() and not ShouldStop)) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "cyclotronic_blast 57"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down|(debuff.conductive_ink_debuff.up|buff.metamorphosis.remains>20)&target.health.pct<31|target.time_to_die<20
        if I.AshvanesRazorCoral:IsEquipped() and I.AshvanesRazorCoral:IsReady() and TrinketON() and not ShouldStop and (Target:DebuffDownP(S.RazorCoralDebuff) or (Target:DebuffP(S.ConductiveInkDebuff) or Player:BuffRemainsP(S.MetamorphosisBuff) > 20) and Target:HealthPercentage() < 31 or Target:TimeToDie() < 20) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 59"; end
        end
        -- use_item,name=azsharas_font_of_power,if=cooldown.metamorphosis.remains<10|cooldown.metamorphosis.remains>60
        if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and TrinketON() and not ShouldStop and (S.Metamorphosis:CooldownRemainsP() < 10 or S.Metamorphosis:CooldownRemainsP() > 60) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 60"; end
        end
        -- use_items,if=buff.metamorphosis.up
        -- call_action_list,name=essences
        if (true) then
            local ShouldReturn = Essences(); if ShouldReturn then return ShouldReturn; end
        end
    end
    
	local function DarkSlash()
        -- dark_slash,if=fury>=80&(!variable.blade_dance|!cooldown.blade_dance.ready)
        if S.DarkSlash:IsCastableP() and not ShouldStop and IsInMeleeRange() and (Player:Fury() >= 80 and (not bool(VarBladeDance) or not S.BladeDance:CooldownUpP())) then
            if HR.Cast(S.DarkSlash) then return "dark_slash 61"; end
        end
        -- annihilation,if=debuff.dark_slash.up
        if S.Annihilation:IsReadyP() and not ShouldStop and IsInMeleeRange() and (Target:DebuffP(S.DarkSlashDebuff)) then
            if HR.Cast(S.Annihilation) then return "annihilation 67"; end
        end
        -- chaos_strike,if=debuff.dark_slash.up
        if S.ChaosStrike:IsReadyP() and not ShouldStop and IsInMeleeRange() and (Target:DebuffP(S.DarkSlashDebuff)) then
            if HR.Cast(S.ChaosStrike) then return "chaos_strike 71"; end
        end
    end
    
	local function Demonic()
        -- death_sweep,if=variable.blade_dance
        if S.DeathSweep:IsReadyP() and not ShouldStop and IsInMeleeRange() and (bool(VarBladeDance)) then
            if HR.Cast(S.DeathSweep) then return "death_sweep 75"; end
        end
        -- eye_beam,if=raid_event.adds.up|raid_event.adds.in>25
        if S.EyeBeam:IsReadyP(20) and Action.GetToggle(2, "UseEyeBeam") and not ShouldStop then
            if HR.Cast(S.EyeBeam, Action.GetToggle(2, "OffGCDasOffGCD")) then return "eye_beam 79"; end
        end
        -- fel_barrage,if=((!cooldown.eye_beam.up|buff.metamorphosis.up)&raid_event.adds.in>30)|active_enemies>desired_targets
        if S.FelBarrage:IsCastableP() and not ShouldStop and IsInMeleeRange() and ((not S.EyeBeam:CooldownUpP() or Player:BuffP(S.MetamorphosisBuff)) or Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.FelBarrage) then return "fel_barrage 83"; end
        end
        -- blade_dance,if=variable.blade_dance&!cooldown.metamorphosis.ready&(cooldown.eye_beam.remains>(5-azerite.revolving_blades.rank*3)|(raid_event.adds.in>cooldown&raid_event.adds.in<25))
        if S.BladeDance:IsReadyP() and not ShouldStop and IsInMeleeRange() and (bool(VarBladeDance) and (S.EyeBeam:CooldownRemainsP() > (5 - S.RevolvingBlades:AzeriteRank() * 3))) then
            if HR.Cast(S.BladeDance) then return "blade_dance 95"; end
        end
        -- immolation_aura
        if S.ImmolationAura:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ImmolationAura) then return "immolation_aura 109"; end
        end
        -- annihilation,if=!variable.pooling_for_blade_dance
        if S.Annihilation:IsReadyP() and not ShouldStop and IsInMeleeRange() and (not bool(VarPoolingForBladeDance)) then
            if HR.Cast(S.Annihilation) then return "annihilation 111"; end
        end
        -- felblade,if=fury.deficit>=40
        if S.Felblade:IsCastableP(15) and not ShouldStop and (Player:FuryDeficit() >= 40) then
            if HR.Cast(S.Felblade) then return "felblade 115"; end
        end
        -- chaos_strike,if=!variable.pooling_for_blade_dance&!variable.pooling_for_eye_beam
        if S.ChaosStrike:IsReadyP() and not ShouldStop and IsInMeleeRange() and (not bool(VarPoolingForBladeDance) and not bool(VarPoolingForEyeBeam)) then
            if HR.Cast(S.ChaosStrike) then return "chaos_strike 117"; end
        end
        -- fel_rush,if=talent.demon_blades.enabled&!cooldown.eye_beam.ready&(charges=2|(raid_event.movement.in>10&raid_event.adds.in>10))
        if S.FelRush:IsCastableP(20, true) and (S.DemonBlades:IsAvailable() and not S.EyeBeam:CooldownUpP() and UseMoves()) then
            if CastFelRush() then return "fel_rush 123"; end
        end
        -- demons_bite
        if S.DemonsBite:IsCastableP() and not ShouldStop and IsInMeleeRange() then
            if HR.Cast(S.DemonsBite) then return "demons_bite 133"; end
        end
        -- throw_glaive,if=buff.out_of_range.up
        if S.ThrowGlaive:IsCastableP(30) and (not IsInMeleeRange()) then
            if HR.Cast(S.ThrowGlaive) then return "throw_glaive 135"; end
        end
        -- fel_rush,if=movement.distance>15|buff.out_of_range.up
        -- if S.FelRush:IsCastableP(20, true) and (not IsInMeleeRange() and UseMoves()) then
      -- if CastFelRush() then return "fel_rush 139"; end
        -- end
        -- vengeful_retreat,if=movement.distance>15
        -- if S.VengefulRetreat:IsCastableP("Melee", true) then
      -- if HR.Cast(S.VengefulRetreat) then return "vengeful_retreat 143"; end
        -- end
        -- throw_glaive,if=talent.demon_blades.enabled
        if S.ThrowGlaive:IsCastableP(30) and (S.DemonBlades:IsAvailable()) then
            if HR.Cast(S.ThrowGlaive) then return "throw_glaive 145"; end
        end
    end
	
    local function Normal()
        -- vengeful_retreat,if=talent.momentum.enabled&buff.prepared.down&time>1
        if S.VengefulRetreat:IsCastableP("Melee", true) and UseMoves() and (S.Momentum:IsAvailable() and Player:BuffDownP(S.PreparedBuff) and HL.CombatTime() > 1) then
            if HR.Cast(S.VengefulRetreat, Action.GetToggle(2, "OffGCDasOffGCD")) then return "vengeful_retreat 149"; end
        end
        -- fel_rush,if=(variable.waiting_for_momentum|talent.fel_mastery.enabled)&(charges=2|(raid_event.movement.in>10&raid_event.adds.in>10))
        if S.FelRush:IsCastableP(20, true) and ((bool(VarWaitingForMomentum) or S.FelMastery:IsAvailable()) and UseMoves()) then
            if CastFelRush() then return "fel_rush 155"; end
        end
        -- fel_barrage,if=!variable.waiting_for_momentum&(active_enemies>desired_targets|raid_event.adds.in>30)
        if S.FelBarrage:IsCastableP() and not ShouldStop and IsInMeleeRange() and (not bool(VarWaitingForMomentum) and Cache.EnemiesCount[8] > 1) then
            if HR.Cast(S.FelBarrage) then return "fel_barrage 165"; end
        end
        -- death_sweep,if=variable.blade_dance
        if S.DeathSweep:IsReadyP() and not ShouldStop and IsInMeleeRange() and (bool(VarBladeDance)) then
            if HR.Cast(S.DeathSweep) then return "death_sweep 175"; end
        end
        -- immolation_aura
        if S.ImmolationAura:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ImmolationAura) then return "immolation_aura 179"; end
        end
        -- eye_beam,if=active_enemies>1&(!raid_event.adds.exists|raid_event.adds.up)&!variable.waiting_for_momentum
        if S.EyeBeam:IsReadyP(20) and Action.GetToggle(2, "UseEyeBeam") and not ShouldStop and (Cache.EnemiesCount[20] > 1 and not bool(VarWaitingForMomentum)) then
            if HR.Cast(S.EyeBeam, Action.GetToggle(2, "OffGCDasOffGCD")) then return "eye_beam 181"; end
        end
        -- blade_dance,if=variable.blade_dance
        if S.BladeDance:IsReadyP() and not ShouldStop and IsInMeleeRange() and (bool(VarBladeDance)) then
            if HR.Cast(S.BladeDance) then return "blade_dance 195"; end
        end
        -- felblade,if=fury.deficit>=40
        if S.Felblade:IsCastableP(15) and not ShouldStop and (Player:FuryDeficit() >= 40) then
            if HR.Cast(S.Felblade) then return "felblade 199"; end
        end
        -- eye_beam,if=!talent.blind_fury.enabled&!variable.waiting_for_dark_slash&raid_event.adds.in>cooldown
        if S.EyeBeam:IsReadyP(20) and Action.GetToggle(2, "UseEyeBeam") and not ShouldStop and (not S.BlindFury:IsAvailable() and not bool(VarWaitingForDarkSlash)) then
            if HR.Cast(S.EyeBeam, Action.GetToggle(2, "OffGCDasOffGCD")) then return "eye_beam 201"; end
        end
        -- annihilation,if=(talent.demon_blades.enabled|!variable.waiting_for_momentum|fury.deficit<30|buff.metamorphosis.remains<5)&!variable.pooling_for_blade_dance&!variable.waiting_for_dark_slash
        if S.Annihilation:IsReadyP() and not ShouldStop and IsInMeleeRange() and ((S.DemonBlades:IsAvailable() or not bool(VarWaitingForMomentum) or Player:FuryDeficit() < 30 or Player:BuffRemainsP(S.MetamorphosisBuff) < 5) and not bool(VarPoolingForBladeDance) and not bool(VarWaitingForDarkSlash)) then
            if HR.Cast(S.Annihilation) then return "annihilation 211"; end
        end
        -- chaos_strike,if=(talent.demon_blades.enabled|!variable.waiting_for_momentum|fury.deficit<30)&!variable.pooling_for_meta&!variable.pooling_for_blade_dance&!variable.waiting_for_dark_slash
        if S.ChaosStrike:IsReadyP() and not ShouldStop and IsInMeleeRange() and ((S.DemonBlades:IsAvailable() or not bool(VarWaitingForMomentum) or Player:FuryDeficit() < 30) and not bool(VarPoolingForMeta) and not bool(VarPoolingForBladeDance) and not bool(VarWaitingForDarkSlash)) then
            if HR.Cast(S.ChaosStrike) then return "chaos_strike 223"; end
        end
        -- eye_beam,if=talent.blind_fury.enabled&raid_event.adds.in>cooldown
        if S.EyeBeam:IsReadyP(20) and Action.GetToggle(2, "UseEyeBeam") and not ShouldStop and (S.BlindFury:IsAvailable()) then
            if HR.Cast(S.EyeBeam, Action.GetToggle(2, "OffGCDasOffGCD")) then return "eye_beam 235"; end
        end
        -- demons_bite
        if S.DemonsBite:IsCastableP() and not ShouldStop and IsInMeleeRange() then
            if HR.Cast(S.DemonsBite) then return "demons_bite 243"; end
        end
        -- fel_rush,if=!talent.momentum.enabled&raid_event.movement.in>charges*10&talent.demon_blades.enabled
        if S.FelRush:IsCastableP(20, true) and (not S.Momentum:IsAvailable() and S.DemonBlades:IsAvailable() and UseMoves()) then
            if CastFelRush() then return "fel_rush 245"; end
        end
        -- felblade,if=movement.distance>15|buff.out_of_range.up
        -- if S.Felblade:IsCastableP(15) and not ShouldStop and (not IsInMeleeRange()) then
      -- if HR.Cast(S.Felblade) then return "felblade 255"; end
        -- end
        -- fel_rush,if=movement.distance>15|(buff.out_of_range.up&!talent.momentum.enabled)
        -- if S.FelRush:IsCastableP(20, true) and (not IsInMeleeRange() and not S.Momentum:IsAvailable() and UseMoves()) then
          -- if CastFelRush() then return "fel_rush 259"; end
        -- end
        -- vengeful_retreat,if=movement.distance>15
        -- if S.VengefulRetreat:IsCastableP("Melee", true) then
          -- if HR.Cast(S.VengefulRetreat) then return "vengeful_retreat 265"; end
        -- end
        -- throw_glaive,if=talent.demon_blades.enabled
        if S.ThrowGlaive:IsCastableP(30) and (S.DemonBlades:IsAvailable()) then
            if HR.Cast(S.ThrowGlaive) then return "throw_glaive 267"; end
        end
    end
    
	-- Custom stuff
    -- Protect against interrupt of channeled spells
  --  if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
  --      if HR.Cast(S.Channeling) then return "" end
  --  end  
	-- call DBM precombat
    if not Player:AffectingCombat() and Action.GetToggle(1, "DBM") and not Player:IsCasting() then
        local ShouldReturn = Precombat_DBM(); 
            if ShouldReturn then return ShouldReturn; 
        end    
    end
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
        
  	    -- Disrupt
  	    if useKick and S.Disrupt:IsReady() and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.Disrupt, true) then return "Disrupt 5"; end
         	else 
          	    return
         	end 
      	end 
	
     	 -- ChaosNova
      	if useCC and S.ChaosNova:IsReady() and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.ChaosNova, true) then return "ChaosNova 5"; end
     	    else 
     	        return
     	    end 
     	end 
		
		-- Purge
		-- Note: Toggles  ("UseDispel", "UsePurge", "UseExpelEnrage")
        -- Category ("Dispel", "MagicMovement", "PurgeFriendly", "PurgeHigh", "PurgeLow", "Enrage")
        if S.ConsumeMagic:IsReady() and not ShouldStop and Action.AuraIsValid("player", "UsePurge", "PurgeHigh") then
            if HR.Cast(S.ConsumeMagic) then return "" end
        end	
    
        -- Set Variables
        -- variable,name=blade_dance,value=talent.first_blood.enabled|spell_targets.blade_dance1>=(3-talent.trail_of_ruin.enabled)
        VarBladeDance = num(S.FirstBlood:IsAvailable() or Cache.EnemiesCount[8] >= (3 - num(S.TrailofRuin:IsAvailable())))
        -- variable,name=waiting_for_nemesis,value=!(!talent.nemesis.enabled|cooldown.nemesis.ready|cooldown.nemesis.remains>target.time_to_die|cooldown.nemesis.remains>60)
        VarWaitingForNemesis = num(not (not S.Nemesis:IsAvailable() or S.Nemesis:CooldownUpP() or S.Nemesis:CooldownRemainsP() > Target:TimeToDie() or S.Nemesis:CooldownRemainsP() > 60))
        -- variable,name=pooling_for_meta,value=!talent.demonic.enabled&cooldown.metamorphosis.remains<6&fury.deficit>30&(!variable.waiting_for_nemesis|cooldown.nemesis.remains<10)
        VarPoolingForMeta = num(not S.Demonic:IsAvailable() and S.Metamorphosis:CooldownRemainsP() < 6 and Player:FuryDeficit() > 30 and (not bool(VarWaitingForNemesis) or S.Nemesis:CooldownRemainsP() < 10))
        -- variable,name=pooling_for_blade_dance,value=variable.blade_dance&(fury<75-talent.first_blood.enabled*20)
        VarPoolingForBladeDance = num(bool(VarBladeDance) and (Player:Fury() < 75 - num(S.FirstBlood:IsAvailable()) * 20))
        -- variable,name=pooling_for_eye_beam,value=talent.demonic.enabled&!talent.blind_fury.enabled&cooldown.eye_beam.remains<(gcd.max*2)&fury.deficit>20
        VarPoolingForEyeBeam = num(S.Demonic:IsAvailable() and not S.BlindFury:IsAvailable() and S.EyeBeam:CooldownRemainsP() < (Player:GCD() * 2) and Player:FuryDeficit() > 20 and Action.GetToggle(2, "UseEyeBeam")) 
        -- variable,name=waiting_for_dark_slash,value=talent.dark_slash.enabled&!variable.pooling_for_blade_dance&!variable.pooling_for_meta&cooldown.dark_slash.up
        VarWaitingForDarkSlash = num(S.DarkSlash:IsAvailable() and not bool(VarPoolingForBladeDance) and not bool(VarPoolingForMeta) and S.DarkSlash:CooldownUpP())
        -- variable,name=waiting_for_momentum,value=talent.momentum.enabled&!buff.momentum.up
        VarWaitingForMomentum = num(S.Momentum:IsAvailable() and not Player:BuffP(S.MomentumBuff))
    
        -- call_action_list,name=cooldown,if=gcd.remains=0
        if Action.GetToggle(2, "CDs") then
            local ShouldReturn = Cooldown(); if ShouldReturn then return ShouldReturn; end
        end
    
        -- pick_up_fragment,if=fury.deficit>=35&(!azerite.eyes_of_rage.enabled|cooldown.eye_beam.remains>1.4)
        -- TODO: Can't detect when orbs actually spawn, we could possibly show a suggested icon when we DON'T want to pick up souls so people can avoid moving?
    
        -- call_action_list,name=dark_slash,if=talent.dark_slash.enabled&(variable.waiting_for_dark_slash|debuff.dark_slash.up)
        if (S.DarkSlash:IsAvailable() and (bool(VarWaitingForDarkSlash) or Target:DebuffP(S.DarkSlashDebuff))) then
            local ShouldReturn = DarkSlash(); if ShouldReturn then return ShouldReturn; end
        end
    
        -- run_action_list,name=demonic,if=talent.demonic.enabled
        if (S.Demonic:IsAvailable()) then
            local ShouldReturn = Demonic(); if ShouldReturn then return ShouldReturn; end
        end
    
        -- run_action_list,name=normal
        if (true) then
            local ShouldReturn = Normal(); if ShouldReturn then return ShouldReturn; end
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

