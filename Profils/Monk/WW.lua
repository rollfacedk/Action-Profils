local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action


Action[ACTION_CONST_MONK_WW] = {
    -- Racial
    ArcaneTorrent                             = Action.Create({ Type = "Spell", ID = 50613     }),
    BloodFury                                 = Action.Create({ Type = "Spell", ID = 20572      }),
    Fireblood                                   = Action.Create({ Type = "Spell", ID = 265221     }),
    AncestralCall                              = Action.Create({ Type = "Spell", ID = 274738     }),
    Berserking                                = Action.Create({ Type = "Spell", ID = 26297    }),
    ArcanePulse                                  = Action.Create({ Type = "Spell", ID = 260364    }),
    QuakingPalm                                  = Action.Create({ Type = "Spell", ID = 107079     }),
    Haymaker                                  = Action.Create({ Type = "Spell", ID = 287712     }), 
    WarStomp                                  = Action.Create({ Type = "Spell", ID = 20549     }),
    BullRush                                  = Action.Create({ Type = "Spell", ID = 255654     }),    
    GiftofNaaru                               = Action.Create({ Type = "Spell", ID = 59544    }),
    Shadowmeld                                  = Action.Create({ Type = "Spell", ID = 58984    }), -- usable in Action Core 
    Stoneform                                  = Action.Create({ Type = "Spell", ID = 20594    }), 
    WilloftheForsaken                          = Action.Create({ Type = "Spell", ID = 7744        }), -- not usable in APL but user can Queue it    
    EscapeArtist                              = Action.Create({ Type = "Spell", ID = 20589    }), -- not usable in APL but user can Queue it
    EveryManforHimself                          = Action.Create({ Type = "Spell", ID = 59752    }), -- not usable in APL but user can Queue it
    -- CrownControl    
    Paralysis                                = Action.Create({ Type = "Spell", ID = 115078    }),
    ParalysisAntiFake                        = Action.Create({ Type = "Spell", ID = 115078, Desc = "[2] Kick", QueueForbidden = true    }),
    LegSweep                                  = Action.Create({ Type = "Spell", ID = 119381    }),
    LegSweepGreen                              = Action.Create({ Type = "SpellSingleColor", ID = 119381, Color = "GREEN", Desc = "[1] CC", QueueForbidden = true }),
    SpearHandStrike                              = Action.Create({ Type = "Spell", ID = 116705    }),
    SpearHandStrikeGreen                    = Action.Create({ Type = "SpellSingleColor", ID = 116705, Color = "GREEN", Desc = "[2] Kick", QueueForbidden = true }),
    GrappleWeapon                            = Action.Create({ Type = "Spell", ID = 233759     }),    -- PvP Talent
    RingofPeace                                = Action.Create({ Type = "Spell", ID = 116844     }), -- Talent (not usable in APL but user can Queue it)
    -- Suppotive    
    Resuscitate                                  = Action.Create({ Type = "Spell", ID = 115178, QueueForbidden = true    }), 
    Provoke                                      = Action.Create({ Type = "Spell", ID = 115546, Desc = "[6] PvP Pets Taunt", QueueForbidden = true    }),
    Vivify                                      = Action.Create({ Type = "Spell", ID = 116670    }),
    Detox                                      = Action.Create({ Type = "Spell", ID = 218164    }),
    TigersLust                                     = Action.Create({ Type = "Spell", ID = 116841    }), -- Talent 
    ReverseHarm                                     = Action.Create({ Type = "Spell", ID = 287771    }), -- PvP Talent 
    -- Self Defensives
    FortifyingBrew                            = Action.Create({ Type = "Spell", ID = 201318    }), -- PvP Talent
    DiffuseMagic                            = Action.Create({ Type = "Spell", ID = 122783     }), -- Talent 
    DampenHarm                                = Action.Create({ Type = "Spell", ID = 122278     }), -- Talent 
    TouchofKarma                            = Action.Create({ Type = "Spell", ID = 122470     }), 
    -- Burst
    StormEarthAndFire                        = Action.Create({ Type = "Spell", ID = 137639    }), 
    StormEarthAndFireFixate                    = Action.Create({ Type = "Spell", ID = 221771    }), -- while StormEarthAndFire buff
    TouchofDeath                            = Action.Create({ Type = "Spell", ID = 115080    }), 
    EnergizingElixir                        = Action.Create({ Type = "Spell", ID = 115288    }), -- Talent
    InvokeXuentheWhiteTiger                    = Action.Create({ Type = "Spell", ID = 123904    }), -- Talent
    Serenity                                = Action.Create({ Type = "Spell", ID = 152173    }), -- Talent (replace StormEarthAndFire)
    -- Rotation       
    FistoftheWhiteTiger                        = Action.Create({ Type = "Spell", ID = 261947    }), -- Talent
    ChiBurst                                  = Action.Create({ Type = "Spell", ID = 123986     }), -- Talent 
    ChiWave                                   = Action.Create({ Type = "Spell", ID = 115098     }),    -- Talent
    RushingJadeWind                            = Action.Create({ Type = "Spell", ID = 116847     }),    -- Talent
    WhirlingDragonPunch                        = Action.Create({ Type = "Spell", ID = 152175     }),    -- Talent
    TigereyeBrew                            = Action.Create({ Type = "Spell", ID = 247483     }),    -- PvP Talent
    ReverseHarmOpener                        = Action.Create({ Type = "Spell", ID = 287771, Desc = "Opener vs invis (arena)"    }), -- PvP Talent 
    Disable                                    = Action.Create({ Type = "Spell", ID = 116095    }), 
    TigerPalm                                = Action.Create({ Type = "Spell", ID = 100780    }), 
    FistsofFury                                = Action.Create({ Type = "Spell", ID = 113656    }), 
    BlackoutKick                            = Action.Create({ Type = "Spell", ID = 100784    }),
    CracklingJadeLightning                      = Action.Create({ Type = "Spell", ID = 117952     }),    
    RisingSunKick                            = Action.Create({ Type = "Spell", ID = 107428     }),    
    SpinningCraneKick                        = Action.Create({ Type = "Spell", ID = 101546     }),    
    -- Movememnt    
    FlyingSerpentKick                        = Action.Create({ Type = "Spell", ID = 101545    }),
    FlyingSerpentKickJump                    = Action.Create({ Type = "Spell", ID = 115057     }), -- Action ID of FlyingSerpentKick
    Roll                                    = Action.Create({ Type = "Spell", ID = 109132    }),
    ChiTorpedo                                = Action.Create({ Type = "Spell", ID = 115008    }), -- Talent 
    TranscendenceTransfer                    = Action.Create({ Type = "Spell", ID = 119996    }), -- not usable in APL but user can Queue it
    -- Items
    PotionofUnbridledFury                     = Action.Create({ Type = "Potion", ID = 169299     }),     
    -- Hidden 
    TigerTailSweep                            = Action.Create({ Type = "Spell", ID = 264348, Hidden = true }), -- 4/1 Talent +2y increased range of LegSweep    
    RidetheWind                                = Action.Create({ Type = "Spell", ID = 201372, Hidden = true }), -- PvP Talent freedom by FlyingSerpentKick
    HitCombo                                = Action.Create({ Type = "Spell", ID = 196741, Hidden = true }), -- Simcraft
    BlackoutKickBuff                        = Action.Create({ Type = "Spell", ID = 116768, Hidden = true }), -- Simcraft
    DanceOfChijiBuff                        = Action.Create({ Type = "Spell", ID = 286587, Hidden = true }), -- Simcraft
    SwiftRoundhouse                            = Action.Create({ Type = "Spell", ID = 277669, Hidden = true }), -- Simcraft Azerite
    SwiftRoundhouseBuff                        = Action.Create({ Type = "Spell", ID = 278710, Hidden = true }), -- Simcraft Azerite
}

Action:CreateEssencesFor(ACTION_CONST_MONK_WW)
local A = setmetatable(Action[ACTION_CONST_MONK_WW], { __index = Action })

local GetSpellCount = 
GetSpellCount
local IsIndoors, IsStealthed, IsMounted = 
IsIndoors, IsStealthed, IsMounted
local UnitIsPlayer, UnitExists, UnitIsUnit, UnitPower, UnitPowerMax = 
UnitIsPlayer, UnitExists, UnitIsUnit, UnitPower, UnitPowerMax

local function IsSchoolFree()
    return A.LossOfControlIsMissed("SILENCE") and LossOfControlGet("SCHOOL_INTERRUPT", "NATURE") == 0
end 

-- [1] CC AntiFake Rotation
local function AntiFakeStun(unit) 
    return 
    A.IsUnitEnemy(unit) and  
    Env.Unit(unit):GetRange() <= 5 + (Env.TalentLearn(A.TigerTailSweep.ID) and 2 or 0) and 
    Env.Unit(unit):IsControlAble("stun", 0) and 
    A.LegSweepGreen:AbsentImun(unit, {"StunImun", "TotalImun", "DamagePhysImun", "CCTotalImun"}, true)          
end 
A[1] = function(icon)    
    if     A.LegSweepGreen:IsReady() and 
    (
        AntiFakeStun("mouseover") or 
        AntiFakeStun("target") or 
        (
            not A.IsUnitEnemy("mouseover") and 
            not A.IsUnitEnemy("target") and                     
            (
                (Env.InPvP() and Env.EnemyTeam():PlayersInRange(1, 5 + (Env.TalentLearn(A.TigerTailSweep.ID) and 2 or 0))) or 
                (not Env.InPvP() and AoE(1, 5 + (Env.TalentLearn(A.TigerTailSweep.ID) and 2 or 0)))
            )
        )
    )
    then 
        return A.LegSweepGreen:Show(icon)         
    end                                                                     
end

-- [2] Kick AntiFake Rotation
A[2] = function(icon)        
    local unit
    if A.IsUnitEnemy("mouseover") then 
        unit = "mouseover"
    elseif A.IsUnitEnemy("target") then 
        unit = "target"
    end 
    
    if unit then         
        local total, sleft, _, _, _, notKickAble = Env.CastTime(nil, unit)
        if sleft > 0 then             
            if not notKickAble and A.SpearHandStrikeGreen:IsReady(unit) and A.SpearHandStrikeGreen:AbsentImun(unit, {"KickImun", "DamagePhysImun", "TotalImun"}, true) then
                return A.SpearHandStrikeGreen:Show(icon)                                                  
            end 
            
            if A.ParalysisAntiFake:IsReady(unit) and A.ParalysisAntiFake:AbsentImun(unit, {"CCTotalImun", "DamagePhysImun", "TotalImun"}, true) and Env.Unit(unit):IsControlAble("incapacitate", 0) then
                return A.ParalysisAntiFake:Show(icon)                  
            end 
            
            -- Racials 
            if A.QuakingPalm:AutoRacial(unit) then 
                return A.QuakingPalm:Show(icon)
            end 
            
            if A.Haymaker:AutoRacial(unit) then 
                return A.Haymaker:Show(icon)
            end 
            
            if A.WarStomp:AutoRacial(unit) then 
                return A.WarStomp:Show(icon)
            end 
            
            if A.BullRush:AutoRacial(unit) then 
                return A.BullRush:Show(icon)
            end                         
        end 
    end                                                                                 
end

-----------------------------------------
--                 ROTATION  
-----------------------------------------
local function SelfDefensives()
    if CombatTime("player") == 0 then 
        return 
    end 
    
    local TouchofKarma = A.GetToggle(2, "TouchofKarma")
    if TouchofKarma >= 0 then 
        local unit
        if A.IsUnitEnemy("mouseover") then 
            unit = "mouseover"
        elseif A.IsUnitEnemy("target") then 
            unit = "target"
        end     
        
        if unit and A.TouchofKarma:IsReady(unit) and A.TouchofKarma:AbsentImun(unit, {"TotalImun", "DamagePhysImun"}, true) then 
            if     (
                -- Auto 
                (
                    TouchofKarma >= 100 and 
                    (
                        TimeToDieX("player", 30) < 2.5 or 
                        (
                            Env.InPvP() and 
                            Env.UNITHP("player") < 70 and 
                            Env.Unit("player"):IsFocused(nil, true) 
                        )
                    )
                ) or 
                -- Custom 
                (
                    TouchofKarma < 100 and 
                    Env.UNITHP("player") < TouchofKarma
                )
            ) and 
            (
                Env.Unit("player"):HasBuffs("DeffBuffs", true) == 0 or 
                Env.UNITHP("player") < 20
            )
            then 
                return A.TouchofKarma
            end 
        end 
    end 
    
    local DampenHarm = A.GetToggle(2, "DampenHarm")
    if     DampenHarm >= 0 and A.DampenHarm:IsReady("player") and Env.TalentLearn(A.DampenHarm.ID) and 
    (
        (     -- Auto 
            DampenHarm >= 100 and 
            (
                -- HP lose per sec >= 20
                incdmg("player") * 100 / UnitHealthMax("player") >= 20 or 
                getRealTimeDMG("player") >= UnitHealthMax("player") * 0.20 or 
                -- TTD 
                TimeToDieX("player", 25) < 5 or 
                (
                    Env.InPvP() and 
                    (
                        Env.Unit("player"):UseDeff() or 
                        (
                            Env.Unit("player", 5):HasFlags() and 
                            getRealTimeDMG("player") > 0 and 
                            Env.Unit("player"):IsFocused() 
                        )
                    )
                )
            ) and 
            Env.Unit("player"):HasBuffs("DeffBuffs", true) == 0
        ) or 
        (    -- Custom
            DampenHarm < 100 and 
            Env.UNITHP("player") <= DampenHarm
        )
    ) 
    then 
        return A.DampenHarm
    end     
    
    local DiffuseMagic = A.GetToggle(2, "DiffuseMagic")
    if     DiffuseMagic >= 0 and A.DiffuseMagic:IsReady("player") and Env.TalentLearn(A.DiffuseMagic.ID) and 
    (
        (     -- Auto 
            DiffuseMagic >= 100 and 
            TimeToDieMagicX("player", 35) < 5 and 
            -- Magic Damage still appear
            select(4, getRealTimeDMG("player")) > 0 and 
            Env.Unit("player"):HasBuffs("DeffBuffsMagic") == 0
        ) or 
        (    -- Custom
            DiffuseMagic < 100 and 
            Env.UNITHP("player") <= DiffuseMagic
        )
    ) 
    then 
        return A.DiffuseMagic
    end 
    
    local FortifyingBrew = A.GetToggle(2, "FortifyingBrew")
    if     FortifyingBrew >= 0 and Env.InPvP() and Env.PvPTalentLearn(A.FortifyingBrew.ID) and A.FortifyingBrew:IsReady("player") and 
    (
        (     -- Auto 
            FortifyingBrew >= 100 and 
            (
                (
                    not Env.InPvP() and 
                    Env.UNITHP("player") < 40 and 
                    TimeToDieX("player", 20) < 6 
                ) or 
                (
                    Env.InPvP() and 
                    (
                        Env.Unit("player"):UseDeff() or 
                        (
                            Env.Unit("player", 5):HasFlags() and 
                            getRealTimeDMG("player") > 0 and 
                            Env.Unit("player"):IsFocused(nil, true)                                 
                        )
                    )
                )
            ) and 
            Env.Unit("player"):HasBuffs("DeffBuffs") == 0
        ) or 
        (    -- Custom
            FortifyingBrew < 100 and 
            Env.UNITHP("player") <= FortifyingBrew
        )
    ) 
    then 
        return A.FortifyingBrew
    end 
    
    -- Stoneform on deffensive
    local Stoneform = A.GetToggle(2, "Stoneform")
    if     Stoneform >= 0 and A.Stoneform:AutoRacialP("player") and 
    (
        (     -- Auto 
            Stoneform >= 100 and 
            (
                (
                    not Env.InPvP() and                         
                    TimeToDieX("player", 65) < 3 
                ) or 
                (
                    Env.InPvP() and 
                    (
                        Env.Unit("player"):UseDeff() or 
                        (
                            Env.Unit("player", 5):HasFlags() and 
                            getRealTimeDMG("player") > 0 and 
                            Env.Unit("player"):IsFocused()                                 
                        )
                    )
                )
            ) 
        ) or 
        (    -- Custom
            Stoneform < 100 and 
            Env.UNITHP("player") <= Stoneform
        )
    ) 
    then 
        return A.Stoneform
    end     
    
    -- Stoneform on self dispel (only PvE)
    if A.Stoneform:AutoRacial("player", true) and not Env.InPvP() and A.AuraIsValid("player", "UseDispel", "Dispel") then 
        return A.Stoneform
    end 
end 
SelfDefensives = A.MakeFunctionCachedStatic(SelfDefensives)

local function Interrupts(unit, ShouldStop)
    local useKick, useCC, useRacial = A.InterruptIsValid(unit, "TargetMouseover")    
    
    if useKick and A.SpearHandStrike:IsReady(unit) and A.SpearHandStrike:AbsentImun(unit, {"TotalImun", "DamagePhysImun", "KickImun"}, true) then 
        if Env.RandomKick(unit, true) then 
            return A.SpearHandStrike
        else 
            return false
        end 
    end 
    
    if useCC and not ShouldStop and A.Paralysis:IsReady(unit) and A.Paralysis:AbsentImun(unit, {"TotalImun", "DamagePhysImun", "CCTotalImun"}) and Env.Unit(unit):IsControlAble("incapacitate", 0) then 
        return A.Paralysis              
    end             
    
    if useRacial and A.QuakingPalm:AutoRacial(unit, true) then 
        return A.QuakingPalm
    end 
    
    if useRacial and A.Haymaker:AutoRacial(unit, true) then 
        return A.Haymaker
    end 
    
    if useRacial and A.WarStomp:AutoRacial(unit, true) then 
        return A.WarStomp
    end 
    
    if useRacial and A.BullRush:AutoRacial(unit, true) then 
        return A.BullRush
    end      
    
    if useCC and not ShouldStop and A.LegSweep:IsReady(unit, true) and Env.Unit(unit):GetRange() <= 5 + (Env.TalentLearn(A.TigerTailSweep.ID) and 2 or 0) and select(2, Env.CastTime(nil, unit)) > Env.CurrentTimeGCD() + 0.1 and A.LegSweep:AbsentImun(unit, {"StunImun", "CCTotalImun", "DamagePhysImun", "TotalImun"}, true) and Env.Unit(unit):IsControlAble("stun", 0) then
        return A.LegSweep     
    end 
end 
Interrupts = A.MakeFunctionCachedDynamic(Interrupts)

local function GetAttackType()
    if Env.InPvP() and Env.PvPTalentLearn(A.TigereyeBrew.ID) and Env.Unit("player"):HasBuffs(A.TigereyeBrew.ID, true) > 0 then 
        return "DamageMagicImun"
    end  
    return "DamagePhysImun"
end 
GetAttackType = A.MakeFunctionCachedStatic(GetAttackType)

local ChiPowerType = Enum.PowerType.Chi
-- chi.max
local function ChiMax()
    return UnitPowerMax("player", ChiPowerType)
end

-- chi
local function Chi()
    return UnitPower("player", ChiPowerType)
end

-- chi.pct
local function ChiPercentage()
    return (Chi() / ChiMax()) * 100
end

-- chi.deficit
local function ChiDeficit()
    return ChiMax() - Chi()
end

-- "chi.deficit.pct"
local function ChiDeficitPercentage()
    return (ChiDeficit() / ChiMax()) * 100
end

local useStormEarthAndFireFixate = false
local function PLAYER_TARGET_CHANGED()
    if Env.UNITSpec("player", ACTION_CONST_MONK_WW) and not useStormEarthAndFireFixate and not Env.TalentLearn(A.Serenity.ID) and A.StormEarthAndFireFixate:IsReady("target") and A.IsUnitEnemy("target") then
        useStormEarthAndFireFixate = true 
    end 
end 
Listener:Add("MONK_WW_FIXATE", "PLAYER_TARGET_CHANGED", PLAYER_TARGET_CHANGED)

local function UNIT_SPELLCAST_SUCCEEDED(...)
    local source, _, spellID = ...
    if (source == "player" or source == "pet") and useStormEarthAndFireFixate and Env.UNITSpec("player", ACTION_CONST_MONK_WW) and (spellID == A.StormEarthAndFireFixate.ID or Env.Unit("player"):HasBuffs(A.StormEarthAndFire.ID, true) == 0) then 
        useStormEarthAndFireFixate = false
    end 
end 
Listener:Add("MONK_WW_FIXATE", "UNIT_SPELLCAST_SUCCEEDED", UNIT_SPELLCAST_SUCCEEDED)

-- [3] Single Rotation
A[3] = function(icon, isMulti)
    Env.PlayerMoving()
    
    local unit = "player"
    local ShouldStop = A.ShouldStop()
    local isMoving = Env.PlayerMovementStarted ~= 0 
    local inMelee = false
    
    local function EnemyRotation(unit)
        -- Variables
        inMelee = Env.SpellInRange(unit, A.TigerPalm.ID)
        
        -- Misc 
        if     A.FlyingSerpentKickJump:IsReady(unit, true) and SpellTimeSinceLastCast("player", A.FlyingSerpentKick.ID) < Env.GCD() and SpellTimeSinceLastCast("player", A.FlyingSerpentKickJump.ID) > Env.GCD() and (Env.Unit(unit):GetRange() <= 8 or ((isMulti or A.GetToggle(2, "AoE")) and AoE(1, 8))) and 
        (
            not Env.InPvP() or 
            not Env.EnemyTeam("HEALER"):IsBreakAble(8) 
        )
        then 
            return A.FlyingSerpentKickJump:Show(icon)
        end 
        
        if unit ~= "mouseover" and useStormEarthAndFireFixate and A.StormEarthAndFireFixate:IsReady(unit) and IsSchoolFree() and not Env.TalentLearn(A.Serenity.ID) and Env.Unit("player"):HasBuffs(A.StormEarthAndFire.ID, true) > 0 then 
            return A.StormEarthAndFireFixate:Show(icon)
        end 
        
        -- Simcraft
        -- Serenity --
        local function Serenity()
            -- actions.serenity=rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains,if=active_enemies<3|prev_gcd.1.spinning_crane_kick
            if not ShouldStop and A.RisingSunKick:IsReady(unit) and A.RisingSunKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and (not A.GetToggle(2, "AoE") or not AoE(3, 5) or Env.LastPlayerCastID == A.SpinningCraneKick.ID) then 
                return A.RisingSunKick:Show(icon)
            end 
            
            -- actions.serenity+=/fists_of_fury,if=(buff.bloodlust.up&prev_gcd.1.rising_sun_kick&!azerite.swift_roundhouse.enabled)|buff.serenity.remains<1|(active_enemies>1&active_enemies<5)
            if not ShouldStop and A.FistsofFury:IsReady(unit, true) and A.FistsofFury:AbsentImun(unit, {"TotalImun", GetAttackType()}) and A.LossOfControlIsMissed("DISARM") and Env.Unit(unit):GetRange() <= 8 and ((Env.Unit("player"):HasBuffs({"BurstHaste"}) > 0 and Env.LastPlayerCastID == A.RisingSunKick.ID and AzeriteRank(A.SwiftRoundhouse.ID) == 0) or Env.Unit("player"):HasBuffs(A.Serenity.ID, true) < 1 or (not A.GetToggle(2, "AoE") or not AoE(5, 8))) then
                return A.FistsofFury:Show(icon)
            end 
            
            -- actions.serenity+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(active_enemies>=3|(active_enemies=2&prev_gcd.1.blackout_kick))
            if not ShouldStop and A.GetToggle(2, "AoE") and A.SpinningCraneKick:IsReady(unit, true) and A.SpinningCraneKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.Unit(unit):GetRange() <= 8 and (Env.LastPlayerCastID ~= A.SpinningCraneKick.ID and (AoE(3, 8) or (AoE(2, 8) and Env.LastPlayerCastID == A.BlackoutKick.ID))) then 
                return A.SpinningCraneKick:Show(icon)
            end 
            
            -- actions.serenity+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains
            if not ShouldStop and A.BlackoutKick:IsReady(unit) and A.BlackoutKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) then 
                return A.BlackoutKick:Show(icon)
            end 
        end        
        
        -- Out of combat or Pull
        if unit ~= "mouseover" and CombatTime("player") == 0 then             
            local Pull = A.BossMods_Pulling()  
            
            -- Timing
            local extra_time = Env.CurrentTimeGCD() + 0.1
            local RippleinSpace, RushingJadeWind, ChiWave, ChiBurst
            
            -- Rushing Jade Wind
            if     Pull > 0 and (isMulti or A.GetToggle(2, "AoE")) and Env.TalentLearn(A.RushingJadeWind.ID) and A.RushingJadeWind:IsReady(unit, true) and A.RushingJadeWind:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and IsSchoolFree() and 
            (
                not Env.InPvP() or 
                (
                    Env.Unit(unit):GetRange() <= 10 and -- 10 because we can moving IN so pre use it 
                    not Env.EnemyTeam("HEALER"):IsBreakAble(12) -- 12 fair enough
                )
            )
            then 
                RushingJadeWind = true 
                extra_time = extra_time + Env.GCD()
            end 
            
            -- actions.precombat+=/chi_wave
            if     Pull > 0 and (isMulti or A.GetToggle(2, "AoE")) and Env.TalentLearn(A.ChiWave.ID) and A.ChiWave:IsReady(unit, true) and IsSchoolFree() and 
            (
                not Env.InPvP() or 
                (
                    Env.Unit(unit):GetRange() <= 25 and
                    not Env.EnemyTeam("HEALER"):IsBreakAble(25) 
                )
            )
            then 
                ChiWave = true 
                extra_time = extra_time + Env.GCD()
            end 
            
            -- actions.precombat+=/chi_burst,if=(!talent.serenity.enabled|!talent.fist_of_the_white_tiger.enabled)
            if     Pull > 0 and (isMulti or A.GetToggle(2, "AoE")) and Env.TalentLearn(A.ChiBurst.ID) and A.ChiBurst:IsReady(unit, true) and not isMoving and IsSchoolFree() and (not Env.TalentLearn(A.Serenity.ID) or not Env.TalentLearn(A.FistoftheWhiteTiger.ID)) and                  
            (
                not Env.InPvP() or 
                (
                    Env.Unit(unit):GetRange() <= 40 and
                    not Env.EnemyTeam("HEALER"):IsBreakAble(40) 
                )
            )
            then 
                ChiBurst = true 
                extra_time = extra_time + Env.CastTime(A.ChiBurst.ID)
            end 
            
            -- Azerite Essence
            if     A.RippleinSpace:AutoHeartOfAzeroth(unit, true) and Env.Unit(unit):GetRange() <= 25 and 
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(25) 
            )
            then 
                RippleinSpace = true 
                extra_time = extra_time + Env.GCD() 
            end 
            
            -- Pull Rotation
            if A.PotionofUnbridledFury:IsReady(unit) and A.LossOfControlIsMissed("DISARM") and Pull <= 3 then 
                return A.PotionofUnbridledFury:Show(icon)
            end     
            
            if RushingJadeWind and not ShouldStop and Pull <= extra_time then 
                return A.RushingJadeWind:Show(icon)
            end
            
            if ChiWave and not ShouldStop and Pull <= extra_time then 
                return A.ChiWave:Show(icon)
            end 
            
            if ChiBurst and not ShouldStop and Pull <= extra_time then 
                return A.ChiBurst:Show(icon)
            end 
            
            if RippleinSpace and not ShouldStop and Pull <= extra_time then 
                return A.RippleinSpace:Show(icon)
            end 
            
            if Pull > 0 then 
                return 
            end 
        end                              
        
        -- Purge
        if A.ArcaneTorrent:AutoRacial(unit, true) then 
            return A.ArcaneTorrent:Show(icon)
        end   
	
        
        -- Interrupts
        local Interrupt = Interrupts(unit, ShouldStop)
        if Interrupt then 
            return Interrupt:Show(icon)
        end         
        
        -- PvP CrownControl 
        -- Grapple Weapon
        if A.GrappleWeapon:IsReady(unit) and Env.GrappleWeaponIsReady(unit) then 
            return A.GrappleWeapon:Show(icon)
        end 
        
        -- PvP CrownControl (Enemy Healer) 
        -- Leg Sweep / Paralysis
        if Env.InPvP() then 
            local EnemyHealerUnitID = Env.EnemyTeam("HEALER"):GetUnitID(5 + (Env.TalentLearn(A.TigerTailSweep.ID) and 2 or 0))
            
            -- Leg Sweep
            -- Note: Stun nearest healer if in range without CC and stun DR
            if EnemyHealerUnitID ~= "none" and not UnitIsUnit(unit, EnemyHealerUnitID) and A.LegSweep:IsReady(EnemyHealerUnitID, true) and A.LegSweep:AbsentImun(EnemyHealerUnitID, {"StunImun", "CCTotalImun", "DamagePhysImun", "TotalImun"}, true) and Env.Unit(EnemyHealerUnitID):IsControlAble("stun", 50) and Env.Unit(EnemyHealerUnitID):InCC() <= Env.CurrentTimeGCD() then
                return A.LegSweep:Show(icon)     
            end 
            
            -- Paralysis
            -- Note: Stop running primary target
            if not inMelee and Env.Unit(unit):IsHealer() and A.Paralysis:IsReady(unit) and A.Paralysis:AbsentImun(EnemyHealerUnitID, {"CCTotalImun", "DamagePhysImun", "TotalImun"}, true) and Env.Unit(unit):IsControlAble("incapacitate", 0) and Env.Unit(unit):HasBuffs("Speed") > 0 and Env.Unit(unit):InCC() <= Env.CurrentTimeGCD() then
                return A.Paralysis:Show(icon)     
            end              
        end 
        
        -- Disable (slow)
        if unit ~= "mouseover" and not ShouldStop and (Env.InPvP() or (not Env.Unit(unit):IsBoss() and Env.UNITMoving(unit, "out"))) and A.Disable:IsReady(unit) and A.Disable:AbsentImun(unit, {"TotalImun", GetAttackType(), "Freedom", "CCTotalImun"}, true) and Env.UNITMaxSpeed(unit) >= 100 and Env.Unit(unit):HasDeBuffs("Slowed") == 0 and not Env.Unit(unit):IsTotem() then 
            return A.Disable:Show(icon)
        end 
        
        -- PvP Switch our attack type to Magic type if unit got physic imun or if we reached cap
        if unit ~= "mouseover" and Env.InPvP() and inMelee and Env.PvPTalentLearn(A.TigereyeBrew.ID) and A.TigereyeBrew:IsReady("player") and Env.Unit("player"):HasBuffs(A.TigereyeBrew.ID, true) == 0 and ((not A.TigereyeBrew:AbsentImun(unit, "DamagePhysImun", true) and GetSpellCount(A.TigereyeBrew.ID) >= 3) or GetSpellCount(A.TigereyeBrew.ID) >= 10) then 
            return A.TigereyeBrew:Show(icon)
        end
        
        -- PvP Reverse Harm (opener)        
        if not ShouldStop and Env.Zone == "arena" and CombatTime("player") > 0 and CombatTime("player") <= 5 and Env.InPvP() and Env.PvPTalentLearn(A.ReverseHarmOpener.ID) and A.ReverseHarmOpener:IsReady(unit, true) and A.ReverseHarmOpener:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and IsSchoolFree() and AoE(1, 5) and not Env.EnemyTeam("HEALER"):IsBreakAble(5) and Env.EnemyTeam():HasInvisibleUnits() and not Env.Unit(unit):IsTotem() and Env.UNITHP("player") <= 99 then
            return A.ReverseHarmOpener:Show(icon)         
        end 
        
        -- actions+=/call_action_list,name=serenity,if=buff.serenity.up
        if unit ~= "mouseover" and Env.TalentLearn(A.Serenity.ID) and Env.Unit("player"):HasBuffs(A.Serenity.ID, true) > 0 and Serenity() then 
            return true 
        end 
        
        -- Bursting #1
        if unit ~= "mouseover" and A.BurstIsON(unit) and inMelee and A.AbsentImun(nil, unit, {"TotalImun", GetAttackType()}) then 
            -- potion,if=buff.serenity.up|buff.storm_earth_and_fire.up|(!talent.serenity.enabled&trinket.proc.agility.react)|buff.bloodlust.react|target.time_to_die<=60
            if A.PotionofUnbridledFury:IsReady(unit) and (Env.Unit("player"):HasBuffs({A.Serenity.ID, A.StormEarthAndFire.ID}, true) > 0 or Env.Unit("player"):HasBuffs({"BurstHaste"}) > 0 or TimeToDie(unit) <= 60) and select(2, Env.CastTime()) == 0 then 
                return A.PotionofUnbridledFury:Show(icon)
            end 
            
            -- actions+=/fist_of_the_white_tiger,if=(energy.time_to_max<1|(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=3
            if not ShouldStop and Env.TalentLearn(A.FistoftheWhiteTiger.ID) and A.FistoftheWhiteTiger:IsReady(unit, true) and (Env.EnergyTimeToMaxPredicted() < 1 or (Env.TalentLearn(A.Serenity.ID) and Env.SpellCD(A.Serenity.ID) < 2)) and ChiDeficit() >= 3 then 
                return A.FistoftheWhiteTiger:Show(icon)
            end 
        end 
        
        -- actions+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=(energy.time_to_max<1|(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=2&!prev_gcd.1.tiger_palm
        if unit ~= "mouseover" and not ShouldStop and A.TigerPalm:IsReady(unit) and A.TigerPalm:AbsentImun(unit, {"TotalImun", GetAttackType()}) and ((Env.EnergyTimeToMaxPredicted() < 1 or (Env.TalentLearn(A.Serenity.ID) and Env.SpellCD(A.Serenity.ID) < 2)) and ChiDeficit() >= 2 and Env.LastPlayerCastID ~= A.TigerPalm.ID) then
            return A.TigerPalm:Show(icon)
        end 
        
        -- Bursting #2
        if unit ~= "mouseover" and A.BurstIsON(unit) then             
            -- Simcraft 
            -- Cooldowns --
            -- actions.cd=invoke_xuen_the_white_tiger
            if not ShouldStop and Env.TalentLearn(A.InvokeXuentheWhiteTiger.ID) and A.InvokeXuentheWhiteTiger:IsReady(unit) and A.InvokeXuentheWhiteTiger:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and IsSchoolFree() then 
                return A.InvokeXuentheWhiteTiger:Show(icon)
            end 
            
            if inMelee and A.AbsentImun(nil, unit, {"TotalImun", GetAttackType()}) then 
                -- Racials 
                if A.BloodFury:AutoRacial(unit, true) then 
                    return A.BloodFury:Show(icon)
                end 
                
                if A.Fireblood:AutoRacial(unit, true) then 
                    return A.Fireblood:Show(icon)
                end 
                
                if A.AncestralCall:AutoRacial(unit, true) then 
                    return A.AncestralCall:Show(icon)
                end 
                
                if A.Berserking:AutoRacial(unit, true) then 
                    return A.Berserking:Show(icon)
                end 
                
                -- Trinkets
                if A.SlotTrinketIsReady(1, unit, "DPS") and A.AbsentImun(nil, unit, "DamageMagicImun") then 
                    return A.SlotTrinketShow(1, icon)
                end 
                
                if A.SlotTrinketIsReady(2, unit, "DPS") and A.AbsentImun(nil, unit, "DamageMagicImun") then 
                    return A.SlotTrinketShow(2, icon)
                end 
            end 
            
            -- actions.cd+=/arcane_torrent,if=chi.max-chi>=1&energy.time_to_max>=0.5
            if A.ArcaneTorrent:AutoRacialP(unit, true) and ChiDeficit() >= 1 and Env.EnergyTimeToMaxPredicted() > 0.5 then
                return A.ArcaneTorrent:Show(icon)
            end 
            
            -- actions.cd+=/touch_of_death,if=target.time_to_die>9
            if not ShouldStop and A.TouchofDeath:IsReady(unit) and A.TouchofDeath:AbsentImun(unit, {"TotalImun", GetAttackType()}) and TimeToDie(unit) > 9 then 
                return A.TouchofDeath:Show(icon)
            end 
            
            -- actions.cd+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2|(cooldown.fists_of_fury.remains<=6&chi>=3&cooldown.rising_sun_kick.remains<=1)|target.time_to_die<=15
            if not Env.TalentLearn(A.Serenity.ID) and not ShouldStop and inMelee and A.StormEarthAndFire:IsReady(unit, true) and A.StormEarthAndFire:AbsentImun(unit, {"TotalImun", GetAttackType()}) and IsSchoolFree() and Env.Unit("player"):HasBuffs(A.StormEarthAndFire.ID, true) == 0 and (Env.SpellCharges(A.StormEarthAndFire.ID) >= 2 or Env.SpellCD(A.FistsofFury.ID) <= 6) and Chi() >= 3 and (Env.SpellCD(A.RisingSunKick.ID) <= 1 or TimeToDie(unit) <= 15) then 
                return A.StormEarthAndFire:Show(icon)
            end 
            
            -- actions.cd+=/serenity,if=cooldown.rising_sun_kick.remains<=2|target.time_to_die<=12
            if Env.TalentLearn(A.Serenity.ID) and not ShouldStop and inMelee and A.Serenity:IsReady(unit, true) and A.Serenity:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.Unit("player"):HasBuffs(A.Serenity.ID, true) == 0 and (Env.SpellCD(A.RisingSunKick.ID) <= 2 or TimeToDie(unit) <= 12) then
                return A.Serenity:Show(icon)
            end 
            
            -- call_action_list,name=essences
            if (isMulti or A.GetToggle(2, "AoE")) and A.BloodoftheEnemy:AutoHeartOfAzeroth(unit) then                                 
                return A.BloodoftheEnemy:Show(icon)                                                 
            end 
            
            if A.FocusedAzeriteBeam:AutoHeartOfAzeroth(unit) then 
                return A.FocusedAzeriteBeam:Show(icon)
            end 
            
            if A.GuardianofAzeroth:AutoHeartOfAzeroth(unit) then 
                return A.GuardianofAzeroth:Show(icon)
            end 
            
            if A.MemoryofLucidDreams:AutoHeartOfAzerothP(unit) and Env.Energy() < 40 and Env.Unit("player"):HasBuffs({A.StormEarthAndFire.ID, A.Serenity.ID}, true) > 0 then 
                return A.MemoryofLucidDreams:Show(icon)
            end
            
            if A.WorldveinResonance:AutoHeartOfAzeroth(unit) then 
                return A.WorldveinResonance:Show(icon)
            end 
        end
        
        if A.ConcentratedFlame:AutoHeartOfAzeroth(unit) then 
            return A.ConcentratedFlame:Show(icon)
        end 
        
        if A.RippleinSpace:AutoHeartOfAzerothP(unit) and Env.Unit(unit):GetRange() <= 25 then 
            return A.RippleinSpace:Show(icon)
        end 
        
        if (isMulti or A.GetToggle(2, "AoE")) and A.PurifyingBlast:AutoHeartOfAzeroth(unit) then 
            return A.PurifyingBlast:Show(icon)
        end 
        
        if unit ~= "mouseover" and A.TheUnboundForce:AutoHeartOfAzeroth(unit) then 
            return A.TheUnboundForce:Show(icon)
        end 
        
        -- AoE 
        if unit ~= "mouseover" and (isMulti or (A.GetToggle(2, "AoE") and AoE(3, 8))) and not Env.Unit(unit):IsTotem() then 
            -- Arcane Pulse
            if A.ArcanePulse:AutoRacial(unit, true) then 
                return A.ArcanePulse:Show(icon)
            end             
            
            -- actions.aoe=rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains,if=(talent.whirling_dragon_punch.enabled&cooldown.whirling_dragon_punch.remains<5)&cooldown.fists_of_fury.remains>3
            if not ShouldStop and A.RisingSunKick:IsReady(unit) and A.RisingSunKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.TalentLearn(A.WhirlingDragonPunch.ID) and Env.SpellCD(A.WhirlingDragonPunch.ID) < 5 and Env.SpellCD(A.FistsofFury.ID) > 3 then 
                return A.RisingSunKick:Show(icon)
            end 
            
            -- actions.aoe=whirling_dragon_punch
            if     not ShouldStop and Env.TalentLearn(A.WhirlingDragonPunch.ID) and A.WhirlingDragonPunch:IsReady(unit, true) and A.WhirlingDragonPunch:AbsentImun(unit, {"TotalImun", GetAttackType()}) and 
            (
                not Env.InPvP() or
                not Env.EnemyTeam("HEALER"):IsBreakAble(8)
            )
            then 
                return A.WhirlingDragonPunch:Show(icon)
            end 
            
            -- actions.aoe+=/energizing_elixir,if=!prev_gcd.1.tiger_palm&chi<=1&energy<50
            if not ShouldStop and Env.TalentLearn(A.EnergizingElixir.ID) and A.EnergizingElixir:IsReady("player") and A.EnergizingElixir:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.LastPlayerCastID ~= A.TigerPalm.ID and Chi() <= 1 and Env.EnergyPredicted() < 50 then 
                return A.EnergizingElixir:Show(icon)
            end 
            
            -- actions.aoe+=/fists_of_fury,if=energy.time_to_max>3
            if    not ShouldStop and A.FistsofFury:IsReady(unit, true) and A.FistsofFury:AbsentImun(unit, {"TotalImun", GetAttackType()}) and A.LossOfControlIsMissed("DISARM") and Env.Unit(unit):GetRange() <= 8 and Env.EnergyTimeToMaxPredicted() > 3 and 
            (
                not Env.InPvP() or
                not Env.EnemyTeam("HEALER"):IsBreakAble(8)
            )
            then 
                return A.FistsofFury:Show(icon)
            end 
            
            -- actions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down
            if     not ShouldStop and Env.TalentLearn(A.RushingJadeWind.ID) and A.RushingJadeWind:IsReady(unit, true) and A.RushingJadeWind:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 8 and Env.Unit("player"):HasBuffs(A.RushingJadeWind.ID, true) == 0 and
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(8) 
            )
            then
                return A.RushingJadeWind:Show(icon)
            end 
            
            -- actions.aoe+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&((chi>3|cooldown.fists_of_fury.remains>6)&(chi>=5|cooldown.fists_of_fury.remains>2)|energy.time_to_max<=3)
            if     not ShouldStop and A.SpinningCraneKick:IsReady(unit, true) and A.SpinningCraneKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.Unit(unit):GetRange() <= 8 and (Env.LastPlayerCastID ~= A.SpinningCraneKick.ID and (((Chi() > 3 or Env.SpellCD(A.FistsofFury.ID) > 6) and (Chi() >= 5 or Env.SpellCD(A.FistsofFury.ID) > 2)) or Env.EnergyTimeToMaxPredicted() <= 3)) and
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(8) 
            )
            then 
                return A.SpinningCraneKick:Show(icon)
            end 
            
            -- actions.aoe+=/reverse_harm,if=chi.max-chi>=2
            if not ShouldStop and Env.InPvP() and Env.PvPTalentLearn(A.ReverseHarm.ID) and A.ReverseHarm:IsReady(unit, true) and AoE(1, 5) and A.ReverseHarm:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and IsSchoolFree() and not Env.EnemyTeam("HEALER"):IsBreakAble(5) and ChiDeficit() >= 2 then
                local ReverseHarm = A.GetToggle(2, "ReverseHarm")
                if (ReverseHarm >= 100 and Env.UNITHP("player") <= 92) or (ReverseHarm < 100 and Env.UNITHP("player") <= ReverseHarm) then
                    return A.ReverseHarm:Show(icon)
                end 
            end 
            
            -- actions.aoe+=/chi_burst,if=chi<=3
            if     not ShouldStop and Env.TalentLearn(A.ChiBurst.ID) and A.ChiBurst:IsReady(unit, true) and not isMoving and IsSchoolFree() and ChiDeficit() <= 3 and Env.Unit(unit):GetRange() <= 40 and                 
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(40) 
            )
            then 
                return A.ChiBurst:Show(icon)
            end 
            
            -- actions.aoe+=/fist_of_the_white_tiger,if=chi.max-chi>=3
            if not ShouldStop and Env.TalentLearn(A.FistoftheWhiteTiger.ID) and A.FistoftheWhiteTiger:IsReady(unit) and A.FistoftheWhiteTiger:AbsentImun(unit, {"TotalImun", GetAttackType()}) and ChiDeficit() >= 3 then 
                return A.FistoftheWhiteTiger:Show(icon)
            end 
            
            -- actions.aoe+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=chi.max-chi>=2&(!talent.hit_combo.enabled|!prev_gcd.1.tiger_palm)
            if not ShouldStop and A.TigerPalm:IsReady(unit) and A.TigerPalm:AbsentImun(unit, {"TotalImun", GetAttackType()}) and ChiDeficit() >= 2 and (not Env.TalentLearn(A.HitCombo.ID) or Env.LastPlayerCastID ~= A.TigerPalm.ID) then
                return A.TigerPalm:Show(icon)
            end 
            
            -- actions.st+=/chi_wave
            if     not ShouldStop and Env.TalentLearn(A.ChiWave.ID) and A.ChiWave:IsReady(unit, true) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 25 and                 
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(25) 
            )
            then 
                return A.ChiWave:Show(icon)
            end 
            
            -- actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1
            if     not ShouldStop and A.FlyingSerpentKick:IsReady(unit, true) and A.FlyingSerpentKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and    Env.Unit("player"):HasBuffs(A.BlackoutKickBuff.ID, true) == 0 and             
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(25) 
            )
            then 
                return A.FlyingSerpentKick:Show(icon)
            end 
            
            -- actions.aoe+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=!prev_gcd.1.blackout_kick&(buff.bok_proc.up|(talent.hit_combo.enabled&prev_gcd.1.tiger_palm&chi<4))
            if not ShouldStop and A.BlackoutKick:IsReady(unit) and A.BlackoutKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and (Env.LastPlayerCastID ~= A.BlackoutKick.ID and (Env.Unit("player"):HasBuffs(A.BlackoutKickBuff.ID, true) > 0 or (Env.TalentLearn(A.HitCombo.ID) and Env.LastPlayerCastID == A.TigerPalm.ID and Chi() < 4))) then 
                return A.BlackoutKick:Show(icon)
            end 
        end 
        
        -- Custom 
        if unit == "mouseover" and not Env.Unit(unit):IsTotem() then 
            -- actions.mouseover+=/whirling_dragon_punch
            if     (A.GetToggle(2, "AoE") or not AoE(2, 8)) and not ShouldStop and Env.TalentLearn(A.WhirlingDragonPunch.ID) and A.WhirlingDragonPunch:IsReady(unit, true) and A.WhirlingDragonPunch:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.Unit(unit):GetRange() <= 8 and
            (
                not Env.InPvP() or
                not Env.EnemyTeam("HEALER"):IsBreakAble(8)
            )
            then 
                return A.WhirlingDragonPunch:Show(icon)
            end 
            
            -- actions.mouseover+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&buff.dance_of_chiji.up
            if     (A.GetToggle(2, "AoE") or not AoE(2, 8)) and not ShouldStop and A.SpinningCraneKick:IsReady(unit, true) and A.SpinningCraneKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.Unit(unit):GetRange() <= 8 and Env.LastPlayerCastID ~= A.SpinningCraneKick.ID and Env.Unit("player"):HasBuffs(A.DanceOfChijiBuff.ID, true) > 0 and
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(8) 
            )
            then 
                return A.SpinningCraneKick:Show(icon)
            end 
            
            -- actions.mouseover+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1
            if     A.GetToggle(2, "AoE") and AoE(2, 8) and not ShouldStop and Env.TalentLearn(A.RushingJadeWind.ID) and A.RushingJadeWind:IsReady(unit, true) and A.RushingJadeWind:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 8 and Env.Unit("player"):HasBuffs(A.RushingJadeWind.ID, true) == 0 and
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(8) 
            )
            then
                return A.RushingJadeWind:Show(icon)
            end 
            
            -- actions.mouseover+=/chi_wave
            if     (A.GetToggle(2, "AoE") or not AoE(2, 25)) and not ShouldStop and Env.TalentLearn(A.ChiWave.ID) and A.ChiWave:IsReady(unit, true) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 25 and                 
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(25) 
            )
            then 
                return A.ChiWave:Show(icon)
            end 
            
            -- actions.mouseover+=/chi_burst,if=chi.max-chi>=1&active_enemies=1|chi.max-chi>=2
            if     (A.GetToggle(2, "AoE") or not AoE(2, 40)) and not ShouldStop and Env.TalentLearn(A.ChiBurst.ID) and A.ChiBurst:IsReady(unit, true) and not isMoving and IsSchoolFree() and Env.Unit(unit):GetRange() <= 40 and ((ChiDeficit() >= 1 and not AoE(2, 8)) or ChiDeficit() >= 2) and                   
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(40) 
            )
            then 
                return A.ChiBurst:Show(icon)
            end 
        end 
        
        -- Single 
        if unit ~= "mouseover" then 
            -- Arcane Pulse
            if A.ArcanePulse:AutoRacial(unit, true) then 
                return A.ArcanePulse:Show(icon)
            end                         
            
            -- actions.st+=/whirling_dragon_punch
            if     (A.GetToggle(2, "AoE") or not AoE(2, 8)) and not ShouldStop and Env.TalentLearn(A.WhirlingDragonPunch.ID) and A.WhirlingDragonPunch:IsReady(unit, true) and A.WhirlingDragonPunch:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.Unit(unit):GetRange() <= 8 and not Env.Unit(unit):IsTotem() and 
            (
                not Env.InPvP() or
                not Env.EnemyTeam("HEALER"):IsBreakAble(8)
            )
            then 
                return A.WhirlingDragonPunch:Show(icon)
            end         
            
            -- actions.st+=/rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains,if=chi>=5
            if not ShouldStop and A.RisingSunKick:IsReady(unit) and A.RisingSunKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Chi() >= 5 then 
                return A.RisingSunKick:Show(icon)
            end 
            
            -- actions.st+=/fists_of_fury,if=energy.time_to_max>3
            if    (A.GetToggle(2, "AoE") or not AoE(2, 8)) and not ShouldStop and A.FistsofFury:IsReady(unit, true) and A.FistsofFury:AbsentImun(unit, {"TotalImun", GetAttackType()}) and A.LossOfControlIsMissed("DISARM") and Env.Unit(unit):GetRange() <= 8 and Env.EnergyTimeToMaxPredicted() > 3 and not Env.Unit(unit):IsTotem() and 
            (
                not Env.InPvP() or
                not Env.EnemyTeam("HEALER"):IsBreakAble(8)
            )
            then 
                return A.FistsofFury:Show(icon)
            end 
            
            -- actions.st+=/rising_sun_kick,target_if=min:debuff.mark_of_the_crane.remains
            if not ShouldStop and A.RisingSunKick:IsReady(unit) and A.RisingSunKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) then 
                return A.RisingSunKick:Show(icon)
            end 
            
            -- actions.st+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&buff.dance_of_chiji.up
            if     (A.GetToggle(2, "AoE") or not AoE(2, 8)) and not ShouldStop and A.SpinningCraneKick:IsReady(unit, true) and A.SpinningCraneKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.Unit(unit):GetRange() <= 8 and Env.LastPlayerCastID ~= A.SpinningCraneKick.ID and Env.Unit("player"):HasBuffs(A.DanceOfChijiBuff.ID, true) > 0 and not Env.Unit(unit):IsTotem() and
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(8) 
            )
            then 
                return A.SpinningCraneKick:Show(icon)
            end 
            
            -- actions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1
            if     A.GetToggle(2, "AoE") and AoE(2, 8) and not ShouldStop and Env.TalentLearn(A.RushingJadeWind.ID) and A.RushingJadeWind:IsReady(unit, true) and A.RushingJadeWind:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 8 and Env.Unit("player"):HasBuffs(A.RushingJadeWind.ID, true) == 0 and not Env.Unit(unit):IsTotem() and
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(8) 
            )
            then
                return A.RushingJadeWind:Show(icon)
            end 
            
            -- actions.st+=/reverse_harm,if=chi.max-chi>=2
            if not ShouldStop and Env.InPvP() and Env.PvPTalentLearn(A.ReverseHarm.ID) and A.ReverseHarm:IsReady(unit, true) and Env.Unit(unit):GetRange() <= 5 and A.ReverseHarm:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and IsSchoolFree() and not Env.EnemyTeam("HEALER"):IsBreakAble(5) and ChiDeficit() >= 2 and not Env.Unit(unit):IsTotem() then
                local ReverseHarm = A.GetToggle(2, "ReverseHarm")
                if (ReverseHarm >= 100 and Env.UNITHP("player") <= 92) or (ReverseHarm < 100 and Env.UNITHP("player") <= ReverseHarm) then
                    return A.ReverseHarm:Show(icon)
                end 
            end 
            
            -- actions.st+=/fist_of_the_white_tiger,if=chi<=2
            if not ShouldStop and Env.TalentLearn(A.FistoftheWhiteTiger.ID) and A.FistoftheWhiteTiger:IsReady(unit) and A.FistoftheWhiteTiger:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Chi() <= 2 then 
                return A.FistoftheWhiteTiger:Show(icon)
            end
            
            -- actions.st+=/energizing_elixir,if=chi<=3&energy<50
            if not ShouldStop and Env.TalentLearn(A.EnergizingElixir.ID) and A.EnergizingElixir:IsReady("player") and A.EnergizingElixir:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Chi() <= 3 and Env.EnergyPredicted() < 50 and not Env.Unit(unit):IsTotem() then 
                return A.EnergizingElixir:Show(icon)
            end
            
            -- actions.st+=/blackout_kick,target_if=min:debuff.mark_of_the_crane.remains,if=!prev_gcd.1.blackout_kick&(cooldown.rising_sun_kick.remains>3|chi>=3)&(cooldown.fists_of_fury.remains>4|chi>=4|(chi=2&prev_gcd.1.tiger_palm)|(azerite.swift_roundhouse.rank>=2&active_enemies=1))&buff.swift_roundhouse.stack<2
            if not ShouldStop and A.BlackoutKick:IsReady(unit) and A.BlackoutKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and (Env.LastPlayerCastID ~= A.BlackoutKick.ID and (Env.SpellCD(A.RisingSunKick.ID) > 3 or Chi() >= 3) and (Env.SpellCD(A.FistsofFury.ID) > 4 or Chi() >= 4 or (Chi() == 2 and Env.LastPlayerCastID == A.TigerPalm.ID) or (AzeriteRank(A.SwiftRoundhouse.ID) >= 2 and not AoE(2, 5))) and Env.Unit("player"):HasBuffs(A.SwiftRoundhouseBuff.ID, true) < 2) then 
                return A.BlackoutKick:Show(icon)
            end 
            
            -- actions.st+=/chi_wave
            if     (A.GetToggle(2, "AoE") or not AoE(2, 25)) and not ShouldStop and Env.TalentLearn(A.ChiWave.ID) and A.ChiWave:IsReady(unit, true) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 25 and    not Env.Unit(unit):IsTotem() and             
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(25) 
            )
            then 
                return A.ChiWave:Show(icon)
            end 
            
            -- actions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1|chi.max-chi>=2
            if     (A.GetToggle(2, "AoE") or not AoE(2, 40)) and not ShouldStop and Env.TalentLearn(A.ChiBurst.ID) and A.ChiBurst:IsReady(unit, true) and not isMoving and IsSchoolFree() and Env.Unit(unit):GetRange() <= 40 and ((ChiDeficit() >= 1 and not AoE(2, 8)) or ChiDeficit() >= 2) and not Env.Unit(unit):IsTotem() and                      
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(40) 
            )
            then 
                return A.ChiBurst:Show(icon)
            end 
            
            -- actions.st+=/tiger_palm,target_if=min:debuff.mark_of_the_crane.remains,if=!prev_gcd.1.tiger_palm&chi.max-chi>=2&(buff.rushing_jade_wind.down|energy>56)
            if not ShouldStop and A.TigerPalm:IsReady(unit) and A.TigerPalm:AbsentImun(unit, {"TotalImun", GetAttackType()}) and Env.LastPlayerCastID ~= A.TigerPalm.ID and ChiDeficit() >= 2 and (Env.Unit("player"):HasBuffs(A.RushingJadeWind.ID, true) == 0 or Env.EnergyPredicted() > 56) then
                return A.TigerPalm:Show(icon)
            end 
            
            -- actions.st+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3&buff.swift_roundhouse.stack<2,interrupt=1        
            if     not ShouldStop and A.FlyingSerpentKick:IsReady(unit, true) and A.FlyingSerpentKick:AbsentImun(unit, {"TotalImun", GetAttackType()}) and             
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(25) 
            ) and 
            (
                Env.PvPTalentLearn(A.RidetheWind.ID) or
                A.LossOfControlIsMissed("ROOT")
            )
            then 
                if Env.LastPlayerCastID == A.BlackoutKick.ID and Chi() > 3 and Env.Unit("player"):HasBuffsStacks(A.SwiftRoundhouse.ID, true) < 2 then 
                    return A.FlyingSerpentKick:Show(icon)
                end 
                
                if Env.PvPTalentLearn(A.RidetheWind.ID) and not A.LossOfControlIsMissed("ROOT") then 
                    return A.FlyingSerpentKick:Show(icon)
                end 
            end 
        end 
        
        -- Misc - Supportive 
        if not ShouldStop and Env.TalentLearn(A.TigersLust.ID) and A.TigersLust:IsReady("player") and IsSchoolFree() then 
            if Env.Unit("player"):HasDeBuffs("Rooted") > 0.5 then 
                return A.TigersLust:Show(icon)
            end 
            
            local cUnitSpeed = Env.UNITCurrentSpeed("player")
            if cUnitSpeed > 0 and cUnitSpeed < 64 then 
                return A.TigersLust:Show(icon)
            end 
        end 
        
        if not ShouldStop and A.Detox:IsReady("player") and IsSchoolFree() and A.AuraIsValid("player", "UseDispel", "Dispel") then 
            return A.Detox:Show(icon)
        end         
        
        if A.GiftofNaaru:AutoRacial("player", true) then 
            return A.GiftofNaaru:Show(icon)
        end 
        
        -- Misc - Range         
        if not ShouldStop and not isMoving and not inMelee and A.CracklingJadeLightning:IsReady(unit) and A.CracklingJadeLightning:AbsentImun(unit, {"TotalImun", "DamageMagicImun"}) and Env.Unit(unit):GetRange() > 25 then 
            return A.CracklingJadeLightning:Show(icon)
        end 
        
        if unit ~= "mouseover" and not inMelee and isMoving and TMW.time - Env.PlayerMovementStarted > 2 and not IsMounted() then         
            if not Env.TalentLearn(A.ChiTorpedo.ID) and A.Roll:IsReady(unit, true) and Env.Unit(unit):GetRange() >= 15 then 
                return A.Roll:Show(icon)
            end 
            
            if Env.TalentLearn(A.ChiTorpedo.ID) and A.ChiTorpedo:IsReady(unit, true) and Env.Unit(unit):GetRange() >= 20 then 
                return A.ChiTorpedo:Show(icon)
            end 
        end
    end 
    
    local function FriendlyRotation(unit)
        -- Purge
        if A.ArcaneTorrent:AutoRacial(unit, true) then 
            return A.ArcaneTorrent:Show(icon)
        end     
        
        -- Out of combat        
        if CombatTime("player") == 0 and A.Resuscitate:IsReady(unit) and Env.UNITDead(unit) and UnitIsPlayer(unit) and not isMoving and IsSchoolFree() then 
            return A.Resuscitate:Show(icon)
        end 
        
        -- Supportive
        if not ShouldStop and A.Detox:IsReady(unit) and A.Detox:AbsentImun(unit) and IsSchoolFree() and A.AuraIsValid(unit, "UseDispel", "Dispel") then 
            return A.Detox:Show(icon)
        end 
        
        if not ShouldStop and Env.TalentLearn(A.TigersLust.ID) and A.TigersLust:IsReady(unit) and A.TigersLust:AbsentImun(unit) and IsSchoolFree() then 
            if Env.Unit(unit):HasDeBuffs("Rooted") > 1.5 then 
                return A.TigersLust:Show(icon)
            end 
            
            local cUnitSpeed = Env.UNITCurrentSpeed(unit)
            if cUnitSpeed > 0 and cUnitSpeed < 64 then 
                return A.TigersLust:Show(icon)
            end 
        end         
        
        -- AoE (ChiBurst / ChiWave)
        if isMulti then 
            if     not ShouldStop and not isMoving and Env.TalentLearn(A.ChiBurst.ID) and A.ChiBurst:IsReady(unit, true) and A.ChiBurst:AbsentImun(unit) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 40 and Env.PredictHeal("ChiBurst", A.ChiBurst.ID, unit) and 
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(40)                
            )
            then 
                return A.ChiBurst:Show(icon)
            end 
            
            if     not ShouldStop and Env.TalentLearn(A.ChiWave.ID) and A.ChiWave:IsReady(unit, true) and A.ChiWave:AbsentImun(unit) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 25 and Env.PredictHeal("ChiWave", A.ChiWave.ID, unit) and
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(25)                
            )
            then 
                return A.ChiWave:Show(icon)
            end 
        end
        
        -- PvP: Reverse Harm
        if not ShouldStop and Env.InPvP() and Env.PvPTalentLearn(A.ReverseHarm.ID) and A.ReverseHarm:IsReady(unit) and A.ReverseHarm:AbsentImun(unit) and IsSchoolFree() and not Env.EnemyTeam("HEALER"):IsBreakAble(15) then
            local ReverseHarm = A.GetToggle(2, "ReverseHarm")
            if (ReverseHarm >= 100 and Env.UNITHP(unit) < 92) or (ReverseHarm < 100 and Env.UNITHP(unit) < ReverseHarm) then 
                return A.ReverseHarm:Show(icon)
            end 
        end 
        
        -- Vivify
        if not ShouldStop and not isMoving and A.Vivify:IsReady(unit) and A.Vivify:AbsentImun(unit) and IsSchoolFree() and (UnitIsUnit(unit, "player") or Env.PredictHeal("Vivify", A.Vivify.ID, unit)) then 
            return A.Vivify:Show(icon)
        end     
        
        -- Racial 
        if A.GiftofNaaru:AutoRacial(unit, true) then 
            return A.GiftofNaaru:Show(icon)
        end         
        
        -- Azerite Essences 
        if A.ConcentratedFlame:AutoHeartOfAzeroth(unit) then 
            return A.ConcentratedFlame:Show(icon)
        end         
        
        -- AoE (ChiBurst / ChiWave)
        if A.GetToggle(2, "AoE") then 
            if     not ShouldStop and not isMoving and Env.TalentLearn(A.ChiBurst.ID) and A.ChiBurst:IsReady(unit, true) and A.ChiBurst:AbsentImun(unit) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 40 and Env.PredictHeal("ChiBurst", A.ChiBurst.ID, unit) and 
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(40)                
            )
            then 
                return A.ChiBurst:Show(icon)
            end 
            
            if     not ShouldStop and Env.TalentLearn(A.ChiWave.ID) and A.ChiWave:IsReady(unit, true) and A.ChiWave:AbsentImun(unit) and IsSchoolFree() and Env.Unit(unit):GetRange() <= 25 and Env.PredictHeal("ChiWave", A.ChiWave.ID, unit) and
            (
                not Env.InPvP() or 
                not Env.EnemyTeam("HEALER"):IsBreakAble(25)                
            )
            then 
                return A.ChiWave:Show(icon)
            end 
        end        
    end 
    
    -- Defensive
    local SelfDefensive = SelfDefensives()
    if SelfDefensive then 
        return SelfDefensive:Show(icon)
    end 
    
    -- Trinkets (Defensive)
    if CombatTime("player") > 0 and Env.UNITHP("player") <= A.GetToggle(2, "TrinketDefensive") then 
        if A.SlotTrinketIsReady(1, "player", "DEFF") then 
            return A.SlotTrinketShow(1, icon)
        end 
        
        if A.SlotTrinketIsReady(2, "player", "DEFF") then 
            return A.SlotTrinketShow(2, icon)
        end 
    end 
    
    -- Mouseover 
    if A.IsUnitFriendly("mouseover") then 
        unit = "mouseover"    
        
        if FriendlyRotation(unit) then 
            return true 
        end             
    end 
    
    if A.IsUnitEnemy("mouseover") then 
        unit = "mouseover"
        
        if EnemyRotation(unit) then 
            return true 
        end 
    end 
    
    -- Target         
    if A.IsUnitFriendly("target") then 
        unit = "target"
        
        if FriendlyRotation(unit) then 
            return true 
        end 
    end 
    
    if A.IsUnitEnemy("target") then 
        unit = "target"
        
        if EnemyRotation(unit) then 
            return true 
        end 
    end 
    
    -- Misc         
    if not ShouldStop and Env.Zone == "arena" and CombatTime("player") == 0 and not IsMounted() and A.SpinningCraneKick:IsReady() and (isMulti or A.GetToggle(2, "AoE")) and Env.EnemyTeam():HasInvisibleUnits() and not Env.EnemyTeam("HEALER"):IsBreakAble(8) then 
        return A.SpinningCraneKick:Show(icon)         
    end 
    
    -- Movement
    -- If not moving or moving lower than 2.5 sec 
    if Env.PlayerMovementStarted == 0 or TMW.time - Env.PlayerMovementStarted < 2.5 then 
        return 
    end 
    
    if not Env.TalentLearn(A.ChiTorpedo.ID) and A.Roll:IsReady(unit, true) and (unit == "player" or not UnitExists(unit)) and IsIndoors() and CombatTime("player") == 0 then 
        return A.Roll:Show(icon)
    end 
    
    if Env.TalentLearn(A.ChiTorpedo.ID) and A.ChiTorpedo:IsReady(unit, true) and (unit == "player" or not UnitExists(unit)) and IsIndoors() and CombatTime("player") == 0 then 
        return A.ChiTorpedo:Show(icon)
    end     
end 

-- [4] AoE Rotation
A[4] = function(icon)
    return A[3](icon, true)
end 

-- [5] Trinket Rotation
-- No specialization trinket actions 

-- Passive 
local function FreezingTrapUsedByEnemy()
    if     UnitCooldown:GetCooldown("arena", 3355) > UnitCooldown:GetMaxDuration("arena", 3355) - 2 and 
    UnitCooldown:IsSpellInFly("arena", 3355) and 
    getDR("player", "incapacitate") >= 50 
    then 
        local Caster = UnitCooldown:GetUnitID("arena", 3355)
        if Caster and Env.Unit(Caster):GetRange() <= 40 then 
            return true 
        end 
    end 
end 

local function ArenaRotation(icon, unit)
    if Env.InPvP() and not IsStealthed() and not IsMounted() then             
        -- Note: "arena1" is just identification of meta 6
        if unit == "arena1"  and (getDMG("player") == 0 or not Env.Unit("player"):IsFocused("DAMAGER")) then                 
            -- PvP Pet Taunt        
            if A.Provoke:IsReady() and Env.EnemyTeam():IsTauntPetAble(A.Provoke.ID) then 
                -- Freezing Trap 
                if FreezingTrapUsedByEnemy() then 
                    return A.Provoke:Show(icon)
                end 
                
                -- Casting BreakAble CC
                if Env.EnemyTeam():IsCastingBreakAble(0.25) then 
                    return A.Provoke:Show(icon)
                end 
                
                -- Try avoid something totally random at opener (like sap / blind)
                if CombatTime("player") <= 5 and (CombatTime("player") > 0 or CombatTime("target") > 0 or CombatUnits(1)) then 
                    return A.Provoke:Show(icon) 
                end 
                
                -- Roots if not available freedom 
                if LossOfControlGet("ROOT") > 0 and (not Env.TalentLearn(A.TigersLust.ID) or not A.TigersLust:IsReadyP("player")) and (not Env.PvPTalentLearn(A.RidetheWind.ID) or not A.FlyingSerpentKick:IsReadyP("target", true)) then 
                    return A.Provoke:Show(icon) 
                end 
            end 
        end 
        
        if Env.GrappleWeaponIsReady(unit) and not Env.InLOS(unit) then
            return A.GrappleWeapon:Show(icon)
        end         
        
        if Env.InPvP() and A.GetToggle(1, "AutoTarget") and A.IsUnitEnemy("target") and not A.AbsentImun(nil, "target", {GetAttackType(), "TotalImun"}) and CombatUnits(2, 12) and not A.FrameHasSpell(TellMeWhen_Group1_Icon3, A.TigereyeBrew.ID) then 
            Action.TMWAPL(icon, "texture", ACTION_CONST_ATARGET)             
            return true
        end         
    end 
end 

local function PartyRotation(unit)
    if (unit == "party1" and not A.GetToggle(2, "PartyUnits")[1]) or (unit == "party2" and not A.GetToggle(2, "PartyUnits")[2]) then 
        return false 
    end 
    
    local ShouldStop = A.ShouldStop()
    
    -- Detox 
    if not ShouldStop and A.Detox:IsReady(unit) and A.Detox:AbsentImun(unit) and IsSchoolFree() and A.AuraIsValid(unit, "UseDispel", "Dispel") and not Env.InLOS(unit) then                         
        return A.Detox
    end         
    
    -- Tiger Lust
    if not ShouldStop and Env.TalentLearn(A.TigersLust.ID) and A.TigersLust:IsReady(unit) and A.TigersLust:AbsentImun(unit) and IsSchoolFree() and not Env.Unit("player", 5):HasFlags() and (Env.Unit(unit):IsFocused(nil, true) or (Env.Unit(unit):IsMelee() and Env.Unit(unit):HasBuffs("DamageBuffs") > 0)) and not Env.InLOS(unit) then 
        if Env.Unit(unit):HasDeBuffs("Rooted") > Env.GCD() then 
            return A.TigersLust
        end 
        
        local cMoving = Env.UNITCurrentSpeed(unit)
        if cMoving > 0 and cMoving < 64 then -- 64 because unit can moving backward 
            return A.TigersLust
        end 
    end 
    
    -- PvP: Reverse Harm
    if     not ShouldStop and Env.InPvP() and Env.PvPTalentLearn(A.ReverseHarm.ID) and A.ReverseHarm:IsReady(unit) and A.ReverseHarm:AbsentImun(unit) and IsSchoolFree() and not Env.InLOS(unit) and not Env.EnemyTeam("HEALER"):IsBreakAble(15) and 
    (
        (
            unit == "party1" and (Env.UNITHP("party2") >= Env.UNITHP("party1") or not UnitExists("party2") or Env.InLOS("party2") or not A.ReverseHarm:AbsentImun("party2") or not Env.SpellInRange("party2", A.ReverseHarm.ID))
        ) or 
        (
            unit == "party2" and (Env.UNITHP("party1") >= Env.UNITHP("party2") or not UnitExists("party1") or Env.InLOS("party1") or not A.ReverseHarm:AbsentImun("party1") or not Env.SpellInRange("party1", A.ReverseHarm.ID))
        )
    )
    then
        local ReverseHarm = A.GetToggle(2, "ReverseHarm")
        if (ReverseHarm >= 100 and Env.UNITHP(unit) < 92) or (ReverseHarm < 100 and Env.UNITHP(unit) < ReverseHarm) then
            return A.ReverseHarm
        end 
    end 
end 

A[6] = function(icon)    
    return ArenaRotation(icon, "arena1")
end

A[7] = function(icon)
    local Party = PartyRotation("party1") 
    if Party then 
        return Party:Show(icon)
    end 
    
    return ArenaRotation(icon, "arena2")
end

A[8] = function(icon)
    local Party = PartyRotation("party2") 
    if Party then 
        return Party:Show(icon)
    end     
    
    return ArenaRotation(icon, "arena3")
end

