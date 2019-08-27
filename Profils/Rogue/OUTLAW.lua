--------------------
-- Taste TMW Action Rotation
-- Last Update : 05/08/2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action

Action[ACTION_CONST_ROGUE_OUTLAW] = {
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
    -- Generics Spells
    AdrenalineRush                       = Action.Create({ Type = "Spell", ID = 13750        }),
    Ambush                               = Action.Create({ Type = "Spell", ID = 8676        }),
    BetweentheEyes                       = Action.Create({ Type = "Spell", ID = 199804        }),
    BladeFlurry                          = Action.Create({ Type = "Spell", ID = 13877        }),
    Opportunity                          = Action.Create({ Type = "Spell", ID = 195627        }),
    PistolShot                           = Action.Create({ Type = "Spell", ID = 185763        }),
    RolltheBones                         = Action.Create({ Type = "Spell", ID = 193316        }),
    Dispatch                             = Action.Create({ Type = "Spell", ID = 2098        }),
    SinisterStrike                       = Action.Create({ Type = "Spell", ID = 193315        }),
    Stealth                              = Action.Create({ Type = "Spell", ID = 1784        }),
    Vanish                               = Action.Create({ Type = "Spell", ID = 1856        }),    
    -- Talents
    AcrobaticStrikes                     = Action.Create({ Type = "Spell", ID = 196924        }),
    BladeRush                            = Action.Create({ Type = "Spell", ID = 271877        }),
    DeeperStratagem                      = Action.Create({ Type = "Spell", ID = 193531        }),
    GhostlyStrike                        = Action.Create({ Type = "Spell", ID = 196937        }),
    KillingSpree                         = Action.Create({ Type = "Spell", ID = 51690        }),    
    MarkedforDeath                       = Action.Create({ Type = "Spell", ID = 137619        }),
    QuickDraw                            = Action.Create({ Type = "Spell", ID = 196938        }),
    SliceandDice                         = Action.Create({ Type = "Spell", ID = 5171        }),
    -- Azerite Traits
    AceUpYourSleeve                      = Action.Create({ Type = "Spell", ID = 278676        }),
    Deadshot                             = Action.Create({ Type = "Spell", ID = 272935        }),    
    SnakeEyesPower                       = Action.Create({ Type = "Spell", ID = 275846        }),   
    -- Defensive
    CrimsonVial                          = Action.Create({ Type = "Spell", ID = 185311        }),
    Feint                                = Action.Create({ Type = "Spell", ID = 1966        }),
	-- Utility
    Kick                                 = Action.Create({ Type = "Spell", ID = 1766       }),
    Blind                                = Action.Create({ Type = "Spell", ID = 2094       }),
    CheapShot                            = Action.Create({ Type = "Spell", ID = 1833       }),
    KidneyShot                           = Action.Create({ Type = "Spell", ID = 408       }),
	-- Roll the Bones
    Broadside                            = Action.Create({ Type = "Spell", ID = 193356       }),
    BuriedTreasure                       = Action.Create({ Type = "Spell", ID = 199600       }),
    GrandMelee                           = Action.Create({ Type = "Spell", ID = 193358       }),
    RuthlessPrecision                    = Action.Create({ Type = "Spell", ID = 193357       }),
    SkullandCrossbones                   = Action.Create({ Type = "Spell", ID = 199603       }),
    TrueBearing                          = Action.Create({ Type = "Spell", ID = 193359       }),
    -- Misc
    Channeling                           = Action.Create({ Type = "Spell", ID = 209274, Hidden = true     }),	
    -- Buffs
    VigorTrinketBuff                     = Action.Create({ Type = "Spell", ID = 287916, Hidden = true     }),
	KeepYourWitsBuff                     = Action.Create({ Type = "Spell", ID = 288988, Hidden = true     }),
	SnakeEyesBuff                        = Action.Create({ Type = "Spell", ID = 275863, Hidden = true     }),
	DeadshotBuff                         = Action.Create({ Type = "Spell", ID = 272940, Hidden = true     }),
	LoadedDiceBuff                       = Action.Create({ Type = "Spell", ID = 256171, Hidden = true     }),
	VanishBuff                           = Action.Create({ Type = "Spell", ID = 11327, Hidden = true     }),
    -- Debuffs 
    RazorCoralDebuff                     = Action.Create({ Type = "Spell", ID = 303568, Hidden = true     }),
	ConductiveInkDebuff                  = Action.Create({ Type = "Spell", ID = 302565, Hidden = true     }),	
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
    RecklessForceCounter                  = Action.Create({ Type = "Spell", ID = 302917, Hidden = true}),
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
Action:CreateEssencesFor(ACTION_CONST_ROGUE_OUTLAW)        -- where PLAYERSPEC is Constance (example: ACTION_CONST_MONK_BM)

-- This code making shorter access to both tables Action[PLAYERSPEC] and Action
-- However if you prefer long access it still can be used like Action[PLAYERSPEC].Guard:IsReady(), it doesn't make any conflict if you will skip shorter access
-- So with shorter access you can just do A.Guard:IsReady() instead of Action[PLAYERSPEC].Guard:IsReady()
local A = setmetatable(Action[ACTION_CONST_ROGUE_OUTLAW], { __index = Action })

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
local BladeFlurryRange = 6;

local function num(val)
  if val then return 1 else return 0 end
end

-- Stuns
local Interrupts = {
  {S.Blind, "Cast Blind (Interrupt)", function () return true; end},
};

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
local function Stealth(Stealth, Setting)
    if Action.GetToggle(2, "StealthOOC") and Stealth:IsCastable() and not Player:IsStealthed() then
        if HR.Cast(Stealth, Action.GetToggle(2, "GCDasOffGCD")) then return "Cast Stealth (OOC)"; end
    end
    return false;
end

-- Crimson Vial
local function CrimsonVial(CrimsonVial)
    if CrimsonVial:IsCastable() and Player:HealthPercentage() <= Action.GetToggle(2, "CrimsonVialHP") then
        if HR.Cast(CrimsonVial, Action.GetToggle(2, "GCDasOffGCD")) then return "Cast Crimson Vial (Defensives)"; end
    end
    return false;
end

-- Feint
local function Feint(Feint)
    if Feint:IsCastable() and not Player:Buff(Feint) and Player:HealthPercentage() <= Action.GetToggle(2, "FeintHP") then
        if HR.Cast(Feint, Action.GetToggle(2, "GCDasOffGCD")) then return "Cast Feint (Defensives)"; end
    end
end

-- APL Action Lists (and Variables)
local SappedSoulSpells = {
    {S.Kick, "Cast Kick (Sapped Soul)", function () return Target:IsInRange(S.SinisterStrike); end},
    {S.Feint, "Cast Feint (Sapped Soul)", function () return true; end},
    {S.CrimsonVial, "Cast Crimson Vial (Sapped Soul)", function () return true; end}
};
local RtB_BuffsList = {
    S.Broadside,
    S.BuriedTreasure,
    S.GrandMelee,
    S.RuthlessPrecision,
    S.SkullandCrossbones,
    S.TrueBearing
};
local function RtB_List (Type, List)
    if not Cache.APLVar.RtB_List then Cache.APLVar.RtB_List = {}; end
    if not Cache.APLVar.RtB_List[Type] then Cache.APLVar.RtB_List[Type] = {}; end
    local Sequence = table.concat(List);
    -- All
    if Type == "All" then
        if not Cache.APLVar.RtB_List[Type][Sequence] then
            local Count = 0;
            for i = 1, #List do
                if Player:Buff(RtB_BuffsList[List[i]]) then
                    Count = Count + 1;
                end
            end
            Cache.APLVar.RtB_List[Type][Sequence] = Count == #List and true or false;
        end
    -- Any
    else
        if not Cache.APLVar.RtB_List[Type][Sequence] then
            Cache.APLVar.RtB_List[Type][Sequence] = false;
            for i = 1, #List do
                if Player:Buff(RtB_BuffsList[List[i]]) then
                    Cache.APLVar.RtB_List[Type][Sequence] = true;
                break;
                end
            end
        end
    end
    return Cache.APLVar.RtB_List[Type][Sequence];
end
local function RtB_BuffRemains()
    if not Cache.APLVar.RtB_BuffRemains then
        Cache.APLVar.RtB_BuffRemains = 0;
        for i = 1, #RtB_BuffsList do
            if Player:Buff(RtB_BuffsList[i]) then
                Cache.APLVar.RtB_BuffRemains = Player:BuffRemainsP(RtB_BuffsList[i]);
                break;
            end
        end
    end
    return Cache.APLVar.RtB_BuffRemains;
end
-- Get the number of Roll the Bones buffs currently on
local function RtB_Buffs()
    if not Cache.APLVar.RtB_Buffs then
        Cache.APLVar.RtB_Buffs = 0;
        for i = 1, #RtB_BuffsList do
            if Player:BuffP(RtB_BuffsList[i]) then
                Cache.APLVar.RtB_Buffs = Cache.APLVar.RtB_Buffs + 1;
            end
        end
    end
    return Cache.APLVar.RtB_Buffs;
end

local function CheckGoodBuffs()
    local choice = Action.GetToggle(2, "RolltheBonesLogic")
    local GotGoodBuff = false
	
    if choice == "1BUFF" then
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and RtB_Buffs() <= 0) and true or false;
    elseif choice == "MYTHICPLUS" then
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and (not Player:BuffP(S.RuthlessPrecision) and not Player:BuffP(S.GrandMelee) and not Player:BuffP(S.Broadside)) and not (RtB_Buffs() >= 2)) and true or false
    elseif choice == "AOESTRAT" then   
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and (not Player:BuffP(S.RuthlessPrecision) and not Player:BuffP(S.GrandMelee) and not Player:BuffP(S.Broadside)) and not (RtB_Buffs() >= 2)) and true or false
    elseif choice == "BROADSIDE" then  
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and not Player:BuffP(S.Broadside) and true) or false;
    elseif choice == "BURIEDTREASURE" then  
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and not Player:BuffP(S.BuriedTreasure) and true) or false;
    elseif choice == "GRANDMELEE" then  
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and not Player:BuffP(S.GrandMelee) and true) or false;
    elseif choice == "SKULLANDCROSS" then  
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and not Player:BuffP(S.SkullandCrossbones) and true) or false;
    elseif choice == "RUTHLESSPRECISION" then  
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and not Player:BuffP(S.RuthlessPrecision) and true) or false;
    elseif choice == "TRUEBEARING" then  
        GotGoodBuff = (not S.SliceandDice:IsAvailable() and not Player:BuffP(S.TrueBearing) and true) or false;
    elseif choice == "SIMC" then  
        if Player:BuffP(S.BladeFlurry) then
            GotGoodBuff = (RtB_Buffs() - num(Player:BuffP(S.SkullandCrossbones)) < 2 and (Player:BuffP(S.LoadedDiceBuff) or
            (not Player:BuffP(S.GrandMelee) and not Player:BuffP(S.RuthlessPrecision) and not Player:BuffP(S.Broadside)))) and true or false;
        elseif S.SnakeEyesPower:AzeriteRank() >= 2 then
           GotGoodBuff = (RtB_Buffs() < 2) and true or false;
            -- # Do not reroll if Snake Eyes is at 2+ stacks of the buff (1+ stack with Broadside up)
            -- actions+=/variable,name=rtb_reroll,op=reset,if=azerite.snake_eyes.rank>=2&buff.snake_eyes.stack>=2-buff.broadside.up
            if Player:BuffStackP(S.SnakeEyesBuff) >= 2 - num(Player:BuffP(S.Broadside)) then
                GotGoodBuff = false;
            end
        elseif S.Deadshot:AzeriteEnabled() or S.AceUpYourSleeve:AzeriteEnabled() then
            GotGoodBuff = (RtB_Buffs() < 2 and (Player:BuffP(S.LoadedDiceBuff) or
            Player:BuffRemainsP(S.RuthlessPrecision) <= S.BetweentheEyes:CooldownRemainsP())) and true or false;
        else
            GotGoodBuff = (RtB_Buffs() < 2 and (Player:BuffP(S.LoadedDiceBuff) or
           (not Player:BuffP(S.GrandMelee) and not Player:BuffP(S.RuthlessPrecision)))) and true or false;
        end
	else
        print("No Dice Data")
    end
    return GotGoodBuff
end

-- RtB rerolling strategy, return true if we should reroll
local function RtB_Reroll()

    --if not Cache.APLVar.RtB_Reroll then
	
        -- Defensive Override : Grand Melee if HP < 60
        if Action.GetToggle(2, "SoloMode") and Player:HealthPercentage() < Action.GetToggle(2, "RolltheBonesLeechHP") then
            Cache.APLVar.RtB_Reroll = (not S.SliceandDice:IsAvailable() and not Player:BuffP(S.GrandMelee)) and true or false;
        -- 1+ Buff
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "1BUFF" then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- Mythic+
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "MYTHICPLUS" then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- Broadside
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "AOESTRAT" and EnemiesCount >= 2 or (not Target:IsInBossList()) then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- Broadside
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "BROADSIDE" then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- Buried Treasure
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "BURIEDTREASURE" then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- Grand Melee
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "GRANDMELEE" then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- Skull and Crossbones
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "SKULLANDCROSS" then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- Ruthless Precision
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "RUTHLESSPRECISION" then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- True Bearing
        elseif Action.GetToggle(2, "RolltheBonesLogic") == "TRUEBEARING" then
            Cache.APLVar.RtB_Reroll = CheckGoodBuffs()
        -- SimC Default
        else
        -- # Reroll for 2+ buffs with Loaded Dice up. Otherwise reroll for 2+ or Grand Melee or Ruthless Precision.
        -- actions=variable,name=rtb_reroll,value=rtb_buffs<2&(buff.loaded_dice.up|!buff.grand_melee.up&!buff.ruthless_precision.up)
        -- # Reroll for 2+ buffs or Ruthless Precision with Deadshot Rank 2+.
        -- actions+=/variable,name=rtb_reroll,op=set,if=azerite.deadshot.enabled|azerite.ace_up_your_sleeve.enabled,value=rtb_buffs<2&(buff.loaded_dice.up|buff.ruthless_precision.remains<=cooldown.between_the_eyes.remains)
        -- # Always reroll for 2+ buffs with Snake Eyes.
        -- actions+=/variable,name=rtb_reroll,op=set,if=azerite.snake_eyes.rank>=2,value=rtb_buffs<2
        -- actions+=/variable,name=rtb_reroll,op=set,if=buff.blade_flurry.up,value=rtb_buffs-buff.skull_and_crossbones.up<2&(buff.loaded_dice.up|!buff.grand_melee.up&!buff.ruthless_precision.up&!buff.broadside.up)
            if Player:BuffP(S.BladeFlurry) then
                Cache.APLVar.RtB_Reroll = (RtB_Buffs() - num(Player:BuffP(S.SkullandCrossbones)) < 2 and (Player:BuffP(S.LoadedDiceBuff) or
                (not Player:BuffP(S.GrandMelee) and not Player:BuffP(S.RuthlessPrecision) and not Player:BuffP(S.Broadside)))) and true or false;
            elseif S.SnakeEyesPower:AzeriteRank() >= 2 then
                Cache.APLVar.RtB_Reroll = (RtB_Buffs() < 2) and true or false;
                -- # Do not reroll if Snake Eyes is at 2+ stacks of the buff (1+ stack with Broadside up)
                -- actions+=/variable,name=rtb_reroll,op=reset,if=azerite.snake_eyes.rank>=2&buff.snake_eyes.stack>=2-buff.broadside.up
                if Player:BuffStackP(S.SnakeEyesBuff) >= 2 - num(Player:BuffP(S.Broadside)) then
                    Cache.APLVar.RtB_Reroll = false;
                end
            elseif S.Deadshot:AzeriteEnabled() or S.AceUpYourSleeve:AzeriteEnabled() then
                Cache.APLVar.RtB_Reroll = (RtB_Buffs() < 2 and (Player:BuffP(S.LoadedDiceBuff) or
                Player:BuffRemainsP(S.RuthlessPrecision) <= S.BetweentheEyes:CooldownRemainsP())) and true or false;
            else
                Cache.APLVar.RtB_Reroll = (RtB_Buffs() < 2 and (Player:BuffP(S.LoadedDiceBuff) or
               (not Player:BuffP(S.GrandMelee) and not Player:BuffP(S.RuthlessPrecision)))) and true or false;
            end
			return true
        end
    --end
    return Cache.APLVar.RtB_Reroll;
end
-- # Condition to use Stealth cooldowns for Ambush
local function Ambush_Condition ()
    -- actions+=/variable,name=ambush_condition,value=combo_points.deficit>=2+2*(talent.ghostly_strike.enabled&cooldown.ghostly_strike.remains<1)+buff.broadside.up&energy>60&!buff.skull_and_crossbones.up&!buff.keep_your_wits_about_you.up
    return Player:ComboPointsDeficit() >= 2 + 2 * ((S.GhostlyStrike:IsAvailable() and S.GhostlyStrike:CooldownRemainsP() < 1) and 1 or 0)
    + (Player:Buff(S.Broadside) and 1 or 0) and Player:EnergyPredicted() > 60 and not Player:Buff(S.SkullandCrossbones) and not Player:BuffP(S.KeepYourWitsBuff);
end
-- actions+=/variable,name=bte_condition,value=buff.ruthless_precision.up|(azerite.deadshot.enabled|azerite.ace_up_your_sleeve.enabled)&buff.roll_the_bones.up
local function BtECondition ()
    return Player:BuffP(S.RuthlessPrecision) or (S.Deadshot:AzeriteEnabled() or S.AceUpYourSleeve:AzeriteEnabled()) and RtB_Buffs() >= 1;
end
-- # With multiple targets, this variable is checked to decide whether some CDs should be synced with Blade Flurry
-- actions+=/variable,name=blade_flurry_sync,value=spell_targets.blade_flurry<2&raid_event.adds.in>20|buff.blade_flurry.up
local function Blade_Flurry_Sync ()
    return not HR.AoEON() or EnemiesCount < 2 or Player:BuffP(S.BladeFlurry)
end

local function EnergyTimeToMaxRounded ()
    -- Round to the nearesth 10th to reduce prediction instability on very high regen rates
    return math.floor(Player:EnergyTimeToMaxPredicted() * 10 + 0.5) / 10;
end

local function MythicDungeon ()
    -- Sapped Soul
    if HL.MythicDungeon() == "Sapped Soul" then
        for i = 1, #SappedSoulSpells do
            if SappedSoulSpells[i][1]:IsCastable() and SappedSoulSpells[i][3]() then
                HR.ChangePulseTimer(1);
                HR.Cast(SappedSoulSpells[i][1]);
                return SappedSoulSpells[i][2];
            end
        end
    end
end

local function TrainingScenario ()
    if Target:CastName() == "Unstable Explosion" and Target:CastPercentage() > 60-10*Player:ComboPoints() then
        -- Between the Eyes
        if S.BetweentheEyes:IsCastable(20) and Player:ComboPoints() > 0 then
          if HR.Cast(S.BetweentheEyes) then return "Cast Between the Eyes (Training Scenario)"; end
        end
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
-- HeroLib EnemiesCount handler
local EnemyRanges = {"Melee", 6, 9}
local function UpdateRanges()
    for _, i in ipairs(EnemyRanges) do
        HL.GetEnemies(i);
    end
end

-- AoE Detection Mode
local function GetEnemiesCount(range)
    -- Unit Update - Update differently depending on if splash data is being used
    if HR.AoEON() then
        if Action.GetToggle(2, "AoeDetectionMode") == "USE COMBAT LOGS" then
	        return active_enemies()
	    elseif Action.GetToggle(2, "AoeDetectionMode") == "USE SPLASH DATA" then
            return active_enemies()
	    else 
            UpdateRanges()
            return Cache.EnemiesCount[range]
        end
    else
        return 1
    end
end

local function InitBurstCDTimer()
    if not Player:AffectingCombat() and Action.GetToggle(2, "TempBurst") and not Action.GetToggle(2, "CDs") then
	    -- Activate CDs if disabled but user got BurstMode
		Action.SetToggle({2, "CDs"})
		Action.Print("Auto Burst : Enabled CDs")
	else 
		if Action.GetToggle(2, "TempBurst") and Action.GetToggle(2, "CDs") and Player:AffectingCombat() then
	     	local burstCDtimer = HL.CombatTime()
		   	if burstCDtimer >= 10 then
		       	return true
		   	else
		       	return false
		   	end
	   	else 
	       	burstCDtimer = 0
	   	end
	end
end

local function ToggleBurstMode()    
    if Action.GetToggle(2, "TempBurst") and Action.GetToggle(2, "CDs") then
        if InitBurstCDTimer() then			
			--Action.SetToggle({2, "CDs"}, nil)
			Action.SetToggle({2, "CDs"})
			Action.Print("Auto Burst : Disabled CDs")
		else
		    return
        end
    else
	    return
	end
end

--- ======= ACTION LISTS =======
local function APL() 
    
	-- Action specifics remap
	local ShouldStop = Action.ShouldStop()
	local Pull = Action.BossMods_Pulling()	

    -- Unit Update
    BladeFlurryRange = S.AcrobaticStrikes:IsAvailable() and 9 or 6;
    InitBurstCDTimer()
    ToggleBurstMode()
	HL.GetEnemies(BladeFlurryRange);
    HL.GetEnemies("Melee");
	EnemiesCount = GetEnemiesCount(BladeFlurryRange)
	CheckGoodBuffs()
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
    
	-- Defensives
    -- Crimson Vial
    ShouldReturn = CrimsonVial(S.CrimsonVial);
    if ShouldReturn then return ShouldReturn; end
    -- Feint
    ShouldReturn = Feint(S.Feint);
    if ShouldReturn then return ShouldReturn; end
	
-- # Essences
local function Essences()
    -- blood_of_the_enemy,if=variable.blade_flurry_sync&cooldown.between_the_eyes.up&variable.bte_condition
    if S.BloodoftheEnemy:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and Blade_Flurry_Sync() and S.BetweentheEyes:CooldownUpP() and BtECondition() then
        if HR.Cast(S.BloodoftheEnemy) then return "Cast BloodoftheEnemy"; end
    end
    -- concentrated_flame,if=energy.time_to_max>1&!buff.blade_flurry.up&(!dot.concentrated_flame_burn.ticking&!action.concentrated_flame.in_flight|full_recharge_time<gcd.max)
    if S.ConcentratedFlame:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and Player:EnergyTimeToMaxPredicted() > 1 and not Player:BuffP(S.BladeFlurry) and (not Target:DebuffP(S.ConcentratedFlameBurn) and not Player:PrevGCD(1, S.ConcentratedFlame) or S.ConcentratedFlame:FullRechargeTime() < Player:GCD() + Player:GCDRemains()) then
        if HR.Cast(S.ConcentratedFlame) then return "Cast ConcentratedFlame"; end
    end
    -- guardian_of_azeroth
    if S.GuardianofAzeroth:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
        if HR.Cast(S.GuardianofAzeroth) then return "Cast GuardianofAzeroth"; end
    end
    -- focused_azerite_beam
    if S.FocusedAzeriteBeam:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
        if HR.Cast(S.FocusedAzeriteBeam) then return "Cast FocusedAzeriteBeam"; end
    end
    -- purifying_blast
    if S.PurifyingBlast:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
        if HR.Cast(S.PurifyingBlast) then return "Cast PurifyingBlast"; end
    end
    -- actions.essences+=/the_unbound_force,if=buff.reckless_force.up|buff.reckless_force_counter.stack<10
    if S.TheUnboundForce:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and (Player:BuffP(S.RecklessForceBuff) or Player:BuffStackP(S.RecklessForceCounter) < 10) then
        if HR.Cast(S.TheUnboundForce) then return "Cast TheUnboundForce"; end
    end
    -- ripple_in_space
    if S.RippleInSpace:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") then
        if HR.Cast(S.RippleInSpace) then return "Cast RippleInSpace"; end
    end
    -- worldvein_resonance,if=buff.lifeblood.stack<3
    if S.WorldveinResonance:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and Player:BuffStackP(S.LifebloodBuff) < 3 then
        if HR.Cast(S.WorldveinResonance) then return "Cast WorldveinResonance"; end
    end
    -- memory_of_lucid_dreams,if=energy<45
    if S.MemoryofLucidDreams:IsCastableP() and Action.GetToggle(1, "HeartOfAzeroth") and Player:EnergyPredicted() < 45 then
        if HR.Cast(S.MemoryofLucidDreams) then return "Cast MemoryofLucidDreams"; end
    end
    return false;
end

local function CDs()
    if Target:IsInRange(S.SinisterStrike) then
        -- actions.cds+=/call_action_list,name=essences,if=!stealthed.all
        if HR.CDsON() and not Player:IsStealthedP(true, true) then
            ShouldReturn = Essences();
            if ShouldReturn then return ShouldReturn; end
        end

        -- actions.cds+=/adrenaline_rush,if=!buff.adrenaline_rush.up&energy.time_to_max>1&(!equipped.azsharas_font_of_power|cooldown.latent_arcana.remains>20)
        if S.AdrenalineRush:IsCastableP() and HR.CDsON() and not Player:BuffP(S.AdrenalineRush) and EnergyTimeToMaxRounded() > 1 and (not I.FontOfPower:IsEquipped() or I.FontOfPower:CooldownRemains() > 20) then
            if HR.Cast(S.AdrenalineRush, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Adrenaline Rush"; end
        end

        -- actions.cds+=/marked_for_death,target_if=min:target.time_to_die,if=target.time_to_die<combo_points.deficit|((raid_event.adds.in>40|buff.true_bearing.remains>15-buff.adrenaline_rush.up*5)&!stealthed.rogue&combo_points.deficit>=cp_max_spend-1)
        if S.MarkedforDeath:IsCastable() then
            -- Note: Increased the SimC condition by 50% since we are slower.
            if Target:FilteredTimeToDie("<", Player:ComboPointsDeficit()*1.5) or (Target:FilteredTimeToDie("<", 2) and Player:ComboPointsDeficit() > 0)
            or (((Player:BuffRemainsP(S.TrueBearing) > 15 - (Player:BuffP(S.AdrenalineRush) and 5 or 0)) or Target:IsDummy())
            and not Player:IsStealthedP(true, true) and Player:ComboPointsDeficit() >= CPMaxSpend() - 1) then
                if HR.Cast(S.MarkedforDeath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Marked for Death"; end
            elseif not Player:IsStealthedP(true, true) and Player:ComboPointsDeficit() >= CPMaxSpend() - 1 then
                HR.Cast(S.MarkedforDeath);
            end
        end
        if HR.CDsON() then
            -- actions.cds+=/blade_flurry,if=spell_targets.blade_flurry>=2&!buff.blade_flurry.up
            if HR.AoEON() and S.BladeFlurry:IsCastable() and EnemiesCount >= 2 and not Player:BuffP(S.BladeFlurry) then
                if Action.GetToggle(2, "OffGCDasOffGCD") then
                    HR.Cast(S.BladeFlurry);
                else
                    if HR.Cast(S.BladeFlurry) then return "Cast Blade Flurry"; end
                end
            end
            if Blade_Flurry_Sync() then
                -- actions.cds+=/ghostly_strike,if=variable.blade_flurry_sync&combo_points.deficit>=1+buff.broadside.up
                if S.GhostlyStrike:IsCastableP(S.SinisterStrike) and Player:ComboPointsDeficit() >= (1 + (Player:BuffP(S.Broadside) and 1 or 0)) then
                    if HR.Cast(S.GhostlyStrike, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Ghostly Strike"; end
                end
                -- actions.cds+=/killing_spree,if=variable.blade_flurry_sync&(energy.time_to_max>5|energy<15)
                if S.KillingSpree:IsCastableP(10) and (EnergyTimeToMaxRounded() > 5 or Player:EnergyPredicted() < 15) then
                    if HR.Cast(S.KillingSpree) then return "Cast Killing Spree"; end
                end
                -- actions.cds+=/blade_rush,if=variable.blade_flurry_sync&energy.time_to_max>1
                if S.BladeRush:IsCastableP(S.SinisterStrike) and EnergyTimeToMaxRounded() > 1 then
                    if HR.Cast(S.BladeRush, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Blade Rush"; end
                end
            end
            if Action.GetToggle(2, "UseDPSVanish") and not Player:IsStealthedP(true, true) then
                -- # Using Vanish/Ambush is only a very tiny increase, so in reality, you're absolutely fine to use it as a utility spell.
                -- actions.cds+=/vanish,if=!stealthed.all&variable.ambush_condition
                if S.Vanish:IsCastable() and Ambush_Condition() then
                    if HR.Cast(S.Vanish, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Vanish"; end
                end
                -- actions.cds+=/shadowmeld,if=!stealthed.all&variable.ambush_condition
                if S.Shadowmeld:IsCastable() and Ambush_Condition() then
                    if HR.Cast(S.Shadowmeld, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Shadowmeld"; end
                end
            end
        end

        -- actions.cds=potion,if=buff.bloodlust.react|target.time_to_die<=60|buff.adrenaline_rush.up

        -- Trinkets
        -- actions.cds+=/use_item,if=buff.bloodlust.react|target.time_to_die<=20|combo_points.deficit<=2
        if (true) then
            if I.GalecallersBoon:IsEquipped() and I.GalecallersBoon:IsReady() and TrinketON() then
               if HR.Cast(I.GalecallersBoon) then return "Cast GalecallersBoon"; end
            end
            if I.LustrousGoldenPlumage:IsEquipped() and I.LustrousGoldenPlumage:IsReady() and TrinketON() then
                if HR.Cast(I.LustrousGoldenPlumage) then return "Cast LustrousGoldenPlumage"; end
            end
            if I.InvocationOfYulon:IsEquipped() and I.InvocationOfYulon:IsReady() and TrinketON() then
                if HR.Cast(I.InvocationOfYulon) then return "Cast InvocationOfYulon"; end
            end
            -- actions.cds+=/use_item,name=azsharas_font_of_power,if=!buff.adrenaline_rush.up&!buff.blade_flurry.up&cooldown.adrenaline_rush.remains<15
            if I.FontOfPower:IsEquipped() and I.FontOfPower:IsReady() and TrinketON() and not Player:BuffP(S.AdrenalineRush) and not Player:BuffP(S.BladeFlurry) and S.AdrenalineRush:CooldownRemainsP() < 15 then
                if HR.Cast(I.FontOfPower) then return "Cast FontOfPower"; end
            end
            -- if=!stealthed.all&buff.adrenaline_rush.down&buff.memory_of_lucid_dreams.down&energy.time_to_max>4&rtb_buffs<5
            if I.ComputationDevice:IsEquipped() and I.ComputationDevice:IsReady() and TrinketON() and not Player:IsStealthedP(true, true)
            and not Player:BuffP(S.AdrenalineRush) and not Player:BuffP(S.LucidDreamsBuff) and EnergyTimeToMaxRounded() > 4 and RtB_Buffs() < 5 then
                if HR.Cast(I.ComputationDevice) then return "Cast ComputationDevice"; end
            end
            -- actions.cds+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down|debuff.conductive_ink_debuff.up&target.health.pct<32&target.health.pct>=30|!debuff.conductive_ink_debuff.up&(debuff.razor_coral_debuff.stack>=20-10*debuff.blood_of_the_enemy.up|target.time_to_die<60)&buff.adrenaline_rush.remains>18
            if I.RazorCoral:IsEquipped() and I.RazorCoral:IsReady() and TrinketON() then
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
                        CastRazorCoral = (S.RazorCoralDebuff:MaxDebuffStackP() >= 20 - 10 * num(Target:DebuffP(S.BloodoftheEnemyDebuff)) or Target:FilteredTimeToDie("<", 60))
                        and Player:BuffRemainsP(S.AdrenalineRush) > 18 or (Target:IsInBossList() and Target:FilteredTimeToDie("<", 20));
                    end
                end
                if CastRazorCoral then
                    if HR.Cast(I.RazorCoral) then return "Cast RazorCoral"; end
                end
            end
            -- Emulate SimC default behavior to use at max stacks
            if I.VigorTrinket:IsEquipped() and I.VigorTrinket:IsReady() and TrinketON() and Player:BuffStack(S.VigorTrinketBuff) == 6 then
                if HR.Cast(I.VigorTrinket) then return "Cast VigorTrinket"; end
            end
        end

        -- Racials
        if HR.CDsON() then
            -- actions.cds+=/blood_fury
            if S.BloodFury:IsCastable() then
                if HR.Cast(S.BloodFury, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Blood Fury"; end
            end
            -- actions.cds+=/berserking
            if S.Berserking:IsCastable() then
                if HR.Cast(S.Berserking, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Berserking"; end
            end
            -- actions.cds+=/fireblood
            if S.Fireblood:IsCastable() then
                if HR.Cast(S.Fireblood, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Fireblood"; end
            end
            -- actions.cds+=/ancestral_call
            if S.AncestralCall:IsCastable() then
                if HR.Cast(S.AncestralCall, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Ancestral Call"; end
            end
        end
    end
end

local function Stealth()
    if Target:IsInRange(S.SinisterStrike) then
        -- actions.stealth=ambush
        if S.Ambush:IsCastable() then
            if HR.Cast(S.Ambush) then return "Cast Ambush"; end
        end
    end
end

local function Finish()
    -- # BtE over RtB rerolls with 2+ Deadshot traits or Ruthless Precision.
    -- actions.finish=between_the_eyes,if=variable.bte_condition
    if S.BetweentheEyes:IsCastableP(20) and BtECondition() then
        if HR.Cast(S.BetweentheEyes) then return "Cast Between the Eyes (Pre RtB)"; end
    end
    -- actions.finish=slice_and_dice,if=buff.slice_and_dice.remains<target.time_to_die&buff.slice_and_dice.remains<(1+combo_points)*1.8
    -- Note: Added Player:BuffRemainsP(S.SliceandDice) == 0 to maintain the buff while TTD is invalid (it's mainly for Solo, not an issue in raids)
    if S.SliceandDice:IsAvailable() and S.SliceandDice:IsCastableP()
    and (Target:FilteredTimeToDie(">", Player:BuffRemainsP(S.SliceandDice)) or Target:TimeToDieIsNotValid() or Player:BuffRemainsP(S.SliceandDice) == 0)
    and Player:BuffRemainsP(S.SliceandDice) < (1 + Player:ComboPoints()) * 1.8 then
        if HR.Cast(S.SliceandDice) then return "Cast Slice and Dice"; end
    end
    -- actions.finish+=/roll_the_bones,if=buff.roll_the_bones.remains<=3|variable.rtb_reroll
    if S.RolltheBones:IsCastable() and (RtB_BuffRemains() <= 3 or RtB_Reroll()) then
        if HR.Cast(S.RolltheBones) then return "Cast Roll the Bones"; end
    end
    -- # BtE with the Ace Up Your Sleeve or Deadshot traits.
    -- actions.finish+=/between_the_eyes,if=azerite.ace_up_your_sleeve.enabled|azerite.deadshot.enabled
    if S.BetweentheEyes:IsCastableP(20) and (S.AceUpYourSleeve:AzeriteEnabled() or S.Deadshot:AzeriteEnabled()) then
        if HR.Cast(S.BetweentheEyes) then return "Cast Between the Eyes"; end
    end
    -- actions.finish+=/dispatch
    if S.Dispatch:IsCastable(S.Dispatch) then
        if HR.Cast(S.Dispatch) then return "Cast Dispatch"; end
    end
    -- OutofRange BtE
    if S.BetweentheEyes:IsCastableP(20) and not Target:IsInRange(10) then
        if HR.Cast(S.BetweentheEyes) then return "Cast Between the Eyes (OOR)"; end
    end
end

local function Build()
    -- actions.build=pistol_shot,if=buff.opportunity.up&(buff.keep_your_wits_about_you.stack<10|buff.deadshot.up|energy<45)
    if S.PistolShot:IsCastable(20) and Player:BuffP(S.Opportunity) and (Player:BuffStackP(S.KeepYourWitsBuff) < 10 or Player:BuffP(S.DeadshotBuff) or Player:EnergyPredicted() < 45) then
        if HR.Cast(S.PistolShot) then return "Cast Pistol Shot"; end
    end
    -- actions.build+=/sinister_strike
    if S.SinisterStrike:IsCastable(S.SinisterStrike) then
        if HR.Cast(S.SinisterStrike) then return "Cast Sinister Strike"; end
    end
end

    -- Out of Combat
    if not Player:AffectingCombat() then
        -- Precombat CDs
        if HR.CDsON() then
            --if Everyone.TargetIsValid() then
                if S.MarkedforDeath:IsCastableP() and Player:ComboPointsDeficit() >= CPMaxSpend() then
                    if HR.Cast(S.MarkedforDeath, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Marked for Death (OOC)"; end
                end
                local usingTrinket = false;
                -- actions.precombat+=/use_item,name=azsharas_font_of_power
                if I.FontOfPower:IsEquipped() and I.FontOfPower:IsReady() then
                usingTrinket = true;
                    if HR.Cast(I.FontOfPower) then return "Cast Font of Power"; end
                end
                -- actions.precombat+=/use_item,effect_name=cyclotronic_blast,if=!raid_event.invulnerable.exists
                if I.ComputationDevice:IsEquipped() and I.ComputationDevice:IsReady() then
                    usingTrinket = true;
                    if HR.Cast(I.ComputationDevice) then return "Cast Computation Device"; end
                end
                -- AR
                if Action.GetToggle(2, "PrecombatAR") and HR.CDsON() and not usingTrinket and S.AdrenalineRush:IsCastableP() and not Player:BuffP(S.AdrenalineRush) then
                    if HR.Cast(S.AdrenalineRush, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Adrenaline Rush (OOC)"; end
                end
            --end
        end
        -- Stealth
        if not Player:Buff(S.VanishBuff) then
            ShouldReturn = Stealth(S.Stealth);
            if ShouldReturn then return ShouldReturn; end
        end
        -- Flask
        -- Food
        -- Rune
        -- PrePot w/ Bossmod Countdown
        -- Opener
        --if Everyone.TargetIsValid() then
            if Player:ComboPoints() >= 5 then
                ShouldReturn = Finish();
                if ShouldReturn then return "Finish: " .. ShouldReturn; end
            elseif Target:IsInRange(S.SinisterStrike) then
                if Player:IsStealthedP(true, true) and S.Ambush:IsCastable() then
                    if HR.Cast(S.Ambush) then return "Cast Ambush (Opener)"; end
                elseif S.SinisterStrike:IsCastable() then
                    if HR.Cast(S.SinisterStrike) then return "Cast Sinister Strike (Opener)"; end
                end
            end
        --end
        return;
    end

    -- In Combat
    -- MfD Sniping
    MfDSniping(S.MarkedforDeath);
      
	if Player:AffectingCombat() then
		
		-- Mythic Dungeon
        ShouldReturn = MythicDungeon();
        if ShouldReturn then return ShouldReturn; end
        
		-- Training Scenario
        ShouldReturn = TrainingScenario();
        if ShouldReturn then return ShouldReturn; end
        
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

        -- actions+=/call_action_list,name=stealth,if=stealthed.all
        if Player:IsStealthedP(true, true) then
            ShouldReturn = Stealth();
            if ShouldReturn then return "Stealth: " .. ShouldReturn; end
        end
        -- actions+=/call_action_list,name=cds
        ShouldReturn = CDs();
        if ShouldReturn and HR.CDsON() then return "CDs: " .. ShouldReturn; end
        -- actions+=/run_action_list,name=finish,if=combo_points>=cp_max_spend-(buff.broadside.up+buff.opportunity.up)*(talent.quick_draw.enabled&(!talent.marked_for_death.enabled|cooldown.marked_for_death.remains>1))
        if Player:ComboPoints() >= CPMaxSpend() - (num(Player:BuffP(S.Broadside)) + num(Player:BuffP(S.Opportunity))) * num(S.QuickDraw:IsAvailable() and (not S.MarkedforDeath:IsAvailable() or S.MarkedforDeath:CooldownRemainsP() > 1)) then
            ShouldReturn = Finish();
            if ShouldReturn then return "Finish: " .. ShouldReturn; end
            -- run_action_list forces the return
            return "Waiting to Finish..."
        end
        -- actions+=/call_action_list,name=build
        ShouldReturn = Build();
        if ShouldReturn then return "Build: " .. ShouldReturn; end
        -- actions+=/arcane_torrent,if=energy.deficit>=15+energy.regen
        if S.ArcaneTorrent:IsCastableP(S.SinisterStrike) and Player:EnergyDeficitPredicted() > 15 + Player:EnergyRegen() then
            if HR.Cast(S.ArcaneTorrent, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Arcane Torrent"; end
        end
        -- actions+=/arcane_pulse
        if S.ArcanePulse:IsCastableP(S.SinisterStrike) then
            if HR.Cast(S.ArcanePulse) then return "Cast Arcane Pulse"; end
        end
        -- actions+=/lights_judgment
        --if S.LightsJudgment:IsCastableP(S.SinisterStrike) then
        --    if HR.Cast(S.LightsJudgment, Action.GetToggle(2, "OffGCDasOffGCD")) then return "Cast Lights Judgment"; end
        --end
        -- OutofRange Pistol Shot
        if not Target:IsInRange(BladeFlurryRange) and S.PistolShot:IsCastable(20) and not Player:IsStealthedP(true, true)
            and Player:EnergyDeficitPredicted() < 25 and (Player:ComboPointsDeficit() >= 1 or EnergyTimeToMaxRounded() <= 1.2) then
            if HR.Cast(S.PistolShot) then return "Cast Pistol Shot (OOR)"; end
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

