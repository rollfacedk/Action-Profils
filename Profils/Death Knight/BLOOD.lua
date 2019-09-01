--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_DEATHKNIGHT_BLOOD] = {
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
  Asphyxiate                           = Action.Create({ Type = "Spell", ID = 221562     }),
  BloodBoil                            = Action.Create({ Type = "Spell", ID = 50842     }),
  Blooddrinker                         = Action.Create({ Type = "Spell", ID = 206931     }),
  BloodMirror                          = Action.Create({ Type = "Spell", ID = 206977     }),
  BloodPlague                          = Action.Create({ Type = "Spell", ID = 55078     }),
  BloodShield                          = Action.Create({ Type = "Spell", ID = 77535     }),
  BoneShield                           = Action.Create({ Type = "Spell", ID = 195181     }),
  Bonestorm                            = Action.Create({ Type = "Spell", ID = 194844     }),
  Consumption                          = Action.Create({ Type = "Spell", ID = 205223     }),
  CrimsonScourge                       = Action.Create({ Type = "Spell", ID = 81141     }),
  DancingRuneWeapon                    = Action.Create({ Type = "Spell", ID = 49028     }),  
  DeathandDecay                        = Action.Create({ Type = "Spell", ID = 43265     }),
  DeathsCaress                         = Action.Create({ Type = "Spell", ID = 195292     }),
  DeathStrike                          = Action.Create({ Type = "Spell", ID = 49998     }),
  HeartBreaker                         = Action.Create({ Type = "Spell", ID = 221536     }),
  HeartStrike                          = Action.Create({ Type = "Spell", ID = 206930     }),
  Marrowrend                           = Action.Create({ Type = "Spell", ID = 195182     }),
  MindFreeze                           = Action.Create({ Type = "Spell", ID = 47528     }),
  Ossuary                              = Action.Create({ Type = "Spell", ID = 219786     }),
  RapidDecomposition                   = Action.Create({ Type = "Spell", ID = 194662     }),
  RuneStrike                           = Action.Create({ Type = "Spell", ID = 210764     }),
  RuneTap                              = Action.Create({ Type = "Spell", ID = 194679     }),
  VampiricBlood                        = Action.Create({ Type = "Spell", ID = 55233     }),
  -- Utility
  DeathGrip                            = Action.Create({ Type = "Spell", ID = 49576     }),
  -- Buffs
  HaemostasisBuff                      = Action.Create({ Type = "Spell", ID = 235558     }),  
  -- Debuffs
  DancingRuneWeaponBuff                = Action.Create({ Type = "Spell", ID = 81256     }),  
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
Action:CreateEssencesFor(ACTION_CONST_DEATHKNIGHT_BLOOD)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop and not ShouldStop and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop and not ShouldStop and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop and not ShouldStop and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_DEATHKNIGHT_BLOOD], { __index = Action })

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
local Everyone = HR.Commons.Everyone;

-- Interrupts List
local StunInterrupts = {
  {S.Asphyxiate, "Cast Asphyxiate (Interrupt)", function () return true; end},
};

local EnemyRanges = {10, 8}
local function UpdateRanges()
  for _, i in ipairs(EnemyRanges) do
    HL.GetEnemies(i);
  end
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

local function Init ()
  HL.RegisterNucleusAbility(50842, 10, 6)               -- Blood Boil
  HL.RegisterNucleusAbility(194844, 8, 6)               -- Bonestorm
  HL.RegisterNucleusAbility(43265, 8, 6)                -- Death and Decay
end

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
	Init()
    UpdateRanges()
    DetermineEssenceRanks()
	
    -- Handle all generics trinkets	
	local function GeneralTrinkets()
        if trinketReady(1) then
        	if HR.Cast(I.GenericTrinket1) then return "GenericTrinket1"; end
        end
		if trinketReady(2) then
            if HR.Cast(I.GenericTrinket2) then return "GenericTrinket2"; end
        end
    end

    --- In Combat
    if Player:AffectingCombat() then
        
		-- Interrupt Handler
 	 	local randomInterrupt = math.random(25, 70)
  		local unit = "target"
   		local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
        
  	    -- MindFreeze
  	    if useKick and S.MindFreeze:IsReady() and not ShouldStop and Target:IsInterruptible() then 
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
		-- Death Grip as kick if none available
		if useKick and not S.MindFreeze:IsReady() and S.DeathGrip:IsReady() and Everyone.TargetIsValid() and Target:IsInterruptible() then
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.DeathGrip, true) then return "DeathGrip 5"; end
         	else 
          	    return
         	end 
      	end 		
		
        --- Misc
        -- Units without Blood Plague
        local UnitsWithoutBloodPlague = 0;
        for _, CycleUnit in pairs(Cache.Enemies[10]) do
            if not CycleUnit:Debuff(S.BloodPlague) then
                UnitsWithoutBloodPlague = UnitsWithoutBloodPlague + 1;
            end
        end

        --- Defensives

        -- Rune Tap Emergency
        if S.RuneTap:IsReady() and not ShouldStop and Player:HealthPercentage() <= 40 and Player:Rune() >= 3 and S.RuneTap:Charges() > 1 and not Player:Buff(S.RuneTap) then
            if HR.Cast(S.RuneTap, true) then return ""; end
        end
        -- Active Mitigation
        if Player:ActiveMitigationNeeded() and S.Marrowrend:TimeSinceLastCast() > 2.5 and S.DeathStrike:TimeSinceLastCast() > 2.5 then
            if S.DeathStrike:IsReady("Melee") and not ShouldStop and Player:BuffStack(S.BoneShield) > 7 then
                if HR.Cast(S.DeathStrike) then return ""; end
            end
            if S.Marrowrend:IsCastableP("Melee") and not ShouldStop then
                if HR.Cast(S.Marrowrend) then return ""; end
            end
            if S.DeathStrike:IsReady("Melee") and not ShouldStop then
                if HR.Cast(S.DeathStrike) then return ""; end
            end
        end
        -- Bone Shield
        if S.Marrowrend:IsCastableP("Melee") and not ShouldStop and (Player:BuffRemainsP(S.BoneShield) <= 6 or (Target:TimeToDie() < 5 and Player:BuffRemainsP(S.BoneShield) < 10 and Cache.EnemiesCount[8] == 1)) then
            if HR.Cast(S.Marrowrend) then return ""; end
        end 
        -- Healing
        if S.DeathStrike:IsReady("Melee") and not ShouldStop and Player:HealthPercentage() <= 50 + (Player:RunicPower() > 90 and 20 or 0) and not Player:HealingAbsorbed() then
            if HR.Cast(S.DeathStrike) then return ""; end
        end
        --- APL
        -- Pool during Blooddrinker if enabled
        if Action.GetToggle(2, "PoolDuringBlooddrinker") and Player:IsChanneling(S.Blooddrinker) and Player:BuffP(S.BoneShield) and UnitsWithoutBloodPlague == 0 and not Player:ShouldStopCasting() and Player:CastRemains() > 0.2 then
            if HR.Cast(S.Channeling) then return "Blooddrinker Pooling"; end
        end
        -- Arcane Torrent
        if Action.GetToggle(2, "ArcaneTorrent") and HR.CDsON() and S.ArcaneTorrent:IsCastableP("Melee") and not ShouldStop and (Player:RunicPowerDeficit() > 20) then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- Dancing Rune Weapon
        if Action.GetToggle(2, "DancingRuneWeapon") and HR.CDsON() and S.DancingRuneWeapon:IsCastableP("Melee") and not ShouldStop and (not S.Blooddrinker:IsAvailable() or not S.Blooddrinker:CooldownUpP()) then
            if HR.Cast(S.DancingRuneWeapon, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- Blood Boil refresh Blood Plague
        if S.BloodBoil:IsCastableP() and not ShouldStop and Cache.EnemiesCount[10] >= 1 and UnitsWithoutBloodPlague >= 1 then
            if HR.Cast(S.BloodBoil) then return ""; end
        end
        -- Bonestorm
        if HR.CDsON() and S.Bonestorm:IsCastableP("Melee") and not ShouldStop and Cache.EnemiesCount[8] >= 1 and Player:RunicPower() >= 100 then
            if HR.Cast(S.Bonestorm, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- Death and Decay Crimson Scourge
        if HR.AoEON() and S.DeathandDecay:IsReady("Melee") and not ShouldStop and (Cache.EnemiesCount[8] == 1 and Player:Buff(S.CrimsonScourge) and S.RapidDecomposition:IsAvailable()) or (Cache.EnemiesCount[8] > 1 and Player:Buff(S.CrimsonScourge)) then
            if HR.Cast(S.DeathandDecay) then return ""; end
        end
        -- Blooddrinker
        if S.Blooddrinker:IsCastableP(30) and not ShouldStop and not Player:ShouldStopCasting() and not Player:Buff(S.DancingRuneWeaponBuff) and Player:BuffRemainsP(S.BoneShield) > 3 and Player:RunicPowerDeficit() >= 10 then
            if HR.Cast(S.Blooddrinker, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- Death Strike: Blooddrinker Runic Power Dump
        if S.DeathStrike:IsReady("Melee") and not ShouldStop and S.Blooddrinker:IsCastableP() and not ShouldStop and (S.Blooddrinker:IsAvailable() or S.Blooddrinker:CooldownRemains() <= Player:GCD()) and not Player:Buff(S.DancingRuneWeaponBuff) and ((Player:RuneTimeToX(1) <= Player:GCD()) or Player:Rune() >= 1) and Player:RunicPowerDeficit() < 10 then
            if HR.Cast(S.DeathStrike, Action.GetToggle(2, "OffGCDasOffGCD")) then return ""; end
        end
        -- Marrowrend: Refresh Bone Shield
        if S.Marrowrend:IsCastableP("Melee") and not ShouldStop and ((not (Player:Buff(S.DancingRuneWeaponBuff)) and Player:BuffStack(S.BoneShield) <=7) or Player:BuffStack(S.BoneShield) <= 4) and Player:RunicPowerDeficit() >= 20 then
            if HR.Cast(S.Marrowrend) then return ""; end
        end
        -- Death Strike: Marrowrend Runic Power Dump
        if S.DeathStrike:IsReady("Melee") and not ShouldStop and S.Marrowrend:IsCastableP() and not ShouldStop and Player:BuffStack(S.BoneShield) <= 7 then
            if HR.Cast(S.DeathStrike) then return ""; end
        end
        -- Death and Decay: ST Rapid Decomposition / AoE
        if HR.AoEON() and S.DeathandDecay:IsReady("Melee") and not ShouldStop and Player:RunicPowerDeficit() >= 10 and ((Cache.EnemiesCount[8] == 1 and Player:Rune() >= 3 and S.RapidDecomposition:IsAvailable()) or Cache.EnemiesCount[8] >= 3) then
            if HR.Cast(S.DeathandDecay) then return ""; end
        end
        -- Heart Strike
        if S.HeartStrike:IsCastableP("Melee") and not ShouldStop and ((Player:RuneTimeToX(3) <= Player:GCD()) or Player:Rune() >=3) and (Player:RunicPowerDeficit()>= 15 or (S.HeartBreaker:IsAvailable() and Player:Buff(S.DeathandDecay) and Player:RunicPowerDeficit() >= (15 + math.min(Cache.EnemiesCount[8], 5) * 2))) then
            if HR.Cast(S.HeartStrike) then return ""; end
        end
        -- Death Strike: Heart Strike Runic Power Dump
        if S.DeathStrike:IsReady("Melee") and not ShouldStop and (Player:RuneTimeToX(3) <= Player:GCD() or Player:Rune() >= 3) and (Player:RunicPowerDeficit() < 15 or (S.HeartBreaker:IsAvailable() and Player:Buff(S.DeathandDecay) and Player:RunicPowerDeficit() < (15 + math.min(Cache.EnemiesCount[8], 5) * 2))) then
            if HR.Cast(S.DeathStrike) then return ""; end
        end
        -- Death and Decay ST
        if HR.AoEON() and S.DeathandDecay:IsReady("Melee") and not ShouldStop and Player:Buff(S.CrimsonScourge) and not S.RapidDecomposition:IsAvailable() then
            if HR.Cast(S.DeathandDecay) then return ""; end
        end
        -- Consumption
        if S.Consumption:IsCastableP("Melee") and not ShouldStop then
            if Action.GetToggle(2, "Consumption") then
                if HR.Cast(S.Consumption) then return ""; end
            elseif Action.GetToggle(2, "ConsumptionSuggested") then
                HR.CastSuggested(S.Consumption);
            end
        end
        -- Death's Caress Pull
        if S.DeathsCaress:IsCastableP(30) and not ShouldStop and not Target:IsInRange(10) and not Target:Debuff(S.BloodPlague) then
            if HR.Cast(S.DeathsCaress) then return "";end
        end
        -- Blood Boil: Max Charges
        if S.BloodBoil:IsCastableP() and not ShouldStop and Cache.EnemiesCount[10] >= 1 and S.BloodBoil:Charges() == 2 then
            if HR.Cast(S.BloodBoil) then return ""; end
        end
        -- Rune Strike
        if S.RuneStrike:IsCastable() and not ShouldStop and Player:Rune() <= 2 then
            if HR.Cast(S.RuneStrike) then return ""; end
        end
        -- Blood Boil
        if S.BloodBoil:IsCastableP() and not ShouldStop and Cache.EnemiesCount[10] >= 1 then
            if HR.Cast(S.BloodBoil) then return ""; end
        end
        -- Out of Range
        if S.DeathsCaress:IsCastableP(30) and not ShouldStop and Player:Rune() > 3 then
            if HR.Cast(S.DeathsCaress) then return "";end
        end
        -- Trick to take in consideration the Recovery Setting
        if S.HeartStrike:IsCastable("Melee") and not ShouldStop then
            if HR.Cast(S.Channeling) then return "Normal Pooling"; end
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

