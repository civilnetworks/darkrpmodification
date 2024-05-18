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

TEAM_USSR_RECRUIT = AddExtraTeam("USSR - Recruit", {
    color = nwoColor,
    model = {
        "models/madivan18/bf4/ru/ru_soldieremr_karlbalac3_valvebiped.mdl",
    },
    description = [[A new recruit for the NWO forces.
You need training before you can become a full fledged infantry man and join a regiment.
]],
    weapons = {binoSwep, fieldKitSwep, "vguns_akm_trainee", "vwar_id_card"}, // make a 1dmg version of this gun
    VWarAdvancedLoadoutsDisable = true,
    command = "ussrrec",
    max = 0,
    admin = 0,
    salary = 5,
    hasLicense = false,
    candemote = false,
    category = "USSR",
    VWarTeam = "ussr",
})


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