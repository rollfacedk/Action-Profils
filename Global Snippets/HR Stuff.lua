------------------------------------------
--------- HERO ROTATION STUFF ----------
------------------------------------------
-- Updated 30-08-2019

local TMW = TMW 
local CNDT = TMW.CNDT 
local Env = CNDT.Env
local Action = Action
-- HeroRotation
local HR = HeroRotation
-- HeroLib
local HL = HeroLib;
local Cache = HeroCache;
local Unit = HL.Unit;
local Player = Unit.Player;
local Target = Unit.Target;
local Spell = HL.Spell;
local Item = HL.Item;
-- Lua
local pairs = pairs;
-- File Locals
HR.Commons = {};
local Commons = {};
HR.Commons.Everyone = Commons;

--- ============================ CONTENT ============================
-- Is the current target valid ?
function Commons.TargetIsValid ()
   return Target:Exists() and Player:CanAttack(Target) and not Target:IsDeadOrGhost();
end

-- Put EnemiesCount to 1 if we have AoEON or are targetting an AoE insensible unit
local AoEInsensibleUnit = {
    --- Legion
    ----- Dungeons (7.0 Patch) -----
    --- Mythic+ Affixes
    -- Fel Explosives (7.2 Patch)
        [120651] = true
}
function Commons.AoEToggleEnemiesUpdate ()
    if not HR.AoEON() or AoEInsensibleUnit[Target:NPCID()] then
        for Key, Value in pairs(Cache.EnemiesCount) do
            Cache.EnemiesCount[Key] = math.min(1, Cache.EnemiesCount[Key]);
        end
    end
end

-- Is the current unit valid during cycle ?
function Commons.UnitIsCycleValid (Unit, BestUnitTTD, TimeToDieOffset)
    return not Unit:IsFacingBlacklisted() and not Unit:IsUserCycleBlacklisted() and (not BestUnitTTD or Unit:FilteredTimeToDie(">", BestUnitTTD, TimeToDieOffset));
end

-- Is it worth to DoT the unit ?
function Commons.CanDoTUnit (Unit, HealthThreshold)
    return Unit:Health() >= HealthThreshold or Unit:IsDummy();
end

-----------------------------------------------
-------- Rogue -------------------------------

 -- poisoned
    --[[ Original SimC Code
        return dots.deadly_poison -> is_ticking() ||
                        debuffs.wound_poison -> check();
    ]]
    function Commons.Poisoned (Unit)
        return (Unit:Debuff(Spell.Rogue.Assassination.DeadlyPoisonDebuff) or Unit:Debuff(Spell.Rogue.Assassination.WoundPoisonDebuff)) and true or false;
    end

    -- poison_remains
    --[[ Original SimC Code
        if ( dots.deadly_poison -> is_ticking() ) {
            return dots.deadly_poison -> remains();
        } else if ( debuffs.wound_poison -> check() ) {
            return debuffs.wound_poison -> remains();
        } else {
            return timespan_t::from_seconds( 0.0 );
        }
    ]]
    function Commons.PoisonRemains (Unit)
        return (Unit:Debuff(Spell.Rogue.Assassination.DeadlyPoisonDebuff) and Unit:DebuffRemainsP(Spell.Rogue.Assassination.DeadlyPoisonDebuff))
            or (Unit:Debuff(Spell.Rogue.Assassination.WoundPoisonDebuff) and Unit:DebuffRemainsP(Spell.Rogue.Assassination.WoundPoisonDebuff))
            or 0;
    end

    -- bleeds
    --[[ Original SimC Code
        rogue_td_t* tdata = get_target_data( target );
        return tdata -> dots.garrote -> is_ticking() +
                     tdata -> dots.internal_bleeding -> is_ticking() +
                     tdata -> dots.rupture -> is_ticking();
    ]]
    function Commons.Bleeds ()
        return (Target:Debuff(Spell.Rogue.Assassination.Garrote) and 1 or 0) + (Target:Debuff(Spell.Rogue.Assassination.Rupture) and 1 or 0)
        + (Target:Debuff(Spell.Rogue.Assassination.CrimsonTempest) and 1 or 0) + (Target:Debuff(Spell.Rogue.Assassination.InternalBleeding) and 1 or 0);
    end

    -- poisoned_bleeds
    --[[ Original SimC Code
        int poisoned_bleeds = 0;
        for ( size_t i = 0, actors = sim -> target_non_sleeping_list.size(); i < actors; i++ )
        {
            player_t* t = sim -> target_non_sleeping_list[i];
            rogue_td_t* tdata = get_target_data( t );
            if ( tdata -> lethal_poisoned() ) {
                poisoned_bleeds += tdata -> dots.garrote -> is_ticking() +
                                                        tdata -> dots.internal_bleeding -> is_ticking() +
                                                        tdata -> dots.rupture -> is_ticking();
            }
        }
        return poisoned_bleeds;
    ]]
    local PoisonedBleedsCount = 0;
    function Commons.PoisonedBleeds ()
        PoisonedBleedsCount = 0;
        for _, Unit in pairs(Cache.Enemies[50]) do
            if Commons.Poisoned(Unit) then
                -- TODO: For loop for this ? Not sure it's worth considering we would have to make 2 times spell object (Assa is init after Commons)
                if Unit:Debuff(Spell.Rogue.Assassination.Garrote) then
                    PoisonedBleedsCount = PoisonedBleedsCount + 1;
                end
                if Unit:Debuff(Spell.Rogue.Assassination.InternalBleeding) then
                    PoisonedBleedsCount = PoisonedBleedsCount + 1;
                end
                if Unit:Debuff(Spell.Rogue.Assassination.Rupture) then
                    PoisonedBleedsCount = PoisonedBleedsCount + 1;
                end
            end
        end
        return PoisonedBleedsCount;
    end