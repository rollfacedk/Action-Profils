--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_PALADIN_PROTECTION] = {
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
  Consecration                          = Action.Create({ Type = "Spell", ID = 26573     }),
  LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
  Fireblood                             = Action.Create({ Type = "Spell", ID = 265221     }),
  Seraphim                              = Action.Create({ Type = "Spell", ID = 152262     }),
  ShieldoftheRighteous                  = Action.Create({ Type = "Spell", ID = 53600     }),
  AvengingWrath                         = Action.Create({ Type = "Spell", ID = 31884     }),
  BastionofLight                        = Action.Create({ Type = "Spell", ID = 204035     }),
  Judgment                              = Action.Create({ Type = "Spell", ID = 275779     }),
  CrusadersJudgment                     = Action.Create({ Type = "Spell", ID = 204023     }),
  AvengersShield                        = Action.Create({ Type = "Spell", ID = 31935     }),
  BlessedHammer                         = Action.Create({ Type = "Spell", ID = 204019     }),
  HammeroftheRighteous                  = Action.Create({ Type = "Spell", ID = 53595     }),
  Rebuke                                = Action.Create({ Type = "Spell", ID = 96231     }),
  HeartEssence                          = Action.Create({ Type = "Spell", ID = 298554     }),
  RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932     }),
  ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
  -- Buffs
  AvengersValorBuff                     = Action.Create({ Type = "Spell", ID = 197561     }),
  SeraphimBuff                          = Action.Create({ Type = "Spell", ID = 152262     }),
  AvengingWrathBuff                     = Action.Create({ Type = "Spell", ID = 31884     }),
  ConsecrationBuff                      = Action.Create({ Type = "Spell", ID = 188370     }),
  -- Debuffs
  RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568     }),
  -- Trinkets
  GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
  GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
  AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
  DribblingInkpod                       = Action.Create({ Type = "Trinket", ID = 169319, QueueForbidden = true }),
  AzsharasFontofPower                   = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
  GalecallersBoon                       = Action.Create({ Type = "Trinket", ID = 159614, QueueForbidden = true }),
  PocketsizedComputationDevice          = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
  GrongsPrimalRage                     = Action.Create({ Type = "Trinket", ID = 165574, QueueForbidden = true }),
  MerekthasFang                        = Action.Create({ Type = "Trinket", ID = 158367, QueueForbidden = true }),
  RazdunksBigRedButton                 = Action.Create({ Type = "Trinket", ID = 159611, QueueForbidden = true }),
  -- Potions
  PotionofUnbridledFury                 = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
  PotionTest                            = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
  PotionofFocusedResolve                = Action.Create({ Type = "Potion", ID = 168506, QueueForbidden = true }),
  -- Misc
  CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 293491, Hidden = true}),    
  LifebloodBuff                         = Action.Create({ Type = "Spell", ID = 295137, Hidden = true}), 
  LifebloodBuff2                        = Action.Create({ Type = "Spell", ID = 305694, Hidden = true}), 
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
  AnimaofDeath                          = Action.Create({ Type = "HeartOfAzeroth", ID = 294926, Hidden = true}),
  AnimaofDeath2                         = Action.Create({ Type = "HeartOfAzeroth", ID = 300002, Hidden = true}),
  AnimaofDeath3                         = Action.Create({ Type = "HeartOfAzeroth", ID = 300003, Hidden = true}),
  AnimaofLife                           = Action.Create({ Type = "HeartOfAzeroth", ID = 294964, Hidden = true}),
  AnimaofLife2                          = Action.Create({ Type = "HeartOfAzeroth", ID = 300004, Hidden = true}),
  AnimaofLife3                          = Action.Create({ Type = "HeartOfAzeroth", ID = 300005, Hidden = true}),
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_PALADIN_PROTECTION)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop, it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do Action.Guard:IsReady() and not ShouldStop instead of Action[PLAYERSPEC].Guard:IsReady() and not ShouldStop
local A = setmetatable(Action[ACTION_CONST_PALADIN_PROTECTION], { __index = Action })

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

local EnemyRanges = {}
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

-- Stuns
local StunInterrupts = {
  {S.HammerofJustice, "Cast Hammer of Justice (Interrupt)", function () return true; end},
};

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
    S.AnimaofDeath = S.AnimaofDeath2:IsAvailable() and S.AnimaofDeath2 or S.AnimaofDeath
    S.AnimaofDeath = S.AnimaofDeath3:IsAvailable() and S.AnimaofDeath3 or S.AnimaofDeath
    S.AnimaofLife = S.AnimaofLife2:IsAvailable() and S.AnimaofLife2 or S.AnimaofLife
    S.AnimaofLife = S.AnimaofLife3:IsAvailable() and S.AnimaofLife3 or S.AnimaofLife
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
        --if Everyone.TargetIsValid() then
            -- potion
            if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") then
                if HR.CastSuggested(I.PotionofUnbridledFury) then return "potion_of_unbridled_fury 4"; end
            end
            -- consecration
            if S.Consecration:IsCastableP() and Player:BuffDownP(S.ConsecrationBuff) then
                if HR.Cast(S.Consecration) then return "consecration 6"; end
            end
            -- lights_judgment
            if S.LightsJudgment:IsCastableP() and HR.CDsON() then
                if HR.Cast(S.LightsJudgment) then return "lights_judgment 10"; end
            end
        --end
    end
    local function Cooldowns()
        -- fireblood,if=buff.avenging_wrath.up
        if S.Fireblood:IsCastableP() and HR.CDsON() and (Player:BuffP(S.AvengingWrathBuff)) then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "fireblood 12"; end
        end
        -- use_item,name=azsharas_font_of_power,if=cooldown.seraphim.remains<=10|!talent.seraphim.enabled
        if I.AzsharasFontofPower:IsEquipReady() and TrinketON() and (S.Seraphim:CooldownRemainsP() <= 10 or not S.Seraphim:IsAvailable()) then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power 16"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=(debuff.razor_coral_debuff.stack>7&buff.avenging_wrath.up)|debuff.razor_coral_debuff.stack=0
        if I.AshvanesRazorCoral:IsEquipReady() and TrinketON() and ((Target:DebuffStackP(S.RazorCoralDebuff) > 7 and Player:BuffP(S.AvengingWrathBuff)) or Target:DebuffStackP(S.RazorCoralDebuff) == 0) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 18"; end
        end
        -- seraphim,if=cooldown.shield_of_the_righteous.charges_fractional>=2
        if S.Seraphim:IsCastableP() and (S.ShieldoftheRighteous:ChargesFractionalP() >= 2) then
            if HR.Cast(S.Seraphim) then return "seraphim 22"; end
        end
        -- avenging_wrath,if=buff.seraphim.up|cooldown.seraphim.remains<2|!talent.seraphim.enabled
        if S.AvengingWrath:IsCastableP() and HR.CDsON() and (Player:BuffP(S.SeraphimBuff) or S.Seraphim:CooldownRemainsP() < 2 or not S.Seraphim:IsAvailable()) then
            if HR.Cast(S.AvengingWrath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "avenging_wrath 26"; end
        end
        -- memory_of_lucid_dreams,if=!talent.seraphim.enabled|cooldown.seraphim.remains<=gcd|buff.seraphim.up
        if S.MemoryofLucidDreams:IsCastableP() and (not S.Seraphim:IsAvailable() or S.Seraphim:CooldownRemainsP() <= Player:GCD() or Player:BuffP(S.SeraphimBuff)) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 28"; end
        end
        -- bastion_of_light,if=cooldown.shield_of_the_righteous.charges_fractional<=0.5
        if S.BastionofLight:IsCastableP() and (S.ShieldoftheRighteous:ChargesFractionalP() <= 0.5) then
            if HR.Cast(S.BastionofLight) then return "bastion_of_light 34"; end
        end
        -- potion,if=buff.avenging_wrath.up
        if I.PotionofUnbridledFury:IsReady() and Action.GetToggle(1, "Potion") and (Player:BuffP(S.AvengingWrathBuff)) then
            if HR.CastSuggested(I.PotionofUnbridledFury) then return "potion_of_unbridled_fury 38"; end
        end
        -- use_items,if=buff.seraphim.up|!talent.seraphim.enabled
        -- use_item,name=grongs_primal_rage,if=cooldown.judgment.full_recharge_time>4&cooldown.avengers_shield.remains>4&(buff.seraphim.up|cooldown.seraphim.remains+4+gcd>expected_combat_length-time)&consecration.up
        if I.GrongsPrimalRage:IsEquipReady() and TrinketON() and (S.Judgment:FullRechargeTimeP() > 4 and S.AvengersShield:CooldownRemainsP() > 4 and (Player:BuffP(S.SeraphimBuff) or S.Seraphim:CooldownRemainsP() + 4 + Player:GCD() > Target:TimeToDie()) and Player:BuffP(S.ConsecrationBuff)) then
            if HR.Cast(I.GrongsPrimalRage) then return "grongs_primal_rage 43"; end
        end
        -- use_item,name=pocketsized_computation_device,if=cooldown.judgment.full_recharge_time>4*spell_haste&cooldown.avengers_shield.remains>4*spell_haste&(!equipped.grongs_primal_rage|!trinket.grongs_primal_rage.cooldown.up)&consecration.up
        if I.PocketsizedComputationDevice:IsEquipped() and I.PocketsizedComputationDevice:IsReady() and TrinketON() and (S.Judgment:FullRechargeTimeP() > 4 * Player:SpellHaste() and S.AvengersShield:CooldownRemainsP() > 4 * Player:SpellHaste() and (not I.GrongsPrimalRage:IsEquipped() or not I.GrongsPrimalRage:IsReady()) and Player:BuffP(S.ConsecrationBuff)) then
            if HR.Cast(I.PocketsizedComputationDevice) then return "pocketsized_computation_device"; end
        end
        -- use_item,name=merekthas_fang,if=!buff.avenging_wrath.up&(buff.seraphim.up|!talent.seraphim.enabled)
        if I.MerekthasFang:IsEquipReady() and TrinketON() and (not Player:BuffP(S.AvengingWrathBuff) and (Player:BuffP(S.SeraphimBuff) or not S.Seraphim:IsAvailable())) then
            if HR.Cast(I.MerekthasFang) then return "merekthas_fang 57"; end
        end
        -- use_item,name=razdunks_big_red_button
        if I.RazdunksBigRedButton:IsEquipReady() and TrinketON() then
            if HR.Cast(I.RazdunksBigRedButton) then return "razdunks_big_red_button 65"; end
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
        -- auto_attack
        -- call_action_list,name=cooldowns
        if (HR.CDsON()) then
            local ShouldReturn = Cooldowns(); if ShouldReturn then return ShouldReturn; end
        end
        -- worldvein_resonance,if=buff.lifeblood.stack<3
        if S.WorldveinResonance:IsCastableP() and (Player:BuffStackP(S.LifebloodBuff) < 3) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance"; end
        end
        -- shield_of_the_righteous,if=(buff.avengers_valor.up&cooldown.shield_of_the_righteous.charges_fractional>=2.5)&(cooldown.seraphim.remains>gcd|!talent.seraphim.enabled)
        if S.ShieldoftheRighteous:IsCastableP() and ((Player:BuffP(S.AvengersValorBuff) and S.ShieldoftheRighteous:ChargesFractionalP() >= 2.5) and (S.Seraphim:CooldownRemainsP() > Player:GCD() or not S.Seraphim:IsAvailable())) then
            if HR.Cast(S.ShieldoftheRighteous, Action.GetToggle(2, "OffGCDasOffGCD")) then return "shield_of_the_righteous 71"; end
        end
        -- shield_of_the_righteous,if=(buff.avenging_wrath.up&!talent.seraphim.enabled)|buff.seraphim.up&buff.avengers_valor.up
        if S.ShieldoftheRighteous:IsCastableP() and ((Player:BuffP(S.AvengingWrathBuff) and not S.Seraphim:IsAvailable()) or Player:BuffP(S.SeraphimBuff) and Player:BuffP(S.AvengersValorBuff)) then
            if HR.Cast(S.ShieldoftheRighteous, Action.GetToggle(2, "OffGCDasOffGCD")) then return "shield_of_the_righteous 81"; end
        end
        -- shield_of_the_righteous,if=(buff.avenging_wrath.up&buff.avenging_wrath.remains<4&!talent.seraphim.enabled)|(buff.seraphim.remains<4&buff.seraphim.up)
        if S.ShieldoftheRighteous:IsCastableP() and ((Player:BuffP(S.AvengingWrathBuff) and Player:BuffRemainsP(S.AvengingWrathBuff) < 4 and not S.Seraphim:IsAvailable()) or (Player:BuffRemainsP(S.SeraphimBuff) < 4 and Player:BuffP(S.SeraphimBuff))) then
            if HR.Cast(S.ShieldoftheRighteous, Action.GetToggle(2, "OffGCDasOffGCD")) then return "shield_of_the_righteous 91"; end
        end
        -- lights_judgment,if=buff.seraphim.up&buff.seraphim.remains<3
        if S.LightsJudgment:IsCastableP() and HR.CDsON() and (Player:BuffP(S.SeraphimBuff) and Player:BuffRemainsP(S.SeraphimBuff) < 3) then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 103"; end
        end
        -- consecration,if=!consecration.up
        if S.Consecration:IsCastableP() and (Player:BuffDownP(S.ConsecrationBuff)) then
            if HR.Cast(S.Consecration) then return "consecration 109"; end
        end
        -- judgment,if=(cooldown.judgment.remains<gcd&cooldown.judgment.charges_fractional>1&cooldown_react)|!talent.crusaders_judgment.enabled
        if S.Judgment:IsCastableP() and ((S.Judgment:CooldownRemainsP() < Player:GCD() and S.Judgment:ChargesFractionalP() > 1 and S.Judgment:CooldownUpP()) or not S.CrusadersJudgment:IsAvailable()) then
            if HR.Cast(S.Judgment) then return "judgment 111"; end
        end
        -- avengers_shield,if=cooldown_react
        if S.AvengersShield:IsCastableP() and (S.AvengersShield:CooldownUpP()) then
            if HR.Cast(S.AvengersShield) then return "avengers_shield 123"; end
        end
        -- judgment,if=cooldown_react|!talent.crusaders_judgment.enabled
        if S.Judgment:IsCastableP() and (S.Judgment:CooldownUpP() or not S.CrusadersJudgment:IsAvailable()) then
            if HR.Cast(S.Judgment) then return "judgment 129"; end
        end
        -- concentrated_flame,if=buff.seraphim.up&!dot.concentrated_flame_burn.remains>0|essence.the_crucible_of_flame.rank<3
        if S.ConcentratedFlame:IsCastableP() and (Player:BuffP(S.SeraphimBuff) and Target:DebuffDownP(S.ConcentratedFlameBurn) or (S.ConcentratedFlame:ID() == 295373 or S.ConcentratedFlame:ID() == 299349)) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame"; end
        end
        -- lights_judgment,if=!talent.seraphim.enabled|buff.seraphim.up
        if S.LightsJudgment:IsCastableP() and HR.CDsON() and (not S.Seraphim:IsAvailable() or Player:BuffP(S.SeraphimBuff)) then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 137"; end
        end
        -- anima_of_death
        if S.AnimaofDeath:IsCastableP() then
            if HR.Cast(S.AnimaofDeath) then return "anima_of_death"; end
        end
        -- blessed_hammer,strikes=3
        if S.BlessedHammer:IsCastableP() then
            if HR.Cast(S.BlessedHammer) then return "blessed_hammer 143"; end
        end
        -- hammer_of_the_righteous
        if S.HammeroftheRighteous:IsCastableP() then
            if HR.Cast(S.HammeroftheRighteous) then return "hammer_of_the_righteous 145"; end
        end
        -- consecration
        if S.Consecration:IsCastableP() then
            if HR.Cast(S.Consecration) then return "consecration 147"; end
        end
        -- heart_essence,if=!essence.the_crucible_of_flame.major|!essence.worldvein_resonance.major|!essence.anima_of_life_and_death.major|!essence.memory_of_lucid_dreams.major
        if S.HeartEssence:IsCastableP() and (not S.ConcentratedFlame:IsAvailable() or not S.WorldveinResonance:IsAvailable() or not S.AnimaofDeath:IsAvailable() or not S.MemoryofLucidDreams:IsAvailable()) then
            if HR.Cast(S.HeartEssence) then return "heart_essence"; end
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

