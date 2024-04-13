--[[---------------------------------------------------------------------------
Door groups
---------------------------------------------------------------------------
The server owner can set certain doors as owned by a group of people, identified by their jobs.


HOW TO MAKE A DOOR GROUP:
AddDoorGroup("NAME OF THE GROUP HERE, you will see this when looking at a door", Team1, Team2, team3, team4, etc.)
---------------------------------------------------------------------------]]
// MAKE SURE THE DOOR GROUP IS CALLED THE SAME AS THE REGIMENT IN GAME //

local function AddDoorGroups()

    AddDoorGroup("CRIMSON BLADE",
		TEAM_CRIMSON_BLADE,
		TEAM_CRIMSON_BLADE_AUTORIFLEMAN,
		TEAM_CRIMSON_BLADE_BANDIT,
		TEAM_CRIMSON_BLADE_COMMANDER,
		TEAM_CRIMSON_BLADE_INITIATE,
		TEAM_CRIMSON_BLADE_LEADER,
		TEAM_CRIMSON_SOLDIER
	)

	AddDoorGroup("Crimson Blade",
		TEAM_CRIMSON_BLADE,
		TEAM_CRIMSON_BLADE_AUTORIFLEMAN,
		TEAM_CRIMSON_BLADE_BANDIT,
		TEAM_CRIMSON_BLADE_COMMANDER,
		TEAM_CRIMSON_BLADE_INITIATE,
		TEAM_CRIMSON_BLADE_LEADER,
		TEAM_CRIMSON_SOLDIER
	)


	AddDoorGroup("Special Air Service",
		TEAM_SAS_SPECIAL_OPERATIONS,
		TEAM_SAS_INFANTRY,
		TEAM_SAS_MEDIC,
		TEAM_SAS_ENGINEER,
		TEAM_SAS_SNCO,
		TEAM_SAS_SNIPER,
		TEAM_SAS_DEMOLITIONS,
		TEAM_SAS_COVERT_OPERATOR,
		TEAM_SAS_BREACHER,
		TEAM_SAS_SQUAD_LEADER,
		TEAM_SAS_COMPANY_COMMANDER,
		TEAM_SAS_REGIMENTAL_COMMANDER,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_SAS_MARKSMAN,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_RECON_OPERATIVE_,
		TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)
	
	AddDoorGroup("Royal Military Police",
		TEAM_RMP_OPERATIVE,
		TEAM_RMP_MEDIC,
		TEAM_RMP_ENGINEER,
		TEAM_RMP_SNCO,
		TEAM_RMP_SPECIAL_RESPONSE_OFFICER,
		TEAM_RMP_RIOT_OFFICER,
		TEAM_RMP_MARKSMAN,
		TEAM_RMP_SQUAD_LEADER,
		TEAM_RMP_COMPANY_COMMANDER,
		TEAM_RMP_REGIMENTAL_COMMANDER,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_RMP_SHARPSHOOTER,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_RECON_OPERATIVE_,
		TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)

	AddDoorGroup("Joint Air Force",
		TEAM_JAF_PARA,
		TEAM_JAF_MEDIC,
		TEAM_JAF_PARA_ENGINEER,
		TEAM_JAF_PILOT,
		TEAM_JAF_COMBAT_SUPPORT, 
		TEAM_JAF_AUTORIFLEMAN,
		TEAM_JAF_SQUAD_LEADER,
		TEAM_JAF_COMPANY_COMMANDER,
		TEAM_JAF_ANTI_AIR,
		TEAM_JAF_PATHFINDER,
		TEAM_JAF_REGIMENTAL_COMMANDER,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_JAF_ENGINEER,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_RECON_OPERATIVE_,
		TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)
	
	AddDoorGroup("17th Armoured Regiment",
		TEAM_17TH_ARMOURED_INFANTRY,
		TEAM_17TH_ARMOURED_MEDIC,
		TEAM_17TH_ARMOURED_ENGINEER,
		TEAM_17TH_ARMOURED_AUTORIFLEMAN,
		TEAM_17TH_ARMOURED_COMBAT_SUPPORT,
		TEAM_COPY_OF_17TH_ARMOURED_COMMISSIONED_OFFICER, --This is 17th Armoured SNCO (I despise whoever did this!!)
		TEAM_17TH_ARMOURED_ANTI_ARMOUR,
		TEAM_17TH_ARMOURED_SAPPER,
		TEAM_17TH_ARMOURED_AUTO,
		TEAM_17TH_ARMOURED_SQUAD_LEADER,
		TEAM_17TH_ARMOURED_COMPANY_COMMANDER,
		TEAM_17TH_ARMOURED_REGIMENTAL_COMMANDER,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_RECON_OPERATIVE_,
		TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)
	
	AddDoorGroup("International Security Assistance Force",
		TEAM_ISAF_INFANTRY,
		TEAM_ISAF_MEDIC,
		TEAM_ISAF_ENGINEER,
		TEAM_ISAF_ANTI_ARMOUR,
		TEAM_ISAF_SNCO,
		TEAM_ISAF_SNIPER,
		TEAM_ISAF_AUTO,
		TEAM_ISAF_ASSULT_TROOPER, -- This was spelt wrong on the TEAM ID somehow
		TEAM_ISAF_SQUAD_LEADER,
		TEAM_ISAF_COMPANY_COMMANDER,
		TEAM_ISAF_REGIMENTAL_COMMANDER,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_RECON_OPERATIVE_,
    TEAM_ISAF_GRENADIER,
    TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)
	
	AddDoorGroup("NATO High Command",
		TEAM_SAS_REGIMENTAL_COMMANDER,
		TEAM_ISAF_REGIMENTAL_COMMANDER,
		TEAM_17TH_ARMOURED_REGIMENTAL_COMMANDER,
		TEAM_RMP_REGIMENTAL_COMMANDER,
		TEAM_JAF_REGIMENTAL_COMMANDER,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_RECON_OPERATIVE_,
		TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)
	
	AddDoorGroup("Iron Vanguard",
		TEAM_IVG_INFANTRY,
		TEAM_IVG_MEDIC,
		TEAM_IVG_ENGINEER,
		TEAM_IVG_AT,
		TEAM_IVG_SNIPER,
		TEAM_IVG_SNCO,
		TEAM_IVG_AUTORIFLEMAN,
		TEAM_IVG_ASSULT_TROOPER,
		TEAM_IVG_SQUAD_LEADER,
		TEAM_IVG_COMPANY_COMMANDER,
		TEAM_IVG_REGIMENTAL_COMMANDER,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE,
    TEAM_IVG_EXPLOSIVES_EXPERT
	)
	AddDoorGroup("Steel Winged Battalion",
		TEAM_SWB_TROOPER,
		TEAM_SWB_MEDIC,
		TEAM_SWB_ENGINEER,
		TEAM_SWB_ANTI_AIR,
		TEAM_SWB_PILOT,
		TEAM_SWB_BREACHER,
		TEAM_SWB_PATHFINDER,
		TEAM_SWB_SNCO,
		TEAM_SWB_AUTORIFLEMAN,
		TEAM_SWB_COMBAT_SUPPORT,
		TEAM_SWB_SQUAD_LEADER,
		TEAM_SWB_COMPANY_COMMANDER,
		TEAM_SWB_REGIMENTAL_COMMANDER,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE
	)
	
	AddDoorGroup("Strategic Task Syndicate",
		TEAM_STS_SPECOPS,
		TEAM_STS_INFANTRY,
		TEAM_STS_MEDIC,
		TEAM_STS_ENGINEER,
		TEAM_STS_BREACHER,
		TEAM_STS_SNIPER,
		TEAM_STS_COVERT_OPERATOR,
		TEAM_STS_SNCO,
		TEAM_STS_SQUAD_LEADER,
		TEAM_STS_COMPANY_COMMANDER,
		TEAM_STS_DEMOLITIONS,
		TEAM_STS_REGIMENTAL_COMMANDER,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE
	)
	
	AddDoorGroup("1st Armoured Legion",
		TEAM_1STAL_RECRUIT,
		TEAM_1STAL_MEDIC,
		TEAM_1STAL_ENGINEER,
		TEAM_1STAL_SNCO,
		TEAM_1STAL_AUTORIFLEMAN,
		TEAM_1STAL_ANTI_ARMOUR,
		TEAM_1STAL_COMBAT_SUPPORT,
		TEAM_1STAL_SAPPER,
		TEAM_1STAL_SQUAD_LEADER,
		TEAM_1STAL_COMPANY_COMMANDER,
		TEAM_1STAL_REGIMENTAL_COMMANDER,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_COPY_OF_NWO_SC_COMMANDER_GENERAL, -- NWO SC - Commander General
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE
	)
	
	AddDoorGroup("Agency of Rule",
		TEAM_AOR_OPERATIVE,
		TEAM_AOR_MEDIC,
		TEAM_AOR_ENGINEER,
		TEAM_AOR_SNCO,
		TEAM_AOR_ENFORCEMENT_SQUAD_LEADER,
		TEAM_AOR_MARKSMAN,
		TEAM_AOR_RIOT_OFFICER,
		TEAM_AOR_SQUAD_LEADER,
		TEAM_AOR_COMPANY_COMMANDER,
		TEAM_AOR_REGIMENTAL_COMMANDER,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_AOR_SHARPSHOOTER,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE
	)
	
	AddDoorGroup("Supreme Council",
		TEAM_1STAL_REGIMENTAL_COMMANDER,
		TEAM_STS_REGIMENTAL_COMMANDER,
		TEAM_SWB_REGIMENTAL_COMMANDER,
		TEAM_IVG_REGIMENTAL_COMMANDER,
		TEAM_AOR_REGIMENTAL_COMMANDER,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE
	)
	
	AddDoorGroup("Eastern Resistance",
		TEAM_MILITIA,
		TEAM_MILITIA_SOLDIER,
		TEAM_MILITIA_LEADER
	)
	
	AddDoorGroup("NATO Prison",
		TEAM_RMP_OPERATIVE,
		TEAM_RMP_MEDIC,
		TEAM_RMP_ENGINEER,
		TEAM_RMP_SPECIAL_RESPONSE_OFFICER,
		TEAM_RMP_MARKSMAN,
		TEAM_RMP_SNCO,
		TEAM_RMP_INTERNAL_AFFAIRS,
		TEAM_RMP_SQUAD_LEADER,
		TEAM_RMP_RIOT_OFFICER,
		TEAM_RMP_COMPANY_COMMANDER,
		TEAM_RMP_REGIMENTAL_COMMANDER,
		TEAM_SAS_REGIMENTAL_COMMANDER,
		TEAM_ISAF_REGIMENTAL_COMMANDER,
		TEAM_17TH_ARMOURED_REGIMENTAL_COMMANDER,
		TEAM_JAF_REGIMENTAL_COMMANDER,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_RMP_SHARPSHOOTER,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_MPK_RG,
		TEAM_NATO_HC_RECON_OPERATIVE_,
		TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)
	
	AddDoorGroup("NWO Prison",
		TEAM_AOR_OPERATIVE,
		TEAM_AOR_MEDIC,
		TEAM_AOR_ENGINEER,
		TEAM_AOR_ENFORCEMENT_SQUAD_LEADER,
		TEAM_AOR_MARKSMAN,
		TEAM_AOR_RIOT_OFFICER,
		TEAM_AOR_SNCO,
		TEAM_AOR_INTERNAL_AFFAIRS,
		TEAM_AOR_SPECIAL_RESPONSE_OFFICER,
		TEAM_AOR_SQUAD_LEADER,
		TEAM_AOR_COMPANY_COMMANDER,
		TEAM_1STAL_REGIMENTAL_COMMANDER,
		TEAM_STS_REGIMENTAL_COMMANDER,
		TEAM_SWB_REGIMENTAL_COMMANDER,
		TEAM_IVG_REGIMENTAL_COMMANDER,
		TEAM_AOR_REGIMENTAL_COMMANDER,
		TEAM_COPY_OF_NWO_SC_COMMANDER_GENERAL,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_AOR_SHARPSHOOTER,
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE
	)
	
	AddDoorGroup("NATO",
		TEAM_SAS_SPECIAL_OPERATIONS,
		TEAM_SAS_INFANTRY,
		TEAM_SAS_MEDIC,
		TEAM_SAS_ENGINEER,
		TEAM_SAS_SNIPER,
		TEAM_SAS_BREACHER,
		TEAM_SAS_COVERT_OPERATOR,
		TEAM_SAS_SQUAD_LEADER,
		TEAM_SAS_COMPANY_COMMANDER,
		TEAM_SAS_REGIMENTAL_COMMANDER,
		TEAM_SAS_DEMOLITIONS,
		TEAM_RMP_OPERATIVE,
		TEAM_RMP_MEDIC,
		TEAM_RMP_ENGINEER,
		TEAM_RMP_RIOT_OFFICER,
		TEAM_RMP_INTERNAL_AFFAIRS,
		TEAM_RMP_SPECIAL_RESPONSE_OFFICER,
		TEAM_RMP_MARKSMAN,
		TEAM_RMP_SQUAD_LEADER,
		TEAM_RMP_COMPANY_COMMANDER,
		TEAM_RMP_REGIMENTAL_COMMANDER,
		TEAM_JAF_TROOPER,
		TEAM_JAF_MEDIC,
		TEAM_JAF_ENGINEER,
		TEAM_JAF_ANTI_AIR,
		TEAM_JAF_PATHFINDER,
		TEAM_JAF_PILOT,
		TEAM_JAF_COMBAT_SUPPORT,
		TEAM_JAF_AUTORIFLEMAN,
		TEAM_JAF_SQUAD_LEADER,
		TEAM_JAF_COMPANY_COMMANDER,
		TEAM_JAF_REGIMENTAL_COMMANDER,
		TEAM_17TH_ARMOURED_INFANTRY,
		TEAM_17TH_ARMOURED_MEDIC,
		TEAM_17TH_ARMOURED_ENGINEER,
		TEAM_17TH_ARMOURED_COMBAT_SUPPORT,
		TEAM_17TH_ARMOURED_ANTI_ARMOUR,
		TEAM_17TH_ARMOURED_AUTO,
		TEAM_17TH_ARMOURED_SAPPER,
		TEAM_17TH_ARMOURED_AUTORIFLEMAN,
		TEAM_17TH_ARMOURED_SQUAD_LEADER,
		TEAM_17TH_ARMOURED_COMPANY_COMMANDER,
		TEAM_17TH_ARMOURED_REGIMENTAL_COMMANDER,
		TEAM_ISAF_INFANTRY,
		TEAM_ISAF_MEDIC,
		TEAM_ISAF_ASSULT_TROOPER,
		TEAM_ISAF_ANTI_ARMOUR,
		TEAM_ISAF_SNIPER,
		TEAM_ISAF_AUTORIFLEMAN,
		TEAM_ISAF_SQUAD_LEADER,
		TEAM_ISAF_COMPANY_COMMANDER,
		TEAM_ISAF_REGIMENTAL_COMMANDER,
		TEAM_ISAF_ENGINEER,
    TEAM_ISAF_GRENADIER,
    TEAM_COPY_OF_17TH_ARMOURED_COMMISSIONED_OFFICER,
		TEAM_ISAF_SNCO,
		TEAM_JAF_SNCO,
		TEAM_RMP_SNCO,
		TEAM_SAS_SNCO,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_NATO_COOK,
		TEAM_NATO_SPY,
		TEAM_NATO_INFANTRY,
		TEAM_RMP_SHARPSHOOTER,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_JUGGERNAUT,
		TEAM_NATO_FLAMER,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_MPK_RG,
		TEAM_NATO_HC_RECON_OPERATIVE_,
		TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)
	
	AddDoorGroup("NWO",
		TEAM_STS_SPECIAL_OPERATIONS,
		TEAM_IVG_INFANTRY,
		TEAM_IVG_MEDIC,
		TEAM_IVG_ENGINEER,
		TEAM_IVG_ANTI_ARMOUR,
		TEAM_IVG_SNIPER,
		TEAM_IVG_AUTORIFLEMAN,
		TEAM_IVG_ASSULT_TROOPER,
		TEAM_IVG_SQUAD_LEADER,
		TEAM_IVG_COMPANY_COMMANDER,
		TEAM_IVG_REGIMENTAL_COMMANDER,
		TEAM_AOR_OPERATIVE,
		TEAM_AOR_MEDIC,
		TEAM_AOR_ENGINEER,
		TEAM_AOR_ENFORCEMENT_SQUAD_LEADER,
		TEAM_AOR_SPECIAL_RESPONSE_OFFICER,
		TEAM_AOR_MARKSMAN,
		TEAM_AOR_RIOT_OFFICER,
		TEAM_AOR_INTERNAL_AFFAIRS,
		TEAM_AOR_SQUAD_LEADER,
		TEAM_AOR_COMPANY_COMMANDER,
		TEAM_AOR_REGIMENTAL_COMMANDER,
		TEAM_1STAL_RECRUIT,
		TEAM_1STAL_INFANTRY,
		TEAM_1STAL_MEDIC,
		TEAM_1STAL_ENGINEER,
		TEAM_1STAL_AUTORIFLEMAN,
		TEAM_1STAL_ANTI_ARMOUR,
		TEAM_1STAL_COMBAT_SUPPORT,
		TEAM_1STAL_SAPPER,
		TEAM_1STAL_SQUAD_LEADER,
		TEAM_1STAL_COMPANY_COMMANDER,
		TEAM_1STAL_REGIMENTAL_COMMANDER,
		TEAM_STS_INFANTRY,
		TEAM_STS_MEDIC,
		TEAM_STS_COVERT_OPERATOR,
		TEAM_STS_ENGINEER,
		TEAM_STS_BREACHER,
		TEAM_STS_DEMOLITIONS,
		TEAM_STS_SNIPER,
		TEAM_STS_SQUAD_LEADER,
		TEAM_STS_COMPANY_COMMANDER,
		TEAM_STS_REGIMENTAL_COMMANDER,
		TEAM_SWB_TROOPER,
		TEAM_SWB_AUTORIFLEMAN,
		TEAM_SWB_MEDIC,
		TEAM_SWB_PATHFINDER,
		TEAM_SWB_ENGINEER,
		TEAM_SWB_COMBAT_SUPPORT,
		TEAM_SWB_ANTI_AIR,
		TEAM_SWB_PILOT,
		TEAM_SWB_BREACHER,
		TEAM_SWB_SQUAD_LEADER,
		TEAM_SWB_COMPANY_COMMANDER,
		TEAM_SWB_REGIMENTAL_COMMANDER,
		TEAM_1STAL_SNCO,
		TEAM_AOR_SNCO,
		TEAM_IVG_SNCO,
		TEAM_STS_SNCO,
		TEAM_SWB_SNCO,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_NWO_COOK,
		TEAM_NWO_SPY,
		TEAM_NWO_INFANTRY,
		TEAM_AOR_SHARPSHOOTER,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_NWO_JUGGERNAUT,
		TEAM_NWO_FLAMER,
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE,
    TEAM_IVG_EXPLOSIVES_EXPERT
	)

	AddDoorGroup("NATO - Officers",
		TEAM_SAS_SQUAD_LEADER,
		TEAM_SAS_COMPANY_COMMANDER,
		TEAM_SAS_REGIMENTAL_COMMANDER,
		TEAM_RMP_SQUAD_LEADER,
		TEAM_RMP_COMPANY_COMMANDER,
		TEAM_RMP_REGIMENTAL_COMMANDER,
		TEAM_JAF_SQUAD_LEADER,
		TEAM_JAF_COMPANY_COMMANDER,
		TEAM_JAF_REGIMENTAL_COMMANDER,
		TEAM_17TH_ARMOURED_SQUAD_LEADER,
		TEAM_17TH_ARMOURED_COMPANY_COMMANDER,
		TEAM_17TH_ARMOURED_REGIMENTAL_COMMANDER,
		TEAM_ISAF_SQUAD_LEADER,
		TEAM_ISAF_COMPANY_COMMANDER,
		TEAM_ISAF_REGIMENTAL_COMMANDER,
		TEAM_NATO_HC_GENERAL,
		TEAM_NATO_HC_LIEUTENANT_GENERAL,
		TEAM_NATO_HC_FIELD_COMMAND_UNIT,
		TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
		TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
		TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
		TEAM_NATO_HC_RECON_OPERATIVE_,
		TEAM_NATO_HC_GENERAL_OF_THE_ARMY
	)

	AddDoorGroup("NWO - Officers",
		TEAM_IVG_SQUAD_LEADER,
		TEAM_IVG_COMPANY_COMMANDER,
		TEAM_IVG_REGIMENTAL_COMMANDER,
		TEAM_AOR_SQUAD_LEADER,
		TEAM_AOR_COMPANY_COMMANDER,
		TEAM_AOR_REGIMENTAL_COMMANDER,
		TEAM_1STAL_SQUAD_LEADER,
		TEAM_1STAL_COMPANY_COMMANDER,
		TEAM_1STAL_REGIMENTAL_COMMANDER,
		TEAM_STS_SQUAD_LEADER,
		TEAM_STS_COMPANY_COMMANDER,
		TEAM_STS_REGIMENTAL_COMMANDER,
		TEAM_SWB_SQUAD_LEADER,
		TEAM_SWB_COMPANY_COMMANDER,
		TEAM_SWB_REGIMENTAL_COMMANDER,
		TEAM_NWO_SC_SECTOR_GENERAL,
		TEAM_NWO_SC_SECTOR_COMMANDER,
		TEAM_NWO_SC_FIELD_COMMAND_UNIT,
		TEAM_NWO_SC_11TH_SURVEILLANCE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_9TH_FRONTLINE_BRIGADE_COMMANDER,
		TEAM_NWO_SC_21ST_ARMOURED_BRIGADE_COMMANDER,
		TEAM_NWO_SC_RECON_OPERATIVE
	)
  end
  
  hook.Add("VJobEditorRegisterJobs", "vjobeditor", function()
      AddDoorGroups()
  end)
  
  AddDoorGroups()