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
	TEAM_SAS_ASSASSIN,
	TEAM_SAS_WRONG_GUN,
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
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
)

AddDoorGroup("Royal Military Police",
	TEAM_RMP_OPERATIVE,
	TEAM_RMP_MEDIC,
	TEAM_RMP_ENGINEER,
	TEAM_RMP_SNCO,
	TEAM_RMP_SPECIAL_RESPONSE_OFFICER,
	TEAM_RMP_RIOT_OFFICER,
	TEAM_RMP_MARKSMAN,
	TEAM_RMP_DETECTIVE,
	TEAM_RMP_G9,
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
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
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
	TEAM_JAF_JTAC,
	TEAM_JAF_DOWNED_PILOT,
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
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
)

AddDoorGroup("17th Armoured Regiment",
	TEAM_17TH_ARMOURED_INFANTRY,
	TEAM_17TH_ARMOURED_MEDIC,
	TEAM_17TH_ARMOURED_ENGINEER,
	TEAM_17TH_ARMOURED_AUTORIFLEMAN,
	TEAM_17TH_COMBAT_SUPPORT,
	TEAM_COPY_OF_17TH_ARMOURED_COMMISSIONED_OFFICER, --This is 17th Armoured SNCO (I despise whoever did this!!)
	TEAM_17TH_ARMOURED_ANTI_ARMOUR,
	TEAM_17TH_ARMOURED_SAPPER,
	TEAM_17TH_ARMOURED_AUTO,
	TEAM_17TH_ARMOURED_SQUAD_LEADER,
	TEAM_17TH_GMR_MECHANIC,
	TEAM_17TH_WRONG_UNIFORM,
	TEAM_17TH_ARMOURED_COMPANY_COMMANDER,
	TEAM_17TH_ARMOURED_REGIMENTAL_COMMANDER,
	TEAM_NATO_HC_GENERAL,
	TEAM_NATO_HC_LIEUTENANT_GENERAL,
	TEAM_NATO_HC_ROYAL_SPECOPS_BRIGADE_COMMANDER,
	TEAM_NATO_HC_FIELD_COMMAND_UNIT,
	TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
	TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
	TEAM_NATO_HC_RECON_OPERATIVE_,
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
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
	TEAM_ISAF_MR_BAND_MEMBER,
	TEAM_ISAF_MR_WAR_REPORTER,
	TEAM_NATO_HC_5TH_MECHANIZED_BRIGADE_COMMANDER,
	TEAM_NATO_HC_19TH_ANTI_PERSONNEL_BRIGADE_COMMANDER,
	TEAM_NATO_HC_RECON_OPERATIVE_,
	TEAM_ISAF_GRENADIER,
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
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
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
)

AddDoorGroup("40th Marine Regiment",
	TEAM_40TH_MR_ANTI_ARMOUR,
	TEAM_40TH_MR_ASSAULT_TROOPER,
	TEAM_40TH_MR_AUTORIFLEMAN,
	TEAM_40TH_MR_BAND_MEMBER,
	TEAM_40TH_MR_COMMISSIONED_OFFICER,
	TEAM_40TH_MR_ENGINEER,
	TEAM_40TH_MR_EXPLOSIVES_EXPERT,
	TEAM_40TH_MR_INFANTRY,
	TEAM_40TH_MR_MEDIC,
	TEAM_40TH_MR_REGIMENTAL_COMMANDER,
	TEAM_40TH_MR_SNCO,
	TEAM_40TH_MR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_40TH_MR_SNIPER,
	TEAM_40TH_MR_WAR_REPORTER,
	TEAM_SSHC_1ST_SHOCK_ARMY_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_USSR_WAR_COUNCIL
)

AddDoorGroup("Airborne Trooper Regiment",
	TEAM_ABR_ANTI_AIR,
	TEAM_ABR_AUTORIFLEMAN,
	TEAM_ABR_COMBAT_SUPPORT,
	TEAM_ABR_COMMISSIONED_OFFICER,
	TEAM_ABR_DOWNED_PILOT,
	TEAM_ABR_ENGINEER,
	TEAM_ABR_JTAC,
	TEAM_ABR_MEDIC,
	TEAM_ABR_PATHFINDER,
	TEAM_ABR_PILOT,
	TEAM_ABR_REGIMENTAL_COMMANDER,
	TEAM_ABR_SNCO,
	TEAM_ABR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_ABR_TROOPER,
	TEAM_SSHC_1ST_SHOCK_ARMY_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_USSR_WAR_COUNCIL
)

AddDoorGroup("Spetsnaz GRU",
	TEAM_SGRU_ASSASSIN,
	TEAM_SGRU_BREACHER,
	TEAM_SGRU_COMMISSIONED_OFFICER,
	TEAM_SGRU_COVERT_OPERATOR,
	TEAM_SGRU_DEMOLITIONS,
	TEAM_SGRU_ENGINEER,
	TEAM_SGRU_INFANTRY,
	TEAM_SGRU_MEDIC,
	TEAM_SGRU_REGIMENTAL_COMMANDER,
	TEAM_SGRU_SNCO,
	TEAM_SGRU_SENIOR_COMMISSIONED_OFFICER,
	TEAM_SGRU_SNIPER,
	TEAM_SGRU_SPECIAL_OPERATIONS,
	TEAM_SSHC_1ST_SHOCK_ARMY_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_SGRU_WRONG_GUN,
	TEAM_USSR_WAR_COUNCIL
)

AddDoorGroup("11th Guards Mechanized Regiment",
	TEAM_11TH_GMR_ANTI_ARMOUR,
	TEAM_11TH_GMR_AUTORIFLEMAN,
	TEAM_11TH_GMR_COMBAT_SUPPORT,
	TEAM_11TH_GMR_COMMISSIONED_OFFICER,
	TEAM_11TH_GMR_ENGINEER,
	TEAM_11TH_GMR_INFANTRY,
	TEAM_11TH_GMR_MECHANIC,
	TEAM_11TH_GMR_MEDIC,
	TEAM_11TH_GMR_REGIMENTAL_COMMANDER,
	TEAM_11TH_GMR_SNCO,
	TEAM_11TH_GMR_SAPPER,
	TEAM_11TH_GMR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_SSHC_1ST_SHOCK_ARMY_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_11TH_GMR_WRONG_UNIFORM,
	TEAM_USSR_WAR_COUNCIL
)

AddDoorGroup("Committee for State Security",
	TEAM_KGB_AGENT,
	TEAM_KGB_COMMISSIONED_OFFICER,
	TEAM_KGB_DETECTIVE,
	TEAM_KGB_ENGINEER,
	TEAM_KGB_INTERNAL_AFFAIRS,
	TEAM_KGB_MEDIC,
	TEAM_KGB_RIOT_OFFICER,
	TEAM_KGB_SNCO,
	TEAM_KGB_SENIOR_COMMISSIONER_OFFICER,
	TEAM_KGB_SHARPSHOOTER,
	TEAM_KGB_SPECIAL_RESPONSE_OFFICER,
	TEAM_KGB_REGIMENTAL_COMMANDER,
	TEAM_SSHC_1ST_SHOCK_ARMY_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_USSR_WAR_COUNCIL
)

AddDoorGroup("Stavka of the Supreme High Command",
	TEAM_SSHC_1ST_SHOCK_ARMY_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_40TH_MR_REGIMENTAL_COMMANDER,
	TEAM_ABR_REGIMENTAL_COMMANDER,
	TEAM_SGRU_REGIMENTAL_COMMANDER,
	TEAM_11TH_GMR_REGIMENTAL_COMMANDER,
	TEAM_KGB_REGIMENTAL_COMMANDER,
	TEAM_USSR_WAR_COUNCIL
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
	TEAM_RMP_DETECTIVE,
	TEAM_RMP_G9,
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
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
)

AddDoorGroup("USSR Prison",
	TEAM_KGB_AGENT,
	TEAM_KGB_COMMISSIONED_OFFICER,
	TEAM_KGB_DETECTIVE,
	TEAM_KGB_ENGINEER,
	TEAM_KGB_INTERNAL_AFFAIRS,
	TEAM_KGB_MEDIC,
	TEAM_KGB_RIOT_OFFICER,
	TEAM_KGB_SNCO,
	TEAM_KGB_SENIOR_COMMISSIONER_OFFICER,
	TEAM_KGB_SHARPSHOOTER,
	TEAM_KGB_SPECIAL_RESPONSE_OFFICER,
	TEAM_KGB_REGIMENTAL_COMMANDER,
	TEAM_40TH_MR_REGIMENTAL_COMMANDER,
	TEAM_ABR_REGIMENTAL_COMMANDER,
	TEAM_SGRU_REGIMENTAL_COMMANDER,
	TEAM_11TH_GMR_REGIMENTAL_COMMANDER,
	TEAM_SSHC_1ST_SHOCK_ARMY_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_USSR_WAR_COUNCIL
)

AddDoorGroup("NATO",
	TEAM_SAS_SPECIAL_OPERATIONS,
	TEAM_SAS_INFANTRY,
	TEAM_SAS_MEDIC,
	TEAM_SAS_ENGINEER,
	TEAM_SAS_SNIPER,
	TEAM_SAS_BREACHER,
	TEAM_SAS_ASSASSIN,
	TEAM_SAS_WRONG_GUN,
	TEAM_SAS_COVERT_OPERATOR,
	TEAM_SAS_SQUAD_LEADER,
	TEAM_SAS_COMPANY_COMMANDER,
	TEAM_SAS_REGIMENTAL_COMMANDER,
	TEAM_SAS_DEMOLITIONS,
	TEAM_RMP_OPERATIVE,
	TEAM_RMP_MEDIC,
	TEAM_RMP_ENGINEER,
	TEAM_RMP_DETECTIVE,
	TEAM_RMP_G9,
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
	TEAM_JAF_JTAC,
	TEAM_JAF_DOWNED_PILOT,
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
	TEAM_17TH_COMBAT_SUPPORT,
	TEAM_17TH_ARMOURED_ANTI_ARMOUR,
	TEAM_17TH_GMR_MECHANIC,
	TEAM_17TH_WRONG_UNIFORM,
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
	TEAM_ISAF_MR_BAND_MEMBER,
	TEAM_ISAF_MR_WAR_REPORTER,
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
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
)

AddDoorGroup("USSR",
	TEAM_40TH_MR_ANTI_ARMOUR,
	TEAM_40TH_MR_ASSAULT_TROOPER,
	TEAM_40TH_MR_AUTORIFLEMAN,
	TEAM_40TH_MR_BAND_MEMBER,
	TEAM_40TH_MR_COMMISSIONED_OFFICER,
	TEAM_40TH_MR_ENGINEER,
	TEAM_40TH_MR_EXPLOSIVES_EXPERT,
	TEAM_40TH_MR_INFANTRY,
	TEAM_40TH_MR_MEDIC,
	TEAM_40TH_MR_REGIMENTAL_COMMANDER,
	TEAM_40TH_MR_SNCO,
	TEAM_40TH_MR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_40TH_MR_SNIPER,
	TEAM_40TH_MR_WAR_REPORTER,
	TEAM_ABR_ANTI_AIR,
	TEAM_ABR_AUTORIFLEMAN,
	TEAM_ABR_COMBAT_SUPPORT,
	TEAM_ABR_COMMISSIONED_OFFICER,
	TEAM_ABR_DOWNED_PILOT,
	TEAM_ABR_ENGINEER,
	TEAM_ABR_JTAC,
	TEAM_ABR_MEDIC,
	TEAM_ABR_PATHFINDER,
	TEAM_ABR_PILOT,
	TEAM_ABR_REGIMENTAL_COMMANDER,
	TEAM_ABR_SNCO,
	TEAM_ABR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_ABR_TROOPER,
	TEAM_SGRU_ASSASSIN,
	TEAM_SGRU_BREACHER,
	TEAM_SGRU_COMMISSIONED_OFFICER,
	TEAM_SGRU_COVERT_OPERATOR,
	TEAM_SGRU_DEMOLITIONS,
	TEAM_SGRU_ENGINEER,
	TEAM_SGRU_INFANTRY,
	TEAM_SGRU_MEDIC,
	TEAM_SGRU_REGIMENTAL_COMMANDER,
	TEAM_SGRU_SNCO,
	TEAM_SGRU_SENIOR_COMMISSIONED_OFFICER,
	TEAM_SGRU_SNIPER,
	TEAM_SGRU_SPECIAL_OPERATIONS,
	TEAM_11TH_GMR_ANTI_ARMOUR,
	TEAM_11TH_GMR_AUTORIFLEMAN,
	TEAM_11TH_GMR_COMBAT_SUPPORT,
	TEAM_11TH_GMR_COMMISSIONED_OFFICER,
	TEAM_11TH_GMR_ENGINEER,
	TEAM_11TH_GMR_INFANTRY,
	TEAM_11TH_GMR_MECHANIC,
	TEAM_11TH_GMR_MEDIC,
	TEAM_11TH_GMR_REGIMENTAL_COMMANDER,
	TEAM_11TH_GMR_SNCO,
	TEAM_11TH_GMR_SAPPER,
	TEAM_11TH_GMR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_KGB_AGENT,
	TEAM_KGB_COMMISSIONED_OFFICER,
	TEAM_KGB_DETECTIVE,
	TEAM_KGB_ENGINEER,
	TEAM_KGB_INTERNAL_AFFAIRS,
	TEAM_KGB_MEDIC,
	TEAM_KGB_RIOT_OFFICER,
	TEAM_KGB_SNCO,
	TEAM_KGB_SENIOR_COMMISSIONER_OFFICER,
	TEAM_KGB_SHARPSHOOTER,
	TEAM_KGB_SPECIAL_RESPONSE_OFFICER,
	TEAM_KGB_REGIMENTAL_COMMANDER,
	TEAM_SSHC_1ST_SHOCK_ARMY_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_USSR_FLAMER,
	TEAM_USSR_SPY,
	TEAM_USSR_JUGGERNAUT,
	TEAM_USSR_COOK,
	TEAM_USSR_DRILL_INSTRUCTOR,
	TEAM_USSR_INFANTRY,
	TEAM_USSR_WAR_COUNCIL
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
	TEAM_NATO_HC_GENERAL_OF_THE_ARMY,
	TEAM_NATO_HC_WAR_COUNCIL
)

AddDoorGroup("USSR - Officers",
	TEAM_40TH_MR_COMMISSIONED_OFFICER,
	TEAM_40TH_MR_REGIMENTAL_COMMANDER,
	TEAM_40TH_MR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_ABR_COMMISSIONED_OFFICER,
	TEAM_ABR_REGIMENTAL_COMMANDER,
	TEAM_ABR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_SGRU_COMMISSIONED_OFFICER,
	TEAM_SGRU_REGIMENTAL_COMMANDER,
	TEAM_SGRU_SENIOR_COMMISSIONED_OFFICER,
	TEAM_11TH_GMR_COMMISSIONED_OFFICER,
	TEAM_11TH_GMR_REGIMENTAL_COMMANDER,
	TEAM_11TH_GMR_SENIOR_COMMISSIONED_OFFICER,
	TEAM_KGB_COMMISSIONED_OFFICER,
	TEAM_KGB_SENIOR_COMMISSIONER_OFFICER,
	TEAM_KGB_REGIMENTAL_COMMANDER,
	TEAM_SSHC_32ND_STRATEGIC_GROUP_COMMANDER,
	TEAM_SSHC_47TH_JOINT_SPECIAL_OPERATIONS_COMMANDER,
	TEAM_SSHC_COLONEL_GENERAL,
	TEAM_SSHC_GENERAL,
	TEAM_SSHC_HEAVY_FIELD_OPERATIVE,
	TEAM_SSHC_MARSHAL_OF_THE_SOVIET_UNION,
	TEAM_SSHC_RECON_OPERATIVE,
	TEAM_USSR_WAR_COUNCIL
)
end

hook.Add("VJobEditorRegisterJobs", "vjobeditor", function()
AddDoorGroups()
end)

AddDoorGroups()