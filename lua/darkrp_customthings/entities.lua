--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]

local loadedEntities = false

local function AddEntities()

	if (loadedEntities) then
		print("Tried to reload Entities")
		return
	end

	loadedEntities = true

    DarkRP.createEntity("Cooking Pot", {
        ent = "vcraft_pot",
        model = "models/props_c17/metalPot001a.mdl",
        price = 10,
        max = 4,
        cmd = "/BuyPot",
    })

    DarkRP.createEntity("Oven Tray", {
        ent = "vcraft_oven_tray",
        model = "models/props_c17/metalPot002a.mdl",
        price = 10,
        max = 2,
        cmd = "/BuyOvenTray",
    })

    DarkRP.createEntity("Music Player", {
        ent = "whk_radio",
        model = "models/props_lab/citizenradio.mdl",
        price = 10,
        max = 1,
        cmd = "/BuyMusicPlayer",
        allowed = {TEAM_NATO_COOK, TEAM_NWO_COOK},
    })

end

hook.Add("VJobEditorRegisterJobs", "vjobeditor_entities", function(jobsLoaded)
	if (not jobsLoaded and not VJobEditor.JobsLoaded) then
		return
	end

	AddEntities()
end)