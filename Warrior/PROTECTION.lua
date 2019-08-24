--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_WARRIOR_PROT] = {
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
    ThunderClap                           = Action.Create({ Type = "Spell", ID = 6343     }),
    DemoralizingShout                     = Action.Create({ Type = "Spell", ID = 1160     }),
    BoomingVoice                          = Action.Create({ Type = "Spell", ID = 202743     }),
    DragonRoar                            = Action.Create({ Type = "Spell", ID = 118000     }),
    Revenge                               = Action.Create({ Type = "Spell", ID = 6572     }),
    FreeRevenge                           = Action.Create({ Type = "Spell", ID = 5302     }),
    Ravager                               = Action.Create({ Type = "Spell", ID = 228920     }),
    ShieldBlock                           = Action.Create({ Type = "Spell", ID = 2565     }),
    ShieldSlam                            = Action.Create({ Type = "Spell", ID = 23922     }),
    UnstoppableForce                      = Action.Create({ Type = "Spell", ID = 275336     }),
    BraceForImpact                        = Action.Create({ Type = "Spell", ID = 277636     }),
    DeafeningCrash                        = Action.Create({ Type = "Spell", ID = 272824     }),
    Devastate                             = Action.Create({ Type = "Spell", ID = 20243     }),
    Intercept                             = Action.Create({ Type = "Spell", ID = 198304     }),
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
    IgnorePain                            = Action.Create({ Type = "Spell", ID = 190456     }),
    Avatar                                = Action.Create({ Type = "Spell", ID = 107574     }),
    LastStand                             = Action.Create({ Type = "Spell", ID = 12975     }),
    VictoryRush                           = Action.Create({ Type = "Spell", ID = 34428     }),
    ImpendingVictory                      = Action.Create({ Type = "Spell", ID = 202168     }),
    Pummel                                = Action.Create({ Type = "Spell", ID = 6552     }),
    IntimidatingShout                     = Action.Create({ Type = "Spell", ID = 5246     }),
    ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368     }),
    -- Defensive
    -- Misc
    Channeling                            = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),
    -- Buffs
    ShieldBlockBuff                       = Action.Create({ Type = "Spell", ID = 132404, Hidden = true     }),
    AvatarBuff                            = Action.Create({ Type = "Spell", ID = 107574, Hidden = true     }),
    LastStandBuff                         = Action.Create({ Type = "Spell", ID = 12975, Hidden = true     }),
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932, Hidden = true     }),	
    -- Debuffs 
    RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568, Hidden = true     }),	
    -- Trinkets
    TrinketTest                           = Action.Create({ Type = "Trinket", ID = 122530, QueueForbidden = true }),
    TrinketTest2                          = Action.Create({ Type = "Trinket", ID = 159611, QueueForbidden = true }), 
    AzsharasFontofPower                   = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    PocketsizedComputationDevice          = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
    RotcrustedVoodooDoll                  = Action.Create({ Type = "Trinket", ID = 159624, QueueForbidden = true }),
    ShiverVenomRelic                      = Action.Create({ Type = "Trinket", ID = 168905, QueueForbidden = true }),
    AquipotentNautilus                    = Action.Create({ Type = "Trinket", ID = 169305, QueueForbidden = true }),
    TidestormCodex                        = Action.Create({ Type = "Trinket", ID = 165576, QueueForbidden = true }),
    VialofStorms                          = Action.Create({ Type = "Trinket", ID = 158224, QueueForbidden = true }),
	AshvanesRazorCoral                    = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
	GrongsPrimalRage                      = Action.Create({ Type = "Trinket", ID = 165574, QueueForbidden = true }),	
    -- Potions
    PotionofUnbridledFury                 = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
    PotionTest                            = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
    SuperiorBattlePotionofStrength        = Action.Create({ Type = "Potion", ID = 168500, QueueForbidden = true }),	
	
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
	CondensedLifeforce                    = Action.Create({ Type = "HeartOfAzeroth", ID = 295834, Hidden = true}),
	CondensedLifeforce2                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299354, Hidden = true}),
	CondensedLifeforce3                   = Action.Create({ Type = "HeartOfAzeroth", ID = 299357, Hidden = true}),
	AnimaofDeath                          = Action.Create({ Type = "HeartOfAzeroth", ID = 294926, Hidden = true}),
	AnimaofDeath2                         = Action.Create({ Type = "HeartOfAzeroth", ID = 300002, Hidden = true}),
	AnimaofDeath3                         = Action.Create({ Type = "HeartOfAzeroth", ID = 300003, Hidden = true}),
	AnimaofLife                           = Action.Create({ Type = "HeartOfAzeroth", ID = 294964, Hidden = true}),
	AnimaofLife2                          = Action.Create({ Type = "HeartOfAzeroth", ID = 300004, Hidden = true}),
	AnimaofLife3                          = Action.Create({ Type = "HeartOfAzeroth", ID = 300005, Hidden = true}),
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_WARRIOR_PROT)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_WARRIOR_PROT], { __index = Action })

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

---------------------------

-- Rotation Var
local ShouldReturn; -- Used to get the return string
local ForceOffGCD = {true, false};

-- Stuns
local StunInterrupts = {
    {S.IntimidatingShout, "Cast Intimidating Shout (Interrupt)", function () return true; end},
};

local EnemyRanges = {8}
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

local function isCurrentlyTanking()
    -- is player currently tanking any enemies within 16 yard radius
    local IsTanking = Player:IsTankingAoE(16) or Player:IsTanking(Target);
    return IsTanking;
end

local function shouldCastIp()
    if Player:Buff(S.IgnorePain) then 
        local castIP = tonumber((GetSpellDescription(190456):match("%d+%S+%d"):gsub("%D","")))
        local IPCap = math.floor(castIP * 1.3);
        local currentIp = Player:Buff(S.IgnorePain, 16, true)

        -- Dont cast IP if we are currently at 50% of IP Cap remaining
        if currentIp  < (0.5 * IPCap) then
            return true
        else
            return false
        end
    else
        -- No IP buff currently
        return true
    end
end

local function offensiveShieldBlock()
    if Action.GetToggle(2, "UseShieldBlockDefensively") == false then
        return true
    else
        return false
    end
end

local function offensiveRage()
    if Action.GetToggle(2, "UseRageDefensively") == false then
        return true
    else
        return false
    end
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

-- Initiate Nucleus Ability registration
local function Init()
  HL.RegisterNucleusAbility(6343, 8, 6)               -- Thunder Clap
  HL.RegisterNucleusAbility(118000, 12, 6)            -- Dragon Roar
  HL.RegisterNucleusAbility(6572, 8, 6)               -- Revenge
  HL.RegisterNucleusAbility(228920, 8, 6)             -- Ravager
end


--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()
	
	-- Local functions remap
    local gcdTime = Player:GCD()
    UpdateRanges()
	DetermineEssenceRanks()
	-- Init data for splash data (To Check)
	Init()
	
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
        -- use_item,name=azsharas_font_of_power
        if I.AzsharasFontofPower:IsEquipped() and I.AzsharasFontofPower:IsReady() and TrinketON() then
            if HR.Cast(I.AzsharasFontofPower) then return "azsharas_font_of_power precombat"; end
        end
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams precombat"; end
        end
        -- guardian_of_azeroth
        if S.GuardianofAzeroth:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.GuardianofAzeroth) then return "guardian_of_azeroth precombat"; end
        end
        -- potion
        if I.SuperiorBattlePotionofStrength:IsReady() and Action.GetToggle(1, "Potion") then
            if HR.CastSuggested(I.SuperiorBattlePotionofStrength) then return "battle_potion_of_strength precombat"; end
        end
    end
	
    local function Defensive()
        if S.ShieldBlock:IsReadyP() and (((not Player:Buff(S.ShieldBlockBuff)) or Player:BuffRemains(S.ShieldBlockBuff) <= gcdTime + (gcdTime * 0.5)) and 
            (not Player:Buff(S.LastStandBuff)) and Player:Rage() >= 30) then
                if HR.Cast(S.ShieldBlock, Action.GetToggle(2, "GCDasOffGCD")) then return "shield_block defensive" end
        end
        if S.LastStand:IsCastableP() and ((not Player:Buff(S.ShieldBlockBuff)) and Action.GetToggle(2, "UseLastStandToFillShieldBlockDownTime")
            and S.ShieldBlock:RechargeP() > (gcdTime * 2)) then
                if HR.Cast(S.LastStand, Action.GetToggle(2, "GCDasOffGCD")) then return "last_stand defensive" end
        end
    end
	
    local function Aoe()
        -- thunder_clap
        if S.ThunderClap:IsCastableP(8) then
            if HR.Cast(S.ThunderClap) then return "thunder_clap 6"; end
        end
        -- memory_of_lucid_dreams,if=buff.avatar.down
        if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffDownP(S.AvatarBuff)) then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 7"; end
        end
        -- demoralizing_shout,if=talent.booming_voice.enabled
        if S.DemoralizingShout:IsCastableP(10) and (S.BoomingVoice:IsAvailable() and Player:RageDeficit() >= 40) then
            if HR.Cast(S.DemoralizingShout, Action.GetToggle(2, "GCDasOffGCD")) then return "demoralizing_shout 8"; end
        end
        -- anima_of_death,if=buff.last_stand.up
        if S.AnimaofDeath:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffP(S.LastStandBuff)) then
            if HR.Cast(S.AnimaofDeath) then return "anima_of_death 9"; end
        end
        -- dragon_roar
        if S.DragonRoar:IsCastableP(12) and HR.CDsON() then
            if HR.Cast(S.DragonRoar, Action.GetToggle(2, "GCDasOffGCD")) then return "dragon_roar 12"; end
        end
        -- revenge
        if S.Revenge:IsReadyP("Melee") and (Player:Buff(S.FreeRevenge) or offensiveRage() or Player:Rage() >= 75 or ((not isCurrentlyTanking()) and Player:Rage() >= 50)) then
            if HR.Cast(S.Revenge) then return "revenge 14"; end
        end
        -- ravager
        if S.Ravager:IsCastableP(40) then
            if HR.Cast(S.Ravager) then return "ravager 16"; end
        end
        -- shield_block,if=cooldown.shield_slam.ready&buff.shield_block.down
        if S.ShieldBlock:IsReadyP() and (S.ShieldSlam:CooldownUpP() and Player:BuffDownP(S.ShieldBlockBuff) and offensiveShieldBlock()) then
            if HR.Cast(S.ShieldBlock, Action.GetToggle(2, "GCDasOffGCD")) then return "shield_block 18"; end
        end
        -- shield_slam
        if S.ShieldSlam:IsCastableP("Melee") then
            if HR.Cast(S.ShieldSlam) then return "shield_slam 24"; end
        end
	    -- devastate
        if S.Devastate:IsCastableP("Melee") then
            if HR.Cast(S.Devastate) then return "devastate 80"; end
        end
    end
	
    local function St()
        -- thunder_clap,if=spell_targets.thunder_clap=2&talent.unstoppable_force.enabled&buff.avatar.up
        if S.ThunderClap:IsCastableP(8) and (Cache.EnemiesCount[8] == 2 and S.UnstoppableForce:IsAvailable() and Player:BuffP(S.AvatarBuff)) then
            if HR.Cast(S.ThunderClap) then return "thunder_clap 26"; end
        end
        -- shield_block,if=cooldown.shield_slam.ready&buff.shield_block.down
        if S.ShieldBlock:IsReadyP() and (S.ShieldSlam:CooldownUpP() and Player:BuffDownP(S.ShieldBlockBuff)) then
            if HR.Cast(S.ShieldBlock, Action.GetToggle(2, "GCDasOffGCD")) then return "shield_block 32"; end
        end
        -- shield_slam,if=buff.shield_block.up
        if S.ShieldSlam:IsCastableP("Melee") and (Player:BuffP(S.ShieldBlockBuff)) then
            if HR.Cast(S.ShieldSlam) then return "shield_slam 44"; end
        end
        -- thunder_clap,if=(talent.unstoppable_force.enabled&buff.avatar.up)
        if S.ThunderClap:IsCastableP(8) and ((S.UnstoppableForce:IsAvailable() and Player:BuffP(S.AvatarBuff))) then
            if HR.Cast(S.ThunderClap) then return "thunder_clap 54"; end
        end
        -- demoralizing_shout,if=talent.booming_voice.enabled
        if S.DemoralizingShout:IsCastableP(10) and (S.BoomingVoice:IsAvailable() and Player:RageDeficit() >= 40) then
            if HR.Cast(S.DemoralizingShout, Action.GetToggle(2, "GCDasOffGCD")) then return "demoralizing_shout 60"; end
        end
        -- anima_of_death,if=buff.last_stand.up
        if S.AnimaofDeath:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffP(S.LastStandBuff)) then
            if HR.Cast(S.AnimaofDeath) then return "anima_of_death 61"; end
        end
        -- shield_slam
        if S.ShieldSlam:IsCastableP("Melee") then
            if HR.Cast(S.ShieldSlam) then return "shield_slam 70"; end
        end
        -- use_item,name=ashvanes_razor_coral,target_if=debuff.razor_coral_debuff.stack=0
        if I.AshvanesRazorCoral:IsEquipped() and I.AshvanesRazorCoral:IsReady() and TrinketON() and (Target:DebuffStackP(S.RazorCoralDebuff) == 0) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 71"; end
        end
        -- use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.stack>7&(cooldown.avatar.remains<5|buff.avatar.up)
        if I.AshvanesRazorCoral:IsEquipped() and I.AshvanesRazorCoral:IsReady() and TrinketON() and (Target:DebuffStackP(S.RazorCoralDebuff) > 7 and (S.Avatar:CooldownRemainsP() < 5 or Player:BuffP(S.AvatarBuff))) then
            if HR.Cast(I.AshvanesRazorCoral) then return "ashvanes_razor_coral 72"; end
        end
        -- dragon_roar
        if S.DragonRoar:IsCastableP(12) and HR.CDsON() then
            if HR.Cast(S.DragonRoar, Action.GetToggle(2, "GCDasOffGCD")) then return "dragon_roar 73"; end
        end
        -- thunder_clap
        if S.ThunderClap:IsCastableP(8) then
            if HR.Cast(S.ThunderClap) then return "thunder_clap 74"; end
        end
        -- revenge
        if S.Revenge:IsReadyP("Melee") and (Player:Buff(S.FreeRevenge) or offensiveRage() or Player:Rage() >= 75 or ((not isCurrentlyTanking()) and Player:Rage() >= 50)) then
            if HR.Cast(S.Revenge) then return "revenge 76"; end
        end
        -- ravager
        if S.Ravager:IsCastableP(40) then
            if HR.Cast(S.Ravager) then return "ravager 78"; end
        end
        -- devastate
        if S.Devastate:IsCastableP("Melee") then
            if HR.Cast(S.Devastate) then return "devastate 80"; end
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

        -- Check defensives if tanking
        if isCurrentlyTanking() then
            local ShouldReturn = Defensive(); if ShouldReturn then return ShouldReturn; end
        end
		
		-- Interrupt Handler
 	 	local randomInterrupt = math.random(25, 70)
  		local unit = "target"
   		local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
        
  	    -- Pummel
  	    if useKick and S.Pummel:IsReady() and Target:IsInterruptible() then 
		  	if Target:CastPercentage() >= randomInterrupt then
          	    if HR.Cast(S.Pummel, true) then return "Pummel 5"; end
         	else 
          	    return
         	end 
      	end 
        -- auto_attack
		-- Avatar on CD option
        if S.Avatar:IsCastableP() and HR.CDsON() and Action.GetToggle(2, "AvatarOnCD") then
            if HR.Cast(S.Avatar) then return "avatar 114"; end
        end
		-- DemoralizingShout on CD option
        if S.DemoralizingShout:IsCastableP() and HR.CDsON() and Action.GetToggle(2, "DSOnCD") then
            if HR.Cast(S.DemoralizingShout) then return "DemoralizingShout 114"; end
        end
        -- intercept,if=time=0
        if S.Intercept:IsCastableP(25) and (HL.CombatTime() == 0 and not Target:IsInRange(8)) then
            if HR.Cast(S.Intercept) then return "intercept 84"; end
        end
        -- use_items,if=cooldown.avatar.remains>20
        -- use_item,name=grongs_primal_rage,if=buff.avatar.down
        if I.GrongsPrimalRage:IsEquipped() and I.GrongsPrimalRage:IsReady() and TrinketON() and (Player:BuffDownP(S.AvatarBuff)) then
            if HR.Cast(I.GrongsPrimalRage) then return "grongs_primal_rage 87"; end
        end
        -- blood_fury
        if S.BloodFury:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.BloodFury, Action.GetToggle(2, "GCDasOffGCD")) then return "blood_fury 91"; end
        end
        -- berserking
        if S.Berserking:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.Berserking, Action.GetToggle(2, "GCDasOffGCD")) then return "berserking 93"; end
        end
        -- arcane_torrent
        if S.ArcaneTorrent:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "GCDasOffGCD")) then return "arcane_torrent 95"; end
        end
        -- lights_judgment
        if S.LightsJudgment:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.LightsJudgment) then return "lights_judgment 97"; end
        end
        -- fireblood
        if S.Fireblood:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.Fireblood, Action.GetToggle(2, "GCDasOffGCD")) then return "fireblood 99"; end
        end
        -- ancestral_call
        if S.AncestralCall:IsCastableP() and HR.CDsON() then
            if HR.Cast(S.AncestralCall, Action.GetToggle(2, "GCDasOffGCD")) then return "ancestral_call 101"; end
        end
        -- potion,if=buff.avatar.up|target.time_to_die<25
        if I.SuperiorBattlePotionofStrength:IsReady() and  Action.GetToggle(1, "Potion") and (Player:BuffP(S.AvatarBuff) or Target:TimeToDie() < 25) then
            if HR.CastSuggested(I.SuperiorBattlePotionofStrength) then return "battle_potion_of_strength 103"; end
        end
        if Player:HealthPercentage() < 80 and S.VictoryRush:IsReady("Melee") then
            if HR.Cast(S.VictoryRush) then return "victory_rush defensive" end
        end
        if Player:HealthPercentage() < 80 and S.ImpendingVictory:IsReadyP("Melee") then
            if HR.Cast(S.ImpendingVictory) then return "impending_victory defensive" end
        end
        -- ignore_pain,if=rage.deficit<25+20*talent.booming_voice.enabled*cooldown.demoralizing_shout.ready
        if S.IgnorePain:IsReadyP() and (Player:RageDeficit() < 25 + 20 * num(S.BoomingVoice:IsAvailable()) * num(S.DemoralizingShout:CooldownUpP()) and shouldCastIp() and isCurrentlyTanking()) then
            if HR.Cast(S.IgnorePain, Action.GetToggle(2, "GCDasOffGCD")) then return "ignore_pain 107"; end
        end
        -- worldvein_resonance,if=cooldown.avatar.remains<=2
        if S.WorldveinResonance:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (S.Avatar:CooldownRemainsP() <= 2) then
            if HR.Cast(S.WorldveinResonance) then return "worldvein_resonance 108"; end
        end
        -- ripple_in_space
        if S.RippleInSpace:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.RippleInSpace) then return "ripple_in_space 109"; end
        end
        -- memory_of_lucid_dreams
        if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
            if HR.Cast(S.MemoryofLucidDreams) then return "memory_of_lucid_dreams 110"; end
        end
        -- concentrated_flame,if=buff.avatar.down
        if S.ConcentratedFlame:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffDownP(S.AvatarBuff)) then
            if HR.Cast(S.ConcentratedFlame) then return "concentrated_flame 111"; end
        end
        -- last_stand,if=cooldown.anima_of_death.remains<=2
        -- mrdmnd comment - this is breaking shield block, probably need to check it against the anima equipped?
        -- if S.LastStand:IsCastableP() and (S.AnimaofDeath:CooldownRemainsP() <= 2) then
        --     if HR.Cast(S.LastStand, Action.GetToggle(2, "GCDasOffGCD")) then return "last_stand 112"; end
        --end
        -- avatar
        if S.Avatar:IsCastableP() and HR.CDsON() and (Player:BuffDownP(S.AvatarBuff)) then
            if HR.Cast(S.Avatar,  Action.GetToggle(2, "GCDasOffGCD")) then return "avatar 113"; end
        end
        -- run_action_list,name=aoe,if=spell_targets.thunder_clap>=3
        if (Cache.EnemiesCount[8] >= 3) then
            return Aoe();
        end
        -- call_action_list,name=st
        if (true) then
            local ShouldReturn = St(); if ShouldReturn then return ShouldReturn; end
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

