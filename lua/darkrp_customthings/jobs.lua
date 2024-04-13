--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

// Common bodygroup tables
local ussrHCBodyGroups = {
    [1] = function(char)
        if (not char) then return 0 end
        
        local team = VWAR.Teams[char.team]
        if (not team) then return 0 end

        local rank = team.ranks[char.rank]
        if (not rank) then return 0 end
        
        local name = string.lower(rank.name)

        if (name == "marshal of the soviet union" or name == "general of the army") then return 4 end
        if (name == "general") then return 3 end
        if (name == "colonel general") then return 2 end
        if (name == "lieutenant general") then return 1 end
        
        return 0
    end,
}

local ussrOfficerBodyGroup = function(char, model)
    //print(model,string.find(string.lower(model), "inf_0"))
    if (not string.find(string.lower(model), "inf_0")) then return 0 end
    
    if (not char) then return 0 end
    
    local team = VWAR.Teams[char.team]
    if (not team) then return 0 end

    local rank = team.ranks[char.rank]
    if (not rank) then return 0 end
    
    local name = string.lower(rank.name)

    if (name == "junior lieutenant") then return 2 end
    if (name == "senior lieutenant") then return 3 end
    if (name == "captain") then return 4 end
    if (name == "major") then return 6 end
    if (name == "lieutenant colonel") then return 7 end
    if (name == "colonel") then return 8 end
    
    return 0
end

// Useful stuff
local natoColor = Color(60, 100, 200, 255)
local nwoColor = Color(200,100,100)
local fieldKitSwep = "vwar_field_kit"
local medKitSwep = "vwar_advanced_field_kit"
local fullHealSwep = "vwar_first_aid_kit"
local binoSwep = "vwar_binoculars"
local fragSwep = "m9k_m61_frag"
local flashSwep = "weapon_lordi_flashnade"
local smokeSwep = "swep_smokenade"
local stripSwep = "vwar_weapon_stripper"
local radio = "dradio"
local repairTool = "weapon_simrepair"
local idSwep = "vwar_id_card"

--[[local colonelRank = 19
local seniorOfficerRank = 17
local officerRank = 15
local masterSergeantRank = 11
local sergeantRank = 8
local corporalRank = 7]]--
local majRank = 13
local ltRank = 11
local sgmRank = 10
local ssgtRank = 8
local spcRank = 5
local pfcRank = 4
local privateRank = 3

TEAM_CIVILIAN = AddExtraTeam("Civilian", {
    color = Color(100,100,100),
    model = {
        "models/drem/cch/female_01.mdl",
        "models/drem/cch/female_02.mdl",
        "models/drem/cch/female_03.mdl",
        "models/drem/cch/female_04.mdl",
        "models/drem/cch/female_06.mdl",
        "models/drem/cch/female_07.mdl",
        "models/drem/cch/male_01.mdl",
        "models/drem/cch/male_02.mdl",
        "models/drem/cch/male_03.mdl",
        "models/drem/cch/male_04.mdl",
        "models/drem/cch/male_05.mdl",
        "models/drem/cch/male_06.mdl",
        "models/drem/cch/male_07.mdl",
        "models/drem/cch/male_08.mdl",
        "models/drem/cch/male_09.mdl",
    },
    description = [[An unfortunate local living in the center of a warzone.
The civilians live in the wartorn town and struggle to get by in times of violence and conflict.
Civilians are officially neutral, and will not be attacked by soldiers.
]],
    weapons = {"vwar_field_kit"},
    command = "civilian",
    max = 0,
    admin = 0,
    salary = 2,
    hasLicense = false,
    candemote = false,
    VWarTeam = "civilians",
})

-- //////////////
-- // VIP JOBS //
-- //////////////

-- TEAM_USSR_COOK = AddExtraTeam("NWO Cook", {
    -- color = Color(255, 180, 100, 255),
    -- model = {
        -- "models/player/hostage/hostage_01.mdl",
        -- "models/player/hostage/hostage_02.mdl",
        -- "models/player/hostage/hostage_03.mdl",
        -- "models/player/mossman.mdl",
    -- },
    -- description = [[The base Cook! Cook lovely meals for your comrades and play them their favourite tunes!

-- NOTE: Max ONE radio in and radio's can only be used in the mess hall (OOC area)
 
-- Supporter+]],
    -- weapons = { "weapon_fists"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "nwo_cook",
    -- max = 0,
    -- salary = 50,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "New World Order",
    -- VWarTeam = "ussr",

    -- CustomCheckFailMsg = "You need to be at least Supporter to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Supporter")
    -- end,
-- })

-- TEAM_NATO_COOK = AddExtraTeam("NATO Cook", {
    -- color = Color(255, 180, 100, 255),
    -- model = {
        -- "models/player/hostage/hostage_01.mdl",
        -- "models/player/hostage/hostage_02.mdl",
        -- "models/player/hostage/hostage_03.mdl",
        -- "models/player/mossman.mdl",
    -- },
    -- description = [[The base Cook! Cook lovely meals for the boys and play them their favourite tunes!

-- NOTE: Max ONE radio in and radio's can only be used in the mess hall (OOC area)
 
-- Supporter+]],
    -- weapons = { "weapon_fists"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "nato_cook",
    -- max = 0,
    -- salary = 50,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO",
    -- VWarTeam = "nato",

    -- CustomCheckFailMsg = "You need to be at least Supporter to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Supporter")
    -- end,
-- })

-- TEAM_USSR_SPY = AddExtraTeam("NWO Spy", {
    -- color = nwoColor,
    -- model = {
        -- "models/humans/mafia/male_02.mdl",
        -- "models/humans/mafia/male_04.mdl",
        -- "models/humans/mafia/male_06.mdl",
        -- "models/humans/mafia/male_07.mdl",
        -- "models/humans/mafia/male_08.mdl",
        -- "models/humans/mafia/male_09.mdl",
    -- },
    -- description = [[A spy for the New World Order, undergo covert missions to acquire intelligence from the enemies!
-- Spies are able to disguise as random members of the enemy team to infiltrate their ranks.
-- The life of a spy is dangerous however, always at risk of being discovered, and taken prisoner!

-- NOTE: It is FailRP to force a spy to blow their cover by performing: Comms, holding disguised job weapons out.
-- NOTE: Breaking rules intentionally whilst impersonating others will result in demotion.
 
-- Veteran+]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep,  "vguns_m9", "vguns_br9","vwar_hacker", "vwar_id_card", "vwar_id_card_spy"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "nwo_spy",
    -- max = 3,
    -- salary = 50,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "New World Order",
    -- VWarTeam = "ussr",
    -- VWarDriveWithoutLicense = true,

    -- CustomCheckFailMsg = "You need to be at least Veteran to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Veteran")
    -- end,
-- })

-- TEAM_NATO_SPY = AddExtraTeam("NATO Spy", {
    -- color = natoColor,
    -- model = {
        -- "models/humans/mafia/male_02.mdl",
        -- "models/humans/mafia/male_04.mdl",
        -- "models/humans/mafia/male_06.mdl",
        -- "models/humans/mafia/male_07.mdl",
        -- "models/humans/mafia/male_08.mdl",
        -- "models/humans/mafia/male_09.mdl",
    -- },
    -- description = [[A spy for the NATO, undergo covert missions to acquire intelligence from the enemies!
-- Spies are able to disguise as random members of the enemy team to infiltrate their ranks.
-- The life of a spy is dangerous however, always at risk of being discovered, and taken prisoner!

-- NOTE: It is FailRP to force a spy to blow their cover by performing: Comms, holding disguised job weapons out.
-- NOTE: Breaking rules intentionally whilst impersonating others will result in demotion.
 
-- Veteran+]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep,  "vguns_m9", "vguns_br9","vwar_hacker", "vwar_id_card", "vwar_id_card_spy"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "nato_spy",
    -- max = 3,
    -- salary = 50,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO",
    -- VWarTeam = "nato",
    -- VWarDriveWithoutLicense = true,

    -- CustomCheckFailMsg = "You need to be at least Veteran to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Veteran")
    -- end,
-- })

-- TEAM_MILITIA = AddExtraTeam("Eastern Resistance - Recruit", {
    -- color = Color(139, 117, 71, 255),
    -- model = {
        -- "models/player/militia4pm.mdl",
    -- },
    -- description = [[The most basic member of the Eastern Resistance!


-- The Eastern Resistance stands to free all occupied territories from the hands of any aggressors!
-- This bloody war must come to an end, we must show the NWO and the NATO that they cannot keep up this conflict for long!

-- NOTE: Eastern Resistance can claim domain over the TOWN, and attempt to force NATO or NWO forces out of the area.
-- NOTE: Eastern Resistance can attempt to make alliegance with other teams, but do not expect them to always accept so easily.
 
-- Patriot+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, fieldKitSwep, "vguns_rgp5", "vguns_skorpion", "vguns_deagle", "weapon_cuff_elastic"},
    -- command = "militia",
    -- max = 0,
    -- salary = 60,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Eastern Resistance",
    -- VWarTeam = "civilians",
    -- VWarHirable = true,

    -- CustomCheckFailMsg = "You need to be at least Patriot to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Patriot")
    -- end,
-- })

-- TEAM_MILITIA_SOLDIER = AddExtraTeam("Eastern Resistance - Soldier", {
    -- color = Color(139, 117, 71, 255),
    -- model = {
        -- "models/player/militia1pm.mdl",
    -- },
    -- description = [[A well trained Eastern Resistance soldier!


-- The Eastern Resistance stands to free all occupied territories from the hands of any aggressors!
-- This bloody war must come to an end, we must show the NWO and the NATO that they cannot keep up this conflict for long!

-- NOTE: Eastern Resistance can claim domain over the TOWN, and attempt to force NATO or NWO forces out of the area.
-- NOTE: Eastern Resistance can attempt to make alliegance with other teams, but do not expect them to always accept so easily.
 
-- Veteran+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, fieldKitSwep,  "vguns_akm", "vguns_rgp5", "vguns_m1911", "m9k_rpg7", "weapon_cuff_elastic"},
    -- command = "er_soldier",
    -- max = 0,
    -- salary = 100,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Eastern Resistance",
    -- VWarTeam = "civilians",
    -- VWarHirable = true,

    -- CustomCheckFailMsg = "You need to be at least Veteran to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Veteran")
    -- end,
-- })

-- TEAM_MILITIA_MARKSMAN = AddExtraTeam("Eastern Resistance - Marksman", {
    -- color = Color(139, 117, 71, 255),
    -- model = {
        -- "models/player/militia2pm.mdl",
    -- },
    -- description = [[The marksman from the Eastern Resistance! He is as trained as he is deadly.


-- The Eastern Resistance stands to free all occupied territories from the hands of any aggressors!
-- This bloody war must come to an end, we must show the NWO and the NATO that they cannot keep up this conflict for long!

-- NOTE: Eastern Resistance can claim domain over the TOWN, and attempt to force NATO or NWO forces out of the area.
-- NOTE: Eastern Resistance can attempt to make alliegance with other teams, but do not expect them to always accept so easily.
 
-- Patriot+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, fieldKitSwep,  "vguns_karabiner", "vguns_skorpion", "vguns_m1911"},
    -- command = "er_marksman",
    -- max = 2,
    -- salary = 60,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Eastern Resistance",
    -- VWarTeam = "civilians",
    -- VWarHirable = true,

    -- CustomCheckFailMsg = "You need to be at least Patriot to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Patriot")
    -- end,
-- })

-- TEAM_MILITIA_SNIPER = AddExtraTeam("Eastern Resistance - Sniper", {
    -- color = Color(139, 117, 71, 255),
    -- model = {
        -- "models/player/militia2pm.mdl",
    -- },
    -- description = [[A sniper from the Eastern Resistance!


-- The Eastern Resistance stands to free all occupied territories from the hands of any aggressors!
-- This bloody war must come to an end, we must show the NWO and the NATO that they cannot keep up this conflict for long!

-- NOTE: Eastern Resistance can claim domain over the TOWN, and attempt to force NATO or NWO forces out of the area.
-- NOTE: Eastern Resistance can attempt to make alliegance with other teams, but do not expect them to always accept so easily.
 
-- Patriot+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, fieldKitSwep,  "vguns_karabiner", "vguns_skorpion", "vguns_m1911"},
    -- command = "er_sniper",
    -- max = 0,
    -- salary = 60,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Eastern Resistance",
    -- VWarTeam = "civilians",
    -- VWarHirable = true,

    -- CustomCheckFailMsg = "You need to be at least Patriot to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Patriot")
    -- end,
-- })

-- TEAM_MILITIA_LEADER = AddExtraTeam("Eastern Resistance - Leader", {
    -- color = Color(139, 117, 71, 255),
    -- model = {
        -- "models/player/militia3pm.mdl",
    -- },
    -- description = [[The leader of the local team of Eastern Resistance fighters! His methods are questionable, but his cause is truly honorable.


-- The Eastern Resistance stands to free all occupied territories from the hands of any aggressors!
-- This bloody war must come to an end, we must show the NWO and the NATO that they cannot keep up this conflict for long!

-- NOTE: Eastern Resistance can claim domain over the TOWN, and attempt to force NATO or NWO forces out of the area.
-- NOTE: Eastern Resistance can attempt to make alliegance with other teams, but do not expect them to always accept so easily.
 
-- War Criminal+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, fieldKitSwep, medKitSwep, repairTool, "vguns_ppsh_drum", "vguns_rpd", "vguns_ak12", "vguns_44magnum", "m9k_rpg7", "weapon_cuff_elastic", "vwar_construction_kit"},
    -- command = "er_leader",
    -- max = 0,
    -- salary = 150,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Eastern Resistance",
    -- VWarTeam = "civilians",
    -- VWarHirable = true,

    -- CustomCheckFailMsg = "You need to be at least War Criminal to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("War Criminal")
    -- end,
-- })

-- TEAM_MILITIA_GOAT = AddExtraTeam("Mountain Goat", {
    -- color = Color(139, 117, 71, 255),
    -- model = {
        -- "models/goatplayer/goat_player.mdl",
    -- },
    -- description = [[You are a Mountain Goat!

    -- Hop around and have fun!

    -- Just try not to land on someones dinner plate.

    -- Rules: 
    -- You can be killed for a viable RP reason!
    -- You are not allowed to speak (only goat noises), or do anything a real goat would not do!

    -- War Criminal+]],
    -- weapons = {fieldKitSwep, "weapon_fists"},
    -- command = "er_goat",
    -- max = 0,
    -- salary = 180,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Other",
    -- VWarTeam = "civilians",
    -- VWarHirable = false,

    -- CustomCheckFailMsg = "You need to be at least Veteran to play this job!",
    -- customCheck = function(ply)
    -- return ply:AtLeastRanked("Veteran")
    -- end,
-- })

-- TEAM_PRIVATE_CONTRACTOR = AddExtraTeam("Private Contractor", {
    -- color = Color(189, 159, 125, 255),
    -- model = {
        -- "models/kuma96/modern_warfare_remastered/characters/sas/ch3/sas_ch3_pm.mdl",
    -- },
    -- description = [[A man in the middle... Private Contractors work for the highest bidder.

-- Private Contractors may make deals with any team and sell their services as a hired gun.
-- Specially trained, highly effective and a key asset to any team seeking the edge over their opponent.

-- Requires 10 referrals to play!]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep,  "vguns_gry_sbr", "vguns_m1911", "weapon_cuff_elastic", "m9k_m61_frag", flashSwep, smokeSwep},
    -- command = "private_contractor",
    -- max = 2,
    -- salary = 100,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarTeam = "civilians",
    -- VWarHirable = true,

    -- CustomCheckFailMsg = "You need 10 referrals to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Moderator") or (VWAR.Referrals:GetReward(ply, "private_contractor") == true)
    -- end,
-- })

-- TEAM_PRIVATE_CONTRACTOR_MARKSMAN = AddExtraTeam("Private Contractor - Marksman", {
    -- color = Color(189, 159, 125, 255),
    -- model = {
        -- "models/kuma96/modern_warfare_remastered/characters/sas/ch3/sas_ch3_pm.mdl",
    -- },
    -- description = [[A man in the middle... Private Contractors work for the highest bidder. This is the marksman loadout for private contractor.

-- Private Contractors may make deals with any team and sell their services as a hired gun.
-- Specially trained, highly effective and a key asset to any team seeking the edge over their opponent.

-- Requires 10 referrals to play!]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep,  "vguns_gol","vguns_mac10" ,"vguns_m1911", "m9k_m61_frag", flashSwep, smokeSwep},
    -- command = "private_contractor_marksman",
    -- max = 2,
    -- salary = 100,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarTeam = "civilians",
    -- VWarHirable = true,
    
    -- CustomCheckFailMsg = "You need 10 referrals to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Moderator") or (VWAR.Referrals:GetReward(ply, "private_contractor") == true)
    -- end,
-- })

-- TEAM_PRESS = AddExtraTeam("Press", {
    -- color = Color(128, 0, 128, 255),
    -- model = {
        -- "models/player/Group03/male_04.mdl",
        -- "models/player/Group03/male_01.mdl",
        -- "models/player/Group03/male_02.mdl",
        -- "models/player/Group03/male_03.mdl",
        -- "models/player/Group03/male_05.mdl",
        -- "models/player/Group03/male_06.mdl",
        -- "models/player/Group03/male_07.mdl",
        -- "models/player/Group03/male_08.mdl",
        -- "models/player/Group03/male_09.mdl",
        -- "models/player/Group03/female_01.mdl",
        -- "models/player/Group03/female_02.mdl",
        -- "models/player/Group03/female_03.mdl",
        -- "models/player/Group03/female_04.mdl",
        -- "models/player/Group03/female_05.mdl",
        -- "models/player/Group03/female_06.mdl",
    -- },
    -- description = [[Always looking for a story to report. There will always be news around these parts to cover with your handy notepad and trusty camera.
-- ]],
    -- weapons = {"gmod_camera","vwar_field_kit"},
    -- command = "press",
    -- max = 0,
    -- salary = 100,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarTeam = "civilians",
-- })

-- TEAM_DOCTOR = AddExtraTeam("Doctor", {
    -- color = Color(128, 0, 128, 255),
    -- model = {
        -- "models/player/group03m/female_01.mdl",
        -- "models/player/group03m/female_02.mdl",
        -- "models/player/group03m/female_03.mdl",
        -- "models/player/group03m/female_04.mdl",
        -- "models/player/group03m/female_05.mdl",
        -- "models/player/group03m/female_06.mdl",
        -- "models/player/group03m/male_01.mdl",
        -- "models/player/group03m/male_02.mdl",
        -- "models/player/group03m/male_03.mdl",
        -- "models/player/group03m/male_04.mdl",
        -- "models/player/group03m/male_05.mdl",
        -- "models/player/group03m/male_06.mdl",
        -- "models/player/group03m/male_07.mdl",
        -- "models/player/group03m/male_08.mdl",
        -- "models/player/group03m/male_09.mdl",
    -- },
    -- description = [[Civilians in the area will often need medical attention, make sure to make yourself well known as a point of help within the town.
-- ]],
    -- weapons = {"vwar_first_aid_kit"},
    -- command = "doctor",
    -- max = 0,
    -- salary = 100,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarTeam = "civilians",

    -- CustomCheckFailMsg = "You need to be at least Veteran to play this job!",
    -- customCheck = function(ply)
        -- return ply:AtLeastRanked("Veteran")
    -- end,
-- })

-- TEAM_ADMINONDUTY = AddExtraTeam("Admin On Duty", {
    -- color = Color(0, 0, 205, 255),
    -- model = {
        -- "models/player/combine_super_soldier.mdl",
        -- "models/player/Barney.mdl"
    -- },
 
    -- description = [[Administrates the server.
        -- AFKing on this job is NOT allowed.
        -- You have to cloak while noclipping but you can if you want.

        -- Do not interact with roleplay as admin on duty (speaking to people who are roleplaying)
 
        -- 0 tolerance for swearing. Never swear on duty ever please!
 
        -- Don't interrupt another admin while they are on duty!
 
        -- Try not to physgun players too much when you are speaking to them, they dont like it.
 
        -- \\==//Don't ever get angry at players no matter what, always remain calm and proffessional and act as an affective Role Model for players.\\==//
 
        -- Always remember to make a good first impression for new players joining the server, look proffessional and be a Role Model! (I repeat this because its super important)]],
    -- weapons = {stripSwep, "lockpickweapon", "arrest_stick", "keypad_cracker", "unarrest_stick", "weaponchecker", "laserpointer", "weapon_keypadchecker", "weapon_r_handcuffs"},
    -- command = "aod",
    -- max = 0,
    -- admin = 0,
    -- salary = 1500,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- modelScale = 1.1,
    -- customCheck = function(ply)
        -- if not ply:AtLeastRanked("Moderator") then
            -- DarkRP.notify(ply,1,5,"You must be at least ranked Trial Moderator.")
            -- return false
        -- end

        -- local char = VWAR:GetCharacter(ply)
        -- if ( not char ) then
            -- DarkRP.notify(ply,1,5,"ERROR: Invalid character.")
            -- return false
        -- end

        -- local tmCfg = char and VWAR.Teams[char.team] or nil
        -- if ( not tmCfg or not tmCfg.civilian ) then -- Can't be AOD if not civilian
            -- DarkRP.notify(ply,1,5,"You must be playing civilian to play AOD.")
            -- return false
        -- end

        -- return true
    -- end,
    -- VWarTeam = "civilians",
-- })

-- TEAM_GMONDUTY = AddExtraTeam("Game Master on Duty",{
    -- color = Color(115,158,252),
    -- model = {
        -- "models/player/combine_super_soldier.mdl",
        -- "models/player/Barney.mdl",
        -- "models/drem/cch/female_01.mdl",
        -- "models/drem/cch/female_02.mdl",
        -- "models/drem/cch/female_03.mdl",
        -- "models/drem/cch/female_04.mdl",
        -- "models/drem/cch/female_06.mdl",
        -- "models/drem/cch/female_07.mdl",
        -- "models/drem/cch/male_01.mdl",
        -- "models/drem/cch/male_02.mdl",
        -- "models/drem/cch/male_03.mdl",
        -- "models/drem/cch/male_04.mdl",
        -- "models/drem/cch/male_05.mdl",
        -- "models/drem/cch/male_06.mdl",
        -- "models/drem/cch/male_07.mdl",
        -- "models/drem/cch/male_08.mdl",
        -- "models/drem/cch/male_09.mdl",
    -- },
    -- description = [[Trial Game Master+ // Head Moderator+
        -- AFKing on this job is NOT allowed.
        -- Only use this job if you are actively leading, assisting or playing an event role in an event.

        -- Must be cloaked while no clipping.
    -- ]],
    -- weapons = {"lockpickweapon", "weaponchecker", "weapon_keypadchecker", "weapon_r_handcuffs","vwar_voice_amplifier","vwar_id_card_spy","vwar_id_card"},
    -- command = "gmonduty",
    -- max = 3,
    -- admin = 0,
    -- salary = 1500,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- modelScale = 1,
    -- customCheck = function(ply)
        -- if (not VWAR:IsTrialGM(ply)) then
            -- DarkRP.notify(ply,1,5,"You must be a Game Master to play this job.")
            -- return false
        -- end

        -- return true
    -- end,
    -- VWarTeam = "civilians",
-- })

-- ///////////////
-- // SIDE TEAMS //
-- ///////////////

TEAM_NATO_RECRUIT = AddExtraTeam("NATO - Recruit", {
    color = natoColor,
    model = "models/player/mw3rangers/us_ranger_02.mdl",
    description = [[A new recruit for the NATO forces.
You need training before you can become a full fledged infantry man and join a regiment.
]],
    weapons = {binoSwep, fieldKitSwep, "vguns_ar15_trainee" , "vwar_id_card"}, // make a 1 damage version of this gun
    VWarAdvancedLoadoutsDisable = true,
    command = "natorecruit",
    max = 0,
    admin = 0,
    salary = 5,
    hasLicense = false,
    candemote = false,
    category = "NATO",
    VWarTeam = "nato",
})

-- TEAM_NATO_INFANTRY = AddExtraTeam("NATO - Infantry", {
    -- color = natoColor,
    -- model = "models/player/mw3rangers/us_ranger_01.mdl",
    -- description = [[A trained member of the NATO forces.
-- You can now join a regiment and start working up the ranks.
-- ]],
    -- weapons = {binoSwep, fieldKitSwep, "vwar_id_card"}, 
    -- command = "natoinfantry",
    -- max = 0,
    -- admin = 0,
    -- salary = 5,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO",
    -- VWarTeam = "nato",
    -- VWarRank = privateRank,
-- })

-- TEAM_NATO_JUGGERNAUT = AddExtraTeam("NATO - Juggernaut", {
    -- color = natoColor,
    -- model = "models/mw2guy/riot/juggernaut.mdl",
    -- description = [[The most heavily armoured infantry unit for the NATO military.
-- ]],
    -- weapons = {binoSwep, fieldKitSwep,  "vguns_auger", "vguns_deagle", "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "natojuggernaut",
    -- max = 1,
    -- admin = 0,
    -- salary = 5,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO",
    -- VWarTeam = "nato",
    -- VWarRank = pfcRank,
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(500)
        -- ply:SetHealth(3200)
        -- ply:SetRunSpeed(130)
        -- ply:SetWalkSpeed(80)
    -- end,
-- })

-- TEAM_NATO_FLAMER = AddExtraTeam("NATO - Flamer", {
    -- color = natoColor,
    -- model = "models/mw2guy/riot/riot_us.mdl",
    -- description = [[Flamethrower specialist for the NATO military.
-- ]],
    -- weapons = {binoSwep, fieldKitSwep,  "halo_swep_flamethrower", "vguns_ar15", "vguns_deagle", "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "natoflamer",
    -- max = 1,
    -- admin = 0,
    -- salary = 5,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO",
    -- VWarTeam = "nato",
    -- VWarRank = pfcRank,
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(400)
        -- ply:SetHealth(600)
    -- end,
-- })

-- TEAM_NATO_DRILL_SERGEANT = AddExtraTeam("NATO - Drill Instructor", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__03.mdl",
    -- description = [[Certified Drill Instructor for the NATO forces.
-- Leads training of new recruits and some other exercises.

-- NOTE: You must be trained in recruitment training to play this job.
-- NOTE: It is FailRP to play this job without actively training recruits or leading some other training exersises. DO NOT AFK AS THIS JOB.
    -- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "weapon_r_handcuffs", "vwar_id_card", "weapon_cuff_elastic"},
    -- command = "nato_drill_instructor",
    -- max = 0,
    -- admin = 0,
    -- salary = 250,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO",
    -- VWarTeam = "nato",
    -- VWarRank = spcRank,
-- })


TEAM_USSR_RECRUIT = AddExtraTeam("NWO - Recruit", {
    color = nwoColor,
    model = {
        "models/codmw2/t_codmw2h.mdl",
    },
    description = [[A new recruit for the NWO forces.
You need training before you can become a full fledged infantry man and join a regiment.
]],
    weapons = {binoSwep, fieldKitSwep, "vguns_akm_trainee", "vwar_id_card"}, // make a 1dmg version of this gun
    VWarAdvancedLoadoutsDisable = true,
    command = "nworecruit",
    max = 0,
    admin = 0,
    salary = 5,
    hasLicense = false,
    candemote = false,
    category = "New World Order",
    VWarTeam = "ussr",
})

-- TEAM_USSR_INFANTRY = AddExtraTeam("NWO - Infantry", {
    -- color = nwoColor,
    -- model = {
        -- "models/codmw2/t_codmw2h.mdl",
    -- },
    -- description = [[A new recruit for the NWO forces.
-- ]],
    -- weapons = {binoSwep, fieldKitSwep, "vwar_id_card"}, 
    -- command = "ussrinfantry",
    -- max = 0,
    -- admin = 0,
    -- salary = 5,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "New World Order",
    -- VWarTeam = "ussr",
    -- VWarRank = privateRank,
-- })

-- TEAM_USSR_JUGGERNAUT = AddExtraTeam("NWO - Juggernaut", {
    -- color = nwoColor,
    -- model = "models/ghosts_federation/ghosts_fedjuggernaut_od_player.mdl",
    -- description = [[The most heavily armoured infantry unit for the NWO military.
-- ]],
    -- weapons = {binoSwep, fieldKitSwep,  "vguns_auger", "vguns_br9", "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "nwojuggernaut",
    -- max = 1,
    -- admin = 0,
    -- salary = 5,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "New World Order",
    -- VWarTeam = "ussr",
    -- VWarRank = pfcRank,
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(500)
        -- ply:SetHealth(3000)
        -- ply:SetRunSpeed(140)
        -- ply:SetWalkSpeed(80)
    -- end,
-- })

-- TEAM_USSR_FLAMER = AddExtraTeam("NWO - Flamer", {
    -- color = nwoColor,
    -- model = "models/mw2guy/riot/riot_ru.mdl",
    -- description = [[Flamethrower specialist for the NWO military.
-- ]],
    -- weapons = {binoSwep, fieldKitSwep,  "halo_swep_flamethrower", "vguns_akm", "vguns_br9", "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "nwoflamer",
    -- max = 1,
    -- admin = 0,
    -- salary = 5,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "New World Order",
    -- VWarTeam = "ussr",
    -- VWarRank = pfcRank,
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(400)
        -- ply:SetHealth(600)
    -- end,
-- })

-- TEAM_USSR_DRILL_SERGEANT = AddExtraTeam("NWO - Drill Instructor", {
    -- color = nwoColor,
    -- model = "models/madivan18/bf4/ru/ru_soldiera_baku_karl_valvebiped.mdl",
    -- description = [[Certified Drill Instructor for the NWO forces.
-- Leads training of new recruits and some other exercises.

-- NOTE: You must be trained in recruitment training to play this job.
-- NOTE: It is Job Abuse to play this job without actively training recruits or leading some other training exersises. DO NOT AFK AS THIS JOB.
    -- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "weapon_r_handcuffs", "vwar_id_card", "weapon_cuff_elastic"},
    -- command = "nwo_drill_instructor",
    -- max = 0,
    -- admin = 0,
    -- salary = 250,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "New World Order",
    -- VWarTeam = "ussr",
    -- VWarRank = spcRank,
    -- VWarBodygroups = {
        -- [1] = 1, // Torso
        -- [4] = 12, // Remove helmet
    -- }
-- })

-- //////////////////////////////////////////
-- // NATO BATTALION: ISAF                  //
-- //////////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_sopmod", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_raijin", "vguns_mp443"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_spas", "vguns_p90"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_fn_2000", "vguns_m9"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_ISAF_INFANTRY = AddExtraTeam("ISAF - Infantry", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__10.mdl",
    -- description = [[ISAF - A general purpose NATO-led military force.

-- Infantry of the ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "isafinfantry",
    -- max = 0,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = privateRank,
    -- VWarBodygroups = {
      -- [9] = 1,
      -- [10] = 3,
      -- [11] = 1,  
  -- },
-- })

-- TEAM_ISAF_MEDIC = AddExtraTeam("ISAF - Medic", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__13.mdl",
    -- description = [[ISAF - NATO Infantry force serves as the primary on-foot combat role during war.

-- Medic of ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep, fullHealSwep , "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "isafmedic",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 5,
	-- }
-- })

-- TEAM_ISAF_ENGINEER = AddExtraTeam("ISAF - Engineer", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__02.mdl",
    -- description = [[NATO Infantry force serves as the primary on-foot combat role during war.

-- Engineer of ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,  repairTool , "vwar_id_card", "vwar_construction_kit_engineer"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "isaf_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 10,
	-- }
-- })

-- TEAM_ISAF_OFFICER = AddExtraTeam("ISAF - Squad Leader", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__11.mdl",
    -- description = [[NATO Infantry force serves as the primary on-foot combat role during war.

-- Squad Leader of ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_construction_kit" , "vwar_id_card" , "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "isafofficer",
    -- max = 10,
    -- admin = 0,
    -- salary = 90,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = ssgtRank,
-- })

-- TEAM_ISAF_SOFFICER = AddExtraTeam("ISAF - Company Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/player/pmc_2/pmc__11.mdl",
      -- "models/bloocobalt/science/jusmc_07.mdl",
  -- },
    -- description = [[NATO Infantry force serves as the primary on-foot combat role during war.

-- Company Commander of the ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "isafsofficer",
    -- max = 10,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = ltRank,
-- })

-- TEAM_ISAF_RECON = AddExtraTeam("ISAF - Recon", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__03.mdl",
    -- description = [[ISAF - NATO Infantry force serves as the primary on-foot combat role during war.

-- Reconnaissance expert of ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep,  "vguns_uzi", "vguns_stac_aggressor", "vguns_usp" , "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "isafrecon",
    -- max = 1,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 20,
	-- }
-- })

-- TEAM_ISAF_SNIPER = AddExtraTeam("ISAF - Sniper", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__03.mdl",
    -- description = [[ISAF - NATO Infantry force serves as the primary on-foot combat role during war.

-- Sniper of ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep,  "vguns_uzi", "vguns_stac_aggressor", "vguns_usp" , "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "isafsniper",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 20,
	-- }
-- })

-- TEAM_ISAF_AT = AddExtraTeam("ISAF - Anti Armour", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__07.mdl",
    -- description = [[ISAF - ISAF Infantry force serves as the primary on-foot combat role during war.

-- Anti Tank specialist of the ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_at4", "vguns_stinger", "m9k_proxy_mine" , "vwar_id_card", "m9k_suicide_bomb"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "isafat",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 15,
	-- }
-- })

-- TEAM_ISAF_AUTO = AddExtraTeam("ISAF - Autorifleman", {
    -- color = natoColor,
    -- model = "models/player/pmc_2/pmc__14.mdl",
    -- description = [[ISAF - NATO Infantry force serves as the primary on-foot combat role during war.

-- Autorifleman of ISAF.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep,  "vguns_para", "vguns_usp" , "vwar_id_card", "heavy_shield"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "isafauto",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(40)
    -- end,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 20,
	-- }
-- })

-- TEAM_ISAF_COLONEL = AddExtraTeam("ISAF - Regimental Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/player/pmc_2/pmc__01.mdl",
      -- "models/bloocobalt/science/jarmy_09.mdl",
  -- },
    -- description = [[ISAF - NATO Infantry force serves as the primary on-foot combat role during war..

-- Regimental Commander of ISAF.
-- Lead ISAF bravely as they charge into battle. Long may you live!
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, medKitSwep, "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "isaf_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 150,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO ISAF",
    -- VWarTeam = "nato",
    -- VWarBattalion = "International Security Assistance Force",
    -- VWarRank = majRank,
-- })

-- ////////////////////////////////////////////
-- // NATO BATTALION: 17th Armoured Regiment //
-- ////////////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_aug", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_hk417", "vguns_mp443"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_mossberg500", "vguns_uzi"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_mk18", "vguns_m9"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_TANKREG_INFANTRY = AddExtraTeam("17th Armoured - Infantry", {
    -- color = natoColor,
    -- model = "models/mw2/skin_09/mw2_soldier_01.mdl",
    -- description = [[17th Armoured - NATO Regiment that specilises in utilizing armoured vehicles in combat.

-- The most basic rank of the 17th Armoured Regiment.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep,"vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "tank_infantry",
    -- max = 0,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO 17th Armoured Regiment",
    -- VWarTeam = "nato",
    -- VWarBattalion = "17th Armoured Regiment",
    -- VWarRank = privateRank,
    -- VWarBodygroups = {
      -- [1] = 1, // Balaclava
      -- [4] = 1, // Glasses
  -- },
-- })

-- TEAM_TANKREG_MEDIC = AddExtraTeam("17th Armoured - Medic", {
    -- color = natoColor,
    -- model = "models/mw2/skin_09/mw2_soldier_01.mdl",
    -- description = [[17th Armoured - NATO Regiment that specilises in utilizing armoured vehicles in combat.

-- Medic of the 17th Armoured Regiment.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, repairTool, medKitSwep, fullHealSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "tank_medic",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO 17th Armoured Regiment",
    -- VWarTeam = "nato",
    -- VWarBattalion = "17th Armoured Regiment",
    -- VWarRank = pfcRank,
    -- VWarBodygroups = {
      -- [1] = 1, // Balaclava
      -- [3] = 1, // Arms
    -- },
	  -- VWarLevel = {
		  -- type = "vehicular",
		  -- level = 5,
	  -- }
-- })

-- TEAM_TANKREG_ENGINEER = AddExtraTeam("17th Armoured - Engineer", {
    -- color = natoColor,
    -- model = "models/mw2/skin_09/mw2_soldier_01.mdl",
    -- description = [[17th Armoured - NATO Regiment that specilises in utilizing armoured vehicles in combat.

-- Engineer of the 17th Armoured Regiment.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,  repairTool, "vwar_id_card", "vwar_construction_kit_engineer"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "tank_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO 17th Armoured Regiment",
    -- VWarTeam = "nato",
    -- VWarBattalion = "17th Armoured Regiment",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
    -- VWarBodygroups = {
      -- [1] = 1, // Balaclava
      -- [2] = 1, // Chestpiece
      -- [3] = 1, // Sleeves
      -- [4] = 1, // Glasses
  -- },
	-- VWarLevel = {
		-- type = "vehicular",
		-- level = 10,
	-- }
-- })

-- TEAM_TANKREG_OFFICER = AddExtraTeam("17th Armoured - Squad Leader", {
    -- color = natoColor,
    -- model = "models/mw2/skin_09/mw2_soldier_05.mdl",
    -- description = [[17th Armoured - NATO Regiment that specilises in utilizing armoured vehicles in combat.

-- Squad Leader of the 17th Armoured Regiment.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_construction_kit", "vwar_id_card", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "tank_squad_leader",
    -- max = 10,
    -- admin = 0,
    -- salary = 90,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO 17th Armoured Regiment",
    -- VWarTeam = "nato",
    -- VWarBattalion = "17th Armoured Regiment",
    -- VWarBodygroups = {
      -- [1] = 1, // Balaclava
      -- [2] = 6, // Chestpiece
      -- [4] = 2, // Cap
      -- [5] = 3, // Glasses
    -- },
    -- VWarRank = ssgtRank,
-- })

-- TEAM_TANKREG_SOFFICER = AddExtraTeam("17th Armoured - Company Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/mw2/skin_09/mw2_soldier_05.mdl",
      -- "models/bloocobalt/science/jusmc_07.mdl",
  -- },
    -- description = [[17th Armoured - NATO Regiment that specilises in utilizing armoured vehicles in combat.

-- Company Commander of the 17th Armoured Regiment.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,"vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "weapon_simrepair"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "tank_company_commander",
    -- max = 10,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO 17th Armoured Regiment",
    -- VWarTeam = "nato",
    -- VWarBattalion = "17th Armoured Regiment",
    -- VWarBodygroups = {
      -- [1] = 1, // Balaclava
      -- [2] = 5, // Chestpiece
      -- [3] = 1, // Cap
      -- [4] = 3, // Glasses
  -- },
    -- VWarRank = ltRank,
-- })

-- TEAM_TANKREG_AT = AddExtraTeam("17th Armoured - Anti Armour", {
    -- color = natoColor,
    -- model = "models/mw2/skin_09/mw2_soldier_02.mdl",
    -- description = [[17th Armoured - NATO Regiment that specilises in utilizing armoured vehicles in combat.

-- Anti Tank specialist of the 17th Armoured Regiment.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_at4", "vguns_stinger", "m9k_proxy_mine", "vwar_id_card", "m9k_suicide_bomb"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "tank_at",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO 17th Armoured Regiment",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "17th Armoured Regiment",
    -- VWarRank = pfcRank,
    -- VWarBodygroups = {
      -- [1] = 1, // Balaclava
      -- [2] = 2, // Chestpiece
      -- [4] = 1, // Head cushion
  -- },
	-- VWarLevel = {
		-- type = "vehicular",
		-- level = 15,
	-- }
-- })

-- TEAM_TANKREG_AUTO = AddExtraTeam("17th Armoured - Autorifleman", {
    -- color = natoColor,
    -- model = "models/mw2/skin_09/mw2_soldier_04.mdl",
    -- description = [[17th Armoured - NATO Regiment that specilises in utilizing armoured vehicles in combat.

-- Autorifleman of the 17th Armoured Regiment.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep, "heavy_shield", "vguns_m60", "vguns_m9", "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "tank_auto",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO 17th Armoured Regiment",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "17th Armoured Regiment",
    -- VWarBodygroups = {
      -- [1] = 1, // Balaclava
      -- [2] = 3, // Chestpiece
      -- [4] = 2, // Riot Faceshield
  -- },
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(40)
    -- end,
	-- VWarLevel = {
		-- type = "vehicular",
		-- level = 20,
	-- }
-- })

-- TEAM_TANKREG_COLONEL = AddExtraTeam("17th Armoured - Regimental Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/mw2/skin_09/mw2_soldier_05.mdl",
      -- "models/bloocobalt/science/jarmy_09.mdl",
    -- },
    -- description = [[17th Armoured - NATO Regiment that specilises in utilizing armoured vehicles in combat.

-- Regimental Commander of the 17th Armoured Regiment.

-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, repairTool, medKitSwep, "vguns_stinger", "m9k_proxy_mine", "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "tank_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 150,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO 17th Armoured Regiment",
    -- VWarTeam = "nato",
    -- VWarBattalion = "17th Armoured Regiment",
    -- VWarBodygroups = {
      -- [2] = 4, // Chestpiece
      -- [3] = 1, // Sleeves
      -- [4] = 2, // Riot Faceshield
      -- [5] = 3, // Drip Glasses
  -- },
    -- VWarRank = majRank,
-- })

-- //////////////////////////////////////////////////
-- // NATO BATTALION: SAS                          //
-- //////////////////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_karma45", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_arx160", "vguns_mp443"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_aa12", "vguns_uzi"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_sa80a2", "vguns_m9"},
    -- },
-- }
-- local atKits = {
    -- {
        -- name = "AT Kit A",
        -- weapons = {"vguns_karma45", "vguns_at4", "vguns_usp"},
    -- },
    -- {
        -- name = "AT Kit B",
        -- weapons = {"vguns_karma45", "vguns_stinger", "vguns_usp"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_SAS_INFANTRY = AddExtraTeam("SAS - Infantry", {
    -- color = natoColor,
    -- model = {
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_3.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
  -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- The most basic rank of the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "sas_infantry",
    -- max = 0,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- SkinSelect = true,
    -- VWarBodygroups = {
      -- [0] = 0, // name
      -- [1] = 0, // Helmet
      -- [2] = 0, // Helmet 2
      -- [3] = 1, // NVG
      -- [4] = 0, // Gasmask
      -- [5] = 0, // Patches
      -- [6] = 0, // Vest
      -- [7] = 0, // Pouch
      -- [8] = 0, // Pouch 2
  -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = privateRank,
-- })

-- TEAM_SAS_MEDIC = AddExtraTeam("SAS - Medic", {
    -- color = natoColor,
    -- model = {
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_3.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
  -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Medic of the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep, fullHealSwep, "vwar_id_card", "weapon_grapplehook"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "sas_medic",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- SkinSelect = true,
    -- VWarBodygroups = {
      -- [0] = 0, // name
      -- [1] = 0, // Helmet
      -- [2] = 0, // Helmet 2
      -- [3] = 0, // NVG
      -- [4] = 1, // Gasmask
      -- [5] = 0, // Patches
      -- [6] = 0, // Vest
      -- [7] = 0, // Pouch
      -- [8] = 0, // Pouch 2
  -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 5,
	-- }
-- })

-- TEAM_SAS_ENGINEER = AddExtraTeam("SAS - Engineer", {
    -- color = natoColor,
    -- model = {
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_1.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
  -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Engineer of the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, flashSwep, binoSwep, repairTool, fieldKitSwep,"swep_smokenade", "vwar_id_card","weapon_grapplehook", "vwar_construction_kit_engineer"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "sas_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- SkinSelect = true,
    -- VWarBodygroups = {
      -- [0] = 0, // name
      -- [1] = 1, // Helmet
      -- [2] = 1, // Helmet 2
      -- [3] = 0, // NVG
      -- [4] = 1, // Gasmask
      -- [5] = 0, // Patches
      -- [6] = 0, // Vest
  -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 10,
	-- }
-- })

-- TEAM_SAS_OFFICER = AddExtraTeam("SAS - Squad Leader", {
    -- color = natoColor,
    -- model = {
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_b_2.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
  -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Squad Leader of the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_construction_kit", "weapon_grapplehook", flashSwep, "vwar_id_card", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "sas_officer",
    -- max = 10,
    -- admin = 0,
    -- salary = 90,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["HelmetStuff"] = 2,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = ssgtRank,
-- })

-- TEAM_SAS_SOFFICER = AddExtraTeam("SAS - Company Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/bloocobalt/science/jusmc_07.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_b_2.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
  -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Senior Officer of the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_construction_kit", "weapon_grapplehook", flashSwep, "gred_emp_binoculars", "vwar_id_card"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "sas_sofficer",
    -- max = 10,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["HelmetStuff"] = 2,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = ltRank,
-- })

-- TEAM_SAS_MARKSMAN = AddExtraTeam("SAS - Recon", {
    -- color = natoColor,
    -- model = "models/notart/dagger-02.mdl",
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Marksmanship expert of the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep,  "vguns_l115a3", "vguns_mp7", "vguns_m9", "vwar_id_card", "weapon_grapplehook"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "sas_marksman",
    -- max = 1,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 20,
	-- }
-- })

-- TEAM_SAS_RECON = AddExtraTeam("SAS - Sniper", {
    -- color = natoColor,
    -- model = "models/notart/dagger-02.mdl",
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Reconnaissance expert of the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep,  "vguns_l115a3", "vguns_mp7", "vguns_m9", "vwar_id_card", "weapon_grapplehook"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "sas_recon",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 20,
	-- },
    -- VWarBodygroups = {
        -- ["Ghillie"] = 1,
    -- },
-- })

-- TEAM_SAS_AT = AddExtraTeam("SAS - Demolitions", {
    -- color = natoColor,
    -- model = {
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
  -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Demolitions specialist of the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, fragSwep, flashSwep, binoSwep, fieldKitSwep, "weapon_grapplehook", "m9k_suicide_bomb", "m9k_proxy_mine", "vwar_id_card"},
    -- VWarAdvancedLoadouts = atKits,
    -- command = "sas_at",
    -- max = 1,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- SkinSelect = true,
    -- VWarBodygroups = {
      -- [0] = 0, // name
      -- [1] = 0, // Helmet
      -- [2] = 0, // Helmet 2
      -- [3] = 0, // NVG
      -- [4] = 1, // Gasmask
      -- [5] = 0, // Patches
      -- [6] = 0, // Vest
      -- [7] = 0, // Pouch
  -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 15,
	-- }
-- })

-- TEAM_SAS_BREACHER = AddExtraTeam("SAS - Breacher", {
    -- color = natoColor,
    -- model = {
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_b_1.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
  -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Breaching expert for the Special Air Service.
-- Gain experience and you'll be able to get better equipment and respect from your peers.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "m9k_suicide_bomb", "vguns_nova", flashSwep, "heavy_shield", "vguns_para", "vwar_id_card", "weapon_grapplehook"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "sas_breacher",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- SkinSelect = true,
    -- VWarBodygroups = {
      -- [0] = 0, // name
      -- [1] = 0, // Helmet
      -- [2] = 1, // NVG
      -- [3] = 1, // Headset
      -- [4] = 1, // Gasmask
      -- [5] = 0, // Patches
      -- [6] = 0, // Vest
      -- [7] = 0, // Pouch
  -- },
    -- category = "NATO Special Air Service",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 20,
	-- }
-- })

-- TEAM_SAS_SPECIAL_OPS = AddExtraTeam("SAS - Special Operations", {
    -- color = natoColor,
    -- model = {
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_3.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
    -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- A special operations specialist. Given a specialist hacking device for digital missions.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vwar_id_card", "vwar_hacker", "weapon_grapplehook"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "sas_specops",
    -- max = 2,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- SkinSelect = true,
    -- VWarBodygroups = {
      -- [0] = 0, // name
      -- [1] = 0, // Helmet
      -- [2] = 0, // Helmet 2
      -- [3] = 1, // NVG
      -- [4] = 0, // Gasmask
      -- [5] = 0, // Patches
      -- [6] = 0, // Vest
      -- [7] = 0, // Pouch
      -- [8] = 0, // Pouch 2
  -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 10,
	-- },
-- })

-- TEAM_SAS_COLONEL = AddExtraTeam("SAS - Regimental Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/bloocobalt/science/jarmy_09.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_a_1.mdl",
      -- "models/arachnit/callofduty/modern_warfare_reboot/characters/sas/urban/sas_balaclava_urban_c_2.mdl",
    -- },
    -- description = [[SAS - Undertakes a number of roles including covert reconnaissance, counter-terrorism, direct action and hostage rescue.

-- Regimental Commander of the Special Air Service.

-- Remember your motto - "Quis separabit"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, medKitSwep, "vwar_hacker", "m9k_suicide_bomb", "vwar_construction_kit", flashSwep, "gred_emp_binoculars", "vwar_id_card", "weapon_grapplehook", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "sas_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 150,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Special Air Service",
    -- SkinSelect = true,
    -- VWarBodygroups = {
      -- [0] = 0, // name
      -- [1] = 0, // Helmet
      -- [2] = 0, // Gasmask
      -- [3] = 0, // Patches
      -- [4] = 0, // Vest
      -- [5] = 0, // Pouch
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Special Air Service",
    -- VWarRank = majRank,
-- })

-- /////////////////////////////////////
-- // NATO BATTALION: Joint Air Force //
-- ////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_scorpion", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_mpx", "vguns_mp443"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_mossberg500", "vguns_uzi"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_mp5a4", "vguns_m9"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_NATOAF_PARA = AddExtraTeam("JAF - Trooper", {
    -- color = natoColor,
    -- model = "models/player/pmc_4/pmc__10.mdl",
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- The most basic rank of the Joint Air Force.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "natoaf_para",
    -- max = 0,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarBodygroups = {
      -- [1] = 2,
      -- [2] = 2,
      -- [3] = 3,
  -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = privateRank,
-- })

-- TEAM_NATOAF_PARA_MEDIC = AddExtraTeam("JAF - Medic", {
    -- color = natoColor,
    -- model = "models/player/pmc_4/pmc__13.mdl",
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- Medic of the Joint Air Force.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep, fullHealSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "natoaf_medic",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarBodygroups = {
      -- [1] = 2,
      -- [2] = 2,
      -- [3] = 3,
  -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 5,
	-- },
-- })

-- TEAM_NATOAF_ENGINEER = AddExtraTeam("JAF - Engineer", {
    -- color = natoColor,
    -- model = "models/player/pmc_4/pmc__13.mdl",
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- Engineer of the Joint Air Force.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,  repairTool, "vwar_id_card", "vwar_construction_kit_engineer"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "natoaf_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
    -- VWarLevel = {
      -- type = "aerial",
      -- level = 10,
    -- },
-- })

-- TEAM_NATOAF_PARA_OFFICER = AddExtraTeam("JAF - Squad Leader", {
    -- color = natoColor,
    -- model = "models/player/pmc_4/pmc__11.mdl",
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- Squad Leader of the Joint Air Force.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,  "vwar_construction_kit", "vwar_id_card", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "natoaf_officer",
    -- max = 10,
    -- admin = 0,
    -- salary = 90,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarBodygroups = {
      -- [1] = 2,
      -- [2] = 0,
      -- [3] = 3,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = ssgtRank,
-- })

-- TEAM_NATOAF_PARA_SOFFICER = AddExtraTeam("JAF - Company Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/player/pmc_4/pmc__12.mdl",
      -- "models/bloocobalt/science/jusmc_07.mdl",
    -- },
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- Company Commander of the Joint Air Force.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, repairTool, "vwar_construction_kit", "vwar_id_card", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "natoaf_sofficer",
    -- max = 10,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarBodygroups = {
        -- [1] = 2,
        -- [2] = 0,
        -- [3] = 3,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = ltRank,
-- })

-- TEAM_NATOAF_ANTIAIR = AddExtraTeam("JAF - Anti Air", {
    -- color = natoColor,
    -- model = "models/player/pmc_4/pmc__10.mdl",
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- Anti Air of the Joint Air Force.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vguns_stinger", "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "natoaf_antiair",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarBodygroups = {
        -- [1] = 2,
        -- [2] = 2,
        -- [3] = 3,
    -- },
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 15,
	-- },
-- })

-- TEAM_NATOAF_PARA_AUTORIFLEMAN = AddExtraTeam("JAF - Autorifleman", {
    -- color = natoColor,
    -- model = "models/player/pmc_4/pmc__14.mdl",
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- Autorifleman of the Joint Air Force.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep,  "vguns_m240b", "vguns_m9", "heavy_shield" , "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "natoaf_autorifleman",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarBodygroups = {
        -- [1] = 2,
        -- [2] = 2,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(40)
    -- end,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 20,
	-- },
-- })

-- TEAM_NATOAF_PILOT = AddExtraTeam("JAF - Pilot", {
    -- color = natoColor,
    -- //model = "models/helipilot/pilot.mdl",
    -- model = {
      -- "models/codpilothacks/male01pilotpm.mdl",
      -- "models/codpilothacks/male02pilotpm.mdl",
      -- "models/codpilothacks/male03pilotpm.mdl",
      -- "models/codpilothacks/male04pilotpm.mdl",
      -- "models/codpilothacks/male05pilotpm.mdl",
      -- "models/codpilothacks/male06pilotpm.mdl",
      -- "models/codpilothacks/male07pilotpm.mdl",
      -- "models/codpilothacks/male08pilotpm.mdl",
      -- "models/codpilothacks/male09pilotpm.mdl",
    -- },
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- Certified Pilot of the Joint Air Force.
-- Gain experience and you'll be able to get better equipment, helicopters, and respect from your peers.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, repairTool, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "usaf_pilot",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarLicenses = {
        -- ["pilot"] = true,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 5,
	-- },
    -- SkinSelect = true,
-- })


-- TEAM_NATOAF_COLONEL = AddExtraTeam("JAF - Regimental Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/player/pmc_4/pmc__01.mdl",
      -- "models/bloocobalt/science/jarmy_09.mdl",
    -- },
    -- description = [[JAF - Specialist NATO pilots and paratroopers trained for quick deployment and behind-enemy-lines missions.

-- Regimental Commander of the Joint Air Force.
-- Remember your motto - Fly High
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, medKitSwep, repairTool, "vguns_stinger", "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "usaf_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 150,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Joint Air Force",
    -- VWarLicenses = {
        -- ["pilot"] = true,
    -- },
    -- VWarTeam = "nato",
    -- VWarBattalion = "Joint Air Force",
    -- VWarRank = majRank,
-- })

-- //////////////////////////////////////////
-- // NATO BATTALION: Royal Military Police //
-- //////////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_fang45", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_rgp5", "vguns_mp443"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_typhoon12", "vguns_sterling"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_g36c", "vguns_m9"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_RMP_CADET = AddExtraTeam("RMP - Operative", {
    -- color = natoColor,
    -- model = {
      -- "models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl",
    -- },
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Most basic rank of the Royal Military Police.
-- Gain experience and you'll be able to get better equipment, training, and respect from your peers.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "weapon_r_handcuffs", "vwar_id_card", "weapon_cuff_elastic", "stunstick", "swep_smokenade"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "mp_cadet",
    -- max = 0,
    -- admin = 0,
    -- salary = 80,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = privateRank,
    -- SkinSelect = true,
-- })

-- TEAM_RMP_MEDIC = AddExtraTeam("RMP - Medic", {
    -- color = natoColor,
    -- model = "models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl",
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Medic of the Royal Military Police.
-- Gain experience and you'll be able to get better equipment, training, and respect from your peers.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, fragSwep, binoSwep, medKitSwep, fullHealSwep,  "weapon_r_handcuffs", "vwar_id_card", "riot_shield", "weapon_cuff_elastic", "stunstick", "swep_smokenade"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "mp_medic",
    -- max = 6,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 5,
	-- },
    -- SkinSelect = true,
-- })

-- TEAM_RMP_ENGINEER = AddExtraTeam("RMP - Engineer", {
    -- color = natoColor,
    -- model = "models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl",
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Engineer of the Royal Military Police.
-- Gain experience and you'll be able to get better equipment, training, and respect from your peers.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,  repairTool, "weapon_r_handcuffs", "vwar_id_card", "riot_shield", "weapon_cuff_elastic", "vwar_construction_kit_engineer", "stunstick", "swep_smokenade", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "mp_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 10,
	-- },
    -- SkinSelect = true,
-- })

-- TEAM_RMP_OFFICER = AddExtraTeam("RMP - Squad Leader", {
    -- color = natoColor,
    -- model = {
      -- "models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl",
    -- },
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Squad Leader of the Royal Military Police.
-- Gain experience and you'll be able to get better equipment, training, and respect from your peers.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_spas_pepper", "weapon_r_handcuffs", "vwar_construction_kit", "vwar_id_card", "deployable_shield", "gred_emp_binoculars", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "mp_officer",
    -- max = 10,
    -- admin = 0,
    -- salary = 120,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = ssgtRank,
    -- SkinSelect = true,
-- })

-- TEAM_RMP_IA = AddExtraTeam("RMP - Internal Affairs", {
    -- color = natoColor,
    -- model = {
      -- "models/ghosts_federation/ghosts_fedbasic_urban_player.mdl",
    -- },
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Internal Affairs, the undercover branch of RMP where secrecy is an asset in rooting out disorder. You are tasked to ensure others follow the rules and policies, this specialised kit helps you achieve this.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "weapon_r_handcuffs", "vwar_id_card", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "vwar_id_card_spy_team"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "mp_ia",
    -- max = 0,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = ssgtRank,
    -- SkinSelect = true,
    -- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 10,
	-- },
-- })

-- TEAM_RMP_SOFFICER = AddExtraTeam("RMP - Company Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl",
      -- "models/bloocobalt/science/jusmc_07.mdl",
    -- },
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Company Commander of the Royal Military Police.
-- Gain experience and you'll be able to get better equipment, training, and respect from your peers.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_spas_pepper", "weapon_r_handcuffs", "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "deployable_shield", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "mp_sofficer",
    -- max = 10,
    -- admin = 0,
    -- salary = 130,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = ltRank,
    -- SkinSelect = true,
-- })

-- TEAM_RMP_SPECIAL_RESPONSE_OFFICER = AddExtraTeam("RMP - Special Response Officer", {
    -- color = natoColor,
    -- model = "models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl",
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Special Response Officer of the Royal Military Police, dealing with highly dangerous situations.
-- Gain experience and you'll be able to get better equipment, training, and respect from your peers.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_spas_pepper", "weapon_r_handcuffs", "vguns_m240b", "vguns_deagle", "vwar_id_card", "heavy_shield", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "mp_special_response_officer",
    -- max = 4,
    -- admin = 0,
    -- salary = 80,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(40)
    -- end,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 15,
	-- },
    -- SkinSelect = true,
-- })

-- TEAM_RMP_SHARPSHOOTER = AddExtraTeam("RMP - Sharpshooter", {
    -- color = natoColor,
    -- model = "models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl",
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Sharpshooter of the Royal Military Police, dealing with highly dangerous situations.
-- Gain experience and you'll be able to get better equipment, training, and respect from your peers.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep,  "weapon_r_handcuffs", "vguns_scarh","vguns_uzi" ,"vguns_usp", "vwar_id_card", "weapon_cuff_elastic", "stunstick", "swep_smokenade"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "mp_sharpshooter",
    -- max = 1,
    -- admin = 0,
    -- salary = 80,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 20,
	-- },
    -- SkinSelect = true,
-- })

-- TEAM_RMP_MARKSMAN = AddExtraTeam("RMP - Marksman", {
    -- color = natoColor,
    -- model = "models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01playermodel.mdl",
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Marksman of the Royal Military Police, dealing with highly dangerous situations.
-- Gain experience and you'll be able to get better equipment, training, and respect from your peers.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep,  "weapon_r_handcuffs", "vguns_uzi", "vguns_scarh", "vguns_usp", "vwar_id_card", "weapon_cuff_elastic", "stunstick", "swep_smokenade"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "mp_marksman",
    -- max = 2,
    -- admin = 0,
    -- salary = 80,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 20,
	-- },
    -- SkinSelect = true,
-- })

-- TEAM_RMP_COLONEL = AddExtraTeam("RMP - Regimental Commander", {
    -- color = natoColor,
    -- model = {
      -- "models/player/police/custom_rmp/custom_rmp.mdl",
      -- "models/bloocobalt/science/jarmy_09.mdl",
    -- },
    -- description = [[RMP - Providing security services on military bases around the world. They also conduct law enforcement and investigations of crimes.

-- Colonel of the Royal Military Police.
-- Remember your motto - "peace through order"]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, medKitSwep, "vguns_spas_pepper", "vwar_construction_kit", "weapon_r_handcuffs", "gred_emp_binoculars", "vwar_id_card", "deployable_shield", "weapon_r_handcuffs", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "heavy_shield", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "mp_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 160,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO Royal Military Police",
    -- VWarTeam = "nato",
    -- VWarBattalion = "Royal Military Police",
    -- VWarHasStungun = true,
    -- VWarRank = majRank,
    -- SkinSelect = true,
-- })

-- //////////////////////////////////
-- // NATO BATTALION: Highcommand //
-- //////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_g36c", "vguns_deagle"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_famas", "vguns_m9"},
    -- },
-- }

-- local atKits = {
    -- {
        -- name = "AT Kit A",
        -- weapons = {"vguns_g36c", "vguns_at4", "vguns_deagle"},
    -- },
    -- {
        -- name = "AT Kit B",
        -- weapons = {"vguns_g36c", "vguns_stinger", "vguns_deagle"},
    -- },
-- }

-- TEAM_NATOHC_GENERAL = AddExtraTeam("NATO HC - General", {
    -- color = natoColor,
    -- model = "models/bloocobalt/science/jusaf_06.mdl",
    -- description = [[5 star general from NATO High Command.
-- Overlook the battalions, ensuring they are commanded well, and issue orders to your troops.
-- Their life is in your hands!
-- ]],
    -- weapons = {stripSwep, binoSwep, medKitSwep, fullHealSwep, "gred_emp_binoculars", "vwar_id_card", "vwar_construction_kit", "vwar_voice_amplifier", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "natohc_g",
    -- max = 0,
    -- admin = 0,
    -- salary = 400,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO High Command",
    -- VWarHasStungun = true,
    -- VWarTeam = "nato",
    -- VWarSubmaterials = {
        -- [0] = "models/bloocobalt/science/kleiner_usaf_gen_s4",
    -- },
    -- VWarBattalion = "NATO High Command",
    -- VWarRank = 18,
-- })

-- TEAM_NATOHC_LTGEN = AddExtraTeam("NATO HC - Lieutenant general", {
    -- color = natoColor,
    -- model = "models/bloocobalt/science/jnavy_09.mdl",
    -- description = [[4 star general from NATO High Command.
-- Overlook the battalions, ensuring they are commanded well, and issue orders to your troops.
-- Their life is in your hands!
-- ]],
    -- weapons = {stripSwep, binoSwep, medKitSwep, fullHealSwep, "gred_emp_binoculars", "vwar_id_card", "vwar_construction_kit", "vwar_voice_amplifier", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "natohc_lg",
    -- max = 0,
    -- admin = 0,
    -- salary = 300,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO High Command",
    -- VWarHasStungun = true,
    -- VWarTeam = "nato",
    -- VWarSubmaterials = {
        -- [0] = "models/bloocobalt/science/kleiner_usaf_gen_s3",
    -- },
    -- VWarBattalion = "NATO High Command",
    -- VWarRank = 17,
-- })

-- TEAM_NATOHC_RECONOP = AddExtraTeam("NATO HC - Royal SpecOps Brigade Commander", {
    -- color = natoColor,
    -- model = {"models/styrofoam/bf4/us_assaultpm.mdl",
              -- "models/bloocobalt/science/jnavy_09.mdl"
            -- },
    -- description = [[Royal SpecOps Brigade Commander loadout for NATO HC.
-- ]],
    -- weapons = {stripSwep, binoSwep, medKitSwep, fullHealSwep, "weapon_grapplehook", "vguns_m98b", "gred_emp_binoculars", "vwar_id_card", "vwar_construction_kit", "vwar_voice_amplifier", "deployable_shield", "weapon_r_handcuffs", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "heavy_shield"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "natohc_reconop",
    -- max = 2,
    -- admin = 0,
    -- salary = 300,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NATO High Command",
    -- VWarHasStungun = true,
    -- VWarTeam = "nato",
    -- VWarBattalion = "NATO High Command",
    -- VWarRank = 15,
-- })

-- TEAM_NATOHC_UAF_RG = AddExtraTeam("NATO HC - 5th Mechanized Brigade Commander", {
    -- color = natoColor,
    -- model = {"models/styrofoam/bf4/us_assaultpm.mdl",
              -- "models/bloocobalt/science/jnavy_09.mdl",
            -- },
    -- description = [[NATO HC - 5th Mechanized Brigade Commander.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep, repairTool, "vguns_stinger", "vguns_at4", "m9k_proxy_mine", "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "weapon_r_handcuffs", "vwar_voice_amplifier"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "natohc_jaf_bc",
    -- max = 2,
    -- admin = 0,
    -- salary = 300,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarHasStungun = true,
    -- category = "NATO High Command",
    -- VWarTeam = "nato",
    -- VWarBattalion = "NATO High Command",
    -- VWarRank = 15,
-- })

-- TEAM_NATOHC_15TH_RG = AddExtraTeam("NATO HC - 19th Anti Personnel Brigade Commander", {
    -- color = natoColor,
    -- model = {"models/styrofoam/bf4/us_assaultpm.mdl",
              -- "models/bloocobalt/science/jnavy_09.mdl",
            -- },
    -- description = [[NATO HC - 19th Anti Personnel Brigade Commander.
    -- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep,"vguns_stinger", "vguns_scarh", "vguns_at4", "m9k_proxy_mine", "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "weapon_r_handcuffs", "vwar_voice_amplifier", "vguns_m60"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "natohc_isaf_bc",
    -- max = 2,
    -- admin = 0,
    -- salary = 300,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarHasStungun = true,
    -- category = "NATO High Command",
    -- VWarTeam = "nato",
    -- VWarBattalion = "NATO High Command",
    -- VWarRank = 15,
-- })

-- TEAM_NATOHC_FCU = AddExtraTeam("NATO HC - Field Command Unit", {
  -- color = natoColor,
  -- model = {
  -- "models/styrofoam/bf4/us_assaultpm.mdl",
  -- "models/bloocobalt/science/jnavy_09.mdl",
  -- },
  -- description = [[NATO HC - Field Command Unit.

  -- Equipped with the latest and greatest kevlar armour and vision assistance, this loadout allows any high ranking VIP to 'safely' enter the battlefield.
-- ]],
  -- weapons = {stripSwep, binoSwep, medKitSwep, "gred_emp_binoculars", "vwar_id_card", "vwar_construction_kit", "vwar_voice_amplifier", "weapon_r_handcuffs","weapon_simrepair"},
  -- VWarAdvancedLoadouts = regKits,
  -- command = "natohc_fcu",
  -- max = 0,
  -- admin = 0,
  -- salary = 300,
  -- hasLicense = false,
  -- candemote = false,
  -- category = "NATO High Command",
  -- VWarTeam = "nato",
  -- VWarBattalion = "NATO High Command",
  -- VWarRank = 15,
-- })

-- ////////////////////////////////
-- //           USSR             //
-- ////////////////////////////////
-- //////////////////////////////////
-- // NWO BATTALION: Iron Vanguard //
-- //////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_lynx", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_ash12", "vguns_hk_p30l"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_ksg", "vguns_veresk"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_akz", "vguns_prokolot"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_GF_INFANTRY = AddExtraTeam("IVG - Infantry", {
    -- color = nwoColor,
    -- model = "models/kuge/prototype/blackwatch pm/blackwatch-3.mdl",
    -- description = [[IVG - The land forces of the New World Order.

-- The most basic rank of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "gf_infantry",
    -- max = 0,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = privateRank,
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Vest Gear"] = 2,
    -- },
-- })

-- TEAM_GF_MEDIC = AddExtraTeam("IVG - Medic", {
    -- color = nwoColor,
    -- model = "models/kuge/prototype/blackwatch pm/blackwatch-2.mdl",
    -- description = [[IVG - The land forces of the New World Order.

-- Medic of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep, fullHealSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "gf_medic",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 5,
	-- },
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Nvg"] = 2,
    -- },
-- })

-- TEAM_GF_ENGINEER = AddExtraTeam("IVG - Engineer", {
    -- color = nwoColor,
    -- model = "models/kuge/prototype/blackwatch pm/blackwatch-4.mdl",
    -- description = [[IVG - The land forces of the New World Order.

-- Engineer of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,  repairTool, "vwar_id_card", "vwar_construction_kit_engineer"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "gf_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 10,
	-- },
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Nvg"] = 4,
    -- },
-- })

-- TEAM_GF_OFFICER = AddExtraTeam("IVG - Squad Leader", {
    -- color = nwoColor,
    -- model = "models/kuge/prototype/blackwatch pm/blackwatch-4.mdl",
    -- description = [[IVG - The land forces of the New World Order.

-- You are a Squad Leader of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_id_card", "vwar_construction_kit", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "gf_officer",
    -- max = 10,
    -- admin = 0,
    -- salary = 90,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = ssgtRank,
    -- SkinSelect = true,
-- })

-- TEAM_GF_SOFFICER = AddExtraTeam("IVG - Company Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/kuge/prototype/blackwatch pm/blackwatch-1.mdl",
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- },
    -- description = [[IVG - The land forces of the New World Order.

-- You are a Company Commander of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_id_card", "vwar_construction_kit", "vguns_rpd", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "gf_sofficer",
    -- max = 10,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = ltRank,
    -- VWarSubmaterials = {
        -- [9] = "models/redarmy_co/gloves",
    -- },
    -- SkinSelect = true,
-- })

-- TEAM_GF_AT = AddExtraTeam("IVG - Anti Armour", {
    -- color = nwoColor,
    -- model = "models/kuge/prototype/blackwatch pm/blackwatch-4.mdl",
    -- description = [[IVG - The land forces of the New World Order.

-- Anti tank specialist of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,  "vguns_at4", "vguns_stinger", "m9k_proxy_mine" , "vwar_id_card", "m9k_suicide_bomb"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "gf_infantryat",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarTeam = "ussr",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 15,
	-- },
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Nvg"] = 4,
        -- ["Helmet"] = 1,
        -- ["Hands"] = 1,
    -- },
-- })

-- TEAM_GF_AUTO = AddExtraTeam("IVG - Autorifleman", {
    -- color = nwoColor,
    -- model = "models/kuge/prototype/blackwatch pm/blackwatch-4.mdl",
    -- description = [[IVG - The land forces of the New World Order.

-- Autorifleman of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep,  "vguns_mk8", "vguns_mp443" , "vwar_id_card", "heavy_shield"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "gf_auto",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(40)
    -- end,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 20,
	-- },
    -- SkinSelect = true,
-- })

-- TEAM_GF_MARKSMAN = AddExtraTeam("IVG - Recon", {
    -- color = nwoColor,
    -- model = "models/kuge/prototype/blackwatch pm/blackwatch-2.mdl",
    -- description = [[IVG - The land forces of the New World Order.

-- Marksman of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_amr2", "vguns_skorpion", "vguns_mp443" , "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "gf_marksman",
    -- max = 1,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- SkinSelect = true,
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 20,
	-- },
    -- VWarBodygroups = {
        -- ["Nvg"] = 3,
    -- },
-- })

-- TEAM_GF_SNIPER = AddExtraTeam("IVG - Sniper", {
    -- color = nwoColor,
    -- model = "models/kuge/prototype/blackwatch pm/blackwatch-2.mdl",
    -- description = [[IVG - The land forces of the New World Order.

-- Sniper of the Iron Vanguard.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_amr2", "vguns_skorpion", "vguns_mp443" , "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "gf_sniper",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "sharpshooter",
		-- level = 20,
	-- },
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Nvg"] = 3,
    -- },
-- })

-- TEAM_GF_COLONEL = AddExtraTeam("IVG - Regimental Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
        -- "models/kuge/prototype/blackwatch pm/blackwatch-3.mdl",
    -- },
    -- description = [[IVG - The land forces of the New World Order.

-- Regimental Commander of the Iron Vanguard.
-- Leader of the front lines of USSR, stand stong мой брат.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, medKitSwep, "vwar_id_card", "vwar_construction_kit", "vguns_ak12", "gred_emp_binoculars", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "gf_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 150,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Iron Vanguard",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Iron Vanguard",
    -- VWarRank = majRank,
    -- SkinSelect = 3,
    -- VWarBodygroups = {
        -- ["Helmet"] = 2,
        -- ["Headset"] = 1,
        -- ["Headwear"] = 1,
    -- },
-- })

-- ///////////////////////////////////////////
-- // NWO BATTALION: Steel Winged Battalion //
-- ///////////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_kriss", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_p90", "vguns_hk_p30l"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_nova", "vguns_glockp80"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_asval", "vguns_cz75"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_AT_INFANTRY = AddExtraTeam("SWB - Trooper", {
    -- color = nwoColor,
    -- model = "models/2000genericas pm/soldier1_xof.mdl",
    -- description = [[You are part of the front lines of the Steel Winged Battalion.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- Remember your motto - "nobody, but us"
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "at_infantry",
    -- max = 0,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarTeam = "ussr",
    -- VWarRank = privateRank,
    -- VWarBattalion = "Steel Winged Battalion",
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Legs"] = 1,
        -- ["Shoulders"] = 1,
        -- ["Headwear"] = 1,
        -- ["Vest bottom gear"] = 1,
    -- },
-- })

-- TEAM_AT_MEDIC = AddExtraTeam("SWB - Medic", {
    -- color = nwoColor,
    -- model = "models/2000genericas pm/soldier1_xof.mdl",
    -- description = [[You are part of the front lines of the Steel Winged Battalion.

-- Medic of the Steel Winged Battalion. 
-- Remember your motto - "nobody, but us"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fullHealSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "at_medic",
    -- max = 0,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarTeam = "ussr",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 5,
	-- },
    -- VWarBattalion = "Steel Winged Battalion",
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Legs"] = 1,
        -- ["Shoulders"] = 1,
        -- ["Headwear"] = 1,
        -- ["Hands"] = 2,
    -- },
-- })

-- TEAM_AT_ENGINEER = AddExtraTeam("SWB - Engineer", {
    -- color = nwoColor,
    -- model = "models/2000genericas pm/soldier1_xof.mdl",
    -- description = [[You are part of the front lines of the Steel Winged Battalion.

-- Engineer of the Steel Winged Battalion.
-- Remember your motto - "nobody, but us"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep,  repairTool, "vwar_id_card", "vwar_construction_kit_engineer"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "at_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Steel Winged Battalion",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 10,
	-- },
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Legs"] = 1,
        -- ["Shoulders"] = 1,
        -- ["Goggles"] = 1,
        -- ["Hands"] = 2,
        -- ["Back gear"] = 5,
        -- ["Gas mask bag"] = 1,
    -- },
-- })

-- TEAM_AT_OFFICER = AddExtraTeam("SWB - Squad Leader", {
    -- color = nwoColor,
    -- model = "models/2000genericas pm/soldier1_xof.mdl",
    -- description = [[You are part of the front lines of the Steel Winged Battalion.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- Remember your motto - "nobody, but us"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_id_card", "vwar_construction_kit", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "at_officer",
    -- max = 0,
    -- admin = 0,
    -- salary = 90,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarTeam = "ussr",
    -- VWarRank = ssgtRank,
    -- VWarBattalion = "Steel Winged Battalion",
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Hands"] = 1,
    -- },
-- })

-- TEAM_AT_SOFFICER = AddExtraTeam("SWB - Company Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/2000genericas pm/soldier1_xof.mdl",
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- },
    -- description = [[You are part of the front lines of the Steel Winged Battalion.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- Remember your motto - "nobody, but us"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, repairTool, "vwar_id_card", "vwar_construction_kit", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "at_sofficer",
    -- max = 0,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarTeam = "ussr",
    -- VWarRank = ltRank,
    -- VWarBattalion = "Steel Winged Battalion",
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Hands"] = 1,
    -- },
-- })

-- TEAM_AT_ANTIAIR = AddExtraTeam("SWB - Anti Air", {
    -- color = nwoColor,
    -- model = "models/2000genericas pm/soldier1_xof.mdl",
    -- description = [[You are part of the front lines of the Steel Winged Battalion.
    
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- Remember your motto - "nobody, but us"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_stinger", "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "at_antiair",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 15,
	-- },
    -- VWarBattalion = "Steel Winged Battalion",
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Legs"] = 1,
        -- ["Shoulders"] = 1,
        -- ["Hands"] = 1,
        -- ["Back gear"] = 4,
    -- },
-- })

-- TEAM_AT_AUTO = AddExtraTeam("SWB - Autorifleman", {
    -- color = nwoColor,
    -- model = "models/2000genericas pm/soldier1_xof.mdl",
    -- description = [[You are part of the front lines of the Steel Winged Battalion.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- Remember your motto - "nobody, but us"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, flashSwep, binoSwep, fieldKitSwep,  "vguns_rpd", "vguns_mp443", "heavy_shield" , "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "at_autorifleman",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(40)
    -- end,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 20,
	-- },
    -- VWarBattalion = "Steel Winged Battalion",
    -- SkinSelect = true,
    -- VWarBodygroups = {
        -- ["Hands"] = 1,
    -- },
-- })

-- TEAM_RUAF_PILOT = AddExtraTeam("SWB - Pilot", {
    -- color = nwoColor,
    -- //model = "models/sub/jet_pilot_redone.mdl",
    -- model = {
        -- "models/codpilothacks/male01pilotpm.mdl",
        -- "models/codpilothacks/male02pilotpm.mdl",
        -- "models/codpilothacks/male03pilotpm.mdl",
        -- "models/codpilothacks/male04pilotpm.mdl",
        -- "models/codpilothacks/male05pilotpm.mdl",
        -- "models/codpilothacks/male06pilotpm.mdl",
        -- "models/codpilothacks/male07pilotpm.mdl",
        -- "models/codpilothacks/male08pilotpm.mdl",
        -- "models/codpilothacks/male09pilotpm.mdl",
    -- },
    -- description = [[Certified Pilot of the Steel Winged Battalion.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, repairTool, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "at_pilot",
    -- max = 0,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarLicenses = {
        -- ["pilot"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "aerial",
		-- level = 5,
	-- },
    -- VWarBattalion = "Steel Winged Battalion",
-- })

-- TEAM_AT_COLONEL = AddExtraTeam("SWB - Regimental Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
        -- "models/2000genericas pm/soldier1_xof.mdl",
    -- },
    -- description = [[You are part of the front lines of the Steel Winged Battalion.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- Remember your motto - "nobody, but us"
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, repairTool, medKitSwep,  "vwar_id_card", "vwar_construction_kit", "vguns_stinger", "gred_emp_binoculars", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "at_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 150,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Steel Winged Battalion",
    -- VWarTeam = "ussr",
    -- VWarRank = majRank,
    -- VWarBattalion = "Steel Winged Battalion",
    -- SkinSelect = 0,
    -- VWarBodygroups = {
        -- ["Headwear"] = 1,
    -- },
-- })

-- /////////////////////////////////////////////
-- // NWO BATTALION: Strategic Task Syndicate //
-- /////////////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_msbs", "vguns_cz75"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_fhr40", "vguns_hk_p30l"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_mts255_12", "vguns_mac10"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_lr300", "vguns_prokolot"},
    -- },
-- }
-- local atKits = {
    -- {
        -- name = "AT Kit A",
        -- weapons = {"vguns_msbs", "vguns_at4", "vguns_cz75"},
    -- },
    -- {
        -- name = "AT Kit B",
        -- weapons = {"vguns_msbs", "vguns_stinger", "vguns_cz75"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_AG_INFANTRY = AddExtraTeam("STS - Infantry", {
    -- color = nwoColor,
    -- model = "models/notart/demon 0-1.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- The most basic rank of the the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, idSwep},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ag_infantry",
    -- max = 0,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = privateRank,
    -- VWarBodygroups = {
        -- ["Gloves Left"] = 1,
        -- ["Gloves Right"] = 1,
        -- ["NVG"] = 3,
        -- ["AS Val"] = 1,
        -- ["Sig P320"] = 1,
    -- },
-- })

-- TEAM_AG_MEDIC = AddExtraTeam("STS - Medic", {
    -- color = nwoColor,
    -- model = "models/notart/demon02mupdate.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Medic of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep, fullHealSwep, idSwep, "weapon_grapplehook"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ag_medic",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 5,
	-- },
    -- VWarBodygroups = {
        -- ["NVGs"] = 2,
        -- ["X919.XP"] = 1,
        -- ["W338.ELR"] = 1,
    -- },
-- })

-- TEAM_AG_ENGINEER = AddExtraTeam("STS - Engineer", {
    -- color = nwoColor,
    -- model = "models/notart/demon 0-1.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Engineer of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, flashSwep, binoSwep, fieldKitSwep,  repairTool, idSwep, "vwar_construction_kit_engineer", "weapon_grapplehook"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "ag_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 10,
	-- },
    -- VWarBodygroups = {
        -- ["AS Val"] = 1,
        -- ["Glasses"] = 1,
        -- ["NVG"] = 3,
    -- },
-- })

-- TEAM_AG_OFFICER = AddExtraTeam("STS - Squad Leader", {
    -- color = nwoColor,
    -- model = "models/notart/demon 0-1.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Squad Leader of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, flashSwep, binoSwep, fieldKitSwep, "vwar_construction_kit", idSwep, "weapon_grapplehook", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "ag_officer",
    -- max = 10,
    -- admin = 0,
    -- salary = 90,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = ssgtRank,
    -- VWarBodygroups = {
        -- ["NVG"] = 1,
        -- ["AS Val"] = 1,
        -- ["Sig P320"] = 1,
    -- },
-- })

-- TEAM_AG_SOFFICER = AddExtraTeam("STS - Company Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/notart/demon 0-1.mdl",
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- },
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Company Commander of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, flashSwep, binoSwep, fieldKitSwep, "vwar_construction_kit", idSwep, "weapon_grapplehook", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "ag_sofficer",
    -- max = 10,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarBodygroups = {
        -- ["NVG"] = 1,
        -- ["AS Val"] = 1,
        -- ["Sig P320"] = 1,
    -- },
    -- VWarRank = ltRank,
-- })

-- TEAM_AG_RECON = AddExtraTeam("STS - Recon", {
    -- color = nwoColor,
    -- model = "models/notart/dagger-02.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Reconnaissance expert of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_vks", "vguns_mp443", idSwep, "weapon_grapplehook", "vguns_veresk"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "ag_recon",
    -- max = 1,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 20,
	-- },
    -- VWarBodygroups = {
        -- ["Face Net"] = 1,
    -- },
-- })

-- TEAM_AG_SNIPER = AddExtraTeam("STS - Sniper", {
    -- color = nwoColor,
    -- model = "models/notart/dagger-02.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Sniper of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_vks", "vguns_mp443", idSwep, "weapon_grapplehook", "vguns_veresk"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "ag_sniper",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 20,
	-- },
    -- VWarBodygroups = {
        -- ["Face Net"] = 1,
    -- },
-- })

-- TEAM_AG_AT = AddExtraTeam("STS - Demolitions", {
    -- color = nwoColor,
    -- model = "models/notart/demon04.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Demolitions specialists of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "weapon_grapplehook", "m9k_suicide_bomb", "m9k_proxy_mine", idSwep, "weapon_grapplehook"},
    -- VWarAdvancedLoadouts = atKits,
    -- command = "ag_at",
    -- max = 1,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 15,
	-- },
    -- VWarBodygroups = {
        -- ["NVG"] = 1,
    -- },
-- })

-- TEAM_AG_LMG = AddExtraTeam("STS - Breacher", {
    -- color = nwoColor,
    -- model = "models/notart/demon04.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Light Machine Gun specialist of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep, "m9k_suicide_bomb", "vguns_mk8", "vguns_mossberg500", idSwep, "weapon_grapplehook", "heavy_shield"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "ag_auto",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 20,
	-- },
    -- VWarBodygroups = {
        -- ["Gloves"] = 1,
        -- ["Headset"] = 1,
    -- },
-- })

-- TEAM_AG_SPECOPS = AddExtraTeam("STS - Special Operations", {
    -- color = nwoColor,
    -- model = "models/notart/demon04.mdl",
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- The technology specialist in the Strategic Task Syndicate: given a hacking device for covert operations.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vwar_hacker", idSwep, "weapon_grapplehook"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ag_specops",
    -- max = 2,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "specops",
		-- level = 10,
	-- },
-- })

-- TEAM_AG_COLONEL = AddExtraTeam("STS - Regimental Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
        -- "models/notart/demon 0-1.mdl",
    -- },
    -- description = [[Strategic Task Syndicate - Special-purpose counter-terrorism unit, often involved in delicate operations which requires its members have a unique skill set.

-- Regimental Commander of the Strategic Task Syndicate.
-- Gain experience and you'll be able to get better equipment and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, flashSwep, binoSwep, fieldKitSwep, medKitSwep, "vwar_hacker", "m9k_suicide_bomb", "vwar_construction_kit", idSwep, "weapon_grapplehook", "gred_emp_binoculars", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "ag_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 150,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Strategic Task Syndicate",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Strategic Task Syndicate",
    -- SkinSelect = 3,
    -- VWarBodygroups = {
        -- ["Glasses"] = 1,
        -- ["NVG"] = 2,
        -- ["AS Val"] = 1,
        -- ["Headwear"] = 1,
    -- },
    -- VWarRank = majRank,
-- })

-- /////////////////////////////////////////
-- // NWO BATTALION: 1st Armoured Legion //
-- /////////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_vepr", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_ak12", "vguns_hk_p30l"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_saiga12", "vguns_mp7"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_aek", "vguns_prokolot"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_MECH_RECRUIT = AddExtraTeam("1stAL - Infantry", {
    -- color = nwoColor,
    -- model = "models/ninja/mgs4_raven_sword_merc.mdl",
    -- description = [[1st Armoured Legion - Specialized infantry unit equipped with armored vehicles.

-- The most basic rank of the 1st Armoured Legion.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "mech_recruit",
    -- max = 0,
    -- admin = 0,
    -- salary = 50,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO 1st Armoured Legion",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "1st Armoured Legion",
    -- VWarRank = privateRank,
    -- VWarBodygroups = {
        -- ["headwear"] = 2,
        -- ["goggles"] = 2,
        -- ["NVGS"] = 2,
        -- ["loadouts"] = 4,
    -- },
-- })

-- TEAM_MECH_MEDIC = AddExtraTeam("1stAL - Medic", {
    -- color = nwoColor,
    -- model = "models/ninja/mgs4_raven_sword_merc.mdl",
    -- description = [[1st Armoured Legion - Specialized infantry unit equipped with armored vehicles.

-- Medic of the 1st Armoured Legion.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, repairTool, medKitSwep, fullHealSwep, "vwar_id_card"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "mech_medic",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO 1st Armoured Legion",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "1st Armoured Legion",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "vehicular",
		-- level = 5,
	-- },
    -- VWarBodygroups = {
        -- ["headwear"] = 1,
        -- ["goggles"] = 2,
        -- ["NVGS"] = 2,
        -- ["loadouts"] = 1,
    -- },
-- })

-- TEAM_MECH_ENGINEER = AddExtraTeam("1stAL - Engineer", {
    -- color = nwoColor,
    -- model = "models/ninja/mgs4_raven_sword_merc.mdl",
    -- description = [[1st Armoured Legion - Specialized infantry unit equipped with armored vehicles.

-- Engineer of the 1st Armoured Legion.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- ]],
    -- weapons = {stripSwep,smokeSwep, fragSwep, binoSwep, repairTool, fieldKitSwep, "vwar_id_card", "vwar_construction_kit_engineer"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "mech_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 60,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO 1st Armoured Legion",
    -- VWarBodygroups = {
        -- [4] = 1,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "1st Armoured Legion",
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
	-- VWarLevel = {
		-- type = "vehicular",
		-- level = 10,
	-- },
    -- VWarBodygroups = {
        -- ["NVGS"] = 2,
        -- ["loadouts"] = 3,
    -- },
-- })

-- TEAM_MECH_OFFICER = AddExtraTeam("1stAL - Squad Leader", {
    -- color = nwoColor,
    -- model = {
        -- "models/ninja/mgs4_raven_sword_merc.mdl",
    -- },
    -- description = [[1st Armoured Legion - Specialized infantry unit equipped with armored vehicles.

-- Squad Leader of the 1st Armoured Legion.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_id_card", "vwar_construction_kit", "gred_emp_binoculars"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "mech_officer",
    -- max = 10,
    -- admin = 0,
    -- salary = 90,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO 1st Armoured Legion",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "1st Armoured Legion",
    -- VWarRank = ssgtRank,
    -- VWarBodygroups = {
        -- ["loadouts"] = 2,
        -- ["goggles"] = 1,
        -- ["HolsterL"] = 1,
    -- },
-- })

-- TEAM_MECH_SOFFICER = AddExtraTeam("1stAL - Company Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/ninja/mgs4_raven_sword_merc.mdl",
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- },
    -- description = [[1st Armoured Legion - Specialized infantry unit equipped with armored vehicles.

-- Company Commander of the 1st Armoured Legion.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vwar_id_card", "vwar_construction_kit", "gred_emp_binoculars", "weapon_simrepair"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "mech_sofficer",
    -- max = 0,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO 1st Armoured Legion",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "1st Armoured Legion",
    -- VWarRank = ltRank,
    -- VWarSubmaterials = {
        -- [9] = "models/redarmy_co/gloves",
    -- },
    -- VWarBodygroups = {
        -- ["loadouts"] = 2,
        -- ["goggles"] = 1,
        -- ["HolsterL"] = 1,
    -- },
-- })

-- TEAM_MECH_AT = AddExtraTeam("1stAL - Anti Armour", {
    -- color = nwoColor,
    -- model = "models/ninja/mgs4_raven_sword_merc.mdl",
    -- description = [[1st Armoured Legion - Specialized infantry unit equipped with armored vehicles.

-- Anti Tank specialist of the 1st Armoured Legion.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_at4", "vguns_stinger", "vguns_br9", "m9k_proxy_mine", "vwar_id_card", "m9k_suicide_bomb"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "mech_infantryat",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO 1st Armoured Legion",
    -- VWarBodygroups = {
        -- [2] = 1,
        -- [4] = 1,
    -- },
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarTeam = "ussr",
    -- VWarBattalion = "1st Armoured Legion",
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "vehicular",
		-- level = 15,
	-- },
    -- VWarBodygroups = {
        -- ["NVGS"] = 2,
    -- },
-- })

-- TEAM_MECH_AUTO = AddExtraTeam("1stAL - Autorifleman", {
    -- color = nwoColor,
    -- model = "models/ninja/mgs4_raven_sword_merc.mdl",
    -- description = [[1st Armoured Legion - Specialized infantry unit equipped with armored vehicles.

-- Autorifleman of the 1st Armoured Legion.
-- Gain experience and you'll be able to get better equipment, helicopter training, and respect from your peers.
-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep,  "heavy_shield", "vguns_rpk16", "vguns_br9", "vwar_id_card"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "mech_auto",
    -- max = 2,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO 1st Armoured Legion",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "1st Armoured Legion",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(40)
    -- end,
	-- VWarLevel = {
		-- type = "vehicular",
		-- level = 20,
	-- },
    -- VWarBodygroups = {
        
    -- },
-- })

-- TEAM_MECH_COLONEL = AddExtraTeam("1stAL - Regimental Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
        -- "models/ninja/mgs4_pieuvre_armament_merc.mdl",
    -- },
    -- description = [[1st Armoured Legion - Specialized infantry unit equipped with armored vehicles.

-- Regimental Commander of the 1st Armoured Legion.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, fieldKitSwep, repairTool, medKitSwep, "vwar_id_card", "vwar_construction_kit", "vguns_stinger", "m9k_proxy_mine", "gred_emp_binoculars", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "mech_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 150,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO 1st Armoured Legion",
    -- SkinSelect = 2,
    -- VWarTeam = "ussr",
    -- VWarBattalion = "1st Armoured Legion",
    -- VWarRank = majRank,
    -- VWarSubmaterials = {
        -- [9] = "models/redarmy_co/gloves",
    -- },
    -- VWarBodygroups = {
        -- ["Headwear"] = 1,
        -- ["headwear"] = 3,
        -- ["loadouts"] = 7,
        -- ["upperbody"] = 5,
        -- ["pants"] = 1,
        -- ["watch"] = 1,
        -- ["scarf"] = 2,
    -- },
-- })

-- ///////////////////////////////////
-- // NWO BATTALION: Agency of Rule //
-- ///////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_erad", "vguns_usp"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_qbz_97", "vguns_hk_p30l"},
    -- },
-- }
-- local shotgunKits = {
    -- {
        -- name = "Shotgun Kit",
        -- weapons = {"vguns_saiga12", "vguns_pp_bizon"},
    -- },
-- }
-- local officerKits = {
    -- {
        -- name = "Officer Kit",
        -- weapons = {"vguns_kbar32", "vguns_prokolot"},
    -- },
-- }
-- for k, v in pairs (regKits) do table.insert(officerKits, 1, v) table.insert(shotgunKits, v) end

-- TEAM_NG_CADET = AddExtraTeam("AOR - Operative", {
    -- color = nwoColor,
    -- model = "models/maku swat pm/swat_maku.mdl",
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- New recruit to the AOR,
-- You maintain order and perform regular checks to ensure military law is followed.
-- Flush out the capitalists!
-- ]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep,  "weapon_r_handcuffs", "vwar_id_card", "weapon_cuff_elastic", "stunstick", "swep_smokenade"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ng_cadet",
    -- max = 0,
    -- admin = 0,
    -- salary = 80,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Agency of Rule",
    -- VWarHasStungun = true,
    -- VWarRank = privateRank,
    -- SkinSelect = 1,
    -- VWarBodygroups = {
        -- ["flakvest"] = 1,
    -- },
-- })

-- TEAM_NG_MEDIC = AddExtraTeam("AOR - Medic", {
    -- color = nwoColor,
    -- model = "models/maku swat pm/swat_maku.mdl",
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- Agent of the AOR - Medic.
-- You maintain order and perform regular checks to ensure military law is followed.
-- The Medics main goal is to see to the injured and sick.
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, medKitSwep, fullHealSwep,  "weapon_r_handcuffs", "vwar_id_card", "riot_shield", "weapon_cuff_elastic", "stunstick", "swep_smokenade"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ng_medic",
    -- max = 6,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Agency of Rule",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 5,
	-- },
    -- SkinSelect = 1,
    -- VWarBodygroups = {
        -- ["hands"] = 1,
    -- },
-- })

-- TEAM_NG_ENGINEER = AddExtraTeam("AOR - Engineer", {
    -- color = nwoColor,
    -- model = "models/balkandude.mdl",
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- Agent of the AOR - Engineer.
-- You maintain order and perform regular checks to ensure military law is followed.
-- An Engineers main role is to perform repairs to vehicles and other maintenance.
-- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep,  repairTool, fieldKitSwep, "weapon_r_handcuffs", "vwar_id_card", "riot_shield", "weapon_cuff_elastic", "vwar_construction_kit_engineer", "stunstick", "swep_smokenade", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadouts = shotgunKits,
    -- command = "ng_engineer",
    -- max = 6,
    -- admin = 0,
    -- salary = 70,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Agency of Rule",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(20)
    -- end,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 10,
	-- },
-- })

-- TEAM_NG_OFFICER = AddExtraTeam("AOR - Squad Leader", {
    -- color = nwoColor,
    -- model = "models/maku swat pm/swat_maku.mdl",
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- Agent of the AOR - Squad Leader.
-- You maintain order and perform regular checks to ensure military law is followed.
-- Flush out the capitalists!
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_spas_pepper", "weapon_r_handcuffs", "vwar_id_card", "vwar_construction_kit", "deployable_shield", "gred_emp_binoculars", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "ng_officer",
    -- max = 10,
    -- admin = 0,
    -- salary = 120,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Agency of Rule",
    -- VWarHasStungun = true,
    -- VWarRank = ssgtRank,
    -- SkinSelect = 1,
    -- VWarBodygroups = {
        -- ["Trousers"] = 1,
    -- },
-- })

-- TEAM_NG_IA = AddExtraTeam("AOR - Internal Affairs", {
    -- color = nwoColor,
    -- model = {
      -- "models/ghosts_federation/ghosts_fedbasic_woodland_player.mdl",
    -- },
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- As the undercover branch of AOR it is your job to discretely monitor and uncover crime.
-- Use this to your advantage to enforce law and order!]],
    -- weapons = {stripSwep, binoSwep, fieldKitSwep,  "weapon_r_handcuffs", "vwar_id_card", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "vwar_id_card_spy_team"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ng_ia",
    -- max = 0,
    -- admin = 0,
    -- salary = 100,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Agency of Rule",
    -- VWarHasStungun = true,
    -- VWarRank = ssgtRank,
    -- SkinSelect = true,
    -- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 10,
	-- },
-- })

-- TEAM_NG_SOFFICER = AddExtraTeam("AOR - Company Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/maku swat pm/swat_maku.mdl",
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- },
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- Agent of the AOR - Company Commander.
-- You maintain order and perform regular checks to ensure military law is followed.
-- Flush out the capitalists!
-- ]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_spas_pepper", "weapon_r_handcuffs", "vwar_id_card", "vwar_construction_kit", "deployable_shield", "gred_emp_binoculars", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "ng_sofficer",
    -- max = 10,
    -- admin = 0,
    -- salary = 130,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarHasStungun = true,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Agency of Rule",
    -- VWarRank = ltRank,
    -- SkinSelect = 1,
    -- VWarBodygroups = {
        -- ["Trousers"] = 1,
    -- },
-- })

-- TEAM_NG_SHARPSHOOTER = AddExtraTeam("AOR - Sharpshooter", {
    -- color = nwoColor,
    -- model = "models/balkandude.mdl",
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- Agent of the AOR - Sharpshooter.
-- You maintain order and perform regular checks to ensure military law is followed.
-- The sharpshooter responds to calls for long range tactical assitance, particularly in hostage negotation.
-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep,  "weapon_r_handcuffs", "vguns_mac10" ,"vguns_sks", "vguns_prokolot", "vwar_id_card", "weapon_cuff_elastic", "stunstick", "swep_smokenade"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "ng_sharpshooter",
    -- max = 1,
    -- admin = 0,
    -- salary = 80,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarBattalion = "Agency of Rule",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 20,
	-- },
-- })

-- TEAM_NG_MARKSMAN = AddExtraTeam("AOR - Marksman", {
    -- color = nwoColor,
    -- model = "models/balkandude.mdl",
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- Agent of the AOR - Marksman.
-- You maintain order and perform regular checks to ensure military law is followed.
-- The marksman responds to calls for long range tactical assitance, particularly in hostage negotation.
-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep,  "weapon_r_handcuffs", "vguns_mac10" ,"vguns_sks", "vguns_prokolot", "vwar_id_card", "weapon_cuff_elastic", "stunstick", "swep_smokenade"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "ng_marksman",
    -- max = 2,
    -- admin = 0,
    -- salary = 80,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarLicenses = {
        -- ["sniper"] = true,
    -- },
    -- VWarBattalion = "Agency of Rule",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 20,
	-- },
-- })

-- TEAM_NG_ENFORCEMENT_OFFICER = AddExtraTeam("AOR - Special Response Officer", {
    -- color = nwoColor,
    -- model = "models/cakez/wolfenstein/soldat_01_p.mdl",
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- Agent of the AOR - Enforcement Officer.
-- You maintain order and perform regular checks to ensure military law is followed.
-- The enforcement officer responds to situations of high threat.
-- ]],
    -- weapons = {stripSwep, flashSwep, fragSwep, binoSwep, fieldKitSwep, "vguns_spas_pepper", "weapon_r_handcuffs", "vguns_rpd", "vguns_prokolot", "vwar_id_card", "heavy_shield", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadoutsDisable = true,
    -- command = "ng_enforcement_officer",
    -- max = 4,
    -- admin = 0,
    -- salary = 80,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarLicenses = {
        -- ["heavy_weapons"] = true,
    -- },
    -- VWarBattalion = "Agency of Rule",
    -- VWarHasStungun = true,
    -- VWarRank = pfcRank,
	-- PlayerLoadout = function(ply)
        -- ply:SetArmor(40)
    -- end,
	-- VWarLevel = {
		-- type = "peacekeeping",
		-- level = 15,
	-- },
-- })

-- TEAM_NG_COLONEL = AddExtraTeam("AOR - Regimental Commander", {
    -- color = nwoColor,
    -- model = {
        -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
        -- "models/keegan.mdl",
    -- },
    -- description = [[Agency of Rule - Members of the top-secret agency carry out covert investigations and law enforcement within The Order.

-- Regimental Commander of the Agency of Rule, with years of experience in internal and external security.
-- A force truly not to be trifled with.]],
    -- weapons = {stripSwep, fragSwep, binoSwep, fieldKitSwep, medKitSwep, "vguns_spas_pepper", "weapon_r_handcuffs", "vwar_id_card", "vwar_construction_kit", "deployable_shield", "gred_emp_binoculars", "weapon_r_handcuffs", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "heavy_shield", "vwar_ceramic_plate_armor_kit"},
    -- VWarAdvancedLoadouts = officerKits,
    -- command = "ng_colonel",
    -- max = 2,
    -- admin = 0,
    -- salary = 160,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Agency of Rule",
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Agency of Rule",
    -- SkinSelect = 1,
    -- VWarBodygroups = {
        -- [7] = 1, // Holster
        -- ["Headwear"] = 1,
    -- },
    -- VWarHasStungun = true,
    -- VWarRank = majRank,
-- })

-- ////////////////////////////////////
-- // NWO BATTALION: Supreme Council //
-- ////////////////////////////////////

-- local regKits = {
    -- {
        -- name = "Reg Kit A",
        -- weapons = {"vguns_r5", "vguns_deagle"},
    -- },
    -- {
        -- name = "Reg Kit B",
        -- weapons = {"vguns_qbz_97", "vguns_44magnum"},
    -- },
-- }

-- local atKits = {
    -- {
        -- name = "AT Kit A",
        -- weapons = {"vguns_r5", "vguns_stinger", "vguns_deagle"},
    -- },
    -- {
        -- name = "AT Kit B",
        -- weapons = {"vguns_r5", "vguns_at4", "vguns_deagle"},
    -- },
-- }

-- TEAM_USSRHC_COLGENERAL = AddExtraTeam("NWO SC - Sector General", {
    -- color = nwoColor,
    -- model = "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- description = [[Sector General from NWO Supreme Council.
-- Overlook the Army, ensuring they are commanded well, and issue orders to your troops.
-- Their life is in your hands!
-- ]],
    -- weapons = {stripSwep, binoSwep, medKitSwep, fullHealSwep, "vwar_id_card", "gred_emp_binoculars", "vwar_construction_kit", "vwar_voice_amplifier", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ussrhccolgeneral",
    -- max = 0,
    -- admin = 0,
    -- salary = 400,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Supreme Council",
    -- VWarHasStungun = true,
    -- VWarTeam = "ussr",
    -- VWarBodygroups = ussrHCBodyGroups,
    -- VWarBattalion = "Supreme Council",
    -- VWarRank = 18,
    -- SkinSelect = 1,
    -- VWarSubmaterials = {
        -- [9] = "models/redarmy_co/gloves",
    -- },
    -- VWarBodygroups = {
        -- ["Cross strap"] = 1,
        -- ["Pistol holster"] = 1,
        -- ["Hands"] = 1,
    -- },
-- })

-- TEAM_USSRHC_LTGENERAL = AddExtraTeam("NWO SC - Sector Commander", {
    -- color = nwoColor,
    -- model = "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- description = [[Sector Commander from NWO Supreme Council.
-- Overlook the battalions, ensuring they are commanded well, and issue orders to your troops.
-- Their life is in your hands!
-- ]],
    -- weapons = {stripSwep, binoSwep, medKitSwep, fullHealSwep, "vwar_id_card", "gred_emp_binoculars", "vwar_construction_kit", "vwar_voice_amplifier", "weapon_r_handcuffs"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ussrhcltgeneral",
    -- max = 0,
    -- admin = 0,
    -- salary = 200,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Supreme Council",
    -- VWarHasStungun = true,
    -- VWarTeam = "ussr",
    -- VWarBodygroups = ussrHCBodyGroups,
    -- VWarBattalion = "Supreme Council",
    -- VWarRank = 17,
    -- SkinSelect = 0,
    -- VWarSubmaterials = {
        -- [9] = "models/redarmy_co/gloves",
    -- },
    -- VWarBodygroups = {
        -- ["Pistol holster"] = 1,
    -- },
-- })

-- TEAM_USSRHC_RECONOP = AddExtraTeam("NWO SC - 11th Surveillance Brigade Commander", {
    -- color = nwoColor,
    -- model = {
      -- "models/russianbear2345/bf3/alternate/medic_ru.mdl",
      -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- },
    -- description = [[NWO SC - 11th Surveillance Brigade Commander.
    -- ]],
    -- weapons = {stripSwep, binoSwep, medKitSwep, fullHealSwep, "weapon_grapplehook", "vguns_m98b", "gred_emp_binoculars", "vwar_id_card", "vwar_construction_kit", "vwar_voice_amplifier", "deployable_shield", "weapon_r_handcuffs", "weapon_cuff_elastic", "stunstick", "swep_smokenade", "heavy_shield"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ussrhc_reconop",
    -- max = 2,
    -- admin = 0,
    -- salary = 300,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Supreme Council",
    -- VWarHasStungun = true,
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Supreme Council",
    -- VWarRank = 15,
    -- VWarSubmaterials = {
        -- [9] = "models/redarmy_co/gloves",
    -- },
-- })

-- TEAM_USSRHC_IVG_RG = AddExtraTeam("NWO SC - 9th Frontline Brigade Commander", {
    -- color = nwoColor,
    -- model = {
      -- "models/russianbear2345/bf3/alternate/medic_ru.mdl",
      -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
    -- },
    -- description = [[NWO SC - 9th Frontline Brigade Commander.
    -- ]],
    -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep,"vguns_stinger", "vguns_sks", "vguns_at4", "m9k_proxy_mine", "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "weapon_r_handcuffs", "vwar_voice_amplifier", "vguns_m240b"},
    -- VWarAdvancedLoadouts = regKits,
    -- command = "ussrhc_ivg_rg",
    -- max = 2,
    -- admin = 0,
    -- salary = 300,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "NWO Supreme Council",
    -- VWarHasStungun = true,
    -- VWarTeam = "ussr",
    -- VWarBattalion = "Supreme Council",
    -- VWarRank = 15,
-- })

-- TEAM_USSRHC_SWB_RG = AddExtraTeam("NWO SC - 21st Armoured Brigade Commander", {
  -- color = nwoColor,
  -- model = {
    -- "models/russianbear2345/bf3/alternate/medic_ru.mdl",
    -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
  -- },
  -- description = [[NWO Supreme Council - NWO SC - 21st Armoured Brigade Commander.
  -- ]],
  -- weapons = {stripSwep, smokeSwep, fragSwep, binoSwep, medKitSwep, repairTool, "vguns_stinger", "vguns_at4", "m9k_proxy_mine", "vwar_construction_kit", "gred_emp_binoculars", "vwar_id_card", "weapon_r_handcuffs", "vwar_voice_amplifier"},
  -- VWarAdvancedLoadouts = regKits,
  -- command = "ussrhc_ivg_bc",
  -- max = 2,
  -- admin = 0,
  -- salary = 300,
  -- hasLicense = false,
  -- candemote = false,
  -- category = "NWO Supreme Council",
  -- VWarHasStungun = true,
  -- VWarTeam = "ussr",
  -- VWarBattalion = "Supreme Council",
  -- VWarRank = 15,
-- })

-- TEAM_USSRHC_FCU = AddExtraTeam("NWO SC - Field Command Unit", {
  -- color = nwoColor,
  -- model = {
    -- "models/russianbear2345/bf3/alternate/medic_ru.mdl",
    -- "models/civilgamers/playermodels/nwo_highcommand.mdl",
  -- },
  -- description = [[NWO Supreme Council - Field Command Unit.

  -- Equipped with the latest and greatest kevlar armour and vision assistance, this loadout allows any high ranking VIP to 'safely' enter the battlefield.
-- ]],
  -- weapons = {stripSwep, binoSwep, medKitSwep, "vwar_id_card", "gred_emp_binoculars", "vwar_construction_kit", "vwar_voice_amplifier", "weapon_r_handcuffs","weapon_simrepair"},
  -- VWarAdvancedLoadouts = regKits,
  -- command = "ussrhc_fcu",
  -- max = 0,
  -- admin = 0,
  -- salary = 300,
  -- hasLicense = false,
  -- candemote = false,
  -- category = "NWO Supreme Council",
  -- VWarHasStungun = true,
  -- VWarTeam = "ussr",
  -- VWarBattalion = "Supreme Council",
  -- VWarRank = 21,
-- })

-- ////////////////
-- // Event Jobs //
-- ////////////////

-- /*TEAM_NATO_OFFICER = AddExtraTeam("NATO - Officer", {
    -- color = natoColor,
    -- model = "models/player/mw3rangers/us_ranger_01.mdl",
    -- description = [[An officer in the NATO forces.
-- ]],
    -- weapons = {binoSwep, fieldKitSwep,  "vguns_ar15", "vguns_usp", "vwar_id_card"}, 
    -- command = "natoofficer",
    -- max = 0,
    -- admin = 0,
    -- salary = 5,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Event Jobs",
    -- VWarTeam = "nato",
    -- VWarRank = officerRank,
-- })

-- TEAM_USSR_OFFICER = AddExtraTeam("NWO - Officer", {
    -- color = nwoColor,
    -- model = {
        -- "models/madivan18/bf4/ru/ru_soldiera_karl_valvebiped.mdl",
    -- },
    -- description = [[An officer in the NWO forces.
-- ]],
    -- weapons = {binoSwep, fieldKitSwep,  "vguns_akm", "vguns_br9", "vwar_id_card"}, 
    -- command = "ussrofficer",
    -- max = 0,
    -- admin = 0,
    -- salary = 5,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Event Jobs",
    -- VWarTeam = "ussr",
    -- VWarRank = officerRank,
-- })*/

-- ////////////////
-- //  PVT ARMY  //
-- ////////////////

-- TEAM_PRIVATE_SOLDIER = AddExtraTeam("Private Army Soldier", {
    -- color = Color(15,207,47),
    -- model = "models/kuma96/modern_warfare_remastered/characters/sas/ch1/sas_ch1_pm.mdl",
    -- description = [[A well trained Private Army Soldier!


-- Event Job
 
-- Trial Game Master+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, fieldKitSwep, "vguns_sopmod", "vguns_cz75"},
    -- command = "pa_soldier",
    -- max = 0,
    -- salary = 250,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Russian Loyalist Coalition",
    -- VWarTeam = "private_army",
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(25)
        -- ply:SetHealth(150)
    -- end,
-- })

-- TEAM_PRIVATE_VEHOP = AddExtraTeam("Private Vehicle Operator", {
    -- color = Color(15,207,47),
    -- model = "models/kuma96/modern_warfare_remastered/characters/sas/ch2/sas_ch2_pm.mdl",
    -- description = [[A well trained Private Army Soldier!


-- Event Job
 
-- Trial Game Master+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, medKitSwep, fieldKitSwep,"weapon_simrepair", "vguns_mac10", "vguns_cz75"},
    -- command = "pa_vehop",
    -- max = 0,
    -- salary = 250,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Russian Loyalist Coalition",
    -- VWarTeam = "private_army",
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(30)
        -- ply:SetHealth(200)
    -- end,
-- })

-- TEAM_PRIVATE_SNIPER = AddExtraTeam("Private Army Sniper", {
    -- color = Color(15,207,47),
    -- model = "models/kuma96/modern_warfare_remastered/characters/sas/ch4/sas_ch4_pm.mdl",
    -- description = [[A well trained Private Army Sniper!


-- Event Job
 
-- Trial Game Master+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, fieldKitSwep, "vguns_m200", "vguns_mac10", "vguns_cz75"},
    -- command = "pa_sniper",
    -- max = 3,
    -- salary = 250,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Russian Loyalist Coalition",
    -- VWarTeam = "private_army",
    -- VWarBodygroups = {
        -- [1] = 1, // Head
    -- },
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(30)
        -- ply:SetHealth(125)
    -- end,
-- })

-- TEAM_PRIVATE_DEMOLITIONS = AddExtraTeam("Private Army Heavy", {
    -- color = Color(15,207,47),
    -- model = "models/player/mw3rangers/us_ranger_01.mdl",
    -- description = [[A well trained Private Army Demolitions Soldier!


-- Event Job
 
-- Trial Game Master+]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, fieldKitSwep, "vguns_rpk16", "vguns_cz75", "vguns_stinger", "vguns_at4", "heavy_shield", "m9k_suicide_bomb"},
    -- command = "pa_demolitions",
    -- max = 3,
    -- salary = 250,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- VWarRank = 8,
    -- category = "Russian Loyalist Coalition",
    -- VWarTeam = "private_army",
    -- VWarBodygroups = {
        -- [1] = 4, // Head
        -- [2] = 1, // Body
        -- [3] = 4, // Gear
        -- [5] = 1, // Mask
        -- ["Skin"] = 0,
    -- },
    -- VWarSkin = 5,
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(100)
        -- ply:SetHealth(800)
        -- ply:SetRunSpeed(201)
        -- ply:SetWalkSpeed(100)
    -- end,
-- })


-- TEAM_PRIVATE_OFFICER = AddExtraTeam("Private Army Lieutenant", {
    -- color = Color(15,207,47),
    -- model = "models/kuma96/modern_warfare_remastered/characters/sas/ch2/sas_ch2_pm.mdl",
    -- description = [[A well trained Private Army Officer!


-- Event Job
 
-- Whitelist Only]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, medKitSwep, fieldKitSwep, "vguns_gry_sbr", "vguns_rpk16", "vguns_glockp80"},
    -- command = "pa_officer",
    -- max = 3,
    -- salary = 300,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Russian Loyalist Coalition",
    -- VWarRank = 15,
    -- VWarTeam = "private_army",
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(75)
        -- ply:SetHealth(250)
    -- end,
    -- VWarBodygroups = {
        -- [1] = 5, // Head
        -- [2] = 1, // Gear 1
        -- [3] = 1, // Gear 2
        -- [4] = 4, // Gear 4
        -- [5] = 1, // Gear 5
        -- [6] = 1, // Neck
        -- [7] = 1, // Pistol
        -- [8] = 1,  // Radio
    -- }
-- })

-- TEAM_PRIVATE_LEADER = AddExtraTeam("Private Army Commander", {
    -- color = Color(15,207,47),
    -- model = "models/styrofoam/bf4/us_engineerpm.mdl",
    -- description = [[The Leader of the Private Army!
-- Event Job
-- Whitelist Only]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, medKitSwep, fieldKitSwep, "vguns_gry_sbr", "vguns_m14", "vguns_glockp80"},
    -- command = "pa_leader",
    -- max = 1,
    -- salary = 300,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Russian Loyalist Coalition",
    -- VWarRank = 20,
    -- VWarTeam = "private_army",
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(50)
        -- ply:SetHealth(200)
    -- end,
    -- VWarBodygroups = {
        -- ["Torso"] = 1,
        -- [5] = 1, // Legs
    -- }
-- })

-- TEAM_PRIVATE_GENERAL = AddExtraTeam("Private Army General", {
    -- color = Color(15,207,47),
    -- model = "models/player/ra/inf_07_coat.mdl",
    -- description = [[The Leader of the Private Army!
-- Event Job
-- Whitelist Only]],
    -- weapons = {stripSwep, smokeSwep, binoSwep, medKitSwep, fieldKitSwep, "vguns_gry_sbr", "vguns_glockp80"},
    -- command = "pa_general",
    -- max = 1,
    -- salary = 300,
    -- admin = 0,
    -- vote = false,
    -- hasLicense = false,
    -- candemote = false,
    -- category = "Russian Loyalist Coalition",
    -- VWarRank = 50,
    -- VWarTeam = "private_army",
    -- PlayerLoadout = function(ply)
        -- ply:SetArmor(25)
        -- ply:SetHealth(150)
    -- end,
    -- VWarSkin = 1,
    -- VWarBodygroups = {
        -- [3] = 1, // BELT
        -- [4] = 1, // HAT
        -- [6] = 1, // GLASSES
    -- }
-- })

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CIVILIAN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]