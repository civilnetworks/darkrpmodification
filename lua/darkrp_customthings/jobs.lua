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