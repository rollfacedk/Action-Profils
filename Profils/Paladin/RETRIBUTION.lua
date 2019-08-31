--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_PALADIN_RETRIBUTION] = {
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
  WakeofAshes                          = Action.Create({ Type = "Spell", ID = 255937     }),
  LightsJudgment                       = Action.Create({ Type = "Spell", ID = 255647     }),
  ShieldofVengeance                    = Action.Create({ Type = "Spell", ID = 184662     }),
  AvengingWrath                        = Action.Create({ Type = "Spell", ID = 31884     }),
  Inquisition                          = Action.Create({ Type = "Spell", ID = 84963     }),
  Crusade                              = Action.Create({ Type = "Spell", ID = 231895     }),
  RighteousVerdict                     = Action.Create({ Type = "Spell", ID = 267610     }),
  ExecutionSentence                    = Action.Create({ Type = "Spell", ID = 267798     }),
  DivineStorm                          = Action.Create({ Type = "Spell", ID = 53385     }),
  DivinePurpose                        = Action.Create({ Type = "Spell", ID = 223817     }),
  TemplarsVerdict                      = Action.Create({ Type = "Spell", ID = 85256     }),
  HammerofWrath                        = Action.Create({ Type = "Spell", ID = 24275     }),
  BladeofJustice                       = Action.Create({ Type = "Spell", ID = 184575     }),
  Judgment                             = Action.Create({ Type = "Spell", ID = 20271     }),
  Consecration                         = Action.Create({ Type = "Spell", ID = 205228     }),
  CrusaderStrike                       = Action.Create({ Type = "Spell", ID = 35395     }),
  Rebuke                               = Action.Create({ Type = "Spell", ID = 96231     }),
  HammerofJustice                      = Action.Create({ Type = "Spell", ID = 853     }),
  -- Buffs
  DivinePurposeBuff                    = Action.Create({ Type = "Spell", ID = 223819, Hidden = true     }),
  EmpyreanPowerBuff                    = Action.Create({ Type = "Spell", ID = 286393, Hidden = true     }),
  AvengingWrathBuff                    = Action.Create({ Type = "Spell", ID = 31884, Hidden = true     }),
  AvengingWrathCritBuff                = Action.Create({ Type = "Spell", ID = 294027, Hidden = true     }),
  InquisitionBuff                      = Action.Create({ Type = "Spell", ID = 84963, Hidden = true     }),  
  CrusadeBuff                          = Action.Create({ Type = "Spell", ID = 231895, Hidden = true     }), 
  SeethingRageBuff                     = Action.Create({ Type = "Spell", ID = 297126, Hidden = true     }), 
  RecklessForceBuff                    = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),  
  -- Debuffs
  JudgmentDebuff                       = Action.Create({ Type = "Spell", ID = 197277, Hidden = true     }),
  ConcentratedFlameBurn                = Action.Create({ Type = "Spell", ID = 295368, Hidden = true     }),
  RazorCoralDebuff                     = Action.Create({ Type = "Spell", ID = 303568, Hidden = true     }),
  -- Trinkets
  GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
  GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
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
Action:CreateEssencesFor(ACTION_CONST_PALADIN_RETRIBUTION)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_PALADIN_RETRIBUTION], { __index = Action })

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

local StunInterrupts = {
  {S.HammerofJustice, "Cast Hammer of Justice (Interrupt)", function () return true; end},
};

-- Variables
local VarDsCastable = 0;
local VarHow = 0;

HL:RegisterForEvent(function()
  VarDsCastable = 0
  VarHow = 0
end, "PLAYER_REGEN_ENABLED")

local EnemyRanges = {30, 8, 5}
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
	local PlayerGCD = Player:GCD()
	-- Anti channeling protection ? To see if its usefull
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
            if I.PotionofFocusedResolve:IsReady() and Action.GetToggle(1, "Potion") then
                if HR.CastSuggested(I.PotionofFocusedResolve) then return "battle_potion_of_strength 4"; end
            end
            -- use_item,name=azsharas_font_of_power
            if I.AzsharasFontofPower:IsEquipReady() then
                if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 5"; end
            end
            -- arcane_torrent,if=!talent.wake_of_ashes.enabled
            if S.ArcaneTorrent:IsCastableP() and HR.CDsON() and (not S.WakeofAshes:IsAvailable()) then
                if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "GCDasOffGCD")) then return "arcane_torrent 6"; end
            end
        end
    end
	
    local function Cooldowns()
        -- potion,if=(cooldown.guardian_of_azeroth.remains>90|!essence.condensed_lifeforce.major)&(buff.bloodlust.react|buff.avenging_wrath.up&buff.avenging_wrath.remains>18|buff.crusade.up&buff.crusade.remains<25)
        if I.PotionofFocusedResolve:IsReady() and Action.GetToggle(1, "Potion") and ((S.GuardianofAzeroth:CooldownRemainsP() > 90 or not S.GuardianofAzeroth:IsAvailable()) and (Player:HasHeroism() or Player:BuffP(S.AvengingWrathBuff) and Player:BuffRemainsP(S.AvengingWrathBuff) > 18 or Player:BuffP(S.CrusadeBuff) and Player:BuffRemainsP(S.CrusadeBuff) < 25)) then
            if HR.CastSuggested(I.PotionofFocusedResolve) then return "battle_potion_of_strength 10"; end
        end
        -- lights_judgment,if=spell_targets.lights_judgment>=2|(!raid_event.adds.exists|raid_event.adds.in>75)
        if S.LightsJudgment:IsCastableP() then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 18"; end
        end
        -- fireblood,if=buff.avenging_wrath.up|buff.crusade.up&buff.crusade.stack=10
        if S.Fireblood:IsCastableP() and (Player:BuffP(S.AvengingWrathBuff) or Player:BuffP(S.CrusadeBuff) and Player:BuffStackP(S.CrusadeBuff) == 10) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "GCDasOffGCD")) then return "fireblood 22"; end
        end
        -- shield_of_vengeance,if=buff.seething_rage.down&buff.memory_of_lucid_dreams.down
        if S.ShieldofVengeance:IsCastableP() and Action.GetToggle(2, "ShieldofVengeance") and (Player:BuffDownP(S.SeethingRageBuff) and Player:BuffDownP(S.MemoryofLucidDreams)) then
            if HR.CastLeft(S.ShieldofVengeance) then return "shield_of_vengeance 30"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down|(buff.avenging_wrath.remains>=20|buff.crusade.stack=10&buff.crusade.remains>15)&(cooldown.guardian_of_azeroth.remains>90|target.time_to_die<30|!essence.condensed_lifeforce.major)
        if I.AshvanesRazorCoral:IsEquipReady() and TrinketON() and (Target:DebuffDownP(S.RazorCoralDebuff) or (Player:BuffRemainsP(S.AvengingWrath) >= 20 or Player:BuffStackP(S.CrusadeBuff) == 10 and Player:BuffRemainsP(S.CrusadeBuff) > 15) and (S.GuardianofAzeroth:CooldownRemainsP() > 90 or Target:TimeToDie() < 30 or not S.GuardianofAzeroth:IsAvailable())) then
            if HR.Cast(I.AshvanesRazorCoral) then reutrn "ashvanes_razor_coral"; end
        end
        -- the_unbound_force,if=time<=2|buff.reckless_force.up
        if S.TheUnboundForce:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (HL.CombatTime() <= 2 or Player:BuffP(S.RecklessForceBuff)) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- blood_of_the_enemy,if=buff.avenging_wrath.up|buff.crusade.up&buff.crusade.stack=10
        if S.BloodoftheEnemy:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffP(S.AvengingWrathBuff) or Player:BuffP(S.CrusadeBuff) and Player:BuffStackP(S.CrusadeBuff) == 10) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- guardian_of_azeroth,if=!talent.crusade.enabled&(cooldown.avenging_wrath.remains<5&holy_power>=3&(buff.inquisition.up|!talent.inquisition.enabled)|cooldown.avenging_wrath.remains>=45)|(talent.crusade.enabled&cooldown.crusade.remains<gcd&holy_power>=4|holy_power>=3&time<10&talent.wake_of_ashes.enabled|cooldown.crusade.remains>=45)
        if S.GuardianofAzeroth:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (not S.Crusade:IsAvailable() and (S.AvengingWrath:CooldownRemainsP() < 5 and Player:HolyPower() >= 3 and (Player:BuffP(S.InquisitionBuff) or not S.Inquisition:IsAvailable()) or S.AvengingWrath:CooldownRemainsP() >= 45) or (S.Crusade:IsAvailable() and S.Crusade:CooldownRemainsP() < PlayerGCD and Player:HolyPower() >= 4 or Player:HolyPower() >= 3 and HL.CombatTime() < 10 and S.WakeofAshes:IsAvailable() or S.Crusade:CooldownRemainsP() >= 45)) then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- worldvein_resonance,if=cooldown.avenging_wrath.remains<gcd&holy_power>=3|cooldown.crusade.remains<gcd&holy_power>=4|cooldown.avenging_wrath.remains>=45|cooldown.crusade.remains>=45
        if S.WorldveinResonance:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (S.AvengingWrath:CooldownRemainsP() < PlayerGCD and Player:HolyPower() >= 3 or S.Crusade:CooldownRemainsP() < PlayerGCD and Player:HolyPower() >= 4 or S.AvengingWrath:CooldownRemainsP() >= 45 or S.Crusade:CooldownRemainsP() >= 45) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- focused_azerite_beam,if=(!raid_event.adds.exists|raid_event.adds.in>30|spell_targets.divine_storm>=2)&!(buff.avenging_wrath.up|buff.crusade.up)&(cooldown.blade_of_justice.remains>gcd*3&cooldown.judgment.remains>gcd*3)
        if S.FocusedAzeriteBeam:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and ((Cache.EnemiesCount[8] >= 2) and not (Player:BuffP(S.AvengingWrathBuff) or Player:BuffP(S.CrusadeBuff)) and (S.BladeofJustice:CooldownRemainsP() > PlayerGCD * 3 and S.Judgment:CooldownRemainsP() > PlayerGCD * 3)) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- memory_of_lucid_dreams,if=(buff.avenging_wrath.up|buff.crusade.up&buff.crusade.stack=10)&holy_power<=3
        if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and ((Player:BuffP(S.AvengingWrathBuff) or Player:BuffP(S.CrusadeBuff) and Player:BuffStackP(S.CrusadeBuff) == 10) and Player:HolyPower() <= 3) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- purifying_blast,if=(!raid_event.adds.exists|raid_event.adds.in>30|spell_targets.divine_storm>=2)
        if S.PurifyingBlast:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- use_item,effect_name=cyclotronic_blast,if=!(buff.avenging_wrath.up|buff.crusade.up)&(cooldown.blade_of_justice.remains>gcd*3&cooldown.judgment.remains>gcd*3)
        if I.PocketsizedComputationDevice:IsEquipReady() and TrinketON() and (not (Player:BuffP(S.AvengingWrathBuff) or Player:BuffP(S.CrusadeBuff)) and (S.BladeofJustice:CooldownRemainsP() > PlayerGCD * 3 and S.Judgment:CooldownRemainsP() > PlayerGCD * 3)) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "cyclotronic_blast"; end
        end
        -- avenging_wrath,if=(!talent.inquisition.enabled|buff.inquisition.up)&holy_power>=3
        if S.AvengingWrath:IsCastableP() and HR.CDsON() and ((not S.Inquisition:IsAvailable() or Player:BuffP(S.InquisitionBuff)) and Player:HolyPower() >= 3) then
            if HR.Cast(S.AvengingWrath, Action.GetToggle(2, "GCDasOffGCD")) then return "avenging_wrath 32"; end
        end
        -- crusade,if=holy_power>=4|holy_power>=3&time<10&talent.wake_of_ashes.enabled
        if S.Crusade:IsCastableP() and HR.CDsON() and (Player:HolyPower() >= 4 or Player:HolyPower() >= 3 and HL.CombatTime() < 10 and S.WakeofAshes:IsAvailable()) then
            if HR.Cast(S.Crusade, Action.GetToggle(2, "GCDasOffGCD")) then return "crusade 38"; end
        end
    end
	
    local function Finishers()
        -- variable,name=wings_pool,value=!equipped.169314&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>gcd*3|cooldown.crusade.remains>gcd*3)|equipped.169314&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>gcd*6|cooldown.crusade.remains>gcd*6)
        if (true) then
            VarWingsPool = num(not I.AzsharasFontofPower:IsEquipped() and (not S.Crusade:IsAvailable() and S.AvengingWrath:CooldownRemainsP() > PlayerGCD * 3 or S.Crusade:CooldownRemainsP() > PlayerGCD * 3) or I.AzsharasFontofPower:IsEquipped() and (not S.Crusade:IsAvailable() and S.AvengingWrath:CooldownRemainsP() > PlayerGCD * 6 or S.Crusade:CooldownRemainsP() > PlayerGCD * 6))
        end
        -- variable,name=ds_castable,value=spell_targets.divine_storm>=2&!talent.righteous_verdict.enabled|spell_targets.divine_storm>=3&talent.righteous_verdict.enabled|buff.empyrean_power.up&debuff.judgment.down&buff.divine_purpose.down&buff.avenging_wrath_autocrit.down
        if (true) then
            VarDsCastable = num(Cache.EnemiesCount[8] >= 2 and not S.RighteousVerdict:IsAvailable() or Cache.EnemiesCount[8] >= 3 and S.RighteousVerdict:IsAvailable() or Player:BuffP(S.EmpyreanPowerBuff) and Target:DebuffDownP(S.JudgmentDebuff) and Player:BuffDownP(S.DivinePurposeBuff) and Player:BuffDownP(S.AvengingWrathCritBuff))
        end
        -- inquisition,if=buff.avenging_wrath.down&(buff.inquisition.down|buff.inquisition.remains<8&holy_power>=3|talent.execution_sentence.enabled&cooldown.execution_sentence.remains<10&buff.inquisition.remains<15|cooldown.avenging_wrath.remains<15&buff.inquisition.remains<20&holy_power>=3)
        if S.Inquisition:IsReadyP() and (Player:BuffDownP(S.InquisitionBuff) and (Player:BuffDownP(S.InquisitionBuff) or Player:BuffRemainsP(S.InquisitionBuff) < 8 and Player:HolyPower() >= 3 or S.ExecutionSentence:IsAvailable() and S.ExecutionSentence:CooldownRemainsP() < 10 and Player:BuffRemainsP(S.InquisitionBuff) < 15 or S.AvengingWrath:CooldownRemainsP() < 15 and Player:BuffRemainsP(S.InquisitionBuff) < 20 and Player:HolyPower() >= 3)) then
            if HR.Cast(S.Inquisition) then return "inquisition 46"; end
        end
        -- execution_sentence,if=spell_targets.divine_storm<=2&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>10|talent.crusade.enabled&buff.crusade.down&cooldown.crusade.remains>10|buff.crusade.stack>=7)
        if S.ExecutionSentence:IsReadyP() and (Cache.EnemiesCount[8] <= 2 and (not S.Crusade:IsAvailable() and S.AvengingWrath:CooldownRemainsP() > 10 or S.Crusade:IsAvailable() and Player:BuffDownP(S.CrusadeBuff) and S.Crusade:CooldownRemainsP() > 10 or Player:BuffStackP(S.CrusadeBuff) >= 7)) then
            if HR.Cast(S.ExecutionSentence) then return "execution_sentence 62"; end
        end
        -- divine_storm,if=variable.ds_castable&variable.wings_pool&((!talent.execution_sentence.enabled|(spell_targets.divine_storm>=2|cooldown.execution_sentence.remains>gcd*2))|(cooldown.avenging_wrath.remains>gcd*3&cooldown.avenging_wrath.remains<10|cooldown.crusade.remains>gcd*3&cooldown.crusade.remains<10|buff.crusade.up&buff.crusade.stack<10))
        if S.DivineStorm:IsReadyP() and (bool(VarDsCastable) and bool(VarWingsPool) and ((not S.ExecutionSentence:IsAvailable() or (Cache.EnemiesCount[8] >= 2 or S.ExecutionSentence:CooldownRemainsP() > PlayerGCD * 2)) or (S.AvengingWrath:CooldownRemainsP() > PlayerGCD * 3 and S.AvengingWrath:CooldownRemainsP() < 10 or S.Crusade:CooldownRemainsP() > PlayerGCD * 3 and S.Crusade:CooldownRemainsP() < 10 or Player:BuffP(S.CrusadeBuff) and Player:BuffStackP(S.CrusadeBuff) < 10))) then
            if HR.Cast(S.DivineStorm) then return "divine_storm 74"; end
        end
        -- templars_verdict,if=variable.wings_pool&(!talent.execution_sentence.enabled|cooldown.execution_sentence.remains>gcd*2|cooldown.avenging_wrath.remains>gcd*3&cooldown.avenging_wrath.remains<10|cooldown.crusade.remains>gcd*3&cooldown.crusade.remains<10|buff.crusade.up&buff.crusade.stack<10)
        if S.TemplarsVerdict:IsReadyP() and (bool(VarWingsPool) and (not S.ExecutionSentence:IsAvailable() or S.ExecutionSentence:CooldownRemainsP() > PlayerGCD * 2 or S.AvengingWrath:CooldownRemainsP() > PlayerGCD * 3 and S.AvengingWrath:CooldownRemainsP() < 10 or S.Crusade:CooldownRemainsP() > PlayerGCD * 3 and S.Crusade:CooldownRemainsP() < 10 or Player:BuffP(S.CrusadeBuff) and Player:BuffStackP(S.CrusadeBuff) < 10)) then
            if HR.Cast(S.TemplarsVerdict) then return "templars_verdict 92"; end
        end
        -- templars_verdict fallback, in case the user is saving AW/Crusade/ExecutionSentence
        if S.TemplarsVerdict:IsReadyP() and (not HR.CDsON()) then
            if HR.Cast(S.TemplarsVerdict) then return "templars_verdict 93"; end
        end
    end
	
    local function Generators()
        -- variable,name=HoW,value=(!talent.hammer_of_wrath.enabled|target.health.pct>=20&!(buff.avenging_wrath.up|buff.crusade.up))
        if (true) then
            VarHow = num((not S.HammerofWrath:IsAvailable() or Target:HealthPercentage() >= 20 and not (Player:BuffP(S.AvengingWrathBuff) or Player:BuffP(S.CrusadeBuff))))
        end
        -- call_action_list,name=finishers,if=holy_power>=5|buff.memory_of_lucid_dreams.up|buff.seething_rage.up|buff.inquisition.down&holy_power>=3
        if (Player:HolyPower() >= 5 or Player:BuffP(S.MemoryofLucidDreams) or Player:BuffP(S.SeethingRageBuff) or Player:BuffDownP(S.InquisitionBuff) and Player:HolyPower() >= 3) then
            local ShouldReturn = Finishers(); if ShouldReturn then return ShouldReturn; end
        end
        -- wake_of_ashes,if=(!raid_event.adds.exists|raid_event.adds.in>15|spell_targets.wake_of_ashes>=2)&(holy_power<=0|holy_power=1&cooldown.blade_of_justice.remains>gcd)&(cooldown.avenging_wrath.remains>10|talent.crusade.enabled&cooldown.crusade.remains>10)
        if S.WakeofAshes:IsCastableP() and ((not (Cache.EnemiesCount[30] > 1) or Cache.EnemiesCount[8] >= 2) and (Player:HolyPower() <= 0 or Player:HolyPower() == 1 and S.BladeofJustice:CooldownRemainsP() > PlayerGCD) and (S.AvengingWrath:CooldownRemainsP() > 10 or S.Crusade:IsAvailable() and S.Crusade:CooldownRemainsP() > 10)) then
            if HR.Cast(S.WakeofAshes) then return "wake_of_ashes 116"; end
        end
        -- blade_of_justice,if=holy_power<=2|(holy_power=3&(cooldown.hammer_of_wrath.remains>gcd*2|variable.HoW))
        if S.BladeofJustice:IsCastableP() and (Player:HolyPower() <= 2 or (Player:HolyPower() == 3 and (S.HammerofWrath:CooldownRemainsP() > PlayerGCD * 2 or bool(VarHow)))) then
            if HR.Cast(S.BladeofJustice) then return "blade_of_justice 122"; end
        end
        -- judgment,if=holy_power<=2|(holy_power<=4&(cooldown.blade_of_justice.remains>gcd*2|variable.HoW))
        if S.Judgment:IsCastableP() and (Player:HolyPower() <= 2 or (Player:HolyPower() <= 4 and (S.BladeofJustice:CooldownRemainsP() > PlayerGCD * 2 or bool(VarHow)))) then
            if HR.Cast(S.Judgment) then return "judgment 128"; end
        end
        -- hammer_of_wrath,if=holy_power<=4
        if S.HammerofWrath:IsReady() and (Player:HolyPower() <= 4) then
            if HR.Cast(S.HammerofWrath) then return "hammer_of_wrath 134"; end
        end
        -- consecration,if=holy_power<=2|holy_power<=3&cooldown.blade_of_justice.remains>gcd*2|holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2
        if S.Consecration:IsCastableP() and (Player:HolyPower() <= 2 or Player:HolyPower() <= 3 and S.BladeofJustice:CooldownRemainsP() > PlayerGCD * 2 or Player:HolyPower() == 4 and S.BladeofJustice:CooldownRemainsP() > PlayerGCD * 2 and S.Judgment:CooldownRemainsP() > PlayerGCD * 2) then
            if HR.Cast(S.Consecration) then return "consecration 136"; end
        end
        -- call_action_list,name=finishers,if=talent.hammer_of_wrath.enabled&target.health.pct<=20|buff.avenging_wrath.up|buff.crusade.up
        if (S.HammerofWrath:IsAvailable() and Target:HealthPercentage() <= 20 or Player:BuffP(S.AvengingWrathBuff) or Player:BuffP(S.CrusadeBuff)) then
            local ShouldReturn = Finishers(); if ShouldReturn then return ShouldReturn; end
        end
        -- crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2|holy_power<=3&cooldown.blade_of_justice.remains>gcd*2|holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2&cooldown.consecration.remains>gcd*2)
        if S.CrusaderStrike:IsCastableP() and (S.CrusaderStrike:ChargesFractionalP() >= 1.75 and (Player:HolyPower() <= 2 or Player:HolyPower() <= 3 and S.BladeofJustice:CooldownRemainsP() > PlayerGCD * 2 or Player:HolyPower() == 4 and S.BladeofJustice:CooldownRemainsP() > PlayerGCD * 2 and S.Judgment:CooldownRemainsP() > PlayerGCD * 2 and S.Consecration:CooldownRemainsP() > PlayerGCD * 2)) then
            if HR.Cast(S.CrusaderStrike) then return "crusader_strike 152"; end
        end
        -- call_action_list,name=finishers
        if (true) then
            local ShouldReturn = Finishers(); if ShouldReturn then return ShouldReturn; end
        end
        -- concentrated_flame
        if S.ConcentratedFlame:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- crusader_strike,if=holy_power<=4
        if S.CrusaderStrike:IsCastableP() and (Player:HolyPower() <= 4) then
            if HR.Cast(S.CrusaderStrike) then return "crusader_strike 166"; end
        end
        -- arcane_torrent,if=holy_power<=4
        if S.ArcaneTorrent:IsCastableP() and HR.CDsON() and (Player:HolyPower() <= 4) then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "GCDasOffGCD")) then return "arcane_torrent 168"; end
        end
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
        -- auto_attack
		-- Interrupt Handler
 	 	local randomInterrupt = math.random(25, 70)
  		local unit = "target"
   		local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")          
  	    -- Rebuke
  	    if useKick and S.Rebuke:IsReady() and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.Rebuke, true) then return "Rebuke 5"; end
         	else 
          	    return
         	end 
      	end 	
     	-- HammerofJustice
      	if useCC and S.HammerofJustice:IsReady() and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.HammerofJustice, true) then return "HammerofJustice 5"; end
     	    else 
     	        return
     	    end 
     	end 		
        -- call_action_list,name=cooldowns
        if (HR.CDsON()) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=generators
        if (true) then
            local ShouldReturn = Generators(); if ShouldReturn then return ShouldReturn; end
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

