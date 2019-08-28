--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_DEATHKNIGHT_FROST] = {
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
  RemorselessWinter                     = Action.Create({ Type = "Spell", ID = 196770     }),
  GatheringStorm                        = Action.Create({ Type = "Spell", ID = 194912     }),
  GlacialAdvance                        = Action.Create({ Type = "Spell", ID = 194913     }),
  Frostscythe                           = Action.Create({ Type = "Spell", ID = 207230     }),
  FrostStrike                           = Action.Create({ Type = "Spell", ID = 49143     }),
  HowlingBlast                          = Action.Create({ Type = "Spell", ID = 49184     }),
  RunicAttenuation                      = Action.Create({ Type = "Spell", ID = 207104     }),
  Obliterate                            = Action.Create({ Type = "Spell", ID = 49020     }),
  HornofWinter                          = Action.Create({ Type = "Spell", ID = 57330     }),
  ArcaneTorrent                         = Action.Create({ Type = "Spell", ID = 50613     }),
  PillarofFrost                         = Action.Create({ Type = "Spell", ID = 51271     }),
  ChainsofIce                           = Action.Create({ Type = "Spell", ID = 45524     }),
  FrostwyrmsFury                        = Action.Create({ Type = "Spell", ID = 279302     }),
  BloodFury                             = Action.Create({ Type = "Spell", ID = 20572     }),
  Berserking                            = Action.Create({ Type = "Spell", ID = 26297     }),
  EmpowerRuneWeapon                     = Action.Create({ Type = "Spell", ID = 47568     }),
  BreathofSindragosa                    = Action.Create({ Type = "Spell", ID = 152279     }),
  ColdHeart                             = Action.Create({ Type = "Spell", ID = 281208     }),
  FrozenPulse                           = Action.Create({ Type = "Spell", ID = 194909     }),
  Obliteration                          = Action.Create({ Type = "Spell", ID = 281238     }),
  DeathStrike                           = Action.Create({ Type = "Spell", ID = 49998     }),
  FrozenTempest                         = Action.Create({ Type = "Spell", ID = 278487     }),
  IcyCitadel                            = Action.Create({ Type = "Spell", ID = 272718     }),
  MindFreeze                            = Action.Create({ Type = "Spell", ID = 47528     }),
  ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
  ChillStreak                           = Action.Create({ Type = "Spell", ID = 305392     }),
  -- Buffs
  RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932     }),
  IcyCitadelBuff                        = Action.Create({ Type = "Spell", ID = 272719     }),
  UnholyStrengthBuff                    = Action.Create({ Type = "Spell", ID = 53365     }),
  DeathStrikeBuff                       = Action.Create({ Type = "Spell", ID = 101568     }),
  IcyTalonsBuff                         = Action.Create({ Type = "Spell", ID = 194879     }),
  FrozenPulseBuff                       = Action.Create({ Type = "Spell", ID = 194909     }),
  EmpowerRuneWeaponBuff                 = Action.Create({ Type = "Spell", ID = 47568     }),
  PillarofFrostBuff                     = Action.Create({ Type = "Spell", ID = 51271     }),
  ColdHeartBuff                         = Action.Create({ Type = "Spell", ID = 281209     }),
  KillingMachineBuff                    = Action.Create({ Type = "Spell", ID = 51124     }),
  RimeBuff                              = Action.Create({ Type = "Spell", ID = 59052     }),   
  -- Debuffs
  RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568     }),
  FrostFeverDebuff                      = Action.Create({ Type = "Spell", ID = 55095     }),
  RazoriceDebuff                        = Action.Create({ Type = "Spell", ID = 51714     }),  
  -- Trinkets
  GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
  GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
  AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
  AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
  DribblingInkpod                       = Action.Create({ Type = "Trinket", ID = 169319, QueueForbidden = true }),
  AzsharasFontofPower                   = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
  GalecallersBoon                       = Action.Create({ Type = "Trinket", ID = 159614, QueueForbidden = true }),
  PocketsizedComputationDevice          = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
  RazdunksBigRedButton                  = Action.Create({ Type = "Trinket", ID = 159611, QueueForbidden = true }),
  MerekthasFang                         = Action.Create({ Type = "Trinket", ID = 158367, QueueForbidden = true }),
  KnotofAncientFuryAlliance             = Action.Create({ Type = "Trinket", ID = 161413, QueueForbidden = true }),
  KnotofAncientFuryHorde                = Action.Create({ Type = "Trinket", ID = 166795, QueueForbidden = true }),
  FirstMatesSpyglass                    = Action.Create({ Type = "Trinket", ID = 158163, QueueForbidden = true }),
  GrongsPrimalRage                      = Action.Create({ Type = "Trinket", ID = 165574, QueueForbidden = true }),
  LurkersInsidiousGift                  = Action.Create({ Type = "Trinket", ID = 167866, QueueForbidden = true }),
  NotoriousGladiatorsBadge              = Action.Create({ Type = "Trinket", ID = 167380, QueueForbidden = true }),
  NotoriousGladiatorsMedallion          = Action.Create({ Type = "Trinket", ID = 167377, QueueForbidden = true }),
  SinisterGladiatorsBadge               = Action.Create({ Type = "Trinket", ID = 165058, QueueForbidden = true }),
  SinisterGladiatorsMedallion           = Action.Create({ Type = "Trinket", ID = 165055, QueueForbidden = true }),
  VialofAnimatedBlood                   = Action.Create({ Type = "Trinket", ID = 159625, QueueForbidden = true }),
  JesHowler                             = Action.Create({ Type = "Trinket", ID = 159627, QueueForbidden = true }),
  -- Potions
  PotionofUnbridledFury                 = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
  PotionTest                            = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
  PotionofFocusedResolve                = Action.Create({ Type = "Potion", ID = 168506, QueueForbidden = true }),
  SuperiorSteelskinPotion               = Action.Create({ Type = "Potion", ID = 168501, QueueForbidden = true }), 
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
Action:CreateEssencesFor(ACTION_CONST_DEATHKNIGHT_FROST)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_DEATHKNIGHT_FROST], { __index = Action })

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

-- Functions
local EnemyRanges = {10, 8}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i, true);
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

local function Init ()
  HL.RegisterNucleusAbility(196770, 8, 6)               -- Remorseless Winter
  HL.RegisterNucleusAbility(207230, 8, 6)               -- Frostscythe
  HL.RegisterNucleusAbility(49184, 10, 6)               -- Howling Blast
end

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
	Init()
	local no_heal = not DeathStrikeHeal()
    UpdateRanges() -- To populate Cache.Enemies[range] for CastCycles
    DetermineEssenceRanks()
	
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
            if HR.Cast(I.PotionofUnbridledFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipReady() then
            if HR.Cast(I.AzsharasFontofPower) then return ""; end
        end
        -- variable,name=other_on_use_equipped,value=(equipped.notorious_gladiators_badge|equipped.sinister_gladiators_badge|equipped.sinister_gladiators_medallion|equipped.vial_of_animated_blood|equipped.first_mates_spyglass|equipped.jes_howler|equipped.notorious_gladiators_medallion|equipped.ashvanes_razor_coral)
        if (true) then
            VarOoUE = (I.NotoriousGladiatorsBadge:IsEquipped() or I.SinisterGladiatorsBadge:IsEquipped() or I.SinisterGladiatorsMedallion:IsEquipped() or I.VialofAnimatedBlood:IsEquipped() or I.FirstMatesSpyglass:IsEquipped() or I.JesHowler:IsEquipped() or I.NotoriousGladiatorsMedallion:IsEquipped() or I.AshvanesRazorCoral:IsEquipped())
        end
        -- opener
       -- if Everyone.TargetIsValid() then
            if S.BreathofSindragosa:IsAvailable() and S.Obliterate:IsCastableP("Melee") and not ShouldStop then
                if HR.Cast(S.Obliterate) then return ""; end
            end
            if S.HowlingBlast:IsCastableP(30, true) and not ShouldStop and (not Target:DebuffP(S.FrostFeverDebuff)) then
                if HR.Cast(S.HowlingBlast) then return ""; end
            end
       -- end
    end
    local function Aoe()
        -- remorseless_winter,if=talent.gathering_storm.enabled|(azerite.frozen_tempest.rank&spell_targets.remorseless_winter>=3&!buff.rime.up)
        if S.RemorselessWinter:IsCastableP() and not ShouldStop and (S.GatheringStorm:IsAvailable() or (bool(S.FrozenTempest:AzeriteRank()) and Cache.EnemiesCount[8] >= 3 and not Player:BuffP(S.RimeBuff))) then
            if HR.Cast(S.RemorselessWinter) then return ""; end
        end
        -- glacial_advance,if=talent.frostscythe.enabled
        if no_heal and S.GlacialAdvance:IsReadyP() and not ShouldStop and (S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.GlacialAdvance) then return ""; end
        end
        -- frost_strike,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm.enabled&!talent.frostscythe.enabled
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and S.RemorselessWinter:CooldownRemainsP() <= 2 * Player:GCD() and S.GatheringStorm:IsAvailable() and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- frost_strike,if=cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm.enabled
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and (S.RemorselessWinter:CooldownRemainsP() <= 2 * Player:GCD() and S.GatheringStorm:IsAvailable()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- howling_blast,if=buff.rime.up
        if S.HowlingBlast:IsCastableP(30, true) and not ShouldStop and (Player:BuffP(S.RimeBuff)) then
            if HR.Cast(S.HowlingBlast) then return ""; end
        end
        -- frostscythe,if=buff.killing_machine.up
        if S.Frostscythe:IsCastableP() and not ShouldStop and (Player:BuffP(S.KillingMachineBuff)) then
            if HR.Cast(S.Frostscythe) then return ""; end
        end
        -- glacial_advance,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)
        if no_heal and S.GlacialAdvance:IsReadyP() and not ShouldStop and (Player:RunicPowerDeficit() < (15 + num(S.RunicAttenuation:IsAvailable()) * 3)) then
            if HR.Cast(S.GlacialAdvance) then return ""; end
        end
        -- frost_strike,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&runic_power.deficit<(15+talent.runic_attenuation.enabled*3)&!talent.frostscythe.enabled
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and Player:RunicPowerDeficit() < (15 + num(S.RunicAttenuation:IsAvailable()) * 3) and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- frost_strike,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)&!talent.frostscythe.enabled
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() < (15 + num(S.RunicAttenuation:IsAvailable()) * 3) and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- remorseless_winter
        if S.RemorselessWinter:IsCastableP() and not ShouldStop then
            if HR.Cast(S.RemorselessWinter) then return ""; end
        end
        -- frostscythe
        if S.Frostscythe:IsCastableP() and not ShouldStop then
            if HR.Cast(S.Frostscythe) then return ""; end
        end
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&runic_power.deficit>(25+talent.runic_attenuation.enabled*3)&!talent.frostscythe.enabled
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and Player:RunicPowerDeficit() > (25 + num(S.RunicAttenuation:IsAvailable()) * 3) and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate,if=runic_power.deficit>(25+talent.runic_attenuation.enabled*3)
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() > (25 + num(S.RunicAttenuation:IsAvailable()) * 3)) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- glacial_advance
        if no_heal and S.GlacialAdvance:IsReadyP() and not ShouldStop then
            if HR.Cast(S.GlacialAdvance) then return ""; end
        end
        -- frost_strike,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&!talent.frostscythe.enabled
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- frost_strike
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- horn_of_winter
        if S.HornofWinter:IsCastableP() and not ShouldStop then
            if HR.Cast(S.HornofWinter, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- arcane_torrent
        if S.ArcaneTorrent:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
    end
    local function BosPooling()
        -- howling_blast,if=buff.rime.up
        if S.HowlingBlast:IsCastableP(30, true) and not ShouldStop and (Player:BuffP(S.RimeBuff)) then
            if HR.Cast(S.HowlingBlast) then return ""; end
        end
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&runic_power.deficit>=25&!talent.frostscythe.enabled
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and Player:RunicPowerDeficit() >= 25 and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate,if=runic_power.deficit>=25
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() >= 25) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- glacial_advance,if=runic_power.deficit<20&spell_targets.glacial_advance>=2&cooldown.pillar_of_frost.remains>5
        if no_heal and S.GlacialAdvance:IsReadyP() and not ShouldStop and (Player:RunicPowerDeficit() < 20 and Cache.EnemiesCount[10] >= 2 and S.PillarofFrost:CooldownRemainsP() > 5) then
            if HR.Cast(S.GlacialAdvance) then return ""; end
        end
        -- frost_strike,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&runic_power.deficit<20&!talent.frostscythe.enabled&cooldown.pillar_of_frost.remains>5
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and Player:RunicPowerDeficit() < 20 and not S.Frostscythe:IsAvailable() and S.PillarofFrost:CooldownRemainsP() > 5) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- frost_strike,if=runic_power.deficit<20&cooldown.pillar_of_frost.remains>5
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() < 20 and S.PillarofFrost:CooldownRemainsP() > 5) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- frostscythe,if=buff.killing_machine.up&runic_power.deficit>(15+talent.runic_attenuation.enabled*3)&spell_targets.frostscythe>=2
        if S.Frostscythe:IsCastableP() and not ShouldStop and (Player:BuffP(S.KillingMachineBuff) and Player:RunicPowerDeficit() > (15 + num(S.RunicAttenuation:IsAvailable()) * 3) and Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.Frostscythe) then return ""; end
        end
        -- frostscythe,if=runic_power.deficit>=(35+talent.runic_attenuation.enabled*3)&spell_targets.frostscythe>=2
        if S.Frostscythe:IsCastableP() and not ShouldStop and (Player:RunicPowerDeficit() >= (35 + num(S.RunicAttenuation:IsAvailable()) * 3) and Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.Frostscythe) then return ""; end
        end
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&runic_power.deficit>=(35+talent.runic_attenuation.enabled*3)&!talent.frostscythe.enabled
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and Player:RunicPowerDeficit() >= (35 + num(S.RunicAttenuation:IsAvailable()) * 3) and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate,if=runic_power.deficit>=(35+talent.runic_attenuation.enabled*3)
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() >= (35 + num(S.RunicAttenuation:IsAvailable()) * 3)) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- glacial_advance,if=cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40&spell_targets.glacial_advance>=2
        if no_heal and S.GlacialAdvance:IsReadyP() and not ShouldStop and (S.PillarofFrost:CooldownRemainsP() > Player:RuneTimeToX(4) and Player:RunicPowerDeficit() < 40 and Cache.EnemiesCount[10] >= 2) then
            if HR.Cast(S.GlacialAdvance) then return ""; end
        end
        -- frost_strike,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40&!talent.frostscythe.enabled
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and S.PillarofFrost:CooldownRemainsP() > Player:RuneTimeToX(4) and Player:RunicPowerDeficit() < 40 and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- frost_strike,if=cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and (S.PillarofFrost:CooldownRemainsP() > Player:RuneTimeToX(4) and Player:RunicPowerDeficit() < 40) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- wait for resources
        if HR.CastAnnotated(S.PoolRange, false, "WAIT") then return "Wait Resources BoS Pooling"; end
    end
    local function BosTicking()
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&runic_power<=30&!talent.frostscythe.enabled
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and Player:RunicPower() <= 30 and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate,if=runic_power<=30
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (Player:RunicPower() <= 32) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- remorseless_winter,if=talent.gathering_storm.enabled
        if S.RemorselessWinter:IsCastableP() and not ShouldStop and (S.GatheringStorm:IsAvailable()) then
            if HR.Cast(S.RemorselessWinter) then return ""; end
        end
        -- howling_blast,if=buff.rime.up
        if S.HowlingBlast:IsCastableP(30, true) and not ShouldStop and (Player:BuffP(S.RimeBuff)) then
            if HR.Cast(S.HowlingBlast) then return ""; end
        end
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&rune.time_to_5<gcd|runic_power<=45&!talent.frostscythe.enabled
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and Player:RuneTimeToX(5) < Player:GCD() or Player:RunicPower() <= 45 and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate,if=rune.time_to_5<gcd|runic_power<=45
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (Player:RuneTimeToX(5) < Player:GCD() or Player:RunicPower() <= 45) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- frostscythe,if=buff.killing_machine.up&spell_targets.frostscythe>=2
        if S.Frostscythe:IsCastableP() and not ShouldStop and (Player:BuffP(S.KillingMachineBuff) and Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.Frostscythe) then return ""; end
        end
        -- horn_of_winter,if=runic_power.deficit>=32&rune.time_to_3>gcd
        if S.HornofWinter:IsCastableP() and not ShouldStop and (Player:RunicPowerDeficit() >= 30 and Player:RuneTimeToX(3) > Player:GCD()) then
            if HR.Cast(S.HornofWinter, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- remorseless_winter
        if S.RemorselessWinter:IsCastableP() and not ShouldStop then
            if HR.Cast(S.RemorselessWinter) then return ""; end
        end
        -- frostscythe,if=spell_targets.frostscythe>=2
        if S.Frostscythe:IsCastableP() and not ShouldStop and (Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.Frostscythe) then return ""; end
        end
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&runic_power.deficit>25|rune>3&!talent.frostscythe.enabled
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and Player:RunicPowerDeficit() > 25 or Player:Rune() > 3 and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate,if=runic_power.deficit>25|rune>3
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() > 25 or Player:Rune() > 3) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- arcane_torrent,if=runic_power.deficit>20
        if S.ArcaneTorrent:IsCastableP() and not ShouldStop and (Player:RunicPowerDeficit() > 20) then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- wait for resources
        if HR.CastAnnotated(S.PoolRange, false, "WAIT") then return "Wait Resources BoS Ticking"; end
    end
    local function ColdHeart()
        -- chains_of_ice,if=buff.cold_heart.stack>5&target.time_to_die<gcd
        if S.ChainsofIce:IsCastableP() and not ShouldStop and (Player:BuffStackP(S.ColdHeartBuff) > 5 and Target:TimeToDie() < Player:GCD()) then
            if HR.Cast(S.ChainsofIce) then return ""; end
        end
        -- chains_of_ice,if=(buff.pillar_of_frost.remains<=gcd*(1+cooldown.frostwyrms_fury.ready)|buff.pillar_of_frost.remains<rune.time_to_3)&buff.pillar_of_frost.up&azerite.icy_citadel.rank<=2
        if S.ChainsofIce:IsCastableP() and not ShouldStop and ((Player:BuffRemainsP(S.PillarofFrostBuff) <= Player:GCD() * (1 + num(S.FrostwyrmsFury:CooldownUpP())) or Player:BuffRemainsP(S.PillarofFrostBuff) < Player:RuneTimeToX(3)) and Player:BuffP(S.PillarofFrostBuff) and S.IcyCitadel:AzeriteRank() <= 2) then
            if HR.Cast(S.ChainsofIce) then return ""; end
        end
        -- chains_of_ice,if=buff.pillar_of_frost.remains<8&buff.unholy_strength.remains<gcd*(1+cooldown.frostwyrms_fury.ready)&buff.unholy_strength.remains&buff.pillar_of_frost.up&azerite.icy_citadel.rank<=2
        if S.ChainsofIce:IsCastableP() and not ShouldStop and (Player:BuffRemainsP(S.PillarofFrostBuff) < 8 and Player:BuffRemainsP(S.UnholyStrengthBuff) < Player:GCD() * (1 + num(S.FrostwyrmsFury:CooldownUpP())) and Player:BuffP(S.UnholyStrengthBuff) and Player:BuffP(S.PillarofFrostBuff) and S.IcyCitadel:AzeriteRank() <= 2) then
            if HR.Cast(S.ChainsofIce) then return ""; end
        end
        -- chains_of_ice,if=(buff.icy_citadel.remains<=gcd*(1+cooldown.frostwyrms_fury.ready)|buff.icy_citadel.remains<rune.time_to_3)&buff.icy_citadel.up&azerite.icy_citadel.enabled&azerite.icy_citadel.rank>2
        if S.ChainsofIce:IsCastableP() and not ShouldStop and ((Player:BuffRemainsP(S.IcyCitadelBuff) <= Player:GCD() * (1 + num(S.FrostwyrmsFury:CooldownUpP())) or Player:BuffRemainsP(S.IcyCitadelBuff) < Player:RuneTimeToX(3)) and Player:BuffP(S.IcyCitadelBuff) and S.IcyCitadel:AzeriteEnabled() and S.IcyCitadel:AzeriteRank() > 2) then
            if HR.Cast(S.ChainsofIce) then return ""; end
        end
        -- chains_of_ice,if=buff.icy_citadel.remains<8&buff.unholy_strength.remains<gcd*(1+cooldown.frostwyrms_fury.ready)&buff.unholy_strength.remains&buff.icy_citadel.up&!azerite.icy_citadel.enabled&azerite.icy_citadel.rank>2
        -- This will always return false based on the last two checks, ignoring the "not enabled" check as that wasn't in the other updates on 1/12
        if S.ChainsofIce:IsCastableP() and not ShouldStop and (Player:BuffRemainsP(S.IcyCitadelBuff) < 8 and Player:BuffRemainsP(S.UnholyStrengthBuff) < Player:GCD() * (1 + num(S.FrostwyrmsFury:CooldownUpP())) and Player:BuffP(S.UnholyStrengthBuff) and Player:BuffP(S.IcyCitadelBuff) and S.IcyCitadel:AzeriteRank() > 2) then
            if HR.Cast(S.ChainsofIce) then return ""; end
        end
    end
    local function Cooldowns()
        if (TrinketON()) then
            -- use_item,name=azsharas_font_of_power,if=(cooldown.empowered_rune_weapon.ready&!variable.other_on_use_equipped)|(cooldown.pillar_of_frost.remains<=10&variable.other_on_use_equipped)
            if I.AzsharasFontofPower:IsEquipReady() and ((S.EmpowerRuneWeapon:CooldownUpP() and not bool(VarOoUE)) or (S.PillarofFrost:CooldownRemainsP() <= 10 and bool(VarOoUE))) then
                if HR.Cast(I.AzsharasFontofPower) then return ""; end
            end
            -- use_item,name=lurkers_insidious_gift,if=talent.breath_of_sindragosa.enabled&((cooldown.pillar_of_frost.remains<=10&variable.other_on_use_equipped)|(buff.pillar_of_frost.up&!variable.other_on_use_equipped))|(buff.pillar_of_frost.up&!talent.breath_of_sindragosa.enabled)
            if I.LurkersInsidiousGift:IsEquipReady() and (S.BreathofSindragosa:IsAvailable() and ((S.PillarofFrost:CooldownRemainsP() <= 10 and bool(VarOoUE)) or (Player:BuffP(S.PillarofFrostBuff) and not bool(VarOoUE))) or (Player:BuffP(S.PillarofFrostBuff) and not S.BreathofSindragosa:IsAvailable())) then
                if HR.Cast(I.LurkersInsidiousGift) then return ""; end
            end
            -- use_item,name=cyclotronic_blast,if=!buff.pillar_of_frost.up
            if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and (Player:BuffDownP(S.PillarofFrostBuff)) then
                if HR.Cast(I.PocketsizedComputationDevice) then return ""; end
            end
            -- use_items,if=(cooldown.pillar_of_frost.ready|cooldown.pillar_of_frost.remains>20)&(!talent.breath_of_sindragosa.enabled|cooldown.empower_rune_weapon.remains>95)
            -- use_item,name=ashvanes_razor_coral,if=cooldown.empower_rune_weapon.remains>90&debuff.razor_coral_debuff.up&variable.other_on_use_equipped|buff.breath_of_sindragosa.up&debuff.razor_coral_debuff.up&!variable.other_on_use_equipped|buff.empower_rune_weapon.up&debuff.razor_coral_debuff.up&!talent.breath_of_sindragosa.enabled|target.1.time_to_die<21
            if I.AshvanesRazorCoral:IsEquipReady() and (S.EmpowerRuneWeapon:CooldownRemainsP() > 90 and Target:DebuffP(S.RazorCoralDebuff) and bool(VarOoUE) or Player:BuffP(S.BreathofSindragosa) and Target:DebuffP(S.RazorCoralDebuff) and not bool(VarOoUE) or Player:BuffP(S.EmpowerRuneWeaponBuff) and Target:DebuffP(S.RazorCoralDebuff) and not S.BreathofSindragosa:IsAvailable() or Target:TimeToDie() < 21) then
                if HR.Cast(I.AshvanesRazorCoral) then return ""; end
            end
            -- use_item,name=jes_howler,if=(equipped.lurkers_insidious_gift&buff.pillar_of_frost.remains)|(!equipped.lurkers_insidious_gift&buff.pillar_of_frost.remains<12&buff.pillar_of_frost.up)
            if I.JesHowler:IsEquipReady() and ((I.LurkersInsidiousGift:IsEquipped() and Player:BuffP(S.PillarofFrostBuff)) or (not I.LurkersInsidiousGift:IsEquipped() and Player:BuffRemainsP(S.PillarofFrostBuff) < 12 and Player:BuffP(S.PillarofFrostBuff))) then
                if HR.Cast(I.JesHowler) then return ""; end
            end
            -- use_item,name=knot_of_ancient_fury,if=cooldown.empower_rune_weapon.remains>40
            -- Two lines, since Horde and Alliance versions of the trinket have different IDs
            if I.KnotofAncientFuryAlliance:IsEquipReady() and (S.EmpowerRuneWeapon:CooldownRemainsP() > 40) then
                if HR.Cast(I.KnotofAncientFuryAlliance) then return ""; end
            end
            if I.KnotofAncientFuryHorde:IsEquipReady() and (S.EmpowerRuneWeapon:CooldownRemainsP() > 40) then
                if HR.Cast(I.KnotofAncientFuryHorde) then return ""; end
            end
            -- use_item,name=grongs_primal_rage,if=rune<=3&!buff.pillar_of_frost.up&(!buff.breath_of_sindragosa.up|!talent.breath_of_sindragosa.enabled)
            if I.GrongsPrimalRage:IsEquipReady() and (Player:Rune() <= 3 and Player:BuffDownP(S.PillarofFrostBuff) and (Player:BuffDownP(S.BreathofSindragosa) or not S.BreathofSindragosa:IsAvailable())) then
                if HR.Cast(I.GrongsPrimalRage) then return ""; end
            end
            -- use_item,name=razdunks_big_red_button
            if I.RazdunksBigRedButton:IsEquipReady() then
                if HR.Cast(I.RazdunksBigRedButton) then return ""; end
            end
            -- use_item,name=merekthas_fang,if=!dot.breath_of_sindragosa.ticking&!buff.pillar_of_frost.up
            if I.MerekthasFang:IsEquipReady() and (not Player:BuffP(S.BreathofSindragosa) and not Player:BuffP(S.PillarofFrostBuff)) then
                if HR.Cast(I.MerekthasFang) then return ""; end
            end
            -- use_item,name=first_mates_spyglass,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up
            if I.FirstMatesSpyglass:IsEquipReady() and (Player:BuffP(S.PillarofFrostBuff) and Player:BuffP(S.EmpowerRuneWeaponBuff)) then
                if HR.Cast(I.FirstMatesSpyglass) then return ""; end
            end
        end
        -- potion,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (Player:BuffP(S.PillarofFrostBuff) and Player:BuffP(S.EmpowerRuneWeaponBuff)) then
            if HR.Cast(I.PotionofUnbridledFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- blood_fury,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up
        if S.BloodFury:IsCastableP() and not ShouldStop and (Player:BuffP(S.PillarofFrostBuff) and Player:BuffP(S.EmpowerRuneWeaponBuff)) then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- berserking,if=buff.pillar_of_frost.up
        if S.Berserking:IsCastableP() and not ShouldStop and (Player:BuffP(S.PillarofFrostBuff)) then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- pillar_of_frost,if=cooldown.empower_rune_weapon.remains
        if S.PillarofFrost:IsCastableP() and not ShouldStop and (bool(S.EmpowerRuneWeapon:CooldownRemainsP())) then
            if HR.Cast(S.PillarofFrost, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- breath_of_sindragosa,if=cooldown.empower_rune_weapon.remains&cooldown.pillar_of_frost.remains
        if S.BreathofSindragosa:IsCastableP() and not ShouldStop and (bool(S.EmpowerRuneWeapon:CooldownRemainsP()) and bool(S.PillarofFrost:CooldownRemainsP())) then
            if HR.Cast(S.BreathofSindragosa, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- empower_rune_weapon,if=cooldown.pillar_of_frost.ready&!talent.breath_of_sindragosa.enabled&rune.time_to_5>gcd&runic_power.deficit>=10|target.1.time_to_die<20
        if S.EmpowerRuneWeapon:IsCastableP() and not ShouldStop and (S.PillarofFrost:CooldownUpP() and not S.BreathofSindragosa:IsAvailable() and Player:RuneTimeToX(5) > Player:GCD() and Player:RunicPowerDeficit() >= 10 or Target:TimeToDie() < 20) then
            if HR.Cast(S.EmpowerRuneWeapon, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- empower_rune_weapon,if=(cooldown.pillar_of_frost.ready|target.time_to_die<20)&talent.breath_of_sindragosa.enabled&runic_power>60
        if S.EmpowerRuneWeapon:IsCastableP() and not ShouldStop and ((S.PillarofFrost:CooldownUpP() or Target:TimeToDie() < 20) and S.BreathofSindragosa:IsAvailable() and Player:RunicPower() > 60) then
            if HR.Cast(S.EmpowerRuneWeapon, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- call_action_list,name=cold_heart,if=talent.cold_heart.enabled&((buff.cold_heart.stack>=10&debuff.razorice.stack=5)|target.time_to_die<=gcd)
        if (S.ColdHeart:IsAvailable() and ((Player:BuffStackP(S.ColdHeartBuff) >= 10 and Target:DebuffStackP(S.RazoriceDebuff) == 5) or Target:TimeToDie() <= Player:GCD())) then
            local ShouldReturn = ColdHeart(); if ShouldReturn then return ShouldReturn; end
        end
        -- frostwyrms_fury,if=(buff.pillar_of_frost.remains<=gcd|(buff.pillar_of_frost.remains<8&buff.unholy_strength.remains<=gcd&buff.unholy_strength.up))&buff.pillar_of_frost.up&azerite.icy_citadel.rank<=2
        if S.FrostwyrmsFury:IsCastableP() and not ShouldStop and ((Player:BuffRemainsP(S.PillarofFrostBuff) <= Player:GCD() or (Player:BuffRemainsP(S.PillarofFrostBuff) < 8 and Player:BuffRemainsP(S.UnholyStrengthBuff) <= Player:GCD() and Player:BuffP(S.UnholyStrengthBuff))) and Player:BuffP(S.PillarofFrostBuff) and S.IcyCitadel:AzeriteRank() <= 2) then
            if HR.Cast(S.FrostwyrmsFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- frostwyrms_fury,if=(buff.icy_citadel.remains<=gcd|(buff.icy_citadel.remains<8&buff.unholy_strength.remains<=gcd&buff.unholy_strength.up))&buff.icy_citadel.up&azerite.icy_citadel.rank>2
        if S.FrostwyrmsFury:IsCastableP() and not ShouldStop and ((Player:BuffRemainsP(S.IcyCitadelBuff) <= Player:GCD() or (Player:BuffRemainsP(S.IcyCitadelBuff) < 8 and Player:BuffRemainsP(S.UnholyStrengthBuff) <= Player:GCD() and Player:BuffP(S.UnholyStrengthBuff))) and Player:BuffP(S.IcyCitadelBuff) and S.IcyCitadel:AzeriteRank() > 2) then
            if HR.Cast(S.FrostwyrmsFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- frostwyrms_fury,if=target.time_to_die<gcd|(target.time_to_die<cooldown.pillar_of_frost.remains&buff.unholy_strength.up)
        if S.FrostwyrmsFury:IsCastableP() and not ShouldStop and (Target:TimeToDie() < Player:GCD() or (Target:TimeToDie() < S.PillarofFrost:CooldownRemainsP() and Player:BuffP(S.UnholyStrengthBuff))) then
            if HR.Cast(S.FrostwyrmsFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
    end
    local function Essences()
        -- blood_of_the_enemy,if=buff.pillar_of_frost.remains<10&cooldown.breath_of_sindragosa.remains|buff.pillar_of_frost.remains<10&!talent.breath_of_sindragosa.enabled
        if S.BloodoftheEnemy:IsCastableP() and not ShouldStop and (Player:BuffRemainsP(S.PillarofFrostBuff) < 10 and bool(S.BreathofSindragosa:CooldownRemainsP()) or Player:BuffRemainsP(S.PillarofFrostBuff) < 10 and not S.BreathofSindragosa:IsAvailable()) then
            if HR.Cast(S.BloodoftheEnemy) then return "blood_of_the_enemy"; end
        end
        -- guardian_of_azeroth
        if S.GuardianofAzeroth:IsCastableP() and not ShouldStop then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth"; end
        end
        -- chill_streak,if=buff.pillar_of_frost.remains<5|target.1.time_to_die<5
        if S.ChillStreak:IsCastableP() and not ShouldStop and (Player:BuffRemainsP(S.PillarofFrostBuff) < 5 or Target:TimeToDie() < 5) then
            if HR.Cast(S.ChillStreak) then return "chill_streak"; end
        end
        -- the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<11
        if S.TheUnboundForce:IsCastableP() and not ShouldStop and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 11) then
            if HR.Cast(S.TheUnboundForce) then return "the_unbound_force"; end
        end
        -- focused_azerite_beam,if=!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up
        if S.FocusedAzeriteBeam:IsCastableP() and not ShouldStop and (not Player:BuffP(S.PillarofFrostBuff) and not Player:BuffP(S.BreathofSindragosa)) then
            if HR.Cast(S.FocusedAzeriteBeam) then return "focused_azerite_beam"; end
        end
        -- concentrated_flame,if=!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up&dot.concentrated_flame_burn.remains=0
        if S.ConcentratedFlame:IsCastableP() and not ShouldStop and (Player:BuffDownP(S.PillarofFrostBuff) and Player:BuffDownP(S.BreathofSindragosa) and Target:DebuffDownP(S.ConcentratedFlameBurn)) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- purifying_blast,if=!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up
        if S.PurifyingBlast:IsCastableP() and not ShouldStop and (not Player:BuffP(S.PillarofFrostBuff) and not Player:BuffP(S.BreathofSindragosa)) then
            if HR.Cast(S.PurifyingBlast) then return "purifying_blast"; end
        end
        -- worldvein_resonance,if=!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up
        if S.WorldveinResonance:IsCastableP() and not ShouldStop and (not Player:BuffP(S.PillarofFrostBuff) and not Player:BuffP(S.BreathofSindragosa)) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- ripple_in_space,if=!buff.pillar_of_frost.up&!buff.breath_of_sindragosa.up
        if S.RippleInSpace:IsCastableP() and not ShouldStop and (not Player:BuffP(S.PillarofFrostBuff) and not Player:BuffP(S.BreathofSindragosa)) then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
        -- memory_of_lucid_dreams,if=buff.empower_rune_weapon.remains<5&buff.breath_of_sindragosa.up|(rune.time_to_2>gcd&runic_power<50)
        if S.MemoryofLucidDreams:IsCastableP() and not ShouldStop and (Player:BuffRemainsP(S.EmpowerRuneWeaponBuff) < 5 and Player:BuffP(S.BreathofSindragosa) or (Player:RuneTimeToX(2) > Player:GCD() and Player:RunicPower() < 50)) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
    end
    local function Obliteration()
        -- remorseless_winter,if=talent.gathering_storm.enabled
        if S.RemorselessWinter:IsCastableP() and not ShouldStop and (S.GatheringStorm:IsAvailable()) then
            if HR.Cast(S.RemorselessWinter) then return ""; end
        end
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&!talent.frostscythe.enabled&!buff.rime.up&spell_targets.howling_blast>=3
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and not S.Frostscythe:IsAvailable() and not Player:BuffP(S.RimeBuff) and Cache.EnemiesCount[10] >= 3) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate,if=!talent.frostscythe.enabled&!buff.rime.up&spell_targets.howling_blast>=3
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (not S.Frostscythe:IsAvailable() and not Player:BuffP(S.RimeBuff) and Cache.EnemiesCount[10] >= 3) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- frostscythe,if=(buff.killing_machine.react|(buff.killing_machine.up&(prev_gcd.1.frost_strike|prev_gcd.1.howling_blast|prev_gcd.1.glacial_advance)))&spell_targets.frostscythe>=2
        if S.Frostscythe:IsCastableP() and not ShouldStop and ((bool(Player:BuffStackP(S.KillingMachineBuff)) or (Player:BuffP(S.KillingMachineBuff) and (Player:PrevGCDP(1, S.FrostStrike) or Player:PrevGCDP(1, S.HowlingBlast) or Player:PrevGCDP(1, S.GlacialAdvance)))) and Cache.EnemiesCount[8] >= 2) then
            if HR.Cast(S.Frostscythe) then return ""; end
        end
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&buff.killing_machine.react|(buff.killing_machine.up&(prev_gcd.1.frost_strike|prev_gcd.1.howling_blast|prev_gcd.1.glacial_advance))
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and bool(Player:BuffStackP(S.KillingMachineBuff)) or (Player:BuffP(S.KillingMachineBuff) and (Player:PrevGCDP(1, S.FrostStrike) or Player:PrevGCDP(1, S.HowlingBlast) or Player:PrevGCDP(1, S.GlacialAdvance)))) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate,if=buff.killing_machine.react|(buff.killing_machine.up&(prev_gcd.1.frost_strike|prev_gcd.1.howling_blast|prev_gcd.1.glacial_advance))
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (bool(Player:BuffStackP(S.KillingMachineBuff)) or (Player:BuffP(S.KillingMachineBuff) and (Player:PrevGCDP(1, S.FrostStrike) or Player:PrevGCDP(1, S.HowlingBlast) or Player:PrevGCDP(1, S.GlacialAdvance)))) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- glacial_advance,if=(!buff.rime.up|runic_power.deficit<10|rune.time_to_2>gcd)&spell_targets.glacial_advance>=2
        if no_heal and S.GlacialAdvance:IsReadyP() and not ShouldStop and ((not Player:BuffP(S.RimeBuff) or Player:RunicPowerDeficit() < 10 or Player:RuneTimeToX(2) > Player:GCD()) and Cache.EnemiesCount[10] >= 2) then
            if HR.Cast(S.GlacialAdvance) then return ""; end
        end
        -- howling_blast,if=buff.rime.up&spell_targets.howling_blast>=2
        if S.HowlingBlast:IsCastableP(30, true) and not ShouldStop and (Player:BuffP(S.RimeBuff) and Cache.EnemiesCount[10] >= 2) then
            if HR.Cast(S.HowlingBlast) then return ""; end
        end
        -- frost_strike,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&!buff.rime.up|runic_power.deficit<10|rune.time_to_2>gcd&!talent.frostscythe.enabled
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and not Player:BuffP(S.RimeBuff) or Player:RunicPowerDeficit() < 10 or Player:RuneTimeToX(2) > Player:GCD() and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- frost_strike,if=!buff.rime.up|runic_power.deficit<10|rune.time_to_2>gcd
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and (not Player:BuffP(S.RimeBuff) or Player:RunicPowerDeficit() < 10 or Player:RuneTimeToX(2) > Player:GCD()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- howling_blast,if=buff.rime.up
        if S.HowlingBlast:IsCastableP(30, true) and not ShouldStop and (Player:BuffP(S.RimeBuff)) then
            if HR.Cast(S.HowlingBlast) then return ""; end
        end
        -- obliterate,target_if=(debuff.razorice.stack<5|debuff.razorice.remains<10)&!talent.frostscythe.enabled
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and ((Target:DebuffStackP(S.RazoriceDebuff) < 5 or Target:DebuffRemainsP(S.RazoriceDebuff) < 10) and not S.Frostscythe:IsAvailable()) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- obliterate
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop then
            if HR.Cast(S.Obliterate) then return ""; end
        end
    end
    local function Standard()
        -- remorseless_winter
        if S.RemorselessWinter:IsCastableP() and not ShouldStop then
            if HR.Cast(S.RemorselessWinter) then return ""; end
        end
        -- frost_strike,if=cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm.enabled
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and (S.RemorselessWinter:CooldownRemainsP() <= 2 * Player:GCD() and S.GatheringStorm:IsAvailable()) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- howling_blast,if=buff.rime.up
        if S.HowlingBlast:IsCastableP(30, true) and not ShouldStop and (Player:BuffP(S.RimeBuff)) then
            if HR.Cast(S.HowlingBlast) then return ""; end
        end
        -- obliterate,if=!buff.frozen_pulse.up&talent.frozen_pulse.enabled
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (not Player:BuffP(S.FrozenPulseBuff) and S.FrozenPulse:IsAvailable()) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- frost_strike,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() < (15 + num(S.RunicAttenuation:IsAvailable()) * 3)) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- frostscythe,if=buff.killing_machine.up&rune.time_to_4>=gcd
        if S.Frostscythe:IsCastableP() and not ShouldStop and (Player:BuffP(S.KillingMachineBuff) and Player:RuneTimeToX(4) >= Player:GCD()) then
            if HR.Cast(S.Frostscythe) then return ""; end
        end
        -- obliterate,if=runic_power.deficit>(25+talent.runic_attenuation.enabled*3)
        if S.Obliterate:IsCastableP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() > (25 + num(S.RunicAttenuation:IsAvailable()) * 3)) then
            if HR.Cast(S.Obliterate) then return ""; end
        end
        -- frost_strike
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- horn_of_winter
        if S.HornofWinter:IsCastableP() and not ShouldStop then
            if HR.Cast(S.HornofWinter, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- arcane_torrent
        if S.ArcaneTorrent:IsCastableP() and not ShouldStop then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
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
        
  	    -- MindFreeze
  	    if useKick and S.MindFreeze:IsReady() and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.MindFreeze, true) then return "MindFreeze 5"; end
         	else 
          	    return
         	end 
      	end  
		
        -- use DeathStrike on low HP in Solo Mode
        if not no_heal and S.DeathStrike:IsReadyP("Melee") and not ShouldStop then
            if HR.Cast(S.DeathStrike) then return ""; end
        end
        -- use DeathStrike with Proc in Solo Mode
        if Action.GetToggle(2, "SoloMode") and S.DeathStrike:IsReadyP("Melee") and not ShouldStop and Player:BuffP(S.DeathStrikeBuff) then
            if HR.Cast(S.DeathStrike) then return ""; end
        end
        -- auto_attack
        -- howling_blast,if=!dot.frost_fever.ticking&(!talent.breath_of_sindragosa.enabled|cooldown.breath_of_sindragosa.remains>15)
        if S.HowlingBlast:IsCastableP(30, true) and not ShouldStop and (not Target:DebuffP(S.FrostFeverDebuff) and (not S.BreathofSindragosa:IsAvailable() or S.BreathofSindragosa:CooldownRemainsP() > 15)) then
            if HR.Cast(S.HowlingBlast) then return ""; end
        end
        -- glacial_advance,if=buff.icy_talons.remains<=gcd&buff.icy_talons.up&spell_targets.glacial_advance>=2&(!talent.breath_of_sindragosa.enabled|cooldown.breath_of_sindragosa.remains>15)
        if no_heal and S.GlacialAdvance:IsReadyP() and not ShouldStop and (Player:BuffRemainsP(S.IcyTalonsBuff) <= Player:GCD() and Player:BuffP(S.IcyTalonsBuff) and Cache.EnemiesCount[10] >= 2 and (not S.BreathofSindragosa:IsAvailable() or S.BreathofSindragosa:CooldownRemainsP() > 15)) then
            if HR.Cast(S.GlacialAdvance) then return ""; end
        end
        -- frost_strike,if=buff.icy_talons.remains<=gcd&buff.icy_talons.up&(!talent.breath_of_sindragosa.enabled|cooldown.breath_of_sindragosa.remains>15)
        if no_heal and S.FrostStrike:IsReadyP("Melee") and not ShouldStop and (Player:BuffRemainsP(S.IcyTalonsBuff) <= Player:GCD() and Player:BuffP(S.IcyTalonsBuff) and (not S.BreathofSindragosa:IsAvailable() or S.BreathofSindragosa:CooldownRemainsP() > 15)) then
            if HR.Cast(S.FrostStrike) then return ""; end
        end
        -- call_action_list,name=essences
        if (true) then
            local ShouldReturn = Essences(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=cooldowns
        if (HR.CDsON()) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- run_action_list,name=bos_pooling,if=talent.breath_of_sindragosa.enabled&((cooldown.breath_of_sindragosa.remains=0&cooldown.pillar_of_frost.remains<10)|(cooldown.breath_of_sindragosa.remains<20&target.time_to_die<35))
        if (HR.CDsON() and S.BreathofSindragosa:IsAvailable() and ((S.BreathofSindragosa:CooldownRemainsP() == 0 and S.PillarofFrost:CooldownRemainsP() < 10) or (S.BreathofSindragosa:CooldownRemainsP() < 20 and Target:TimeToDie() < 35))) then
            return BosPooling();
        end
        -- run_action_list,name=bos_ticking,if=dot.breath_of_sindragosa.ticking
        if (Player:BuffP(S.BreathofSindragosa)) then
            return BosTicking();
        end
        -- run_action_list,name=obliteration,if=buff.pillar_of_frost.up&talent.obliteration.enabled
        if (Player:BuffP(S.PillarofFrostBuff) and S.Obliteration:IsAvailable()) then
            return Obliteration();
        end
        -- run_action_list,name=aoe,if=active_enemies>=2
        if HR.AoEON() and Cache.EnemiesCount[10] >= 2 then
            return Aoe();
        end
        -- call_action_list,name=standard
        if (true) then
            local ShouldReturn = Standard(); if ShouldReturn then return ShouldReturn; end
        end
        -- nothing to cast, wait for resouces
        if HR.CastAnnotated(S.PoolRange, false, "WAIT") then return "Wait/Pool Resources"; end
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

