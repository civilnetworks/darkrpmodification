/*---------------------------------------------------------------------------
F4 menu tab modification module.
---------------------------------------------------------------------------*/


local url = "http://www.civilgamers.com/faq"
local tabName = "F.A.Q"


local function createF4MenuTab()
	// DarkRP.switchTabOrder(2, 3) -- Remove the "//" in this line if you want to move the third tab to the left of the second tab!
	// DarkRP.removeF4MenuTab("Ammo") -- Remove the "//" in this line if you want to remove the Ammo tab!

	local webPage = vgui.Create("F1HTML")
	webPage:OpenURL(url)
	DarkRP.addF4MenuTab(tabName, webPage)
end
hook.Add("F4MenuTabs", "MyCustomF4MenuTab", createF4MenuTab)
