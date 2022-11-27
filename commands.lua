SLASH_AOEHELPER1, SLASH_AOEHELPER2 = '/aoehelper', '/aoehelp'
local function handler(msg, editBox)
    InterfaceOptionsFrame_OpenToCategory("AoE Helper")    
end
SlashCmdList["AOEHELPER"] = handler