--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_ROGUE_SUBTLETY] = {
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
    LightsJudgment                        = Action.Create({ Type = "Spell", ID = 255647     }),
    PetKick                              = Action.Create({ Type = "Spell", ID = 47482, Color = "RED", Desc = "RED" }),  
    -- Abilities
    Backstab                              = Action.Create({ Type = "Spell", ID = 53     }),
    Eviscerate                            = Action.Create({ Type = "Spell", ID = 196819     }),
    Nightblade                            = Action.Create({ Type = "Spell", ID = 195452     }),
    ShadowBlades                          = Action.Create({ Type = "Spell", ID = 121471     }),
    ShadowDance                           = Action.Create({ Type = "Spell", ID = 185313     }),
    Shadowstrike                          = Action.Create({ Type = "Spell", ID = 185438     }),
    ShurikenStorm                         = Action.Create({ Type = "Spell", ID = 197835     }),
    ShurikenToss                          = Action.Create({ Type = "Spell", ID = 114014     }),
    Stealth                               = Action.Create({ Type = "Spell", ID = 1784     }),
    Stealth2                              = Action.Create({ Type = "Spell", ID = 115191     }), -- w/ Subterfuge Talent
    SymbolsofDeath                        = Action.Create({ Type = "Spell", ID = 212283     }),
    Vanish                                = Action.Create({ Type = "Spell", ID = 1856     }),
    -- Talents
    Alacrity                              = Action.Create({ Type = "Spell", ID = 193539     }),
    DarkShadow                            = Action.Create({ Type = "Spell", ID = 245687     }),
    DeeperStratagem                       = Action.Create({ Type = "Spell", ID = 193531     }),
    EnvelopingShadows                     = Action.Create({ Type = "Spell", ID = 238104     }),
    FindWeakness                          = Action.Create({ Type = "Spell", ID = 91023     }),
    Gloomblade                            = Action.Create({ Type = "Spell", ID = 200758     }),
    MarkedforDeath                        = Action.Create({ Type = "Spell", ID = 137619     }),
    MasterofShadows                       = Action.Create({ Type = "Spell", ID = 196976     }),
    Nightstalker                          = Action.Create({ Type = "Spell", ID = 14062     }),
    SecretTechnique                       = Action.Create({ Type = "Spell", ID = 280719     }),
    ShadowFocus                           = Action.Create({ Type = "Spell", ID = 108209     }),
    ShurikenTornado                       = Action.Create({ Type = "Spell", ID = 277925     }),
    Subterfuge                            = Action.Create({ Type = "Spell", ID = 108208     }),
    Vigor                                 = Action.Create({ Type = "Spell", ID = 14983     }),
    Weaponmaster                          = Action.Create({ Type = "Spell", ID = 193537     }),
    -- Azerite Traits
    BladeInTheShadows                     = Action.Create({ Type = "Spell", ID = 275896     }),
    Inevitability                         = Action.Create({ Type = "Spell", ID = 278683     }),
    NightsVengeancePower                  = Action.Create({ Type = "Spell", ID = 273418     }),
    Perforate                             = Action.Create({ Type = "Spell", ID = 277673     }),
    ReplicatingShadows                    = Action.Create({ Type = "Spell", ID = 286121     }),
    TheFirstDance                         = Action.Create({ Type = "Spell", ID = 278681     }),
    -- Defensive
    CrimsonVial                           = Action.Create({ Type = "Spell", ID = 185311     }),
    Feint                                 = Action.Create({ Type = "Spell", ID = 1966     }),
    -- Misc
    ConductiveInkDebuff                   = Action.Create({ Type = "Spell", ID = 302565     }),
    VigorTrinketBuff                      = Action.Create({ Type = "Spell", ID = 287916     }),
    RazorCoralDebuff                      = Action.Create({ Type = "Spell", ID = 303568     }),
    TheDreadlordsDeceit                   = Action.Create({ Type = "Spell", ID = 228224     }),
    --PoolEnergy                            = Spell(9999000010)
	-- Utility
    Kick                                 = Action.Create({ Type = "Spell", ID = 1766       }),
    Blind                                = Action.Create({ Type = "Spell", ID = 2094       }),
    CheapShot                            = Action.Create({ Type = "Spell", ID = 1833       }),
    KidneyShot                           = Action.Create({ Type = "Spell", ID = 408       }),
    Sprint                               = Action.Create({ Type = "Spell", ID = 2983       }),
    -- Misc
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),	
    -- Buffs
    NightsVengeanceBuff                   = Action.Create({ Type = "Spell", ID = 273424     }),
    VanishBuff                            = Action.Create({ Type = "Spell", ID = 11327     }),
   VanishBuff2                           = Action.Create({ Type = "Spell", ID = 115193     }), -- w/ Subterfuge Talent
    ShadowDanceBuff                       = Action.Create({ Type = "Spell", ID = 185422     }),
    -- Debuffs 
    FindWeaknessDebuff                    = Action.Create({ Type = "Spell", ID = 91021     }),	
    -- Trinkets
	GenericTrinket1                       = Action.Create({ Type = "Trinket", ID = 114616, QueueForbidden = true }),
    GenericTrinket2                       = Action.Create({ Type = "Trinket", ID = 114081, QueueForbidden = true }),
    TrinketTest                          = Action.Create({ Type = "Trinket", ID = 122530, QueueForbidden = true }),
    TrinketTest2                         = Action.Create({ Type = "Trinket", ID = 159611, QueueForbidden = true }), 
    AzsharasFontofPower                  = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    PocketsizedComputationDevice         = Action.Create({ Type = "Trinket", ID = 167555 }),
    RotcrustedVoodooDoll                 = Action.Create({ Type = "Trinket", ID = 159624, QueueForbidden = true }),
    ShiverVenomRelic                     = Action.Create({ Type = "Trinket", ID = 168905, QueueForbidden = true }),
    AquipotentNautilus                   = Action.Create({ Type = "Trinket", ID = 169305, QueueForbidden = true }),
    TidestormCodex                       = Action.Create({ Type = "Trinket", ID = 165576, QueueForbidden = true }),
    VialofStorms                         = Action.Create({ Type = "Trinket", ID = 158224, QueueForbidden = true }),
	GalecallersBoon                      = Action.Create({ Type = "Trinket", ID = 159614, QueueForbidden = true }),
    InvocationOfYulon                    = Action.Create({ Type = "Trinket", ID = 165568, QueueForbidden = true }),
    LustrousGoldenPlumage                = Action.Create({ Type = "Trinket", ID = 159617, QueueForbidden = true }),
    ComputationDevice                    = Action.Create({ Type = "Trinket", ID = 167555, QueueForbidden = true }),
    VigorTrinket                         = Action.Create({ Type = "Trinket", ID = 165572, QueueForbidden = true }),
    FontOfPower                          = Action.Create({ Type = "Trinket", ID = 169314, QueueForbidden = true }),
    RazorCoral                           = Action.Create({ Type = "Trinket", ID = 169311, QueueForbidden = true }),
    -- Potions
    PotionofUnbridledFury                = Action.Create({ Type = "Potion", ID = 169299, QueueForbidden = true }),
    PotionTest                           = Action.Create({ Type = "Potion", ID = 142117, QueueForbidden = true }),
    -- Misc
    CyclotronicBlast                      = Action.Create({ Type = "Spell", ID = 293491, Hidden = true}),
	ConcentratedFlameBurn                 = Action.Create({ Type = "Spell", ID = 295368, Hidden = true}),
    BloodoftheEnemyDebuff                 = Action.Create({ Type = "Spell", ID = 297108, Hidden = true}),
    RecklessForceBuff                     = Action.Create({ Type = "Spell", ID = 302932, Hidden = true}),
    RecklessForceCounter                  = Action.Create({ Type = "Spell", ID = 298409}),
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
    -- Here come all the stuff needed by simcraft but not classic spells or items. 
}

-- To create essences use next code:
Action:CreateEssencesFor(ACTION_CONST_ROGUE_SUBTLETY)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_ROGUE_SUBTLETY], { __index = Action })

-- Simcraft Imported
-- HeroLib
local HL         = HeroLib
local Cache      = HeroCache
local Unit       = HL.Unit
local Player     = Unit.Player
local Target     = Unit.Target
local Pet        = Unit.Pet
local MouseOver  = Unit.MouseOver;
local Spell      = HL.Spell;
local Item       = HL.Item;
-- HeroRotation
local HR         = HeroRotation;
-- Lua
local mathmin = math.min;
-- Lua
local pairs = pairs;
local tableconcat = table.concat;
local tostring = tostring;
local tableinsert = table.insert;
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

-- cp_max_spend
local function CPMaxSpend()
    -- Should work for all 3 specs since they have same Deeper Stratagem Spell ID.
    return S.DeeperStratagem:IsAvailable() and 6 or 5;
end

-- "cp_spend"
local function CPSpend()
    return mathmin(Player:ComboPoints(), CPMaxSpend());
end
  
-- Stealth
function Stealth(Stealth, Setting)
    if Action.GetToggle(2, "StealthOOC") and Stealth:IsCastable() and not Player:IsStealthed() then
        if HR.Cast(Stealth, Action.GetToggle(2, "GCDasOffGCD")) then return "Cast Stealth (OOC)"; end
    end
    return false;
end

-- Marked for Death Sniping
local BestUnit, BestUnitTTD;
local function MfDSniping (MarkedforDeath)
    if MarkedforDeath:IsCastable() then
        -- Get Units up to 30y for MfD.
        HL.GetEnemies(30);

        BestUnit, BestUnitTTD = nil, 60;
        local MOTTD = MouseOver:IsInRange(30) and MouseOver:TimeToDie() or 11111;
        local TTD;
        for _, Unit in pairs(Cache.Enemies[30]) do
            TTD = Unit:TimeToDie();
            -- Note: Increased the SimC condition by 50% since we are slower.
            if not Unit:IsMfdBlacklisted() and TTD < Player:ComboPointsDeficit()*1.5 and TTD < BestUnitTTD then
                if MOTTD - TTD > 1 then
                    BestUnit, BestUnitTTD = Unit, TTD;
                else
                   BestUnit, BestUnitTTD = MouseOver, MOTTD;
                end
            end
        end
        if BestUnit and BestUnit:GUID() ~= Target:GUID() then
            HR.CastLeftNameplate(BestUnit, MarkedforDeath);
        end
    end
end

S.Eviscerate:RegisterDamage(
  -- Eviscerate DMG Formula (Pre-Mitigation):
  --- Player Modifier
    -- AP * CP * EviscR1_APCoef * EviscR2_M * Aura_M * NS_M * DS_M * DSh_M * SoD_M * ShC_M * Mastery_M * Versa_M
  --- Target Modifier
    -- NB_M
  function ()
    return
      --- Player Modifier
        -- Attack Power
        Player:AttackPowerDamageMod() *
        -- Combo Points
        CPSpend() *
        -- Eviscerate R1 AP Coef
        0.176 *
        -- Eviscerate R2 Multiplier
        1.5 *
        -- Aura Multiplier (SpellID: 137035)
        1.21 *
        -- Nightstalker Multiplier
        (S.Nightstalker:IsAvailable() and Player:IsStealthedP(true) and 1.12 or 1) *
        -- Deeper Stratagem Multiplier
        (S.DeeperStratagem:IsAvailable() and 1.05 or 1) *
        -- Dark Shadow Multiplier
        (S.DarkShadow:IsAvailable() and Player:BuffP(S.ShadowDanceBuff) and 1.25 or 1) *
        -- Symbols of Death Multiplier
        (Player:BuffP(S.SymbolsofDeath) and 1.15 or 1) *
        -- Mastery Finisher Multiplier
        (1 + Player:MasteryPct() / 100) *
        -- Versatility Damage Multiplier
        (1 + Player:VersatilityDmgPct() / 100) *
      --- Target Modifier
        -- Nightblade Multiplier
        (Target:DebuffP(S.Nightblade) and 1.15 or 1);
  end
);
S.Nightblade:RegisterPMultiplier(
  {function ()
    return S.Nightstalker:IsAvailable() and Player:IsStealthed(true, false) and 1.12 or 1;
  end}
);
-- Items
if not Item.Rogue then Item.Rogue = {}; end
Item.Subtlety = {
  -- Trinkets
  GalecallersBoon       = Item(159614, {13, 14}),
  InvocationOfYulon     = Item(165568, {13, 14}),
  LustrousGoldenPlumage = Item(159617, {13, 14}),
  ComputationDevice     = Item(167555, {13, 14}),
  VigorTrinket          = Item(165572, {13, 14}),
  FontOfPower           = Item(169314, {13, 14}),
  RazorCoral            = Item(169311, {13, 14}),
};
local I = Item.Subtlety;
local AoETrinkets = { };

-- Rotation Var
local ShouldReturn; -- Used to get the return string
local ForceOffGCD = {true, false};
local Everyone = HR.Commons.Everyone;
local Stealth, VanishBuff;

-- Melee Is In Range Handler
local function IsInMeleeRange ()
  return Target:IsInRange("Melee") and true or false;
end

local function MayBurnShadowDance()
  if Action.GetToggle(2, "BurnShadowDance") == "On Bosses not in Dungeons" and Player:IsInDungeon() then
    return false
  elseif Action.GetToggle(2, "BurnShadowDance") ~= "Always" and not Target:IsInBossList() then
    return false
  else
    return true
  end
end

local function UsePriorityRotation()
  if Cache.EnemiesCount[10] < 2 then
    return false
  end
  if Action.GetToggle(2, "UsePriorityRotation") == "Always" then
    return true
  end
  if Action.GetToggle(2, "UsePriorityRotation") == "On Bosses" and Target:IsInBossList() then
    return true
  end
  -- Zul Mythic
  if Player:InstanceDifficulty() == 16 and Target:NPCID() == 138967 then
    return true
  end
  return false
end

local function num(val)
  if val then return 1 else return 0 end
end

-- APL Action Lists (and Variables)
-- actions+=/variable,name=stealth_threshold,value=25+talent.vigor.enabled*35+talent.master_of_shadows.enabled*25+talent.shadow_focus.enabled*20+talent.alacrity.enabled*10+15*(spell_targets.shuriken_storm>=3)
local function Stealth_Threshold ()
  return 25 + num(S.Vigor:IsAvailable()) * 35 + num(S.MasterofShadows:IsAvailable()) * 25 + num(S.ShadowFocus:IsAvailable()) * 20 + num(S.Alacrity:IsAvailable()) * 10 + num(Cache.EnemiesCount[10] >= 3) * 15;
end
-- actions.stealth_cds=variable,name=shd_threshold,value=cooldown.shadow_dance.charges_fractional>=1.75
local function ShD_Threshold ()
  return S.ShadowDance:ChargesFractional() >= 1.75
end

-- # Finishers
-- ReturnSpellOnly and StealthSpell parameters are to Predict Finisher in case of Stealth Macros
local function Finish (ReturnSpellOnly, StealthSpell)
  local ShadowDanceBuff = Player:BuffP(S.ShadowDanceBuff) or (StealthSpell and StealthSpell:ID() == S.ShadowDance:ID())

  -- actions.finish=eviscerate,if=buff.nights_vengeance.up
  if S.Eviscerate:IsCastable() and IsInMeleeRange() and Player:BuffP(S.NightsVengeanceBuff) then
    if ReturnSpellOnly then
      return S.Eviscerate;
    else
      if HR.Cast(S.Eviscerate) then return "Cast Eviscerate (Nights Vengeance)"; end
    end
  end

  if S.Nightblade:IsCastable() then
    local NightbladeThreshold = (6+CPSpend()*2)*0.3;
    -- actions.finish+=/nightblade,if=(!talent.dark_shadow.enabled|!buff.shadow_dance.up)&target.time_to_die-remains>6&remains<tick_time*2
    if IsInMeleeRange() and (not S.DarkShadow:IsAvailable() or not ShadowDanceBuff)
      and (Target:FilteredTimeToDie(">", 6, -Target:DebuffRemainsP(S.Nightblade)) or Target:TimeToDieIsNotValid())
      and Everyone.CanDoTUnit(Target, S.Eviscerate:Damage()*Action.GetToggle(2, "EviscerateDMGOffset"))
      and Target:DebuffRemainsP(S.Nightblade) < 4 then
      if ReturnSpellOnly then
        return S.Nightblade;
      else
        if HR.Cast(S.Nightblade) then return "Cast Nightblade 1"; end
      end
    end
    -- actions.finish+=/nightblade,cycle_targets=1,if=!variable.use_priority_rotation&spell_targets.shuriken_storm>=2&(azerite.nights_vengeance.enabled|!azerite.replicating_shadows.enabled|spell_targets.shuriken_storm-active_dot.nightblade>=2)&!buff.shadow_dance.up&target.time_to_die>=(5+(2*combo_points))&refreshable
    if HR.AoEON() and not UsePriorityRotation() and Cache.EnemiesCount[10] >= 2 and not ShadowDanceBuff then
      local BestUnit, BestUnitTTD = nil, 5 + 2 * Player:ComboPoints();
      local NBCount = 0;
      for _, Unit in pairs(Cache.Enemies["Melee"]) do
        if Everyone.UnitIsCycleValid(Unit, BestUnitTTD, -Unit:DebuffRemainsP(S.Nightblade))
          and Everyone.CanDoTUnit(Unit, S.Eviscerate:Damage()*Action.GetToggle(2, "EviscerateDMGOffset"))
          and Unit:DebuffRefreshableP(S.Nightblade, NightbladeThreshold) then
          BestUnit, BestUnitTTD = Unit, Unit:TimeToDie();
        end
        if Unit:DebuffP(S.Nightblade) then
          NBCount = NBCount + 1;
        end
      end
      if BestUnit and (S.NightsVengeancePower:AzeriteEnabled() or not S.ReplicatingShadows:AzeriteEnabled() or (Cache.EnemiesCount[10] - NBCount) >= 2) then
        HR.CastLeftNameplate(BestUnit, S.Nightblade);
      end
    end
    -- actions.finish+=/nightblade,if=remains<cooldown.symbols_of_death.remains+10&cooldown.symbols_of_death.remains<=5&target.time_to_die-remains>cooldown.symbols_of_death.remains+5
    if IsInMeleeRange() and Target:DebuffRemainsP(S.Nightblade) < S.SymbolsofDeath:CooldownRemainsP() + 10
      and S.SymbolsofDeath:CooldownRemainsP() <= 5
      and Everyone.CanDoTUnit(Target, S.Eviscerate:Damage()*Action.GetToggle(2, "EviscerateDMGOffset"))
      and (Target:FilteredTimeToDie(">", 5 + S.SymbolsofDeath:CooldownRemainsP(), -Target:DebuffRemainsP(S.Nightblade)) or Target:TimeToDieIsNotValid()) then
      if ReturnSpellOnly then
        return S.Nightblade;
      else
        if HR.Cast(S.Nightblade) then return "Cast Nightblade 2"; end
      end
    end
  end
  -- actions.finish+=/secret_technique
  if S.SecretTechnique:IsCastable() then
    if ReturnSpellOnly then
      return S.SecretTechnique;
    else
      if HR.Cast(S.SecretTechnique) then return "Cast Secret Technique"; end
    end
  end
  -- actions.finish+=/eviscerate
  if S.Eviscerate:IsCastable() and IsInMeleeRange() then
    if ReturnSpellOnly then
      return S.Eviscerate;
    else
      -- Since Eviscerate costs more than Nightblade, show pooling icon in case conditions change while gaining Energy
      if Player:EnergyPredicted() < S.Eviscerate:Cost() then
        if HR.Cast(S.PoolEnergy) then return "Pool for Finisher"; end
      else
        if HR.Cast(S.Eviscerate) then return "Cast Eviscerate"; end
      end
    end
  end
  return false;
end

-- # Stealthed Rotation
-- ReturnSpellOnly and StealthSpell parameters are to Predict Finisher in case of Stealth Macros
local function Stealthed (ReturnSpellOnly, StealthSpell)
  local StealthBuff = Player:Buff(Stealth) or (StealthSpell and StealthSpell:ID() == Stealth:ID())
  local VanishBuffCheck = Player:Buff(VanishBuff) or (StealthSpell and StealthSpell:ID() == S.Vanish:ID())
  -- actions.stealthed=shadowstrike,if=(talent.find_weakness.enabled|spell_targets.shuriken_storm<3)&(buff.stealth.up|buff.vanish.up)
  if S.Shadowstrike:IsCastable() and (Target:IsInRange(S.Shadowstrike) or IsInMeleeRange())
    and (S.FindWeakness:IsAvailable() or Cache.EnemiesCount[10] < 3) and (StealthBuff or VanishBuffCheck) then
    if ReturnSpellOnly then
      return S.Shadowstrike
    else
      if HR.Cast(S.Shadowstrike) then return "Cast Shadowstrike 1"; end
    end
  end
  -- actions.stealthed+=/call_action_list,name=finish,if=buff.shuriken_tornado.up&combo_points.deficit<=2
  -- DONE IN DEFAULT PART!
  -- actions.stealthed+=/call_action_list,name=finish,if=spell_targets.shuriken_storm=4&combo_points>=4
  if Cache.EnemiesCount[10] == 4 and Player:ComboPoints() >= 4 then
    return Finish(ReturnSpellOnly, StealthSpell);
  end
  -- actions.stealthed+=/call_action_list,name=finish,if=combo_points.deficit<=1-(talent.deeper_stratagem.enabled&(buff.vanish.up|azerite.the_first_dance.enabled&!talent.dark_shadow.enabled&!talent.subterfuge.enabled&spell_targets.shuriken_storm<3))
  if Player:ComboPointsDeficit() <= 1 - num(S.DeeperStratagem:IsAvailable() and (Player:BuffP(VanishBuff) or S.TheFirstDance:AzeriteEnabled() and not S.DarkShadow:IsAvailable() and not S.Subterfuge:IsAvailable() and Cache.EnemiesCount[10] < 3)) then
    return Finish(ReturnSpellOnly, StealthSpell);
  end
  -- actions.stealthed+=/gloomblade,if=azerite.perforate.rank>=2&spell_targets.shuriken_storm<=2
  if S.Gloomblade:IsCastableP() and S.Perforate:AzeriteRank() >= 2 and Cache.EnemiesCount[10] <= 2 then
    if ReturnSpellOnly then
      return S.Gloomblade
    else
      if HR.Cast(S.Gloomblade) then return "Cast Gloomblade (Perforate)"; end
    end
  end
  -- actions.stealthed+=/shadowstrike,cycle_targets=1,if=talent.secret_technique.enabled&talent.find_weakness.enabled&debuff.find_weakness.remains<1&spell_targets.shuriken_storm=2&target.time_to_die-remains>6
  -- !!!NYI!!! (Is this worth it? How do we want to display it in an understandable way?)
  -- actions.stealthed+=/shadowstrike,if=!talent.deeper_stratagem.enabled&azerite.blade_in_the_shadows.rank=3&spell_targets.shuriken_storm=3
  if S.Shadowstrike:IsCastableP() and not S.DeeperStratagem:IsAvailable() and S.BladeInTheShadows:AzeriteRank() == 3 and Cache.EnemiesCount[10] == 3 then
    if ReturnSpellOnly then
      return S.Shadowstrike
    else
      if HR.Cast(S.Shadowstrike) then return "Cast Shadowstrike (3T BitS)"; end
    end
  end
  -- actions.stealthed+=/shadowstrike,if=variable.use_priority_rotation&(talent.find_weakness.enabled&debuff.find_weakness.remains<1|talent.weaponmaster.enabled&spell_targets.shuriken_storm<=4|azerite.inevitability.enabled&buff.symbols_of_death.up&spell_targets.shuriken_storm<=3+azerite.blade_in_the_shadows.enabled)
  if S.Shadowstrike:IsCastableP() and UsePriorityRotation() and (S.FindWeakness:IsAvailable() and Target:DebuffRemainsP(S.FindWeaknessDebuff) < 1 or S.Weaponmaster:IsAvailable() and Cache.EnemiesCount[10] <= 4 or S.Inevitability:AzeriteEnabled() and Player:BuffP(S.SymbolsofDeath) and Cache.EnemiesCount[10] <= 3 + num(S.BladeInTheShadows:AzeriteEnabled())) then
    if ReturnSpellOnly then
      return S.Shadowstrike
    else
      if HR.Cast(S.Shadowstrike) then return "Cast Shadowstrike (Prio Rotation)"; end
    end
  end
  -- actions.stealthed+=/shuriken_storm,if=spell_targets>=3
  if HR.AoEON() and S.ShurikenStorm:IsCastable() and Cache.EnemiesCount[10] >= 3 then
    if ReturnSpellOnly then
      return S.ShurikenStorm
    else
      if HR.Cast(S.ShurikenStorm) then return "Cast Shuriken Storm"; end
    end
  end
  -- actions.stealthed+=/shadowstrike
  if S.Shadowstrike:IsCastable() and (Target:IsInRange(S.Shadowstrike) or IsInMeleeRange()) then
    if ReturnSpellOnly then
      return S.Shadowstrike
    else
      if HR.Cast(S.Shadowstrike) then return "Cast Shadowstrike 2"; end
    end
  end
  return false;
end

-- # Stealth Macros
-- This returns a table with the original Stealth spell and the result of the Stealthed action list as if the applicable buff was present
local function StealthMacro (StealthSpell)
  local MacroTable = {StealthSpell};

  -- Handle StealthMacro GUI options
  -- If false, just suggest them as off-GCD and bail out of the macro functionality
  if StealthSpell == S.Vanish then
    if HR.Cast(S.Vanish, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Vanish"; end
    return false;
  elseif StealthSpell == S.Shadowmeld then
    if HR.Cast(S.Shadowmeld, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Shadowmeld"; end
    return false;
  elseif StealthSpell == S.ShadowDance then
    if HR.Cast(S.ShadowDance, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Shadow Dance"; end
    return false;
  end

  tableinsert(MacroTable, Stealthed(true, StealthSpell))

   -- Note: In case DfA is adviced (which can only be a combo for ShD), we swap them to let understand it's DfA then ShD during DfA (DfA - ShD bug)
  if MacroTable[1] == S.ShadowDance and MacroTable[2] == S.DeathfromAbove then
    return HR.CastQueue(MacroTable[2], MacroTable[1]);
  else
    return HR.CastQueue(unpack(MacroTable));
  end
end

-- # Essences
local function Essences ()
  -- blood_of_the_enemy,if=cooldown.symbols_of_death.up|target.time_to_die<=10
  if S.BloodoftheEnemy:IsCastableP() and (S.SymbolsofDeath:CooldownUpP() or Target:FilteredTimeToDie("<=", 10)) then
    if HR.Cast(S.BloodoftheEnemy) then return "Cast BloodoftheEnemy"; end
  end
  -- concentrated_flame,if=energy.time_to_max>1&!buff.symbols_of_death.up&(!dot.concentrated_flame_burn.ticking&!action.concentrated_flame.in_flight|full_recharge_time<gcd.max)
  if S.ConcentratedFlame:IsCastableP() and Player:EnergyTimeToMaxPredicted() > 1 and not Player:BuffP(S.SymbolsofDeath) and (not Target:DebuffP(S.ConcentratedFlameBurn) and not Player:PrevGCD(1, S.ConcentratedFlame) or S.ConcentratedFlame:FullRechargeTime() < Player:GCD() + Player:GCDRemains()) then
    if HR.Cast(S.ConcentratedFlame) then return "Cast ConcentratedFlame"; end
  end
  -- guardian_of_azeroth
  if S.GuardianofAzeroth:IsCastableP() then
    if HR.Cast(S.GuardianofAzeroth) then return "Cast GuardianofAzeroth"; end
  end
  -- actions.essences+=/focused_azerite_beam,if=(spell_targets.shuriken_storm>=2|raid_event.adds.in>60)&!cooldown.symbols_of_death.up&!buff.symbols_of_death.up&energy.deficit>=30
  if S.FocusedAzeriteBeam:IsCastableP() and not S.SymbolsofDeath:CooldownUpP() and not Player:BuffP(S.SymbolsofDeath) and Player:EnergyDeficitPredicted() >= 30 then
    if HR.Cast(S.FocusedAzeriteBeam) then return "Cast FocusedAzeriteBeam"; end
  end
  -- purifying_blast
  if S.PurifyingBlast:IsCastableP() then
    if HR.Cast(S.PurifyingBlast) then return "Cast PurifyingBlast"; end
  end
  -- actions.essences+=/the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10
  if S.TheUnboundForce:IsCastableP() and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10) then
    if HR.Cast(S.TheUnboundForce) then return "Cast TheUnboundForce"; end
  end
  -- ripple_in_space
  if S.RippleInSpace:IsCastableP() then
    if HR.Cast(S.RippleInSpace) then return "Cast RippleInSpace"; end
  end
  -- worldvein_resonance,if=buff.lifeblood.stack<3
  if S.WorldveinResonance:IsCastableP() and Player:BuffStackP(S.LifebloodBuff) < 3 then
    if HR.Cast(S.WorldveinResonance) then return "Cast WorldveinResonance"; end
  end
  -- memory_of_lucid_dreams,if=energy<40&buff.symbols_of_death.up
  if S.MemoryofLucidDreams:IsCastableP() and Player:EnergyPredicted() < 40 and Player:BuffP(S.SymbolsofDeath) then
    if HR.Cast(S.MemoryofLucidDreams) then return "Cast MemoryofLucidDreams"; end
  end
  return false;
end

-- # Cooldowns
local function CDs ()
  if IsInMeleeRange() then
    if Player:Buff(S.ShurikenTornado) then
      -- actions.cds+=/shadow_dance,off_gcd=1,if=!buff.shadow_dance.up&buff.shuriken_tornado.up&buff.shuriken_tornado.remains<=3.5
      if S.SymbolsofDeath:IsCastable() and S.ShadowDance:IsCastable() and not Player:Buff(S.SymbolsofDeath) and not Player:Buff(S.ShadowDance) then
        if HR.CastQueue(S.SymbolsofDeath, S.ShadowDance) then return "Dance + Symbols (during Tornado)"; end
      elseif S.SymbolsofDeath:IsCastable() and not Player:Buff(S.SymbolsofDeath) then
        if HR.Cast(S.SymbolsofDeath) then return "Cast Symbols of Death (during Tornado)"; end
      elseif S.ShadowDance:IsCastable() and not Player:Buff(S.ShadowDanceBuff) then
        if HR.Cast(S.ShadowDance) then return "Cast Shadow Dance (during Tornado)"; end
      end
    end
    -- actions.cds+=/call_action_list,name=essences,if=!stealthed.all&dot.nightblade.ticking
    if not Player:IsStealthedP(true, true) and Target:DebuffP(S.Nightblade) then
      ShouldReturn = Essences();
      if ShouldReturn then return ShouldReturn; end
    end
    -- actions.cds+=/shuriken_tornado,if=energy>=60&dot.nightblade.ticking&cooldown.symbols_of_death.up&cooldown.shadow_dance.charges>=1
    if S.ShurikenTornado:IsCastableP() and Target:DebuffP(S.Nightblade) and S.SymbolsofDeath:CooldownUpP() and S.ShadowDance:Charges() >= 1 then
      -- actions.cds+=/pool_resource,for_next=1,if=!talent.shadow_focus.enabled
      if Player:Energy() >= 60 then
        if HR.Cast(S.ShurikenTornado) then return "Cast Shuriken Tornado"; end
      elseif not S.ShadowFocus:IsAvailable() then
        if HR.Cast(S.PoolEnergy) then return "Pool for Shuriken Tornado"; end
      end
    end
    -- actions.cds+=/symbols_of_death,if=dot.nightblade.ticking&(!talent.shuriken_tornado.enabled|talent.shadow_focus.enabled|cooldown.shuriken_tornado.remains>2)&(!essence.blood_of_the_enemy.major|cooldown.blood_of_the_enemy.remains>2)&(azerite.nights_vengeance.rank<2|buff.nights_vengeance.up)
    if S.SymbolsofDeath:IsCastable() and Target:DebuffP(S.Nightblade)
      and (not S.ShurikenTornado:IsAvailable() or S.ShadowFocus:IsAvailable() or S.ShurikenTornado:CooldownRemainsP() > 2)
      and (not S.BloodoftheEnemy:IsAvailable() or S.BloodoftheEnemy:CooldownRemainsP() > 2)
      and (S.NightsVengeancePower:AzeriteRank() < 2 or Player:BuffP(S.NightsVengeanceBuff)) then
      if HR.Cast(S.SymbolsofDeath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Symbols of Death"; end
    end
    -- actions.cds+=/marked_for_death,target_if=min:target.time_to_die,if=target.time_to_die<combo_points.deficit
    if S.MarkedforDeath:IsCastable() and Target:FilteredTimeToDie("<", Player:ComboPointsDeficit()) then
      if HR.Cast(S.MarkedforDeath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Marked for Death"; end
    end
    -- actions.cds+=/marked_for_death,if=raid_event.adds.in>30&!stealthed.all&combo_points.deficit>=cp_max_spend
    -- Note: Without Settings.Subtlety.STMfDAsDPSCD
    if not Action.GetToggle(2, "STMfDAsDPSCD") and S.MarkedforDeath:IsCastable() and not Player:IsStealthedP(true, true) and Player:ComboPointsDeficit() >= CPMaxSpend() then
      HR.CastSuggested(S.MarkedforDeath);
    end
    if HR.CDsON() then
      -- actions.cds+=/marked_for_death,if=raid_event.adds.in>30&!stealthed.all&combo_points.deficit>=cp_max_spend
      -- Note: With Settings.Subtlety.STMfDAsDPSCD
      if Action.GetToggle(2, "STMfDAsDPSCD") and S.MarkedforDeath:IsCastable() and not Player:IsStealthedP(true, true) and Player:ComboPointsDeficit() >= CPMaxSpend() then
        if HR.Cast(S.MarkedforDeath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Marked for Death"; end
      end
      -- actions.cds+=/shadow_blades,if=combo_points.deficit>=2+stealthed.all
      if S.ShadowBlades:IsCastable() and not Player:Buff(S.ShadowBlades)
        and Player:ComboPointsDeficit() >= 2 + num(Player:IsStealthedP(true, true)) then
        if HR.Cast(S.ShadowBlades, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Shadow Blades"; end
      end
      -- actions.cds+=/shuriken_tornado,if=talent.shadow_focus.enabled&dot.nightblade.ticking&buff.symbols_of_death.up
      if S.ShurikenTornado:IsCastableP() and S.ShadowFocus:IsAvailable() and Target:DebuffP(S.Nightblade) and Player:BuffP(S.SymbolsofDeath) then
        if HR.Cast(S.ShurikenTornado) then return "Cast Shuriken Tornado (SF)"; end
      end
      -- actions.cds+=/shadow_dance,if=!buff.shadow_dance.up&target.time_to_die<=5+talent.subterfuge.enabled
      if S.ShadowDance:IsCastable() and MayBurnShadowDance() and not Player:BuffP(S.ShadowDanceBuff) and Target:FilteredTimeToDie("<=", 5 + num(S.Subterfuge:IsAvailable())) then
        if StealthMacro(S.ShadowDance) then return "Shadow Dance Macro"; end
      end

      -- actions.cds=potion,if=buff.bloodlust.react|target.time_to_die<=60|(buff.vanish.up&(buff.shadow_blades.up|cooldown.shadow_blades.remains<=30))
      -- TODO: Add Potion Suggestion

      -- Racials
      if Player:IsStealthedP(true, false) then
        -- actions.cds+=/blood_fury,if=buff.symbols_of_death.up
        if S.BloodFury:IsCastable() and Player:BuffP(S.SymbolsofDeath) then
          if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Blood Fury"; end
        end
        -- actions.cds+=/berserking,if=buff.symbols_of_death.up
        if S.Berserking:IsCastable() and Player:BuffP(S.SymbolsofDeath) then
          if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Berserking"; end
        end
        -- actions.cds+=/fireblood,if=buff.symbols_of_death.up
        if S.Fireblood:IsCastable() and Player:BuffP(S.SymbolsofDeath) then
          if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Fireblood"; end
        end
        -- actions.cds+=/ancestral_call,if=buff.symbols_of_death.up
        if S.AncestralCall:IsCastable() and Player:BuffP(S.SymbolsofDeath) then
          if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Ancestral Call"; end
        end
      end

      -- Trinkets
      -- actions.cds+=/use_items,if=buff.symbols_of_death.up|target.time_to_die<20
      if TrinketON() then
        local DefaultTrinketCondition = Player:BuffP(S.SymbolsofDeath) or Target:FilteredTimeToDie("<", 20);
        if I.GalecallersBoon:IsEquipped() and I.GalecallersBoon:IsReady() and DefaultTrinketCondition then
          if HR.Cast(I.GalecallersBoon) then return "Cast GalecallersBoon"; end
        end
        if I.LustrousGoldenPlumage:IsEquipped() and I.LustrousGoldenPlumage:IsReady() and DefaultTrinketCondition then
          if HR.Cast(I.LustrousGoldenPlumage) then return "Cast LustrousGoldenPlumage"; end
        end
        if I.InvocationOfYulon:IsEquipped() and I.InvocationOfYulon:IsReady() and DefaultTrinketCondition then
          if HR.Cast(I.InvocationOfYulon) then return "Cast InvocationOfYulon"; end
        end
        -- actions.cds+=/use_item,name=azsharas_font_of_power,if=!buff.shadow_dance.up&cooldown.symbols_of_death.remains<10
        if I.FontOfPower:IsEquipped() and I.FontOfPower:IsReady() and not Player:BuffP(S.SymbolsofDeath) and S.SymbolsofDeath:CooldownRemainsP() < 10 then
          if HR.Cast(I.FontOfPower) then return "Cast FontOfPower"; end
        end
        -- if=!stealthed.all&dot.nightblade.ticking&!buff.symbols_of_death.up&energy.deficit>=30
        if I.ComputationDevice:IsEquipped() and I.ComputationDevice:IsReady() and not Player:IsStealthedP(true, true)
          and Target:DebuffP(S.Nightblade) and not Player:BuffP(S.SymbolsofDeath) and Player:EnergyDeficitPredicted() >= 30 then
          if HR.Cast(I.ComputationDevice) then return "Cast ComputationDevice"; end
        end
        -- actions.cds+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down|debuff.conductive_ink_debuff.up&target.health.pct<32&target.health.pct>=30|!debuff.conductive_ink_debuff.up&(debuff.razor_coral_debuff.stack>=25-10*debuff.blood_of_the_enemy.up|target.time_to_die<40)&buff.symbols_of_death.remains>8
        if I.RazorCoral:IsEquipped() and I.RazorCoral:IsReady() then
          local CastRazorCoral;
          if S.RazorCoralDebuff:ActiveCount() == 0 then
            CastRazorCoral = true;
          else
            local ConductiveInkUnit = S.ConductiveInkDebuff:MaxDebuffStackPUnit()
            if ConductiveInkUnit then
              -- Cast if we are at 31%, if the enemy will die within 20s, or if the time to reach 30% will happen within 3s
              CastRazorCoral = ConductiveInkUnit:HealthPercentage() <= 32 or (Target:IsInBossList() and Target:FilteredTimeToDie("<", 20)) or
                (ConductiveInkUnit:HealthPercentage() <= 35 and ConductiveInkUnit:TimeToX(30) < 3);
            else
              CastRazorCoral = (S.RazorCoralDebuff:MaxDebuffStackP() >= 25 - 10 * num(Target:DebuffP(S.BloodoftheEnemyDebuff)) or Target:FilteredTimeToDie("<", 40))
                and Player:BuffRemainsP(S.SymbolsofDeath) > 8 or (Target:IsInBossList() and Target:FilteredTimeToDie("<", 20));
            end
          end
          if CastRazorCoral then
            if HR.Cast(I.RazorCoral) then return "Cast RazorCoral"; end
          end
        end
        -- Emulate SimC default behavior to use at max stacks
        if I.VigorTrinket:IsEquipped() and I.VigorTrinket:IsReady() and Player:BuffStack(S.VigorTrinketBuff) == 6 then
          if HR.Cast(I.VigorTrinket) then return "Cast VigorTrinket"; end
        end
      end
    end
  end
  return false;
end

-- # Stealth Cooldowns
local function Stealth_CDs ()
  if IsInMeleeRange() then
    -- actions.stealth_cds+=/vanish,if=!variable.shd_threshold&combo_points.deficit>1&debuff.find_weakness.remains<1
    if HR.CDsON() and S.Vanish:IsCastable() and S.ShadowDance:TimeSinceLastDisplay() > 0.3 and S.Shadowmeld:TimeSinceLastDisplay() > 0.3 and not Player:IsTanking(Target)
      and not ShD_Threshold() and Player:ComboPointsDeficit() > 1 and Target:DebuffRemainsP(S.FindWeaknessDebuff) < 1 then
      if StealthMacro(S.Vanish) then return "Vanish Macro"; end
    end
    -- actions.stealth_cds+=/shadowmeld,if=energy>=40&energy.deficit>=10&!variable.shd_threshold&combo_points.deficit>1&debuff.find_weakness.remains<1
    if HR.CDsON() and S.Shadowmeld:IsCastable() and S.ShadowDance:TimeSinceLastDisplay() > 0.3 and S.Vanish:TimeSinceLastDisplay() > 0.3 and not Player:IsTanking(Target)
      and GetUnitSpeed("player") == 0 and Player:EnergyDeficitPredicted() > 10
      and not ShD_Threshold() and Player:ComboPointsDeficit() > 1 and Target:DebuffRemainsP(S.FindWeaknessDebuff) < 1 then
      -- actions.stealth_cds+=/pool_resource,for_next=1,extra_amount=40
      if Player:Energy() < 40 then
        if HR.Cast(S.PoolEnergy) then return "Pool for Shadowmeld"; end
      end
      if StealthMacro(S.Shadowmeld) then return "Shadowmeld Macro"; end
    end
    -- actions.stealth_cds+=/variable,name=shd_combo_points,value=combo_points.deficit>=4
    local ShdComboPoints = Player:ComboPointsDeficit() >= 4;
    -- actions.stealth_cds+=/variable,name=shd_combo_points,value=combo_points.deficit<=1+2*azerite.the_first_dance.enabled,if=variable.use_priority_rotation&(talent.nightstalker.enabled|talent.dark_shadow.enabled)
    if UsePriorityRotation() and (S.Nightstalker:IsAvailable() or S.DarkShadow:IsAvailable()) then
      ShdComboPoints = Player:ComboPointsDeficit() <= 1 + 2 * num(S.TheFirstDance:AzeriteEnabled());
    end
    -- actions.stealth_cds+=/shadow_dance,if=variable.shd_combo_points&(!talent.dark_shadow.enabled|dot.nightblade.remains>=5+talent.subterfuge.enabled)&(variable.shd_threshold|buff.symbols_of_death.remains>=1.2|spell_targets.shuriken_storm>=4&cooldown.symbols_of_death.remains>10)&(azerite.nights_vengeance.rank<2|buff.nights_vengeance.up)
    if (HR.CDsON() or (S.ShadowDance:ChargesFractional() >= Action.GetToggle(2, "ShDEcoCharge") - (S.DarkShadow:IsAvailable() and 0.75 or 0)))
      and S.ShadowDance:IsCastable() and S.Vanish:TimeSinceLastDisplay() > 0.3
      and S.ShadowDance:TimeSinceLastDisplay() ~= 0 and S.Shadowmeld:TimeSinceLastDisplay() > 0.3 and S.ShadowDance:Charges() >= 1
      and ShdComboPoints
      and (not S.DarkShadow:IsAvailable() or Target:DebuffRemainsP(S.Nightblade) >= 5 + num(S.Subterfuge:IsAvailable()))
      and (ShD_Threshold() or Player:BuffRemainsP(S.SymbolsofDeath) >= 1.2 or (Cache.EnemiesCount[10] >= 4 and S.SymbolsofDeath:CooldownRemainsP() > 10))
      and (S.NightsVengeancePower:AzeriteRank() < 2 or Player:BuffP(S.NightsVengeanceBuff)) then
      if StealthMacro(S.ShadowDance) then return "ShadowDance Macro 1"; end
    end
    -- actions.stealth_cds+=/shadow_dance,if=variable.shd_combo_points&target.time_to_die<cooldown.symbols_of_death.remains&!raid_event.adds.up
    if (HR.CDsON() or (S.ShadowDance:ChargesFractional() >= Action.GetToggle(2, "ShDEcoCharge") - (S.DarkShadow:IsAvailable() and 0.75 or 0)))
      and S.ShadowDance:IsCastable() and MayBurnShadowDance() and S.Vanish:TimeSinceLastDisplay() > 0.3
      and S.ShadowDance:TimeSinceLastDisplay() ~= 0 and S.Shadowmeld:TimeSinceLastDisplay() > 0.3 and S.ShadowDance:Charges() >= 1
      and ShdComboPoints and Target:TimeToDie() < S.SymbolsofDeath:CooldownRemainsP() then
      if StealthMacro(S.ShadowDance) then return "ShadowDance Macro 2"; end
    end
  end
  return false;
end

-- # Builders
local function Build ()
  -- actions.build=shuriken_storm,if=spell_targets>=2+(talent.gloomblade.enabled&azerite.perforate.rank>=2)|buff.the_dreadlords_deceit.stack>=29
  if HR.AoEON() and S.ShurikenStorm:IsCastableP() and (Cache.EnemiesCount[10] >= 2 + num(S.Gloomblade:IsAvailable() and S.Perforate:AzeriteRank() >= 2) or Player:BuffStackP(S.TheDreadlordsDeceit) >= 29) then
    if HR.Cast(S.ShurikenStorm) then return "Cast Shuriken Storm"; end
  end
  if IsInMeleeRange() then
    -- actions.build+=/gloomblade
    if S.Gloomblade:IsCastable() then
      if HR.Cast(S.Gloomblade) then return "Cast Gloomblade"; end
    -- actions.build+=/backstab
    elseif S.Backstab:IsCastable() then
      if HR.Cast(S.Backstab) then return "Cast Backstab"; end
    end
  end
  return false;
end

local MythicDungeon;
do
  local SappedSoulSpells = {
    {S.Kick, "Cast Kick (Sapped Soul)", function () return IsInMeleeRange(); end},
    {S.Feint, "Cast Feint (Sapped Soul)", function () return true; end},
    {S.CrimsonVial, "Cast Crimson Vial (Sapped Soul)", function () return true; end}
  };
  MythicDungeon = function ()
    -- Sapped Soul
    if HL.MythicDungeon() == "Sapped Soul" then
      for i = 1, #SappedSoulSpells do
        local Spell = SappedSoulSpells[i];
        if Spell[1]:IsCastable() and Spell[3]() then
          HR.ChangePulseTimer(1);
          HR.Cast(Spell[1]);
          return Spell[2];
        end
      end
    end
    return false;
  end
end

local function TrainingScenario ()
  if Target:CastName() == "Unstable Explosion" and Target:CastPercentage() > 60-10*Player:ComboPoints() then
    -- Kidney Shot
    if IsInMeleeRange() and S.KidneyShot:IsCastable() and Player:ComboPoints() > 0 then
      if HR.Cast(S.KidneyShot) then return "Cast Kidney Shot (Unstable Explosion)"; end
    end
  end
  return false;
end

local Interrupts = {
  {S.Blind, "Cast Blind (Interrupt)", function () return true; end},
  {S.KidneyShot, "Cast Kidney Shot (Interrupt)", function () return Player:ComboPoints() > 0; end},
  {S.CheapShot, "Cast Cheap Shot (Interrupt)", function () return Player:IsStealthedP(true, true); end}
};


--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()	

    -- Unit Update
    HL.GetEnemies(10, true); -- Shuriken Storm & Death from Above
    HL.GetEnemies("Melee"); -- Melee
    -- Spell ID Changes check
    if S.Subterfuge:IsAvailable() then
        Stealth = S.Stealth2;
        VanishBuff = S.VanishBuff2;
    else
        Stealth = S.Stealth;
        VanishBuff = S.VanishBuff;
    end
	--print(EnemiesCount)
	
    -- Handle all generics trinkets	
	local function GeneralTrinkets()
        if trinketReady(1) then
        	if HR.Cast(I.GenericTrinket1) then return "GenericTrinket1"; end
        end
		if trinketReady(2) then
            if HR.Cast(I.GenericTrinket2) then return "GenericTrinket2"; end
        end
    end
	
	-- Anti channel interrupt
	if Player:IsCasting() or Player:IsChanneling() then
	    ShouldStop = true
	else
	    ShouldStop = false
	end
    
    --- Defensives
        -- Crimson Vial
        ShouldReturn = CrimsonVial (S.CrimsonVial);
        if ShouldReturn then return ShouldReturn; end
        -- Feint
        ShouldReturn = Feint (S.Feint);
        if ShouldReturn then return ShouldReturn; end
    --- Out of Combat
        if not Player:AffectingCombat() then
            -- Stealth
            -- Note: Since 7.2.5, Blizzard disallowed Stealth cast under ShD (workaround to prevent the Extended Stealth bug)
            if not Player:Buff(S.ShadowDanceBuff) and not Player:Buff(VanishBuff) and Action.GetToggle(2, "StealthOOC") and Stealth:IsCastable() and not Player:IsStealthed() then
                if HR.Cast(Stealth, Action.GetToggle(2, "GCDasOffGCD")) then return "Cast Stealth (OOC)"; end
            end
            -- Flask
            -- Food
            -- Rune
            -- PrePot w/ Bossmod Countdown
            -- Opener
            if Everyone.TargetIsValid() and (Target:IsInRange(S.Shadowstrike) or IsInMeleeRange()) then
                -- Precombat CDs
                if HR.CDsON() then
                    if S.MarkedforDeath:IsCastableP() and Player:ComboPointsDeficit() >= CPMaxSpend() then
                        if HR.Cast(S.MarkedforDeath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Marked for Death (OOC)"; end
                    end
                    -- actions.precombat+=/use_item,name=azsharas_font_of_power
                    if TrinketON() and I.FontOfPower:IsEquipped() and I.FontOfPower:IsReady() then
                        if HR.Cast(I.FontOfPower) then return "Cast Font of Power"; end
                    end
                    if S.ShadowBlades:IsCastable() and not Player:Buff(S.ShadowBlades) then
                        if HR.Cast(S.ShadowBlades, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Shadow Blades (OOC)"; end
                    end
                end
                if Player:IsStealthedP(true, true) then
                    ShouldReturn = Stealthed();
                    if ShouldReturn then return ShouldReturn .. " (OOC)"; end
                    if Player:EnergyPredicted() < 30 then -- To avoid pooling icon spam
                        if HR.Cast(S.PoolEnergy) then return "Stealthed Pooling (OOC)"; end
                    else
                        return "Stealthed Pooling (OOC)";
                    end
                elseif Player:ComboPoints() >= 5 then
                    ShouldReturn = Finish();
                    if ShouldReturn then return ShouldReturn .. " (OOC)"; end
                elseif S.Backstab:IsCastable() then
                    if HR.Cast(S.Backstab) then return "Cast Backstab (OOC)"; end
                end
            end
            return;
        end

        -- In Combat
        -- MfD Sniping
        MfDSniping(S.MarkedforDeath);
      
		if Player:AffectingCombat() then
        
 			-- Interrupt Handler
 	 		local randomInterrupt = math.random(25, 70)
  			local unit = "target"
   			local useKick, useCC, useRacial = Action.InterruptIsValid(unit, "TargetMouseover")    
        
  	    	-- Kick
  	    	if useKick and S.Kick:IsReady() and Target:IsInterruptible() then 
			  	if Target:CastPercentage() >= randomInterrupt then
      	    	    if HR.Cast(S.Kick, true) then return "Kick 5"; end
      		   	else 
       		   	    return
        	 	end 
      		end 
	
     		 -- CheapShot
      		if useCC and S.CheapShot:IsReady() and Target:IsInterruptible() and Player:EnergyPredicted() >= 40 then 
	  			if Target:CastPercentage() >= randomInterrupt then
     	       		if HR.Cast(S.CheapShot, true) then return "CheapShot 5"; end
     	   		else 
     	        	return
     	    	end 
     		end 

            -- Mythic Dungeon
            ShouldReturn = MythicDungeon();
            if ShouldReturn then return ShouldReturn; end
            -- Training Scenario
            ShouldReturn = TrainingScenario();
            if ShouldReturn then return ShouldReturn; end

            -- # Check CDs at first
            -- actions=call_action_list,name=cds
            ShouldReturn = CDs();
            if ShouldReturn then return "CDs: " .. ShouldReturn; end

            -- SPECIAL HACK FOR SHURIKEN TORNADO
            -- Show a finisher if we can assume we will have enough CP with the next global
            -- actions.stealthed+=/call_action_list,name=finish,if=buff.shuriken_tornado.up&combo_points.deficit<=2
            if Player:Buff(S.ShurikenTornado) and (Player:ComboPointsDeficit() - Cache.EnemiesCount[10] - num(Player:BuffP(S.ShadowBlades))) <= 1 + num(Player:IsStealthedP(true, false)) then
                ShouldReturn = Finish();
                if ShouldReturn then return "Finish (during Tornado): " .. ShouldReturn; end
            end

            -- # Run fully switches to the Stealthed Rotation (by doing so, it forces pooling if nothing is available).
            -- actions+=/run_action_list,name=stealthed,if=stealthed.all
            if Player:IsStealthedP(true, true) then
                ShouldReturn = Stealthed();
                if ShouldReturn then return "Stealthed: " .. ShouldReturn; end
                -- run_action_list forces the return
                if Player:EnergyPredicted() < 30 then -- To avoid pooling icon spam
                    if HR.Cast(S.PoolEnergy) then return "Stealthed Pooling"; end
                else
                    return "Stealthed Pooling";
                end
            end

            -- # Apply Nightblade at 2+ CP during the first 10 seconds, after that 4+ CP if it expires within the next GCD or is not up
            -- actions+=/nightblade,if=target.time_to_die>6&remains<gcd.max&combo_points>=4-(time<10)*2
            if S.Nightblade:IsCastableP() and IsInMeleeRange()
                and (Target:FilteredTimeToDie(">", 6) or Target:TimeToDieIsNotValid())
                and Everyone.CanDoTUnit(Target, S.Eviscerate:Damage() * Action.GetToggle(2, "EviscerateDMGOffset"))
                and Target:DebuffRemainsP(S.Nightblade) < Player:GCD() and Player:ComboPoints() >= 4 - (HL.CombatTime() < 10 and 2 or 0) then
                if HR.Cast(S.Nightblade) then return "Cast Nightblade (Low Duration)"; end
            end

            -- actions+=/call_action_list,name=stealth_cds,if=variable.use_priority_rotation
            if UsePriorityRotation() then
                local ShouldReturn = Stealth_CDs();
                if ShouldReturn then return "Stealth CDs: (Priority Rotation)" .. ShouldReturn; end
            end

            -- # Consider using a Stealth CD when reaching the energy threshold
            -- actions+=/call_action_list,name=stealth_cds,if=energy.deficit<=variable.stealth_threshold
            if Player:EnergyDeficit() <= Stealth_Threshold() then
                local ShouldReturn = Stealth_CDs();
                if ShouldReturn then return "Stealth CDs: " .. ShouldReturn; end
            end

            -- if=azerite.nights_vengeance.enabled&!buff.nights_vengeance.up&combo_points.deficit>1&(spell_targets.shuriken_storm<2|variable.use_priority_rotation)&(cooldown.symbols_of_death.remains<=3|(azerite.nights_vengeance.rank>=2&buff.symbols_of_death.remains>3&!stealthed.all&cooldown.shadow_dance.charges_fractional>=0.9))
            if S.Nightblade:IsCastableP() and IsInMeleeRange()
                and S.NightsVengeancePower:AzeriteEnabled() and not Player:BuffP(S.NightsVengeanceBuff) and Player:ComboPoints() >= 1 and Player:ComboPointsDeficit() > 1
                and (Cache.EnemiesCount[10] < 2 or UsePriorityRotation())
                and (S.SymbolsofDeath:CooldownRemainsP() <= 3 or (S.NightsVengeancePower:AzeriteRank() >= 2 and Player:BuffRemainsP(S.SymbolsofDeath) > 3 and not Player:IsStealthedP(true, true) and S.ShadowDance:ChargesFractional() >= 0.9))
                 then
                if HR.Cast(S.Nightblade) then return "Cast Nightblade (Nights Vengeance)"; end
            end

            -- # Finish at 4+ without DS, 5+ with DS (outside stealth)
            -- actions+=/call_action_list,name=finish,if=combo_points.deficit<=1|target.time_to_die<=1&combo_points>=3
            if Player:ComboPointsDeficit() <= 1 or (Target:FilteredTimeToDie("<=", 1) and Player:ComboPoints() >= 3) then
                ShouldReturn = Finish();
                if ShouldReturn then return "Finish: " .. ShouldReturn; end
            end

            -- actions+=/call_action_list,name=finish,if=spell_targets.shuriken_storm=4&combo_points>=4
            if Cache.EnemiesCount[10] == 4 and Player:ComboPoints() >= 4 then
                ShouldReturn = Finish();
                if ShouldReturn then return "Finish 4T: " .. ShouldReturn; end
            end

            -- # Use a builder when reaching the energy threshold
            -- actions+=/call_action_list,name=build,if=energy.deficit<=variable.stealth_threshold
            if Player:EnergyDeficitPredicted() <= Stealth_Threshold() then
                ShouldReturn = Build();
                if ShouldReturn then return "Build: " .. ShouldReturn; end
            end

            -- # Lowest priority in all of the APL because it causes a GCD
            -- actions+=/arcane_torrent,if=energy.deficit>=15+energy.regen
            if S.ArcaneTorrent:IsCastableP("Melee") and Player:EnergyDeficitPredicted() > 15 + Player:EnergyRegen() then
                if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Arcane Torrent"; end
            end
            -- actions+=/arcane_pulse
            if S.ArcanePulse:IsCastableP("Melee") then
                if HR.Cast(S.ArcanePulse, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Arcane Pulse"; end
            end
            -- actions+=/lights_judgment
            if S.LightsJudgment:IsCastableP("Melee") then
                if HR.Cast(S.LightsJudgment, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Lights Judgment"; end
            end

            -- Shuriken Toss Out of Range
            if S.ShurikenToss:IsCastable(30) and not Target:IsInRange(10) and not Player:IsStealthedP(true, true) and not Player:BuffP(S.Sprint)
                and Player:EnergyDeficitPredicted() < 20 and (Player:ComboPointsDeficit() >= 1 or Player:EnergyTimeToMax() <= 1.2) then
                if HR.Cast(S.ShurikenToss) then return "Cast Shuriken Toss"; end
            end
            -- Trick to take in consideration the Recovery Setting
            if S.Shadowstrike:IsCastable() and IsInMeleeRange() then
                if HR.Cast(S.PoolEnergy) then return "Normal Pooling"; end
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

