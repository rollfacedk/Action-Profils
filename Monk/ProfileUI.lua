ACTION_CONST_MONK_BM = 268
ACTION_CONST_MONK_MW = 270
ACTION_CONST_MONK_WW = 269

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local A = Action
A.Data.ProfileEnabled[TMW.db:GetCurrentProfile()] = true
A.Data.ProfileUI = {    
    DateTime = "v4 (28.07.2019)",
    [2] = {        
        [ACTION_CONST_MONK_BM] = {             
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
        [ACTION_CONST_MONK_MW] = { 
            LayoutOptions = { gutter = 4, padding = { left = 5, right = 5 } },
            { -- [1]                             
                {
                    E = "Checkbox", 
                    DB = "mouseover",
                    DBV = true,
                    L = { 
                        enUS = "Use\n@mouseover", 
                        ruRU = "Использовать\n@mouseover", 
                    }, 
                    TT = { 
                        enUS = "Will unlock use actions for @mouseover units\nExample: Resuscitate, Healing", 
                        ruRU = "Разблокирует использование действий для @mouseover юнитов\nНапример: Воскрешение, Хилинг", 
                    }, 
                    M = {},
                },
                {
                    E = "Checkbox", 
                    DB = "targettarget",
                    DBV = true,
                    L = { 
                        enUS = "Use\n@targettarget", 
                        ruRU = "Использовать\n@targettarget", 
                    }, 
                    TT = { 
                        enUS = "Will unlock use actions\nfor enemy @targettarget units", 
                        ruRU = "Разблокирует использование\nдействий для вражеских @targettarget юнитов", 
                    }, 
                    M = {},
                },
                {
                    E = "Checkbox", 
                    DB = "AoE",
                    DBV = true,
                    L = { 
                        enUS = "Use\nAoE", 
                        ruRU = "Использовать\nAoE", 
                    }, 
                    TT = { 
                        enUS = "Enable multiunits actions", 
                        ruRU = "Включает действия для нескольких целей", 
                    }, 
                    M = {},
                },    
                {
                    E = "Checkbox", 
                    DB = "ManaManagement",
                    DBV = false,
                    L = { 
                        enUS = "Boss Fight\nManaSave\n(PvE)", 
                        ruRU = "Бой с Боссом\nУправление Маной\n(PvE)",
                    }, 
                    TT = { 
                        enUS = "Enable to keep small mana save tricks during boss fight\nMana will keep going to save phase if Boss HP >= our Mana", 
                        ruRU = "Включает сохранение малого количества маны с помощью некоторых манипуляций в течении боя против Босса\nМана будет переходить в фазу сохранения если ХП Босса >= нашей Маны", 
                    }, 
                    M = {},
                },    
            }, 
            { -- [2]
                {
                    E = "Header",
                    L = {
                        enUS = " -- Self Defensives -- ",
                        ruRU = " -- Своя Оборона -- ",
                    },
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
                    DB = "Stoneform",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(20594) .. " (%)",                        
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
                        ANY = A.GetSpellInfo(243435) .. " (%)",
                    }, 
                    M = {},
                },
            }, 
            { -- [5]    
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "DiffuseMagic",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(122783) .. " (%)",                        
                    }, 
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "ManaPotion",
                    DBV = 20,
                    ONLYOFF = true,
                    L = { 
                        ANY = A.GetLocalization()["TAB"][1]["POTION"] .. " (Mana %)",
                    }, 
                    M = {},
                },
            }, 
            { -- [6]
                {
                    E = "Header",
                    L = {
                        ANY = " -- HealingEngine -- ",
                    },
                },
            },
            { -- [7]
                {
                    E = "Checkbox", 
                    DB = "HealingEngineAutoHot",
                    DBV = true,
                    L = { 
                        enUS = "HealingEngine: Auto hot", 
                        ruRU = "HealingEngine: Авто хоты", 
                    }, 
                    TT = { 
                        enUS = "HealingEngine will suggest in higher priority to\nselect member which hasn't applied 'Renewing Mist'", 
                        ruRU = "HealingEngine будет предлагать в высоком приоритете\nвыбирать участника который не имеет наложенного 'Заживляющего тумана'", 
                    }, 
                    M = {},                
                },
                {
                    E = "Checkbox", 
                    DB = "HealingEnginePreventSuggest",
                    DBV = true,
                    L = { 
                        enUS = "HealingEngine: Skip select target while " .. A.GetSpellInfo(115175)  .. " casting", 
                        ruRU = "HealingEngine: Пропускать выбор целей пока " .. A.GetSpellInfo(115175)  .. " произносится", 
                    }, 
                    TT = { 
                        enUS = "If 'Soothing Mist' casting > 3 and unit health percent\nlower than value specified for slider 'Soothing Mist'", 
                        ruRU = "Если 'Успокаивающий туман' произновится > 3 и процент\nздоровья юнита меньше чем значение установленного для ползунка 'Успокаивающий туман'",
                    }, 
                    M = {},                
                },
            }, 
            { -- [8]
                {
                    E = "Header",
                    L = {
                        enUS = " -- Rotation -- ",
                        ruRU = " -- Ротация -- ",
                    },
                },
            },
            { -- [9]
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "LifeCocoon",
                    DBV = 100,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(116849) .. " (%)",                        
                    }, 
                    M = {},
                },
            }, 
            { -- [10]    
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "SoothingMistHP",
                    DBV = 100,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(115175) .. " (%)",                        
                    }, 
                    TT = { 
                        enUS = "Offset Health Percent on which start casting 'Soothing Mist'", 
                        ruRU = "Значение Процента Здоровья на котором начинать произносить 'Успокаивающий туман'", 
                    },
                    M = {},
                },
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "Always", value = "Always" },
                        { text = "Auto", value = "Auto" },    
                        { text = "Tanking Units", value = "Tanking Units" },                    
                        { text = "Mostly Inc. Damage ", value = "Mostly Inc. Damage" },
                        { text = "HPS < Inc. Damage ", value = "HPS < Inc. Damage" },
                    },
                    DB = "SoothingMistWorkMode",
                    DBV = "Auto",
                    L = { 
                        ANY = A.GetSpellInfo(115175) .. " Work Mode",
                    }, 
                    TT = { 
                        enUS = "These conditions will be skiped if unit will dying in emergency (critical) situation", 
                        ruRU = "Эти условия будут пропущены если юнит будет умирать в чрезвычайной (критической) ситуациии", 
                    },                    
                    M = {},
                },
            }, 
            { -- [11]    
                RowOptions = { margin = { top = 10 } },
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "InvokeChiJitheRedCrane",
                    DBV = 100,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(198664) .. "\n(Per UnitHealth %)",                        
                    },                     
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = 1, 
                    MAX = 41,                            
                    DB = "InvokeChiJitheRedCraneUnits",
                    DBV = 41,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(198664) .. "\n(Total Units)",    
                    },                     
                    M = {},
                },
            }, 
            { -- [12]    
                RowOptions = { margin = { top = 10 } },
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "Revival",                    
                    DBV = 100,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(115310) .. "\n(Per UnitHealth %)",                        
                    },                     
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = 1, 
                    MAX = 41,                            
                    DB = "RevivalUnits",
                    DBV = 41,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(115310) .. "\n(Total Units)",    
                    },                     
                    M = {},
                },
            }, 
            { -- [13]    
                RowOptions = { margin = { top = 10 } },
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "EssenceFont",                    
                    DBV = 100,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(191837) .. "\n(Per UnitHealth %)",                        
                    },                     
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = 1, 
                    MAX = 7,                            
                    DB = "EssenceFontUnits",
                    DBV = 7,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(191837) .. "\n(Total Units)",    
                    },                     
                    M = {},
                },
            }, 
            { -- [14]    
                RowOptions = { margin = { top = 10 } },
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "RacialBurstHealing",                    
                    DBV = 100,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetLocalization()["TAB"][1]["RACIAL"] .. "\n(Healing HP %)",                        
                    },                     
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "RacialBurstDamaging",                    
                    DBV = 100,
                    ONOFF = false,
                    L = { 
                        ANY = A.GetLocalization()["TAB"][1]["RACIAL"] .. "\n(Damaging HP %)",                        
                    },                     
                    M = {},
                },
            }, 
            { -- [15]    
                RowOptions = { margin = { top = 10 } },
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "TrinketBurstHealing",                    
                    DBV = 50,
                    ONOFF = false,
                    L = { 
                        ANY = A.GetLocalization()["TAB"][1]["TRINKET"] .. "\n(Healing HP %)",                        
                    },                     
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "TrinketBurstDamaging",                    
                    DBV = 95,
                    ONOFF = false,
                    L = { 
                        ANY = A.GetLocalization()["TAB"][1]["TRINKET"] .. "\n(Damaging HP %)",                        
                    },                     
                    M = {},
                },
            },            
            { -- [16]
                {
                    E = "Header",
                    L = {
                        ANY = " -- PvP -- ",
                    },
                },
            }, 
            { -- [17]
                {
                    E = "Checkbox", 
                    DB = "MouseButtonsCheck",
                    DBV = true,
                    L = { 
                        enUS = A.GetSpellInfo(205234) .. "\nCheck Mouse Buttons", 
                        ruRU = A.GetSpellInfo(205234) .. "\nПроверять Кнопки Мышки", 
                    }, 
                    TT = { 
                        enUS = "Prevents use if the camera is currently spinning with the mouse button held down", 
                        ruRU = "Предотвращает использование если камера в текущий момент крутится с помощью зажатой кнопки мыши", 
                    }, 
                    M = {},
                },
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
            { -- [18]
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "ON MELEE BURST", value = "ON MELEE BURST" },
                        { text = "ON COOLDOWN", value = "ON COOLDOWN" },                    
                        { text = "OFF", value = "OFF" },
                    },
                    DB = "GrappleWeaponPvP",
                    DBV = "ON MELEE BURST",
                    L = { 
                        ANY = "PvP " .. A.GetSpellInfo(233759),
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
                    DB = "GrappleWeaponPvPunits",
                    DBV = {
                        [1] = true, 
                        [2] = true,
                        [3] = true,
                        [4] = true,
                    }, 
                    L = { 
                        ANY = "PvP " .. A.GetSpellInfo(233759) .. " units",
                    }, 
                    TT = { 
                        enUS = "primary - is @target, @mouseover, @targettarget (these units are depend on toggles above)", 
                        ruRU = "primary - это @target, @mouseover, @targettarget (эти юниты зависят от чекбоксов наверху)", 
                    }, 
                    M = {},
                },
            },     
        },
        [ACTION_CONST_MONK_WW] = {
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
                    E = "Header",
                    L = {
                        enUS = " -- Self Defensives -- ",
                        ruRU = " -- Своя Оборона -- ",
                    },
                },
            }, 
            { -- [3]     
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "TouchofKarma",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(122470) .. " (%)",
                    }, 
                    M = {},
                },
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
                        ANY = A.GetSpellInfo(201318) .. " (%)",
                    }, 
                    M = {},
                },
            }, 
            { -- [5]    
                {
                    E = "Slider",                                                     
                    MIN = -1, 
                    MAX = 100,                            
                    DB = "DiffuseMagic",
                    DBV = 100,
                    ONOFF = true,
                    L = { 
                        ANY = A.GetSpellInfo(122783) .. " (%)",                        
                    }, 
                    M = {},
                },
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "TrinketDefensive",
                    DBV = 50,
                    ONOFF = false,
                    L = { 
                        ANY = A.GetLocalization()["TAB"][1]["TRINKET"] .. "\n(Self HP %)",
                    }, 
                    M = {},
                },
            }, 
            { -- [6]
                {
                    E = "Header",
                    L = {
                        ANY = " -- Party -- ",
                    },
                },
            }, 
            { -- [7]
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "@party1", value = 1 },
                        { text = "@party2", value = 2 },
                    },
                    MULT = true,
                    DB = "PartyUnits",
                    DBV = {
                        [1] = true, 
                        [2] = true,
                    }, 
                    L = { 
                        ANY = "Party Units",
                    }, 
                    TT = { 
                        enUS = "Enable/Disable relative party passive rotation", 
                        ruRU = "Включить/Выключить относительно группы пассивную ротацию", 
                    }, 
                    M = {},
                },            
            },            
            { -- [8]
                {
                    E = "Header",
                    L = {
                        ANY = " -- PvP -- ",
                    },
                },
            }, 
            { -- [9]
                {
                    E = "Slider",                                                     
                    MIN = 0, 
                    MAX = 100,                            
                    DB = "ReverseHarm",
                    DBV = 100,
                    ONLYON = true,
                    L = { 
                        ANY = A.GetSpellInfo(287771) .. " (Self HP %)",
                    }, 
                    M = {},
                },
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
            { -- [10]
                {
                    E = "Dropdown",                                                         
                    OT = {
                        { text = "ON MELEE BURST", value = "ON MELEE BURST" },
                        { text = "ON COOLDOWN", value = "ON COOLDOWN" },                    
                        { text = "OFF", value = "OFF" },
                    },
                    DB = "GrappleWeaponPvP",
                    DBV = "ON MELEE BURST",
                    L = { 
                        ANY = "PvP " .. A.GetSpellInfo(233759),
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
                    DB = "GrappleWeaponPvPunits",
                    DBV = {
                        [1] = true, 
                        [2] = true,
                        [3] = true,
                        [4] = true,
                    }, 
                    L = { 
                        ANY = "PvP " .. A.GetSpellInfo(233759) .. " units",
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
    [7] = {
        [ACTION_CONST_MONK_BM] = { 
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
        [ACTION_CONST_MONK_MW] = {    
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
        },
        [ACTION_CONST_MONK_WW] = {
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

