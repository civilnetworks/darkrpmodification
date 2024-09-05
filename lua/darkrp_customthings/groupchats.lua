--[[---------------------------------------------------------------------------
Group chats
---------------------------------------------------------------------------
Team chat for when you have a certain job.
e.g. with the default police group chat, police officers, chiefs and mayors can
talk to one another through /g or team chat.

HOW TO MAKE A GROUP CHAT:
Simple method:
GAMEMODE:AddGroupChat(List of team variables separated by comma)

Advanced method:
GAMEMODE:AddGroupChat(a function with ply as argument that returns whether a random player is in one chat group)
This is for people who know how to script Lua.

---------------------------------------------------------------------------]]
-- Example: GAMEMODE:AddGroupChat(TEAM_MOB, TEAM_GANG)
-- Example: GAMEMODE:AddGroupChat(function(ply) return ply:isCP() end)

hook.Add("VJobEditorRegisterJobs","DarkRP_RegisterGroupChats", function()
    -- Site Affairs
    GAMEMODE:AddGroupChat(TEAM_DIRECTOR_OF_INTELLIGENCE,TEAM_INTELLIGENCE_AMBASSADOR,TEAM_INTELLIGENCE_AGENT,TEAM_DIRECTOR_OF_INTERNAL_AFFAIRS,TEAM_INTERNAL_AFFAIRS_OPERATIVE,TEAM_INTELLIGENCE_OPERATIVE,TEAM_INTERNAL_AFFAIRS_AGENT,TEAM_INTERNAL_AFFAIRS_AMBASSADOR)
    -- Overseer Council
    GAMEMODE:AddGroupChat(TEAM_O51,TEAM_O52,TEAM_O53,TEAM_O54,TEAM_O55,TEAM_O56,TEAM_O57)
    -- Class D Personnel
    --GAMEMODE:AddGroupChat(TEAM_CLASS_D, TEAM_CLASS_D_TANK, TEAM_CLASS_D_SCOUT) // Whoever added this was trolling...
    -- Research Staff
    GAMEMODE:AddGroupChat(TEAM_JUNIOR_RESEARCHER,TEAM_RESEARCHER,TEAM_SENIOR_RESEARCHER,TEAM_BIOHAZARD_RESEARCHER,TEAM_DIRECTOR_OF_RESEARCH,TEAM_EXECUTIVE_RESEARCHER)
    -- Medical Staff
    GAMEMODE:AddGroupChat(TEAM_DIRECTOR_OF_MEDICINE,TEAM_CHIEF_OF_MEDICINE,TEAM_CHEMIST,TEAM_COMBAT_MEDIC,TEAM_MEDICAL_TRAINEE,TEAM_DOCTOR)
    -- Site Administration
    GAMEMODE:AddGroupChat(TEAM_OVERSEER_ASSISTANT,TEAM_ETHICS_COMMITTEE_ASSISTANT,TEAM_SITE_ADVISOR,TEAM_SITE_DIRECTOR,TEAM_DIRECTOR_OF_THE_ETHICS_COMMITTE,TEAM_ETHICS_COMMITTEE_MEMBER)
    -- Site Staff
    // not adding group chat for this - K2
    -- Security Staff
    GAMEMODE:AddGroupChat(TEAM_SECURITY_CADET,TEAM_SECURITY_OFFICER,TEAM_SECURITY_OFFICER_RIOT_CONTROL,TEAM_SECURITY_SERGEANT_RIOT_CONTROL,TEAM_SECURITY_SERGEANT,TEAM_SECURITY_CAPTAIN,TEAM_CHIEF_OF_SECURITY)
    -- MTF 0-1
    GAMEMODE:AddGroupChat(TEAM_MTF_O1_LAWS_LEFT_HAND_OPERATIVE, TEAM_MTF_O1_LAWS_LEFT_HAND_MEDIC, TEAM_MTF_O1_LAWS_LEFT_HAND_SPECIALIST, TEAM_MTF_O1_LAWS_LEFT_HAND_ENFORCEMENT, TEAM_MTF_O1_LAWS_LEFT_HAND_OFFICER, TEAM_MTF_O1_LAWS_LEFT_HAND_COMMANDER)
    -- CI
    GAMEMODE:AddGroupChat(TEAM_CI_COMMANDER, TEAM_CI_CO, TEAM_CI_DELCOM, TEAM_CI_DEEP_COVER, TEAM_CI_JUGGERNAUT, TEAM_CI_RESEARCH, TEAM_CI_RND, TEAM_CI_DELTA_OPERATIVE, TEAM_CI_MARKSMAN, TEAM_CI_BIOHAZARD, TEAM_CI_STRIKE, TEAM_CI_MEDIC, TEAM_CI_OPERATIVE, TEAM_CI_RECRUIT, TEAM_CI_TECHNICAL_EXPERT, TEAM_CI_TYPEBLUE)
    -- NU-7
    GAMEMODE:AddGroupChat(TEAM_MTF_NU7_HAMMER_DOWN_OPERATIVE, TEAM_MTF_NU7_HAMMER_DOWN_MEDIC, TEAM_MTF_NU7_HAMMER_DOWN_SPECIALIST, TEAM_MTF_NU7_HAMMER_DOWN_MARKSMAN, TEAM_MTF_NU7_HAMMER_DOWN_AUTORIFLEMAN, TEAM_MTF_NU7_HAMMER_DOWN_OFFICER, TEAM_MTF_NU7_HAMMER_DOWN_COMMANDER)
    -- E-11
    GAMEMODE:AddGroupChat(TEAM_MTF_E11_NINE_TAILED_FOX_OPERATIVE, TEAM_MTF_E11_NINE_TAILED_FOX_SPECIALIST, TEAM_MTF_E11_NINE_TAILED_FOX_BIOHAZARD_SPECIALIST, TEAM_MTF_E11_NINE_TAILED_FOX_BREACHER, TEAM_MTF_E11_NINE_TAILED_FOX_INFILTRATOR, TEAM_MTF_E11_NINE_TAILED_FOX_CO, TEAM_MTF_E11_NINE_TAILED_FOX_COMMANDER)
    -- A-1
    GAMEMODE:AddGroupChat(TEAM_MTF_A1_RED_RIGHT_HAND_OPERATIVE, TEAM_MTF_A1_RED_RIGHT_HAND_MEDIC, TEAM_MTF_A1_RED_RIGHT_HAND_SPECIALIST, TEAM_MTF_A1_RED_RIGHT_HAND_ENFORCEMENT, TEAM_MTF_A1_RED_RIGHT_HAND_COMMANDER)
    -- Surface zone
    // doesn't make sense here either - k2
end)