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

    --[[DarkRP.createEntity("Radio", {
        ent = "whk_radio",
        model = "models/props_lab/citizenradio.mdl",
        price = 500,
        max = 1,
        cmd = "/buymusicplayer",
    })]]

    --[[DarkRP.createEntity("Water", {
        ent = "vwar_consumable_water",
        model = "models/props_junk/glassbottle01a.mdl",
        price = 250,
        max = 1,
        category = "Consumables",
        cmd = "/vwar_water",
    })]]

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
        allowed = {TEAM_NATO_COOK, TEAM_USSR_COOK},
    })

    -- Chemicals

    DarkRP.createEntity("Chemical-435", {
        ent = "vcraft_substance_s_chemical-435",
        model = "models/labware/flask1.mdl",
        price = 500,
        max = 1,
        category = "Chemicals",
        cmd = "/BuyChem435",
        customCheck = function(ply)
            return ply:Team() == TEAM_RMP_SNCO 
                or ply:Team() == TEAM_RMP_COMPANY_COMMANDER
                or ply:Team() == TEAM_RMP_SQUAD_LEADER
                or ply:Team() == TEAM_RMP_REGIMENTAL_COMMANDER
                or ply:Team() == TEAM_KGB_SNCO
                or ply:Team() == TEAM_KGB_COMMISSIONED_OFFICER
                or ply:Team() == TEAM_KGB_SENIOR_COMMISSIONED_OFFICER
                or ply:Team() == TEAM_KGB_REGIMENTAL_COMMANDER
                or ply:Team() == TEAM_SAS_SNCO
                or ply:Team() == TEAM_SAS_COMPANY_COMMANDER
                or ply:Team() == TEAM_SAS_SQUAD_LEADER
                or ply:Team() == TEAM_SAS_REGIMENTAL_COMMANDER
                or ply:Team() == TEAM_SGRU_SNCO
                or ply:Team() == TEAM_SRGU_SENIOR_COMMISSIONED_OFFICER
                or ply:Team() == TEAM_SRGU_SENIOR_COMMISSIONED_OFFICER
                or ply:Team() == TEAM_SGRU_REGIMENTAL_COMMANDER
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be a SNCO+ in a police or special forces regiment to buy this chemical!" 
        end,
    })

    -- Drones

    DarkRP.createEntity("Spy Drone", {
        ent = "entity_drone_spy",
        model = "models/anthon/drone_body.mdl",
        price = 1500,
        max = 1,
        category = "Drones",
        cmd = "/buySpyDrone",
        customCheck = function(ply)
            return ply:Team() == TEAM_SAS_SNIPER 
                or ply:Team() == TEAM_SGRU_SNIPER
                or ply:Team() == TEAM_SAS_SPECIAL_OPERATIONS
                or ply:Team() == TEAM_SGRU_SPECIAL_OPERATIONS
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be a special forces sniper or specops to use the Spy Drone!" 
        end,
    })

    DarkRP.createEntity("Bomb Drone", {
        ent = "entity_drone_bomb",
        model = "models/anthon/drone_body.mdl",
        price = 1750,
        max = 1,
        category = "Drones",
        cmd = "/BuyBombDrone",
        customCheck = function(ply)
            return ply:Team() == TEAM_ISAF_GRENADIER 
                or ply:Team() == TEAM_40TH_MR_EXPLOSIVES_EXPERT
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be a infantry explosives expert to use the Bomb Drone!" 
        end,
    })

    DarkRP.createEntity("Medic Drone", {
        ent = "entity_drone_medic",
        model = "models/anthon/drone_body.mdl",
        price = 1500,
        max = 1,
        category = "Drones",
        cmd = "/BuyMedicDrone",
        customCheck = function(ply)
            return ply:Team() == TEAM_17TH_ARMOURED_MEDIC 
                or ply:Team() == TEAM_11TH_GMR_MEDIC
                or ply:Team() == TEAM_JAF_MEDIC
                or ply:Team() == TEAM_ABR_MEDIC
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be a medic to use the Medic Drone" 
        end,
    })

    DarkRP.createEntity("Transporter Drone", {
        ent = "entity_drone_transporter",
        model = "models/anthon/drone_body.mdl",
        price = 1500,
        max = 1,
        category = "Drones",
        cmd = "/BuyTransportDrone",
        customCheck = function(ply)
            return ply:Team() == TEAM_17TH_ARMOURED_COMBAT_SUPPORT 
                or ply:Team() == TEAM_11TH_GMR_COMBAT_SUPPORT
                or ply:Team() == TEAM_JAF_COMBAT_SUPPORT
                or ply:Team() == TEAM_ABR_COMBAT_SUPPORT
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be a armoured combat support to use the Transporter Drone" 
        end,
    })

    DarkRP.createEntity("Police Drone", {
        ent = "entity_drone_police",
        model = "models/anthon/drone_body.mdl",
        price = 1500,
        max = 1,
        category = "Drones",
        cmd = "/BuyPoliceDrone",
        customCheck = function(ply)
            return ply:Team() == TEAM_RMP_SNCO 
                or ply:Team() == TEAM_RMP_COMPANY_COMMANDER
                or ply:Team() == TEAM_RMP_SQUAD_LEADER
                or ply:Team() == TEAM_RMP_REGIMENTAL_COMMANDER
                or ply:Team() == TEAM_KGB_SNCO
                or ply:Team() == TEAM_KGB_COMMISSIONED_OFFICER
                or ply:Team() == TEAM_KGB_SENIOR_COMMISSIONED_OFFICER
                or ply:Team() == TEAM_KGB_REGIMENTAL_COMMANDER
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be a police SNCO+ to use the Police Drone!" 
        end,
    })

    DarkRP.createEntity("Gun Drone", {
        ent = "entity_drone_gun",
        model = "models/anthon/drone_body.mdl",
        price = 1750,
        max = 1,
        category = "Drones",
        cmd = "/BuyGunnerDrone",
        customCheck = function(ply)
            return ply:Team() == TEAM_RMP_REGIMENTAL_COMMANDER 
                or ply:Team() == TEAM_KGB_REGIMENTAL_COMMANDER
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be a police regimental commander to use the Gun Drone!" 
        end,
    })

    DarkRP.createEntity("Drone", {
        ent = "entity_drone_base",
        model = "models/anthon/drone_body.mdl",
        price = 1500,
        max = 1,
        category = "Drones",
        cmd = "/BuyDrone",
        customCheck = function(ply)
            return ply:Team() == TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER 
                or ply:Team() == TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be a high command specops to use the Drone!" 
        end,
    })

    DarkRP.createEntity("Gold Drone", {
        ent = "entity_drone_gold",
        model = "models/anthon/drone_body.mdl",
        price = 1500,
        max = 1,
        category = "Drones",
        cmd = "/BuyGoldenDrone",
        customCheck = function(ply)
            return ply:Team() == TEAM_NATO_HC_GENERAL_OF_THE_ARMY 
                or ply:Team() == TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION
        end,
        CustomCheckFailMsg = function(ply, entTable) 
            return "You must be the head of a faction to use the Gold Drone!" 
        end,
    })

end

hook.Add("VJobEditorRegisterJobs", "vjobeditor_entities", function(jobsLoaded)
	if (not jobsLoaded and not VJobEditor.JobsLoaded) then
		return
	end

	AddEntities()
end)
