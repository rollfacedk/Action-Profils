--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_DEMONHUNTER_VENGEANCE] = {
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
  -- Abilities
  Frailty                               = Action.Create({ Type = "Spell", ID = 247456     }),
  ImmolationAura                        = Action.Create({ Type = "Spell", ID = 178740     }),
  InfernalStrike                        = Action.Create({ Type = "Spell", ID = 189110     }),
  Shear                                 = Action.Create({ Type = "Spell", ID = 203782     }),
  SigilofFlameNoCS                      = Action.Create({ Type = "Spell", ID = 204596     }),
  SigilofFlameCS                        = Action.Create({ Type = "Spell", ID = 204513     }),
  SigilofFlame                          = Action.Create({ Type = "Spell", ID = 204596     }),
  SigilofFlame2                         = Action.Create({ Type = "Spell", ID = 204513     }),
  SoulCleave                            = Action.Create({ Type = "Spell", ID = 228477     }),
  SoulFragments                         = Action.Create({ Type = "Spell", ID = 203981     }),
  ThrowGlaive                           = Action.Create({ Type = "Spell", ID = 204157     }),  
  -- Defensive
  DemonSpikes                           = Action.Create({ Type = "Spell", ID = 203720     }),
  FieryBrand                            = Action.Create({ Type = "Spell", ID = 204021     }),
  Torment                               = Action.Create({ Type = "Spell", ID = 185245     }),  
  -- Talents
  CharredFlesh                          = Action.Create({ Type = "Spell", ID = 264002     }),
  ConcentratedSigils                    = Action.Create({ Type = "Spell", ID = 207666     }),
  Felblade                              = Action.Create({ Type = "Spell", ID = 232893     }),
  FelDevastation                        = Action.Create({ Type = "Spell", ID = 212084     }),
  Fracture                              = Action.Create({ Type = "Spell", ID = 263642     }),
  SoulBarrier                           = Action.Create({ Type = "Spell", ID = 263648     }),
  SpiritBomb                            = Action.Create({ Type = "Spell", ID = 247454     }),
  -- Utility
  Disrupt                               = Action.Create({ Type = "Spell", ID = 183752     }),
  Metamorphosis                         = Action.Create({ Type = "Spell", ID = 187827     }),
  ChaosNova                             = Action.Create({ Type = "Spell", ID = 179057}),
  Blur                                  = Action.Create({ Type = "Spell", ID = 198589}),
  ConsumeMagic                          = Action.Create({ Type = "Spell", ID = 278326}),
  Darkness                              = Action.Create({ Type = "Spell", ID = 196718}),
  -- Buffs
  -- Debuffs
  RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568, Hidden = true}),
  ConductiveInkDebuff                   = Action.Create({ Type = "Spell", ID = 302565, Hidden = true}),
  SpiritBombDebuff                      = Action.Create({ Type = "Spell", ID = 247456, Hidden = true}),
  FieryBrandDebuff                      = Action.Create({ Type = "Spell", ID = 207771, Hidden = true}), 
  DemonSpikesBuff                       = Action.Create({ Type = "Spell", ID = 203819, Hidden = true}), 
  SigilofFlameDebuff                    = Action.Create({ Type = "Spell", ID = 204598, Hidden = true}),   
  -- Trinkets
  GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
  GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
  AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
  AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
  DribblingInkpod                       = Action.Create({ Type = "Trinket", ID = 169319, QueueForbidden = true }),
  AzsharasFontofPower                   = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
  GalecallersBoon                       = Action.Create({ Type = "Trinket", ID = 159614, QueueForbidden = true }),
  PocketsizedComputationDevice          = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
  -- Potions
  PotionofUnbridledFury                 = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
  PotionTest                            = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
  PotionofFocusedResolve                = Action.Create({ Type = "Potion", ID = 168506, QueueForbidden = true }),
  SuperiorSteelskinPotion               = Action.Create({ Type = "Potion", ID = 168501, QueueForbidden = true }),
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
Action:CreateEssencesFor(ACTION_CONST_DEMONHUNTER_VENGEANCE)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_DEMONHUNTER_VENGEANCE], { __index = Action })

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
local CleaveRangeID = tostring(S.Disrupt:ID()); -- 20y range
local SoulFragments, SoulFragmentsAdjusted, LastSoulFragmentAdjustment;
local IsInMeleeRange, IsInAoERange;

local EnemyRanges = {40, 30, 8}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i);
  end
end

S.ConcentratedFlame:RegisterInFlight()

-- Soul Fragments function taking into consideration aura lag
local function UpdateSoulFragments()
  SoulFragments = Player:BuffStack(S.SoulFragments);

  -- Casting Spirit Bomb or Soul Cleave immediately updates the buff
  if S.SpiritBomb:TimeSinceLastCast() < Player:GCD()
  or S.SoulCleave:TimeSinceLastCast() < Player:GCD() then
    SoulFragmentsAdjusted = 0;
    return;
  end

  -- Check if we have cast Fracture or Shear within the last GCD and haven't "snapshot" yet
  if SoulFragmentsAdjusted == 0 then
    if S.Fracture:IsAvailable() then
      if S.Fracture:TimeSinceLastCast() < Player:GCD() and S.Fracture.LastCastTime ~= LastSoulFragmentAdjustment then
        SoulFragmentsAdjusted = math.min(SoulFragments + 2, 5);
        LastSoulFragmentAdjustment = S.Fracture.LastCastTime;
      end
    else
      if S.Shear:TimeSinceLastCast() < Player:GCD() and S.Fracture.Shear ~= LastSoulFragmentAdjustment then
        SoulFragmentsAdjusted = math.min(SoulFragments + 1, 5);
        LastSoulFragmentAdjustment = S.Shear.LastCastTime;
      end
    end
  else
    -- If we have a soul fragement "snapshot", see if we should invalidate it based on time
    if S.Fracture:IsAvailable() then
      if S.Fracture:TimeSinceLastCast() >= Player:GCD() then
        SoulFragmentsAdjusted = 0;
      end
    else
      if S.Shear:TimeSinceLastCast() >= Player:GCD() then
        SoulFragmentsAdjusted = 0;
      end
    end
  end

  -- If we have a higher Soul Fragment "snapshot", use it instead
  if SoulFragmentsAdjusted > SoulFragments then
    SoulFragments = SoulFragmentsAdjusted;
  elseif SoulFragmentsAdjusted > 0 then
    -- Otherwise, the "snapshot" is invalid, so reset it if it has a value
    -- Relevant in cases where we use a generator two GCDs in a row
    SoulFragmentsAdjusted = 0;
  end
end

-- Melee Is In Range w/ Movement Handlers
local function UpdateIsInMeleeRange()
  if S.Felblade:TimeSinceLastCast() < Player:GCD()
  or S.InfernalStrike:TimeSinceLastCast() < Player:GCD() then
    IsInMeleeRange = true;
    IsInAoERange = true;
    return;
  end

  IsInMeleeRange = Target:IsInRange("Melee");
  IsInAoERange = IsInMeleeRange or Cache.EnemiesCount[8] > 0;
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

local function UpdateSigilID()
    S.SigilofFlame = S.SigilofFlame2:IsAvailable() and S.SigilofFlame2 or S.SigilofFlame
end

local function Init ()
  -- Register Splash Data Nucleus Abilities
  HL.RegisterNucleusAbility(247454, 8, 6)               -- Spirit Bomb
  HL.RegisterNucleusAbility(189110, 6, 6)               -- Infernal Strike
  HL.RegisterNucleusAbility(178740, 8, 6)               -- Immolation Aura
  HL.RegisterNucleusAbility(228477, 5, 6)               -- Soul Cleave
  HL.RegisterNucleusAbility(204157, 10, 6)              -- Throw Glaive
  HL.RegisterNucleusAbility(204513, 8, 6)               -- Sigil of Flame
end
Init()

S.ConcentratedFlame:RegisterInFlight()

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    local ActiveMitigationNeeded = Player:ActiveMitigationNeeded()
    local IsTanking = Player:IsTankingAoE(8) or Player:IsTanking(Target);
	
    UpdateRanges()
	Everyone.AoEToggleEnemiesUpdate()
    UpdateSoulFragments();
    UpdateIsInMeleeRange();
    DetermineEssenceRanks()
	UpdateSigilID()
	
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
        -- augmentation
        -- food
		if Everyone.TargetIsValid() then
        -- snapshot_stats
        -- potion
        if I.SuperiorSteelskinPotion:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") then
            if HR.CastSuggested(I.SuperiorSteelskinPotion) then return "superior_steelskin_potion precombat"; end
        end
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipReady() and TrinketON() then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power precombat"; end
        end
        -- Cyclotronic Blast
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() then
            if HR.Cast(I.PocketsizedComputationDevice) then return "PSCD Test"; end
        end
        -- First attacks
        if S.InfernalStrike:IsCastable() and not ShouldStop and not IsInMeleeRange then
            if HR.Cast(S.InfernalStrike) then return "infernal_strike precombat"; end
        end
        if S.ImmolationAura:IsCastable() and not ShouldStop and IsInMeleeRange then
            if HR.Cast(S.ImmolationAura) then return "immolation_aura precombat"; end
        end
		end
    end
    local function Defensives()
        -- Demon Spikes
        if S.DemonSpikes:IsCastable("Melee") and not ShouldStop and not Player:Buff(S.DemonSpikesBuff) then
            if S.DemonSpikes:ChargesFractional() > 1.9 then
                if HR.Cast(S.DemonSpikes, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Demon Spikes (Capped)"; end
            elseif (ActiveMitigationNeeded or Player:HealthPercentage() <= Action.GetToggle(2, "DemonSpikesHealthThreshold")) then
                if HR.Cast(S.DemonSpikes, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Demon Spikes (Danger)"; end
            end
        end
        -- Metamorphosis
        if S.Metamorphosis:IsCastable("Melee") and not ShouldStop and (Player:HealthPercentage() <= Action.GetToggle(2, "MetamorphosisHealthThreshold")) then
            HR.CastSuggested(S.Metamorphosis);
        end
        -- Fiery Brand
        if S.FieryBrand:IsCastable() and not ShouldStop and not Target:DebuffP(S.FieryBrandDebuff) and (ActiveMitigationNeeded or Player:HealthPercentage() <= Action.GetToggle(2, "FieryBrandHealthThreshold")) then
            if HR.Cast(S.FieryBrand, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Fiery Brand"; end
        end
    end
    local function Brand()
        if Action.GetToggle(2, "BrandForDamage") then
            -- actions.brand+=/sigil_of_flame,if=cooldown.fiery_brand.remains<2
            if S.SigilofFlame:IsCastable() and not ShouldStop and (IsInAoERange or not S.ConcentratedSigils:IsAvailable()) and (S.FieryBrand:CooldownRemainsP() < 2) then
                if HR.Cast(S.SigilofFlame) then return "Cast Sigil of Flame (Brand Soon)"; end
            end
            -- actions.brand+=/infernal_strike,if=cooldown.fiery_brand.remains=0
            if S.InfernalStrike:IsCastable() and not ShouldStop and (S.FieryBrand:IsReady() and not ShouldStop) then
                if HR.Cast(S.InfernalStrike, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Infernal Strike (Brand Soon)"; end
            end
            -- actions.brand+=/fiery_brand
            if S.FieryBrand:IsCastable() and not ShouldStop and IsInMeleeRange then
                if HR.Cast(S.FieryBrand) then return "Cast Fiery Brand (Brand)"; end
            end
        end
        -- actions.brand+=/immolation_aura,if=dot.fiery_brand.ticking
        if S.ImmolationAura:IsCastable() and not ShouldStop and IsInMeleeRange and (not Target:DebuffP(S.FieryBrandDebuff)) then
            if HR.Cast(S.ImmolationAura) then return "Cast Immolation Aura (Brand)"; end
        end
        -- actions.brand+=/fel_devastation,if=dot.fiery_brand.ticking
        if S.FelDevastation:IsCastable() and not ShouldStop and IsInMeleeRange and (not Target:DebuffP(S.FieryBrandDebuff)) then
            if HR.Cast(S.FelDevastation) then return "Cast Fel Devastation (Brand)"; end
        end
        -- actions.brand+=/infernal_strike,if=dot.fiery_brand.ticking
        if S.InfernalStrike:IsCastable() and not ShouldStop and (not Action.GetToggle(2, "ConserveInfernalStrike") or S.InfernalStrike:ChargesFractional() > 1.9) and (not Target:DebuffP(S.FieryBrandDebuff)) then
            if HR.Cast(S.InfernalStrike, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Infernal Strike (Brand)"; end
        end
        -- actions.brand+=/sigil_of_flame,if=dot.fiery_brand.ticking
        if S.SigilofFlame:IsCastable() and not ShouldStop and (IsInAoERange or not S.ConcentratedSigils:IsAvailable()) and (not Target:DebuffP(S.FieryBrandDebuff)) then
            if HR.Cast(S.SigilofFlame) then return "Cast Sigil of Flame (Brand)"; end
        end
    end
    local function Cooldowns()
        -- potion
        if I.SuperiorSteelskinPotion:IsReady() and not ShouldStop and Action.GetToggle(1, "Potion") then
            if HR.CastSuggested(I.SuperiorSteelskinPotion) then return "superior_steelskin_potion cooldowns"; end
        end
        -- concentrated_flame,if=(!dot.concentrated_flame_burn.ticking&!action.concentrated_flame.in_flight|full_recharge_time<gcd.max)
        if S.ConcentratedFlame:IsCastable() and not ShouldStop and (Target:DebuffDownP(S.ConcentratedFlameBurn) and not S.ConcentratedFlame:InFlight() or S.ConcentratedFlame:FullRechargeTimeP() < Player:GCD()) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame cooldowns"; end
        end
        -- worldvein_resonance,if=buff.lifeblood.stack<3
        if S.WorldveinResonance:IsCastable() and not ShouldStop and (Player:BuffStackP(S.LifebloodBuff) < 3) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance cooldowns"; end
        end
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastable() and not ShouldStop then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams cooldowns"; end
        end
        -- heart_essence
        -- use_item,effect_name=cyclotronic_blast,if=buff.memory_of_lucid_dreams.down
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and (Player:BuffDownP(S.MemoryofLucidDreams)) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "cyclotronic_blast cooldowns"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down|debuff.conductive_ink_debuff.up&target.health.pct<31|target.time_to_die<20
        if I.AshvanesRazorCoral:IsEquipReady() and (Target:DebuffDownP(S.RazorCoralDebuff) or Target:DebuffP(S.ConductiveInkDebuff) and Target:HealthPercentage() < 31 or Target:TimeToDie() < 20) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral cooldowns"; end
        end
        -- use_items
    end
    local function Normal()
        -- actions+=/infernal_strike
        if S.InfernalStrike:IsCastable() and not ShouldStop and not (S.CharredFlesh:IsAvailable() and Action.GetToggle(2, "BrandForDamage")) and (not Action.GetToggle(2, "ConserveInfernalStrike") or S.InfernalStrike:ChargesFractional() > 1.9) then
            if HR.Cast(S.InfernalStrike, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Infernal Strike"; end
        end
        -- actions+=/spirit_bomb,if=soul_fragments>=4
        if S.SpiritBomb:IsReady() and not ShouldStop and IsInAoERange and SoulFragments >= 4 then
            if HR.Cast(S.SpiritBomb) then return "Cast Spirit Bomb"; end
        end
        -- actions+=/soul_cleave,if=!talent.spirit_bomb.enabled
        -- actions+=/soul_cleave,if=talent.spirit_bomb.enabled&soul_fragments=0
        if S.SoulCleave:IsReady() and not ShouldStop and (not S.SpiritBomb:IsAvailable() or (S.SpiritBomb:IsAvailable() and SoulFragments == 0)) then
            if HR.Cast(S.SoulCleave) then return "Cast Soul Cleave"; end
        end
        -- actions+=/immolation_aura,if=pain<=90
        if S.ImmolationAura:IsCastable() and not ShouldStop and IsInAoERange and (Player:Pain() <= 90) then
            if HR.Cast(S.ImmolationAura) then return "Cast Immolation Aura"; end
        end
        -- concentrated_flame
        if S.ConcentratedFlame:IsCastable() and not ShouldStop then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastable() and not ShouldStop then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space"; end
        end
        -- worldvein_resonance
        if S.WorldveinResonance:IsCastable() and not ShouldStop then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastable() and not ShouldStop then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams"; end
        end
        -- actions+=/felblade,if=pain<=70
        if S.Felblade:IsCastable(15) and (Player:Pain() <= 70) then
            if HR.Cast(S.Felblade) then return "Cast Felblade"; end
        end
        -- actions+=/fracture,if=soul_fragments<=3
        if S.Fracture:IsCastable() and not ShouldStop and IsInMeleeRange and (SoulFragments <= 3) then
            if HR.Cast(S.Fracture) then return "Cast Fracture"; end
        end
        -- actions+=/fel_devastation
        if S.FelDevastation:IsCastable() and not ShouldStop and IsInAoERange then
            if HR.Cast(S.FelDevastation) then return "Cast Fel Devastation"; end
        end
        -- actions+=/sigil_of_flame
        if S.SigilofFlame:IsCastable() and not ShouldStop and (IsInAoERange or not S.ConcentratedSigils:IsAvailable()) and Target:DebuffRemainsP(S.SigilofFlameDebuff) <= 3 then
            if HR.Cast(S.SigilofFlame) then return "Cast Sigil of Flame"; end
        end
        -- actions+=/shear
        if S.Shear:IsReady() and not ShouldStop and IsInMeleeRange then
            if HR.Cast(S.Shear) then return "Cast Shear"; end
        end
        -- Manually adding Fracture as a fallback, in cases of Fracture without Spirit Bomb and not enough energy to Soul Cleave
        if S.Fracture:IsCastable() and not ShouldStop and IsInMeleeRange then
            if HR.Cast(S.Fracture) then return "Cast Fracture"; end
        end
        -- actions+=/throw_glaive
        if S.ThrowGlaive:IsCastable(30) and not ShouldStop then
            if HR.Cast(S.ThrowGlaive) then return "Cast Throw Glaive (OOR)"; end
        end
    end
    
	-- Custom stuff
    -- Protect against interrupt of channeled spells
  --  if Player:IsCasting() and Player:CastRemains() >= ((select(4, GetNetStats()) / 1000 * 2) + 0.05) or Player:IsChanneling() or ShouldStop then
  --      if HR.Cast(S.Channeling) then return "" end
  --  end  
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
        
		-- Interrupt Handler
 	 	local randomInterrupt = math.random(25, 70)
  		local unit = "target"
   		local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
        
  	    -- Disrupt
  	    if useKick and S.Disrupt:IsReady() and not ShouldStop and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.Disrupt, true) then return "Disrupt 5"; end
         	else 
          	    return
         	end 
      	end 
	
     	 -- ChaosNova
      	if useCC and S.ChaosNova:IsReady() and not ShouldStop and Target:IsInterruptible() then 
	  		if Target:CastPercentage() >= randomInterrupt then
     	        if HR.Cast(S.ChaosNova, true) then return "ChaosNova 5"; end
     	    else 
     	        return
     	    end 
     	end 
		
		-- Purge
		-- Note: Toggles  ("UseDispel", "UsePurge", "UseExpelEnrage")
        -- Category ("Dispel", "MagicMovement", "PurgeFriendly", "PurgeHigh", "PurgeLow", "Enrage")
        if S.ConsumeMagic:IsReady() and not ShouldStop and not ShouldStop and Action.AuraIsValid("player", "UsePurge", "PurgeHigh") then
            if HR.Cast(S.ConsumeMagic) then return "" end
        end	
        -- Utilities
        if S.Darkness:IsReady() and not ShouldStop and Player:HealthPercentage() <= Action.GetToggle(2, "Darkness") then
            if HR.Cast(S.Darkness) then return "Darkness 267"; end
        end

        if S.Blur:IsReady() and not ShouldStop and Player:HealthPercentage() <= Action.GetToggle(2, "Blur") then
            if HR.Cast(S.Blur) then return "Blur 267"; end
        end
        -- auto_attack
        -- consume_magic
        -- call_action_list,name=brand,if=talent.charred_flesh.enabled
        if S.CharredFlesh:IsAvailable() then
            local ShouldReturn = Brand(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=defensives
        if (IsTanking or not Player:HealingAbsorbed()) then
            local ShouldReturn = Defensives(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=cooldowns
        if (HR.CDsON()) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- call_action_list,name=normal
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

