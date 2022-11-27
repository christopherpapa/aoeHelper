local panel = CreateFrame("Frame")
panel.name = "AoE Helper"               -- see panel fields
InterfaceOptions_AddCategory(panel)     -- see InterfaceOptions API

-- add widgets to the panel as desired
local title = panel:CreateFontString("ARTWORK", nil, "GameFontNormalLarge")
title:SetPoint("TOP")
title:SetText("Aoe Helper")

-- Create the scrolling parent frame and size it to fit inside the texture
-- local scrollFrame = CreateFrame("ScrollFrame", nil, panel, "UIPanelScrollFrameTemplate")
-- scrollFrame:SetPoint("TOPLEFT", 3, -4)
-- scrollFrame:SetPoint("BOTTOMRIGHT", -27, 4)

-- Create the scrolling child frame, set its width to fit, and give it an arbitrary minimum height (such as 1)
-- local scrollChild = CreateFrame("Frame")
-- scrollFrame:SetScrollChild(scrollChild)
-- scrollChild:SetWidth(InterfaceOptionsFramePanelContainer:GetWidth()-18)
-- scrollChild:SetHeight(1) 

-- local footer = scrollChild:CreateFontString("ARTWORK", nil, "GameFontNormal")
-- footer:SetPoint("TOP", 0, -5000)
-- footer:SetText("This is 5000 below the top, so the scrollChild automatically expanded.")




local btn = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
btn:SetPoint("TOPLEFT", 0, -40)
btn:SetText("Add Macro")
btn:SetWidth(100)
btn:SetScript("OnClick", function()
	setMacro()
end)




-- local f = CreateFrame("Frame")

-- local defaults = {
-- 	page1message = "SINGLE TARGET ACTIVATED",
--     page2message = "AOE ACTIVATED"
-- }

-- function f:OnEvent(event, addOnName)
-- 	if addOnName == "HelloWorld" then
-- 		HelloWorldDB = HelloWorldDB or CopyTable(defaults)
-- 		self.db = HelloWorldDB
-- 		self:InitializeOptions()
-- 		hooksecurefunc("JumpOrAscendStart", function()
-- 			if self.db.someOption then
-- 				print("Your character jumped.")
-- 			end
-- 		end)
-- 	end
-- end

-- f:RegisterEvent("ADDON_LOADED")
-- f:SetScript("OnEvent", f.OnEvent)

-- function f:InitializeOptions()
-- 	self.panel = CreateFrame("Frame")
-- 	self.panel.name = "HelloWorld"

-- 	local cb = CreateFrame("CheckButton", nil, self.panel, "InterfaceOptionsCheckButtonTemplate")
-- 	cb:SetPoint("TOPLEFT", 20, -20)
-- 	cb.Text:SetText("Print when you jump")
-- 	-- there already is an existing OnClick script that plays a sound, hook it
-- 	cb:HookScript("OnClick", function(_, btn, down)
-- 		self.db.someOption = cb:GetChecked()
-- 	end)
-- 	cb:SetChecked(self.db.someOption)

-- 	local btn = CreateFrame("Button", nil, self.panel, "UIPanelButtonTemplate")
-- 	btn:SetPoint("TOPLEFT", cb, 0, -40)
-- 	btn:SetText("Click me")
-- 	btn:SetWidth(100)
-- 	btn:SetScript("OnClick", function()
-- 		print("You clicked me!")
-- 	end)

-- 	InterfaceOptions_AddCategory(self.panel)
-- end

-- SLASH_HELLOW1 = "/hw"
-- SLASH_HELLOW2 = "/helloworld"

-- SlashCmdList.HELLOW = function(msg, editBox)
-- 	InterfaceOptionsFrame_OpenToCategory(f.panel)
-- end