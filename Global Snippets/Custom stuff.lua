local TMW = TMW
local CNDT = TMW.CNDT
local Env = CNDT.Env
local Action = Action

-- AoE Status on Main Icon
function Action.AoEToggleMode()
    Action.UseAoE = Action.GetToggle(2, "AoE")    
    if Action.UseAoE == false then 
        Action.UseAoE = true
    else
        Action.UseAoE = false
    end
    Action.SetToggle({2, "AoE"})        
    Action.Print(Action.UseAoE and "Mode AoE: On" or not Action.UseAoE and "Mode AoE: Off")
    TMW:Fire("TMW_ACTION_AOE_MODE_CHANGED")
end 


-- Load default profils for each class
local currentClass = select(2, UnitClass("player"))

if currentClass == "WARRIOR" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Warrior"
	Action.Print("Automatically loaded profile : [Taste]Action - Warrior")
end
	
if currentClass == "WARLOCK" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Warlock"
	Action.Print("Automatically loaded profile : [Taste]Action - Warlock")
end

if currentClass == "ROGUE" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Rogue"
	Action.Print("Automatically loaded profile : [Taste]Action - Rogue")
end

if currentClass == "PRIEST" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Priest"
	Action.Print("Automatically loaded profile : [Taste]Action - Priest")
end

if currentClass == "PALADIN" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Paladin"
	Action.Print("Automatically loaded profile : [Taste]Action - Paladin")
end

if currentClass == "MAGE" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Mage"
	Action.Print("Automatically loaded profile : [Taste]Action - Mage")
end

if currentClass == "HUNTER" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Hunter"
	Action.Print("Automatically loaded profile : [Taste]Action - Hunter")
end

if currentClass == "DRUID" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Druid"
	Action.Print("Automatically loaded profile : [Taste]Action - Druid")
end

if currentClass == "DEMON HUNTER" then
    Action.Data.DefaultProfile[currentClass] = "[Taste]Action - Demon Hunter"
	Action.Print("Automatically loaded profile : [Taste]Action - Demon Hunter")
end

