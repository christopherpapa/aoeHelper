local nextPage = 1
local frame = CreateFrame("Frame", nil, UIParent)
frame:SetWidth(1) 
frame:SetHeight(1)
frame:SetPoint("CENTER", 0, -100)
local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
text:SetTextColor(1,1,1,1)
text:SetPoint("CENTER", 0, 0)

function toggleTargets() 
    if(nextPage == 1)
    then
        flashMessage("SINGLE TARGET ACTIVATED")
        ChangeActionBarPage(1)
        nextPage = 2
    else
        flashMessage("AOE ACTIVATED")
        ChangeActionBarPage(2)
        nextPage = 1
    end
end

function flashMessage(message) 
    text:SetText(message)
    fadeInTime = 0.5
    fadeOutTime = 0.5
    flashDuration = 1
    showWhenDone = false
    flashInHoldTime = 0
    flashOutHoldTime = 0.5

    UIFrameFlash(frame, fadeInTime, fadeOutTime, flashDuration, showWhenDone, flashInHoldTime, flashOutHoldTime)
end