--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_DEATHKNIGHT_UNHOLY] = {
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
  -- Generic Spells
  RaiseDead                             = Action.Create({ Type = "Spell", ID = 46584     }),
  ArmyoftheDead                         = Action.Create({ Type = "Spell", ID = 42650     }),
  DeathandDecay                         = Action.Create({ Type = "Spell", ID = 43265     }),
  Apocalypse                            = Action.Create({ Type = "Spell", ID = 275699     }),
  Defile                                = Action.Create({ Type = "Spell", ID = 152280     }),
  Epidemic                              = Action.Create({ Type = "Spell", ID = 207317     }),
  DeathCoil                             = Action.Create({ Type = "Spell", ID = 47541     }),
  ScourgeStrike                         = Action.Create({ Type = "Spell", ID = 55090     }),
  ClawingShadows                        = Action.Create({ Type = "Spell", ID = 207311     }),
  FesteringStrike                       = Action.Create({ Type = "Spell", ID = 85948     }),
  BurstingSores                         = Action.Create({ Type = "Spell", ID = 207264     }),
  DarkTransformation                    = Action.Create({ Type = "Spell", ID = 63560     }),
  --SummonGargoyle                        = MultiSpell(49206, 207349     }),
  SummonGargoyle1                       = Action.Create({ Type = "Spell", ID = 49206     }),
  SummonGargoyle2                       = Action.Create({ Type = "Spell", ID = 207349     }),
  UnholyFrenzy                          = Action.Create({ Type = "Spell", ID = 207289     }),
  MagusoftheDead                        = Action.Create({ Type = "Spell", ID = 288417     }),
  SoulReaper                            = Action.Create({ Type = "Spell", ID = 130736     }),
  UnholyBlight                          = Action.Create({ Type = "Spell", ID = 115989     }),
  Pestilence                            = Action.Create({ Type = "Spell", ID = 277234     }),
  ArcaneTorrent                         = Action.Create({ Type = "Spell", ID = 50613     }),
  BloodFury                             = Action.Create({ Type = "Spell", ID = 20572     }),
  Berserking                            = Action.Create({ Type = "Spell", ID = 26297     }),
  ArmyoftheDamned                       = Action.Create({ Type = "Spell", ID = 276837     }),
  Outbreak                              = Action.Create({ Type = "Spell", ID = 77575     }),
  DeathStrike                           = Action.Create({ Type = "Spell", ID = 49998     }),
  MindFreeze                            = Action.Create({ Type = "Spell", ID = 47528     }),
  ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
  Asphyxiate                            = Action.Create({ Type = "Spell", ID = 108194     }),
  -- Buffs
  RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932     }),
  DeathStrikeBuff                       = Action.Create({ Type = "Spell", ID = 101568     }), 
  UnholyFrenzyBuff                      = Action.Create({ Type = "Spell", ID = 207289     }),  
  SuddenDoomBuff                        = Action.Create({ Type = "Spell", ID = 81340     }),
  DeathandDecayBuff                     = Action.Create({ Type = "Spell", ID = 188290     }),  
  -- Debuffs
  RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568     }),
  VirulentPlagueDebuff                  = Action.Create({ Type = "Spell", ID = 191587     }), 
  FesteringWoundDebuff                  = Action.Create({ Type = "Spell", ID = 194310     }),  
  -- Trinkets
  GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
  GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
  AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
  DribblingInkpod                       = Action.Create({ Type = "Trinket", ID = 169319, QueueForbidden = true }),
  AzsharasFontofPower                   = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
  GalecallersBoon                       = Action.Create({ Type = "Trinket", ID = 159614, QueueForbidden = true }),
  PocketsizedComputationDevice          = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
  RampingAmplitudeGigavoltEngine        = Action.Create({ Type = "Trinket", ID = 165580, QueueForbidden = true }),
  BygoneBeeAlmanac                      = Action.Create({ Type = "Trinket", ID = 163936, QueueForbidden = true }),
  JesHowler                             = Action.Create({ Type = "Trinket", ID = 159627, QueueForbidden = true }),
  GalecallersBeak                       = Action.Create({ Type = "Trinket", ID = 161379, QueueForbidden = true }),
  GrongsPrimalRage                      = Action.Create({ Type = "Trinket", ID = 165574, QueueForbidden = true }),
  VisionofDemise                        = Action.Create({ Type = "Trinket", ID = 169307, QueueForbidden = true }),
  -- Potions
  PotionofUnbridledFury                 = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
  PotionTest                            = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
  PotionofFocusedResolve                = Action.Create({ Type = "Potion", ID = 168506, QueueForbidden = true }),
  -- Misc
  CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 293491, Hidden = true}),
  Channeling                            = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
  RecklessForceCounter                 = Action.Create({ Type = "Spell", ID = 298409}),
  RecklessForceCounter2                 = Action.Create({ Type = "Spell", ID = 302917}),
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
Action:CreateEssencesFor(ACTION_CONST_DEATHKNIGHT_UNHOLY)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_DEATHKNIGHT_UNHOLY], { __index = Action })

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
local Everyone = HR.Commons.Everyone;

-- Variables
local VarPoolingForGargoyle = 0;

HL:RegisterForEvent(function()
  VarPoolingForGargoyle = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {30, 8}
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

local function DeathStrikeHeal()
  return (Action.GetToggle(2, "SoloMode") and Player:HealthPercentage() < Action.GetToggle(2, "UseDeathStrikeHP")) and true or false;
end

local function EvaluateCycleFesteringStrike40(TargetUnit)
  return TargetUnit:DebuffStackP(S.FesteringWoundDebuff) <= 1 and bool(S.DeathandDecay:CooldownRemainsP())
end

local function EvaluateCycleSoulReaper163(TargetUnit)
  return TargetUnit:TimeToDie() < 8 and TargetUnit:TimeToDie() > 4
end

local function EvaluateCycleOutbreak303(TargetUnit)
  return TargetUnit:DebuffRemainsP(S.VirulentPlagueDebuff) <= Player:GCD()
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

local function UpdateGargoyleID()
    S.SummonGargoyle = S.SummonGargoyle2:IsAvailable() and S.SummonGargoyle2 or S.SummonGargoyle1
end

local function Init ()
  HL.RegisterNucleusAbility(152280, 8, 6)               -- Defile
  HL.RegisterNucleusAbility(115989, 8, 6)               -- Unholy Blight
  HL.RegisterNucleusAbility(43265, 8, 6)                -- Death and Decay
end

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    local no_heal = not DeathStrikeHeal()
    UpdateRanges() -- To populate Cache.Enemies[range] for CastCycles
    DetermineEssenceRanks()
	UpdateGargoyleID()
	Init()
	-- Anti channeling protection ? To see if its usefull
	--if Player:IsCasting() or Player:IsChanneling() then
	--    ShouldStop = true
	--else
	--    ShouldStop = false
	--end
	
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
        -- potion
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "potion_of_unbridled_fury 4"; end
        end
        -- raise_dead
        if S.RaiseDead:IsCastableP() and not ShouldStop then
            if HR.CastSuggested(S.RaiseDead) then return "raise_dead 6"; end
        end
        if Everyone.TargetIsValid() then
            -- use_item,name=azsharas_font_of_power
            if I.AzsharasFontofPower:IsEquipReady() and TrinketON() then
                if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 7"; end
            end
            -- army_of_the_dead,delay=2
            if S.ArmyoftheDead:IsCastableP() and not ShouldStop then
                if HR.Cast(S.ArmyoftheDead, Action.GetToggle(2, "OffGCDasOffGCD")) then return "army_of_the_dead 8"; end
            end
        end
    end
    local function Aoe()
        -- death_and_decay,if=cooldown.apocalypse.remains
        if S.DeathandDecay:IsCastableP() and not ShouldStop and (bool(S.Apocalypse:CooldownRemainsP())) then
            if HR.Cast(S.DeathandDecay, Action.GetToggle(2, "OffGCDasOffGCD")) then return "death_and_decay 10"; end
        end
        -- defile
        if S.Defile:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Defile) then return "defile 14"; end
        end
        -- epidemic,if=death_and_decay.ticking&rune<2&!variable.pooling_for_gargoyle
        if S.Epidemic:IsReadyP() and not ShouldStop and (Player:BuffP(S.DeathandDecayBuff) and Player:Rune() < 2 and not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.Epidemic) then return "epidemic 16"; end
        end
        -- death_coil,if=death_and_decay.ticking&rune<2&!variable.pooling_for_gargoyle
        if S.DeathCoil:IsUsableP() and not ShouldStop and (Player:BuffP(S.DeathandDecayBuff) and Player:Rune() < 2 and not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.DeathCoil) then return "death_coil 20"; end
        end
        -- scourge_strike,if=death_and_decay.ticking&cooldown.apocalypse.remains
        if S.ScourgeStrike:IsCastableP() and not ShouldStop and (Player:BuffP(S.DeathandDecayBuff) and bool(S.Apocalypse:CooldownRemainsP())) then
            if HR.Cast(S.ScourgeStrike) then return "scourge_strike 24"; end
        end
        -- clawing_shadows,if=death_and_decay.ticking&cooldown.apocalypse.remains
        if S.ClawingShadows:IsCastableP() and not ShouldStop and (Player:BuffP(S.DeathandDecayBuff) and bool(S.Apocalypse:CooldownRemainsP())) then
            if HR.Cast(S.ClawingShadows) then return "clawing_shadows 28"; end
        end
        -- epidemic,if=!variable.pooling_for_gargoyle
        if S.Epidemic:IsReadyP() and not ShouldStop and (not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.Epidemic) then return "epidemic 32"; end
        end
        -- festering_strike,target_if=debuff.festering_wound.stack<=1&cooldown.death_and_decay.remains
        if S.FesteringStrike:IsCastableP() and not ShouldStop and EvaluateCycleFesteringStrike40(Target) then
            if HR.Cast(S.FesteringStrike) then return "festering_strike 46" end
        end
        -- festering_strike,if=talent.bursting_sores.enabled&spell_targets.bursting_sores>=2&debuff.festering_wound.stack<=1
        if S.FesteringStrike:IsCastableP() and not ShouldStop and (S.BurstingSores:IsAvailable() and Cache.EnemiesCount[8] >= 2 and Target:DebuffStackP(S.FesteringWoundDebuff) <= 1) then
            if HR.Cast(S.FesteringStrike) then return "festering_strike 47"; end
        end
        -- death_coil,if=buff.sudden_doom.react&rune.deficit>=4
        if S.DeathCoil:IsUsableP() and not ShouldStop and (bool(Player:BuffStackP(S.SuddenDoomBuff)) and Player:Rune() <= 2) then
            if HR.Cast(S.DeathCoil) then return "death_coil 53"; end
        end
        -- death_coil,if=buff.sudden_doom.react&!variable.pooling_for_gargoyle|pet.gargoyle.active
        if S.DeathCoil:IsUsableP() and not ShouldStop and (bool(Player:BuffStackP(S.SuddenDoomBuff)) and not bool(VarPoolingForGargoyle) or S.SummonGargoyle:TimeSinceLastCast() <= 35) then
            if HR.Cast(S.DeathCoil) then return "death_coil 57"; end
        end
        -- death_coil,if=runic_power.deficit<14&(cooldown.apocalypse.remains>5|debuff.festering_wound.stack>4)&!variable.pooling_for_gargoyle
        if S.DeathCoil:IsUsableP() and not ShouldStop and (Player:RunicPowerDeficit() < 14 and (S.Apocalypse:CooldownRemainsP() > 5 or Target:DebuffStackP(S.FesteringWoundDebuff) > 4) and not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.DeathCoil) then return "death_coil 63"; end
        end
        -- scourge_strike,if=((debuff.festering_wound.up&cooldown.apocalypse.remains>5)|debuff.festering_wound.stack>4)&(cooldown.army_of_the_dead.remains>5|death_knight.disable_aotd)
        if S.ScourgeStrike:IsCastableP() and not ShouldStop and (((Target:DebuffP(S.FesteringWoundDebuff) and S.Apocalypse:CooldownRemainsP() > 5) or Target:DebuffStackP(S.FesteringWoundDebuff) > 4) and (S.ArmyoftheDead:CooldownRemainsP() > 5 or Action.GetToggle(2, "AotDOff"))) then
            if HR.Cast(S.ScourgeStrike) then return "scourge_strike 71"; end
        end
        -- clawing_shadows,if=((debuff.festering_wound.up&cooldown.apocalypse.remains>5)|debuff.festering_wound.stack>4)&(cooldown.army_of_the_dead.remains>5|death_knight.disable_aotd)
        if S.ClawingShadows:IsCastableP() and not ShouldStop and (((Target:DebuffP(S.FesteringWoundDebuff) and S.Apocalypse:CooldownRemainsP() > 5) or Target:DebuffStackP(S.FesteringWoundDebuff) > 4) and (S.ArmyoftheDead:CooldownRemainsP() > 5 or Action.GetToggle(2, "AotDOff"))) then
            if HR.Cast(S.ClawingShadows) then return "clawing_shadows 81"; end
        end
        -- death_coil,if=runic_power.deficit<20&!variable.pooling_for_gargoyle
        if S.DeathCoil:IsUsableP() and not ShouldStop and (Player:RunicPowerDeficit() < 20 and not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.DeathCoil) then return "death_coil 91"; end
        end
        -- festering_strike,if=((((debuff.festering_wound.stack<4&!buff.unholy_frenzy.up)|debuff.festering_wound.stack<3)&cooldown.apocalypse.remains<3)|debuff.festering_wound.stack<1)&(cooldown.army_of_the_dead.remains>5|death_knight.disable_aotd)
        if S.FesteringStrike:IsCastableP() and not ShouldStop and (((((Target:DebuffStackP(S.FesteringWoundDebuff) < 4 and not Player:BuffP(S.UnholyFrenzyBuff)) or Target:DebuffStackP(S.FesteringWoundDebuff) < 3) and S.Apocalypse:CooldownRemainsP() < 3) or Target:DebuffStackP(S.FesteringWoundDebuff) < 1) and (S.ArmyoftheDead:CooldownRemainsP() > 5 or Action.GetToggle(2, "AotDOff"))) then
            if HR.Cast(S.FesteringStrike) then return "festering_strike 95"; end
        end
        -- death_coil,if=!variable.pooling_for_gargoyle
        if S.DeathCoil:IsUsableP() and not ShouldStop and (not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.DeathCoil) then return "death_coil 109"; end
        end
    end
    local function Cooldowns()
        -- army_of_the_dead
        if S.ArmyoftheDead:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ArmyoftheDead, Action.GetToggle(2, "OffGCDasOffGCD")) then return "army_of_the_dead 113"; end
        end
        -- apocalypse,if=debuff.festering_wound.stack>=4
        if S.Apocalypse:IsCastableP() and not ShouldStop and (Target:DebuffStackP(S.FesteringWoundDebuff) >= 4) then
            if HR.Cast(S.Apocalypse) then return "apocalypse 115"; end
        end
        -- dark_transformation,if=!raid_event.adds.exists|raid_event.adds.in>15
        if S.DarkTransformation:IsCastableP() and not ShouldStop then
            if HR.Cast(S.DarkTransformation, Action.GetToggle(2, "OffGCDasOffGCD")) then return "dark_transformation 119"; end
        end
        -- summon_gargoyle,if=runic_power.deficit<14
        if S.SummonGargoyle:IsCastableP() and not Pet:Exists() and not ShouldStop and (Player:RunicPowerDeficit() < 14) then
            if HR.Cast(S.SummonGargoyle) then return "summon_gargoyle 123"; end
        end
        -- unholy_frenzy,if=essence.vision_of_perfection.enabled|(essence.condensed_lifeforce.enabled&pet.apoc_ghoul.active)|debuff.festering_wound.stack<4&!(equipped.ramping_amplitude_gigavolt_engine|azerite.magus_of_the_dead.enabled)|cooldown.apocalypse.remains<2&(equipped.ramping_amplitude_gigavolt_engine|azerite.magus_of_the_dead.enabled)
        if S.UnholyFrenzy:IsCastableP() and not ShouldStop and (S.VisionofPerfection:IsAvailable() or (S.GuardianofAzeroth:IsAvailable() and S.Apocalypse:CooldownRemainsP() > 75) or Target:DebuffStackP(S.FesteringWoundDebuff) < 4 and not (I.RampingAmplitudeGigavoltEngine:IsEquipped() or S.MagusoftheDead:AzeriteEnabled()) or S.Apocalypse:CooldownRemainsP() < 2 and (I.RampingAmplitudeGigavoltEngine:IsEquipped() or S.MagusoftheDead:AzeriteEnabled())) then
            if HR.Cast(S.UnholyFrenzy, Action.GetToggle(2, "OffGCDasOffGCD")) then return "unholy_frenzy 139"; end
        end
        -- unholy_frenzy,if=active_enemies>=2&((cooldown.death_and_decay.remains<=gcd&!talent.defile.enabled)|(cooldown.defile.remains<=gcd&talent.defile.enabled))
        if S.UnholyFrenzy:IsCastableP() and not ShouldStop and (Cache.EnemiesCount[8] >= 2 and ((S.DeathandDecay:CooldownRemainsP() <= Player:GCD() and not S.Defile:IsAvailable()) or (S.Defile:CooldownRemainsP() <= Player:GCD() and S.Defile:IsAvailable()))) then
            if HR.Cast(S.UnholyFrenzy, Action.GetToggle(2, "OffGCDasOffGCD")) then return "unholy_frenzy 141"; end
        end
        -- soul_reaper,target_if=target.time_to_die<8&target.time_to_die>4
        if S.SoulReaper:IsCastableP() and not ShouldStop and EvaluateCycleSoulReaper163(Target) then
            if HR.Cast(S.SoulReaper) then return "soul_reaper 165" end
        end
        -- soul_reaper,if=(!raid_event.adds.exists|raid_event.adds.in>20)&rune<=(1-buff.unholy_frenzy.up)
        if S.SoulReaper:IsCastableP() and not ShouldStop and ((not (Cache.EnemiesCount[8] > 1)) and Player:Rune() <= (1 - num(Player:BuffP(S.UnholyFrenzyBuff)))) then
            if HR.Cast(S.SoulReaper) then return "soul_reaper 166"; end
        end
        -- unholy_blight
        if S.UnholyBlight:IsCastableP() and not ShouldStop then
            if HR.Cast(S.UnholyBlight) then return "unholy_blight 172"; end
        end
    end
    local function Essences()
        -- memory_of_lucid_dreams,if=rune.time_to_1>gcd&runic_power<40
        if S.MemoryofLucidDreams:IsCastableP() and not ShouldStop and (Player:RuneTimeToX(1) > Player:GCD() and Player:RunicPower() < 40) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- blood_of_the_enemy,if=(cooldown.death_and_decay.remains&spell_targets.death_and_decay>1)|(cooldown.defile.remains&spell_targets.defile>1)|(cooldown.apocalypse.remains&cooldown.death_and_decay.ready)
        if S.BloodoftheEnemy:IsCastableP() and not ShouldStop and ((bool(S.DeathandDecay:CooldownRemainsP()) and Cache.EnemiesCount[8] > 1) or (bool(S.Defile:CooldownRemainsP()) and Cache.EnemiesCount[8] > 1) or (bool(S.Apocalypse:CooldownRemainsP()) and S.DeathandDecay:IsCastableP() and not ShouldStop)) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- guardian_of_azeroth,if=cooldown.apocalypse.remains<6
        if S.GuardianofAzeroth:IsCastableP() and not ShouldStop and (S.Apocalypse:CooldownRemainsP() < 6) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<11
        if S.TheUnboundForce:IsCastableP() and not ShouldStop and (Player:BuffP(RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 11) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- focused_azerite_beam,if=!death_and_decay.ticking
        if S.FocusedAzeriteBeam:IsCastableP() and not ShouldStop and (not Player:BuffP(S.DeathandDecayBuff)) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- concentrated_flame,if=dot.concentrated_flame_burn.remains=0
        if S.ConcentratedFlame:IsCastableP() and not ShouldStop and (Target:DebuffDownP(S.ConcentratedFlameBurn)) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- purifying_blast,if=!death_and_decay.ticking
        if S.PurifyingBlast:IsCastableP() and not ShouldStop and (not Player:BuffP(S.DeathandDecayBuff)) then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- worldvein_resonance,if=!death_and_decay.ticking
        if S.WorldveinResonance:IsCastableP() and not ShouldStop and (not Player:BuffP(S.DeathandDecayBuff)) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- ripple_in_space,if=!death_and_decay.ticking
        if S.RippleInSpace:IsCastableP() and not ShouldStop and (not Player:BuffP(S.DeathandDecayBuff)) then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
    end
    local function Generic()
        -- death_coil,if=buff.sudden_doom.react&!variable.pooling_for_gargoyle|pet.gargoyle.active
        if S.DeathCoil:IsUsableP() and not ShouldStop and (bool(Player:BuffStackP(S.SuddenDoomBuff)) and not bool(VarPoolingForGargoyle) or S.SummonGargoyle:TimeSinceLastCast() <= 35) then
            if HR.Cast(S.DeathCoil) then return "death_coil 174"; end
        end
        -- death_coil,if=runic_power.deficit<14&(cooldown.apocalypse.remains>5|debuff.festering_wound.stack>4)&!variable.pooling_for_gargoyle
        if S.DeathCoil:IsUsableP() and not ShouldStop and (Player:RunicPowerDeficit() < 14 and (S.Apocalypse:CooldownRemainsP() > 5 or Target:DebuffStackP(S.FesteringWoundDebuff) > 4) and not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.DeathCoil) then return "death_coil 180"; end
        end
        -- death_and_decay,if=talent.pestilence.enabled&cooldown.apocalypse.remains
        if S.DeathandDecay:IsCastableP() and not ShouldStop and (S.Pestilence:IsAvailable() and bool(S.Apocalypse:CooldownRemainsP())) then
            if HR.Cast(S.DeathandDecay, Action.GetToggle(2, "OffGCDasOffGCD")) then return "death_and_decay 188"; end
        end
        -- defile,if=cooldown.apocalypse.remains
        if S.Defile:IsCastableP() and not ShouldStop and (bool(S.Apocalypse:CooldownRemainsP())) then
            if HR.Cast(S.Defile) then return "defile 194"; end
        end
        -- scourge_strike,if=((debuff.festering_wound.up&cooldown.apocalypse.remains>5)|debuff.festering_wound.stack>4)&(cooldown.army_of_the_dead.remains>5|death_knight.disable_aotd)
        if S.ScourgeStrike:IsCastableP() and not ShouldStop and (((Target:DebuffP(S.FesteringWoundDebuff) and S.Apocalypse:CooldownRemainsP() > 5) or Target:DebuffStackP(S.FesteringWoundDebuff) > 4) and (S.ArmyoftheDead:CooldownRemainsP() > 5 or Action.GetToggle(2, "AotDOff"))) then
            if HR.Cast(S.ScourgeStrike) then return "scourge_strike 198"; end
        end
        -- clawing_shadows,if=((debuff.festering_wound.up&cooldown.apocalypse.remains>5)|debuff.festering_wound.stack>4)&(cooldown.army_of_the_dead.remains>5|death_knight.disable_aotd)
        if S.ClawingShadows:IsCastableP() and not ShouldStop and (((Target:DebuffP(S.FesteringWoundDebuff) and S.Apocalypse:CooldownRemainsP() > 5) or Target:DebuffStackP(S.FesteringWoundDebuff) > 4) and (S.ArmyoftheDead:CooldownRemainsP() > 5 or Action.GetToggle(2, "AotDOff"))) then
            if HR.Cast(S.ClawingShadows) then return "clawing_shadows 208"; end
        end
        -- death_coil,if=runic_power.deficit<20&!variable.pooling_for_gargoyle
        if S.DeathCoil:IsUsableP() and not ShouldStop and (Player:RunicPowerDeficit() < 20 and not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.DeathCoil) then return "death_coil 218"; end
        end
        -- festering_strike,if=((((debuff.festering_wound.stack<4&!buff.unholy_frenzy.up)|debuff.festering_wound.stack<3)&cooldown.apocalypse.remains<3)|debuff.festering_wound.stack<1)&(cooldown.army_of_the_dead.remains>5|death_knight.disable_aotd)
        if S.FesteringStrike:IsCastableP() and not ShouldStop and (((((Target:DebuffStackP(S.FesteringWoundDebuff) < 4 and not Player:BuffP(S.UnholyFrenzyBuff)) or Target:DebuffStackP(S.FesteringWoundDebuff) < 3) and S.Apocalypse:CooldownRemainsP() < 3) or Target:DebuffStackP(S.FesteringWoundDebuff) < 1) and (S.ArmyoftheDead:CooldownRemainsP() > 5 or Action.GetToggle(2, "AotDOff"))) then
            if HR.Cast(S.FesteringStrike) then return "festering_strike 222"; end
        end
        -- death_coil,if=!variable.pooling_for_gargoyle
        if S.DeathCoil:IsUsableP() and not ShouldStop and (not bool(VarPoolingForGargoyle)) then
            if HR.Cast(S.DeathCoil) then return "death_coil 236"; end
        end
    end
    
	-- Custom stuff
    -- Protect against interrupt of channeled spells
  --  if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
  --      if HR.Cast(S.Channeling) then return "" end
  --  end  
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
        
  	    -- MindFreeze
  	    if useKick and S.MindFreeze:IsReady() and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.MindFreeze, true) then return "MindFreeze 5"; end
         	else 
          	    return
         	end 
      	end 
	
     	 -- Asphyxiate
      	if useCC and S.Asphyxiate:IsReady() and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.Asphyxiate, true) then return "Asphyxiate 5"; end
     	    else 
     	        return
     	    end 
     	end 
		
        -- use DeathStrike on low HP in Solo Mode
        if not no_heal and S.DeathStrike:IsReadyP("Melee") then
            if HR.Cast(S.DeathStrike) then return ""; end
        end
        -- use DeathStrike with Proc in Solo Mode
        if Action.GetToggle(2, "SoloMode") and S.DeathStrike:IsReadyP("Melee") and Player:BuffP(S.DeathStrikeBuff) then
            if HR.Cast(S.DeathStrike) then return ""; end
        end
        -- auto_attack
        -- variable,name=pooling_for_gargoyle,value=cooldown.summon_gargoyle.remains<5&talent.summon_gargoyle.enabled
        if (true) then
            VarPoolingForGargoyle = num(S.SummonGargoyle:CooldownRemainsP() < 5 and S.SummonGargoyle:IsAvailable())
        end
        -- arcane_torrent,if=runic_power.deficit>65&(pet.gargoyle.active|!talent.summon_gargoyle.enabled)&rune.deficit>=5
        if S.ArcaneTorrent:IsCastableP() and not ShouldStop and HR.CDsON() and (Player:RunicPowerDeficit() > 65 and (S.SummonGargoyle:TimeSinceLastCast() <= 35 or not S.SummonGargoyle:IsAvailable()) and Player:Rune() <= 1) then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return "arcane_torrent 248"; end
        end
        -- blood_fury,if=pet.gargoyle.active|!talent.summon_gargoyle.enabled
        if S.BloodFury:IsCastableP() and not ShouldStop and HR.CDsON() and (S.SummonGargoyle:TimeSinceLastCast() <= 35 or not S.SummonGargoyle:IsAvailable()) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "blood_fury 252"; end
        end
        -- berserking,if=buff.unholy_frenzy.up|pet.gargoyle.active|!talent.summon_gargoyle.enabled
        if S.Berserking:IsCastableP() and not ShouldStop and HR.CDsON() and (Player:BuffP(S.UnholyFrenzyBuff) or S.SummonGargoyle:TimeSinceLastCast() <= 35 or not S.SummonGargoyle:IsAvailable()) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "berserking 256"; end
        end
        if (TrinketON()) then
            -- use_items,if=time>20|!equipped.ramping_amplitude_gigavolt_engine|!equipped.vision_of_demise
            if I.AzsharasFontofPower:IsEquipReady() and (HL.CombatTime() > 20 or not I.RampingAmplitudeGigavoltEngine:IsEquipped() or not I.VisionofDemise:IsEquipped()) then
                if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 258"; end
            end
            -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.stack<1
            if I.AshvanesRazorCoral:IsEquipReady() and (Target:DebuffDownP(S.RazorCoralDebuff)) then
                if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 260"; end
            end
            -- use_item,name=ashvanes_razor_coral,if=(pet.guardian_of_azeroth.active&pet.apoc_ghoul.active)|(cooldown.apocalypse.remains<gcd&!essence.condensed_lifeforce.enabled&!talent.unholy_frenzy.enabled)|(target.1.time_to_die<cooldown.apocalypse.remains+20)|(cooldown.apocalypse.remains<gcd&target.1.time_to_die<cooldown.condensed_lifeforce.remains+20)|(buff.unholy_frenzy.up&!essence.condensed_lifeforce.enabled)
            if I.AshvanesRazorCoral:IsEquipReady() and (((S.GuardianofAzeroth:IsAvailable() and S.GuardianofAzeroth:CooldownRemainsP() > 150) and S.Apocalypse:CooldownRemainsP() > 75) or (S.Apocalypse:CooldownRemainsP() < Player:GCD() and not S.GuardianofAzeroth:IsAvailable() and not S.UnholyFrenzy:IsAvailable()) or (Target:TimeToDie() < S.Apocalypse:CooldownRemainsP() + 20) or (S.Apocalypse:CooldownRemainsP() < Player:GCD() and Target:TimeToDie() < S.GuardianofAzeroth:CooldownRemainsP() + 20) or (Player:BuffP(S.UnholyFrenzyBuff) and not S.GuardianofAzeroth:IsAvailable())) then
                if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 261"; end
            end
            -- use_item,name=vision_of_demise,if=(cooldown.apocalypse.ready&debuff.festering_wound.stack>=4&essence.vision_of_perfection.enabled)|buff.unholy_frenzy.up|pet.gargoyle.active
            if I.VisionofDemise:IsEquipReady() and ((S.Apocalypse:CooldownUpP() and Target:DebuffStackP(S.FesteringWoundDebuff) >= 4 and S.VisionofPerfection:IsAvailable()) or Player:BuffP(S.UnholyFrenzyBuff) or S.SummonGargoyle:TimeSinceLastCast() <= 35) then
                if HR.Cast(I.VisionofDemise) then return "vision_of_demise 262"; end
            end
            -- use_item,name=ramping_amplitude_gigavolt_engine,if=cooldown.apocalypse.remains<2|talent.army_of_the_damned.enabled|raid_event.adds.in<5
            if I.RampingAmplitudeGigavoltEngine:IsEquipReady() and (S.Apocalypse:CooldownRemainsP() < 2 or S.ArmyoftheDamned:IsAvailable()) then
                if HR.Cast(I.RampingAmplitudeGigavoltEngine) then return "ramping_amplitude_gigavolt_engine 263"; end
            end
            -- use_item,name=bygone_bee_almanac,if=cooldown.summon_gargoyle.remains>60|!talent.summon_gargoyle.enabled&time>20|!equipped.ramping_amplitude_gigavolt_engine
            if I.BygoneBeeAlmanac:IsEquipReady() and (S.SummonGargoyle:CooldownRemainsP() > 60 or not S.SummonGargoyle:IsAvailable() and HL.CombatTime() > 20 or not I.RampingAmplitudeGigavoltEngine:IsEquipped()) then
                if HR.Cast(I.BygoneBeeAlmanac) then return "bygone_bee_almanac 269"; end
            end
            -- use_item,name=jes_howler,if=pet.gargoyle.active|!talent.summon_gargoyle.enabled&time>20|!equipped.ramping_amplitude_gigavolt_engine
            if I.JesHowler:IsEquipReady() and (S.SummonGargoyle:TimeSinceLastCast() <= 35 or not S.SummonGargoyle:IsAvailable() and HL.CombatTime() > 20 or not I.RampingAmplitudeGigavoltEngine:IsEquipped()) then
                if HR.Cast(I.JesHowler) then return "jes_howler 277"; end
            end
            -- use_item,name=galecallers_beak,if=pet.gargoyle.active|!talent.summon_gargoyle.enabled&time>20|!equipped.ramping_amplitude_gigavolt_engine
            if I.GalecallersBeak:IsEquipReady() and (S.SummonGargoyle:TimeSinceLastCast() <= 35 or not S.SummonGargoyle:IsAvailable() and HL.CombatTime() > 20 or not I.RampingAmplitudeGigavoltEngine:IsEquipped()) then
                if HR.Cast(I.GalecallersBeak) then return "galecallers_beak 283"; end
            end
            -- use_item,name=grongs_primal_rage,if=rune<=3&(time>20|!equipped.ramping_amplitude_gigavolt_engine)
            if I.GrongsPrimalRage:IsEquipReady() and (Player:Rune() <= 3 and (HL.CombatTime() > 20 or not I.RampingAmplitudeGigavoltEngine:IsEquipped())) then
                if HR.Cast(I.GrongsPrimalRage) then return "grongs_primal_rage 289"; end
            end
        end
        -- potion,if=cooldown.army_of_the_dead.ready|pet.gargoyle.active|buff.unholy_frenzy.up
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (S.ArmyoftheDead:CooldownUpP() or S.SummonGargoyle:TimeSinceLastCast() <= 35 or Player:BuffP(S.UnholyFrenzyBuff)) then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "potion_of_unbridled_fury 293"; end
        end
        -- outbreak,target_if=dot.virulent_plague.remains<=gcd
        if S.Outbreak:IsCastableP() and not ShouldStop and EvaluateCycleOutbreak303(Target) then
            if HR.Cast(S.Outbreak) then return "outbreak 307" end
        end
        -- call_action_list,name=essences
        if (true) then
            local ShouldReturn = Essences(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=cooldowns
        if (true) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- run_action_list,name=aoe,if=active_enemies>=2
        if (Cache.EnemiesCount[8] >= 2) then
            return Aoe();
        end
        -- call_action_list,name=generic
        if (true) then
            local ShouldReturn = Generic(); if ShouldReturn then return ShouldReturn; end
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

