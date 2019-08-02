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
    -- Class settings
	[2] = {        
        [ACTION_CONST_WARLOCK_AFFLI] = {             
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
            }, 
            { -- [2] 2th Row 
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
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "UnendingResolve",
                    DBV = 30, -- Set healthpercentage @30% life. 
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(104773) .. " (%)",
                    }, 
                    M = {},
                },
                {
                    E = "Checkbox", 
                    DB = "OffGCDasOffGCD",
                    DBV = true,
                    L = { 
                        enUS = "Display OffGCD as OffGCD, ForceReturn", 
                        ruRU = "Отобразить OffGCD как OffGCD, ForceReturn", 
						frFR = "Afficher OffGCD comme OffGCD, ForceReturn",
                    }, 
                    TT = { 
                        enUS = "Will force certains spells to be used as off GCD", 
                        ruRU = "Вынудит определенные заклинания использоваться как вне GCD", 
						frFR = "Forcera certains spells à être utilisés sur le GCD",
                    }, 
                    M = {},
                },  
            },
        },
    },
	-- MSG Actions UI
    [7] = {
        [ACTION_CONST_WARLOCK_AFFLI] = { 
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
		-- Other Spec ?
        --[[ [ACTION_CONST_WARLOCK_DESTRU] = {
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
        }, ]]--
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



