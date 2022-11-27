function setMacro() 
    name = "AoEHelper"
    iconFileName = "inv_pet_cats_cornishrexcat"
    iconId = 656577
    body = "/script toggleTargets()"
    perCharacter = nil
    isLocal = 1
    existingIndex = GetMacroIndexByName(name)

    if (existingIndex == 0)
    then
        CreateMacro(name, iconFileName, body, perCharacter)
        flashMessage("Macro added")
    else
        EditMacro(existingIndex, name, iconId, body, isLocal, perCharacter)
        flashMessage("Macro updated")
    end
end