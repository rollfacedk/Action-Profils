--------------------
-- Taste TMW Action ProfileUI
-- Last Update : 05/08/2019

ACTION_CONST_ROGUE_OUT = 260
ACTION_CONST_ROGUE_ASS = 259
ACTION_CONST_ROGUE_SUB = 261

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local A = Action
A.Data.ProfileEnabled[TMW.db:GetCurrentProfile()] = true
A.Data.ProfileUI = {    
    DateTime = "v4 (01.08.2019)",
    -- Class settings
    [2] = {        
        [ACTION_CONST_ROGUE_OUT] = {       
            { -- [7]
                {
                    E = "Header",
                    L = {
                        ANY = " -- General -- ",
                    },
                },
            },			
            { -- [1] 1st Row                           
                {
                    E = "Checkbox", 
                    DB = "mouseover",
                    DBV = true,
                    L = { 
                        enUS = "Use @mouseover", 
                        ruRU = "Использовать @mouseover", 
                        frFR = "Utiliser les fonctions @mouseover",
                    }, 
                    TT = { 
                        enUS = "Will unlock use actions for @mouseover units\nExample: Resuscitate, Healing", 
                        ruRU = "Разблокирует использование действий для @mouseover юнитов\nНапример: Воскрешение, Хилинг", 
                        frFR = "Activera les actions via @mouseover\n Exemple: Ressusciter, Soigner",
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
                        frFR = "Utiliser l'AoE"
                    }, 
                    TT = { 
                        enUS = "Enable multiunits actions", 
                        ruRU = "Включает действия для нескольких целей", 
                        frFR = "Activer les actions multi-unités",
                    }, 
                    M = {},
                }, 
                {
                    E = "Checkbox", 
                    DB = "CDs",
                    DBV = true,
                    L = { 
                        enUS = "Use Cooldowns", 
                        ruRU = "Использовать Cooldowns", 
                        frFR = "Utiliser les Cooldowns"
                    }, 
                    TT = { 
                        enUS = "Enable cooldowns usage in rotation", 
                        ruRU = "Включить использование перезарядки в ротации", 
                        frFR = "Activer l'usage des cooldowns par la rotation",
                    }, 
                    M = {},
                },   
                {
                    E = "Checkbox", 
                    DB = "OffGCDasOffGCD",
                    DBV = true,
                    L = { 
                        enUS = "Use spells OffGCD", 
                        ruRU = "Используйте заклинания OffGCD", 
                        frFR = "Utiliser les spells OffGCD",
                    }, 
                    TT = { 
                        enUS = "Will force certains spells to be used as off GCD", 
                        ruRU = "Вынудит определенные заклинания использоваться как вне GCD", 
                        frFR = "Forcera certains spells à être utilisés sur le GCD",
                    }, 
                    M = {},
                }, 				
            }, 
            { -- [2] 2nd Row
                {
                    E = "Checkbox", 
                    DB = "StealthOOC",
                    DBV = true,
                    L = { 
                        enUS = "Stealth Reminder (OOC)", 
                        ruRU = "Stealth Reminder (OOC)", 
                        frFR = "Stealth Reminder (OOC)",
                    }, 
                    TT = { 
                        enUS = "Show Stealth Reminder when out of combat.", 
                        ruRU = "Show Stealth Reminder when out of combat.", 
                        frFR = "Show Stealth Reminder when out of combat.",
                    }, 
                    M = {},
                }, 
                {
                    E = "Checkbox", 
                    DB = "UseDPSVanish",
                    DBV = true,
                    L = { 
                        enUS = "Use Vanish for DPS", 
                        ruRU = "Use Vanish for DPS", 
                        frFR = "Use Vanish for DPS",
                    }, 
                    TT = { 
                        enUS = "Suggest Vanish -> Ambush for DPS.Disable to save Vanish for utility purposes.", 
                        ruRU = "Suggest Vanish -> Ambush for DPS.Disable to save Vanish for utility purposes.", 
                        frFR = "Suggest Vanish -> Ambush for DPS.Disable to save Vanish for utility purposes.",
                    }, 
                    M = {},
                }, 
                {
                    E = "Checkbox", 
                    DB = "PrecombatAR",
                    DBV = true,
                    L = { 
                        enUS = "Show Precombat Adrenaline Rush", 
                        ruRU = "Показать предкомбат адреналина", 
                        frFR = "Montrer Pousée d'Adrenaline en Precombat",
                    }, 
                    TT = { 
                        enUS = "Display Adrenaline Rush when outside of combat with a valid target.", 
                        ruRU = "Показывать выброс адреналина, когда вне боя с действительной целью.", 
                        frFR = "Affichez la poussée d'adrénaline en dehors du combat avec une cible valide.",
                    }, 
                    M = {},
                }, 
                {
                    E = "Checkbox", 
                    DB = "SoloMode",
                    DBV = false,
                    L = { 
                        enUS = "Activate Solo Mode", 
                        ruRU = "Активировать Solo Mode", 
                        frFR = "Activer le mode solo",
                    }, 
                    TT = { 
                        enUS = "Activate Solo Mode to prioritize survivability over DPS.", 
                        ruRU = "Активируйте Solo Mode для определения приоритета выживаемости над DPS", 
                        frFR = "Activez le mode solo pour donner la priorité aux capacités de survie par rapport à DPS.",
                    }, 
                    M = {},
                }, 						
            },
            { -- [4] 4th Row

                {
                    E = "LayoutSpace",                                                                         
                },
            },
            { -- [7] 
                {
                    E = "Header",
                    L = {
                        ANY = " -- Defensives -- ",
                    },
                },
            },
            { -- [3] 3rd Row 
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "RolltheBonesLeechHP",
                    DBV = 60, -- Set healthpercentage @60% life. 
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(193316) .. " (%)",
                    }, 
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "CrimsonVialHP",
                    DBV = 60, -- Set healthpercentage @60% life. 
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(185311) .. " (%)",
                    }, 
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "FeintHP",
                    DBV = 70, -- Set healthpercentage @70% life. 
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(1966) .. " (%)",
                    }, 
                    M = {},
                },
            },
            { -- [4] 4th Row
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "SimC", value = "SIMC" },
						{ text = "Mythic +", value = "MYTHICPLUS" },
						{ text = "AoE Strat", value = "AOESTRAT" },
                        { text = "1+ Buff", value = "1BUFF" },                    
                        { text = "Broadside", value = "BROADSIDE" },
                        { text = "Buried Treasure", value = "BURIEDTREASURE" },
						{ text = "Grand Melee", value = "GRANDMELEE" },
						{ text = "Skull and Crossbones", value = "SKULLANDCROSS" },
						{ text = "Ruthless Precision", value = "RUTHLESSPRECISION" },
						{ text = "True Bearing", value = "TRUEBEARING" },							
                    },
                    DB = "RolltheBonesLogic",
                    DBV = "SIMC",
                    L = { 
                        enUS = "Roll the Bones Logic", 
                        ruRU = "Бросок костей Логика", 
                        frFR = "Logique pour les Jet d’osselets",
                    }, 
                    TT = { 
                        enUS = "Define the Roll the Bones logic to follow.\n(SimC highly recommended!)", 
                        ruRU = "Определите логику Бросок костей, которой нужно следовать. \ N (SimC настоятельно рекомендуется!)", 
                        frFR = "Définissez la logique à suivre pour les Jet d’osselets.(SimC fortement recommandé!)",
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
            { -- [5] 5th Row     
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "ON MELEE BURST", value = "ON MELEE BURST" },
                        { text = "ON COOLDOWN", value = "ON COOLDOWN" },                    
                        { text = "OFF", value = "OFF" },
                    },
                    DB = "FearPvP",
                    DBV = "ON MELEE BURST",
                    L = { 
                        ANY = "PvP " .. A.GetSpellInfo(5782),
                    }, 
                    TT = { 
                        enUS = "@arena1-3, @target, @mouseover, @targettarget\nON MELEE BURST - Only if melee player has damage buffs\nON COOLDOWN - means will use always on melee players\nOFF - Cut out from rotation but still allow work through Queue and MSG systems\nIf you want fully turn it OFF then you should make SetBlocker in 'Actions' tab", 
                        ruRU = "@arena1-3, @target, @mouseover, @targettarget\nON MELEE BURST - Только если игрок ближнего боя имеет бафы на урон\nON COOLDOWN - значит будет использовано по игрокам ближнего боя по восстановлению способности\nOFF - Выключает из ротации, но при этом позволяет Очередь и MSG системам работать\nЕсли нужно полностью выключить, тогда установите блокировку во вкладке 'Действия'", 
                    }, 
                    M = {},
                },
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "@arena1", value = 1 },
                        { text = "@arena2", value = 2 },
                        { text = "@arena3", value = 3 },
                        { text = "primary", value = 4 },
                    },
                    MULT = true,
                    DB = "FearPvPUnits",
                    DBV = {
                        [1] = true, 
                        [2] = true,
                        [3] = true,
                        [4] = true,
                    }, 
                    L = { 
                        ANY = "PvP " .. A.GetSpellInfo(5782) .. " units",
                    }, 
                    TT = { 
                        enUS = "primary - is @target, @mouseover, @targettarget (these units are depend on toggles above)", 
                        ruRU = "primary - это @target, @mouseover, @targettarget (эти юниты зависят от чекбоксов наверху)", 
                    }, 
                    M = {},
                },
            },
        },
    },
    -- MSG Actions UI
    [7] = {
        [ACTION_CONST_ROGUE_OUT] = { 
            -- MSG Action Pet Dispell
            ["dispell"] = { Enabled = true, Key = "PetDispell", LUA = [[
                return     A.DispellMagic:IsReady(unit, true) and 
                        (
                            ( 
                                not Unit(thisunit):IsEnemy() and 
                                (
                                    (
                                        not InPvP() and 
                                        Env.Dispel(unit)
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
                                Action[PlayerSpec].SpellLock:AbsentImun(thisunit, {"TotalImun", "DeffBuffsMagic"}, true) 
                            )                
                        ) 
            ]] },
            -- MSG Action Pet Kick
            ["kick"] = { Enabled = true, Key = "Pet Kick", LUA = [[
                return  SpellInRange(thisunit, Action[PlayerSpec].SpellLock.ID) and 
                        select(2, CastTime(nil, thisunit)) > 0 and 
                        Action[PlayerSpec].SpellLock:AbsentImun(thisunit, {"KickImun", "TotalImun", "DeffBuffsMagic"}, true) 
            ]] },
            -- MSG Action Fear
            ["kick"] = { Enabled = true, Key = "Pet Kick", LUA = [[
                return  SpellInRange(thisunit, Action[PlayerSpec].SpellLock.ID) and 
                        select(2, CastTime(nil, thisunit)) > 0 and 
                        Action[PlayerSpec].SpellLock:AbsentImun(thisunit, {"KickImun", "TotalImun", "DeffBuffsMagic"}, true) 
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
function Env.FearIsReady(unit, isMsg)
    if A[Env.PlayerSpec].Fear then 
        local unitID = A.GetToggle(2, "FearPvPunits")
        return     (
            (unit == "arena1" and unitID[1]) or 
            (unit == "arena2" and unitID[2]) or
            (unit == "arena3" and unitID[3]) or
            (not unit:match("arena") and unitID[4]) 
        ) and 
        Env.InPvP() and
        Env.PvPTalentLearn(A[Env.PlayerSpec].Fear.ID) and 
        Env.Unit(unit):IsEnemy() and  
        (
            (
                not isMsg and 
                A.GetToggle(2, "FearPvP") ~= "OFF" and 
                A[Env.PlayerSpec].Fear:IsReady(unit) and 
                Env.Unit(unit):IsMelee() and 
                (
                    A.GetToggle(2, "FearPvP") == "ON COOLDOWN" or 
                    Env.Unit(unit):HasBuffs("DamageBuffs") > 3 
                )
            ) or 
            (
                isMsg and 
                A[Env.PlayerSpec].Fear:IsReadyP(unit)                     
            )
        ) and 
        UnitIsPlayer(unit) and                     
        A[Env.PlayerSpec].Fear:AbsentImun(unit, {"CCTotalImun", "DeffBuffsMagic", "TotalImun"}, true) and 
        Env.Unit(unit):IsControlAble("incapacitate", 0)
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


