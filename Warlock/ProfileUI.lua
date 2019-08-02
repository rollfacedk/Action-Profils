ACTION_CONST_WARLOCK_AFFLI = 265
ACTION_CONST_WARLOCK_DEMO_ = 266
ACTION_CONST_WARLOCK_DESTRU = 267

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local A = Action
A.Data.ProfileEnabled[TMW.db:GetCurrentProfile()] = true
A.Data.ProfileUI = {    
    DateTime = "v4 (01.08.2019)",
    [2] = {        
        [ACTION_CONST_WARLOCK_AFFLI] = {             
            { -- [1]                            
                {
                    E = "Checkbox", 
                    DB = "mouseover",
                    DBV = true,
                    L = { 
                        enUS = "Use @mouseover", 
                        ruRU = "Использовать @mouseover", 
                    }, 
                    TT = { 
                        enUS = "Will unlock use actions for @mouseover units\nExample: Resuscitate, Healing", 
                        ruRU = "Разблокирует использование действий для @mouseover юнитов\nНапример: Воскрешение, Хилинг", 
                    }, 
                    M = {},
                },
                {
                    E = "Checkbox", 
                    DB = "AoE",
                    DBV = true,
                    L = { 
                        enUS = "Use AoE", 
                        ruRU = "Использовать AoE", 
                    }, 
                    TT = { 
                        enUS = "Enable multiunits actions", 
                        ruRU = "Включает действия для нескольких целей", 
                    }, 
                    M = {},
                },                    
            }, 
            { -- [2]
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "Level 2", value = 2 },
                        { text = "Level 3", value = 3 },
                        { text = "Level 4", value = 4 },
                        { text = "Level 5", value = 5 },
                        { text = "AUTO", value = 0 },
                    },
                    DB = "ShouldPurify",
                    DBV = 0, 
                    L = { 
                        ANY = A.GetSpellInfo(119582),
                    }, 
                    TT = { 
                        enUS = "Stagger level on which need\nPurifying Brew (5 super high, 1 very low)", 
                        ruRU = "Уровень пошатывания на котором\nнужно Очищаться отваром (5 супер много, 1 очень мало)", 
                    }, 
                    M = {},                                    
                },        
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "FortifyingBrew",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(115176) .. " (%)",
                    }, 
                    M = {},
                },
            },
            { -- [3]    
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 85,                            
                    DB = "HealingElixir",
                    DBV = 85,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(122281) .. " (%)",
                    }, 
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "Guard",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(115295) .. " (" .. A.GetSpellInfo(124255) .. " %)",    
                    }, 
                    M = {},
                },
            }, 
            { -- [4]     
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "DampenHarm",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(122278) .. " (%)",                        
                    }, 
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "FortifyingBrew",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(115203) .. " (%)",
                    }, 
                    M = {},
                },
            }, 
            { -- [5]    
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "ZenMeditation",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(115176) .. " (%)",                        
                    }, 
                    M = {},
                },
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "Invoke Niuzao the BlackOx", value = 1 },
                        { text = "Summon BlackOx Statue", value = 2 },
                        { text = "Provoke On BlackOx Statue", value = 3 },
                    },
                    MULT = true,
                    DB = "AdditionalTaunt",
                    DBV = {
                        [1] = true, 
                        [2] = true,
                        [3] = true,
                    }, 
                    L = { 
                        enUS = "Additional Taunt",
                        ruRU = "Дополнительный Таунт",
                    }, 
                    M = {},                                    
                },    
            }, 
            { -- [6]
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "Stoneform",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(20594) .. " (%)",                        
                    }, 
                    M = {},
                },
                {
                    E = "LayoutSpace",                                                                         
                },
            }, 
            { -- [7]
                {
                    E = "Header",
                    L = {
                        ANY = " -- PvP -- ",
                    },
                },
            },
            { -- [8]
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "Only Heal", value = "Heal" },
                        { text = "Only PvP", value = "PvP" },
                        { text = "BOTH", value = "BOTH" },
                        { text = "OFF", value = "OFF" },
                    },
                    DB = "ParalysisPvP",
                    DBV = "BOTH",
                    L = { 
                        ANY = "PvP " .. A.GetSpellInfo(115078),
                    }, 
                    TT = { 
                        enUS = "@arena1-3 interrupt PvP list from 'Interrupts' tab by Paralysis\nMore custom config you can find in group by open /tmw", 
                        ruRU = "@arena1-3 прерывание Параличом PvP списка из вкладки 'Прерывания'\nБольше кастомизации вы найдете в группе открыв /tmw", 
                    }, 
                    M = {},
                },
            }, 
        },
    },
    [7] = {
        [ACTION_CONST_WARLOCK_AFFLI] = { 
            ["stun"] = { Enabled = true, Key = "LegSweep", LUA = [[
                return     Unit("player"):HasBuffs(Action[PlayerSpec].ZenMeditation.ID, true) == 0 and 
                        (
                            ( 
                                not Unit(thisunit):IsEnemy() and 
                                (
                                    (
                                        not InPvP() and 
                                        AoE(1, 5) 
                                    ) or 
                                    (
                                        InPvP() and 
                                        EnemyTeam():PlayersInRange(1, 5)
                                    ) 
                                )
                            ) or 
                            ( 
                                Unit(thisunit):IsEnemy() and 
                                Unit(thisunit):GetRange() <= 5 and 
                                Unit(thisunit):IsControlAble("stun", 0) and
                                Action[PlayerSpec].LegSweep:AbsentImun(thisunit, {"StunImun", "TotalImun", "DamagePhysImun", "CCTotalImun"}, true) 
                            )                
                        ) 
            ]] },
            ["kick"] = { Enabled = true, Key = "SpearHandStrike", LUA = [[
                return     Unit("player"):HasBuffs(Action[PlayerSpec].ZenMeditation.ID, true) == 0 and
                        SpellInRange(thisunit, Action[PlayerSpec].SpearHandStrike.ID) and 
                        select(2, CastTime(nil, thisunit)) > 0 and 
                        Action[PlayerSpec].SpearHandStrike:AbsentImun(thisunit, {"KickImun", "TotalImun", "DamagePhysImun"}, true) 
            ]] },
            ["freedom"] = { Enabled = true, Key = "TigersLust", LUA = [[
                return     Unit("player"):HasBuffs(Action[PlayerSpec].ZenMeditation.ID, true) == 0 and 
                        TalentLearn(Action[PlayerSpec].TigersLust.ID) and 
                        SpellInRange(thisunit, Action[PlayerSpec].TigersLust.ID) and 
                        Action[PlayerSpec].TigersLust:AbsentImun(thisunit) and 
                        Action.LossOfControlIsMissed("SILENCE") and 
                        LossOfControlGet("SCHOOL_INTERRUPT", "NATURE") == 0
            ]] },
            ["dispel"] = { Enabled = true, Key = "Detox", LUA = [[
                return     Unit("player"):HasBuffs(Action[PlayerSpec].ZenMeditation.ID, true) == 0 and 
                        SpellInRange(thisunit, Action[PlayerSpec].Detox.ID) and 
                        Action.AuraIsValid(thisunit, "UseDispel", "Dispel") and                         
                        Action[PlayerSpec].Detox:AbsentImun(thisunit) and 
                        Action.LossOfControlIsMissed("SILENCE") and 
                        LossOfControlGet("SCHOOL_INTERRUPT", "NATURE") == 0
            ]] },
        },
        [ACTION_CONST_WARLOCK_AFFLI] = {
            ["stun"] = { Enabled = true, Key = "LegSweep", LUA = [[
                return     (
                            not InPvP() and 
                            AoE(1, 5 + (TalentLearn(Action[PlayerSpec].TigerTailSweep.ID) and 2 or 0)) 
                        ) or 
                        (
                            InPvP() and 
                            EnemyTeam():PlayersInRange(1, 5 + (TalentLearn(Action[PlayerSpec].TigerTailSweep.ID) and 2 or 0))
                        )                                                     
            ]] },
            ["disarm"] = { Enabled = true, Key = "GrappleWeapon", LUA = [[
                return     GrappleWeaponIsReady(thisunit, true)
            ]] },
            ["kick"] = { Enabled = true, Key = "SpearHandStrike", LUA = [[
                return     SpellInRange(thisunit, Action[PlayerSpec].SpearHandStrike.ID) and 
                        select(2, CastTime(nil, thisunit)) > 0 and 
                        Action[PlayerSpec].SpearHandStrike:AbsentImun(thisunit, {"KickImun", "TotalImun", "DamagePhysImun"}, true) 
            ]] },
            ["freedom"] = { Enabled = true, Key = "TigersLust", LUA = [[
                return     TalentLearn(Action[PlayerSpec].TigersLust.ID) and 
                        SpellInRange(thisunit, Action[PlayerSpec].TigersLust.ID) and 
                        Action[PlayerSpec].TigersLust:AbsentImun(thisunit) and 
                        Action.LossOfControlIsMissed("SILENCE") and 
                        LossOfControlGet("SCHOOL_INTERRUPT", "NATURE") == 0
            ]] },
            ["dispel"] = { Enabled = true, Key = "Detox", LUA = [[
                return     SpellInRange(thisunit, Action[PlayerSpec].Detox.ID) and 
                        Action.AuraIsValid(thisunit, "UseDispel", "Dispel") and                         
                        Action[PlayerSpec].Detox:AbsentImun(thisunit) and 
                        Action.LossOfControlIsMissed("SILENCE") and 
                        LossOfControlGet("SCHOOL_INTERRUPT", "NATURE") == 0
            ]] },    
            ["heal"] = { Enabled = true, Key = "ReverseHarm", LUA = [[
                return     PvPTalentLearn(Action[PlayerSpec].ReverseHarm.ID) and
                        SpellInRange(thisunit, Action[PlayerSpec].ReverseHarm.ID) and                                                     
                        Action[PlayerSpec].ReverseHarm:AbsentImun(thisunit) and 
                        Action.LossOfControlIsMissed("SILENCE") and 
                        LossOfControlGet("SCHOOL_INTERRUPT", "NATURE") == 0 and 
                        UNITHP(thisunit) <= 92
            ]] },
        },
    },
}

-- Shared 
Env.PlayerMovementStarted = 0
function Env.PlayerMoving()
    if Env.UNITCurrentSpeed("player") > 0 then 
        if Env.PlayerMovementStarted == 0 then 
            Env.PlayerMovementStarted = TMW.time 
        end 
    else
        Env.PlayerMovementStarted = 0
    end 
end 
Env.PlayerMoving = A.MakeFunctionCachedStatic(Env.PlayerMoving)

-----------------------------------------
--                   PvP  
-----------------------------------------
function Env.GrappleWeaponIsReady(unit, isMsg)
    if A[Env.PlayerSpec].GrappleWeapon then 
        local unitID = A.GetToggle(2, "GrappleWeaponPvPunits")
        return     (
            (unit == "arena1" and unitID[1]) or 
            (unit == "arena2" and unitID[2]) or
            (unit == "arena3" and unitID[3]) or
            (not unit:match("arena") and unitID[4]) 
        ) and 
        Env.InPvP() and
        Env.PvPTalentLearn(A[Env.PlayerSpec].GrappleWeapon.ID) and 
        Env.Unit(unit):IsEnemy() and  
        (
            (
                not isMsg and 
                A.GetToggle(2, "GrappleWeaponPvP") ~= "OFF" and 
                A[Env.PlayerSpec].GrappleWeapon:IsReady(unit) and 
                Env.Unit(unit):IsMelee() and 
                (
                    A.GetToggle(2, "GrappleWeaponPvP") == "ON COOLDOWN" or 
                    Env.Unit(unit):HasBuffs("DamageBuffs") > 3 
                )
            ) or 
            (
                isMsg and 
                A[Env.PlayerSpec].GrappleWeapon:IsReadyP(unit)                     
            )
        ) and 
        UnitIsPlayer(unit) and                     
        A[Env.PlayerSpec].GrappleWeapon:AbsentImun(unit, {"CCTotalImun", "DamagePhysImun", "TotalImun"}, true) and 
        Env.Unit(unit):IsControlAble("disarm", 0) and 
        Env.Unit(unit):HasDeBuffs("Disarmed") == 0
    end 
end 

function Env.Main_CastBars(unit, list)
    if not A.IsInitialized or Env.IamHealer or not Env.InPvP() then 
        return false 
    end 
    
    if A[Env.PlayerSpec] and A[Env.PlayerSpec].SpearHandStrike and A[Env.PlayerSpec].SpearHandStrike:IsReadyP(unit, nil, true) and A[Env.PlayerSpec].SpearHandStrike:AbsentImun(unit, {"KickImun", "TotalImun", "DamagePhysImun"}, true) and A.InterruptIsValid(unit, list) then 
        return true         
    end 
end 

function Env.Second_CastBars(unit)
    if not A.IsInitialized or not Env.InPvP() then 
        return false 
    end 
    
    local Toggle = A.GetToggle(2, "ParalysisPvP")    
    if Toggle and Toggle ~= "OFF" and A[Env.PlayerSpec] and A[Env.PlayerSpec].Paralysis and A[Env.PlayerSpec].Paralysis:IsReadyP(unit, nil, true) and A[Env.PlayerSpec].Paralysis:AbsentImun(unit, {"CCTotalImun", "TotalImun", "DamagePhysImun"}, true) and Env.Unit(unit):IsControlAble("incapacitate", 0) then 
        if Toggle == "BOTH" then 
            return select(2, A.InterruptIsValid(unit, "Heal", true)) or select(2, A.InterruptIsValid(unit, "PvP", true)) 
        else
            return select(2, A.InterruptIsValid(unit, Toggle, true))         
        end 
    end 
end 



