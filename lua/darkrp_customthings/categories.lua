--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
https://darkrp.miraheze.org/wiki/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]

local uanColor = Color(60, 100, 200, 255)
local nwoColor = Color(200,100,100)

DarkRP.createCategory {
    name = "Eastern Resistance",
    categorises = "jobs",
    startExpanded = false,
    color = Color(35, 35, 35),
    canSee = function(ply) return true end,
    sortOrder = 101,
}

DarkRP.createCategory {
    name = "Crimson Blade",
    categorises = "jobs",
    startExpanded = false,
    color = Color(35, 35, 35),
    canSee = function(ply) return true end,
    sortOrder = 92,
}

--UAN--


DarkRP.createCategory {
    name = "NATO",
    categorises = "jobs",
    startExpanded = false,
    color = uanColor,
    canSee = function(ply) return true end,
    sortOrder = 101,
}
DarkRP.createCategory {
    name = "NATO High Command",
    categorises = "jobs",
    startExpanded = false,
    color = uanColor,
    canSee = function(ply) return true end,
    sortOrder = 100,
}
DarkRP.createCategory {
    name = "NATO ISAF",
    categorises = "jobs",
    startExpanded = false,
    color = uanColor,
    canSee = function(ply) return true end,
    sortOrder = 99,
}
DarkRP.createCategory {
    name = "NATO Special Air Service",
    categorises = "jobs",
    startExpanded = false,
    color = uanColor,
    canSee = function(ply) return true end,
    sortOrder = 98,
}
DarkRP.createCategory {
    name = "NATO Royal Military Police",
    categorises = "jobs",
    startExpanded = false,
    color = uanColor,
    canSee = function(ply) return true end,
    sortOrder = 97,
}
DarkRP.createCategory {
    name = "NATO Joint Air Force",
    categorises = "jobs",
    startExpanded = false,
    color = uanColor,
    canSee = function(ply) return true end,
    sortOrder = 96,
}
DarkRP.createCategory {
    name = "NATO 17th Armoured Regiment",
    categorises = "jobs",
    startExpanded = false,
    color = uanColor,
    canSee = function(ply) return true end,
    sortOrder = 95,
}

-- NWO --

DarkRP.createCategory{
    name = "USSR",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 101,
}
DarkRP.createCategory{
    name = "USSR Stavka of the Supreme High Command",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 100,
}
DarkRP.createCategory{
    name = "USSR 40th Marine Regiment",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 99,
}
DarkRP.createCategory{
    name = "USSR Spetsnaz GRU",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 98,
}
DarkRP.createCategory{
    name = "USSR Committee for State Security",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 97,
}
DarkRP.createCategory{
    name = "USSR Airborne Trooper Regiment",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 96,
}
DarkRP.createCategory{
    name = "USSR 11th Guards Mechanized Regiment",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 95,
}

-- Events
DarkRP.createCategory{
    name = "Event Jobs",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return VWAR:IsGameMaster(ply) end,
    sortOrder = 93,
}

DarkRP.createCategory{
    name = "The Private Army",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 94,
}

DarkRP.createCategory{
    name = "Russian Loyalist Coalition",
    categorises = "jobs",
    startExpanded = false,
    color = nwoColor,
    canSee = function(ply) return true end,
    sortOrder = 94,
}

DarkRP.createCategory {
    name = "Divergence Restoration Division",
    categorises = "jobs",
    startExpanded = false,
    color = Color(51, 0, 51),
    canSee = function(ply) return true end,
    sortOrder = 94,
}

-- Entities
DarkRP.createCategory{
    name = "Printers", -- The name of the category.
    categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(200, 200, 200, 240), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 50, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
DarkRP.createCategory{
    name = "Food", -- The name of the category.
    categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(200, 200, 200, 240), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 129, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
DarkRP.createCategory{
    name = "Simple Meth", -- The name of the category.
    categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(200, 200, 200, 240), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 130, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
DarkRP.createCategory{
    name = "Maxnet", -- The name of the category.
    categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(200, 200, 200, 240), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 110, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
DarkRP.createCategory{
    name = "Consumables",
    categorises = "entities",
    startExpanded = true,
    color = Color(200, 200, 200, 240),
    canSee = function(ply) return true end,
    sortOrder = 129,
}

DarkRP.createCategory{
    name = "Drones", -- The name of the category.
    categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(200, 200, 200, 240), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 50, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}

DarkRP.createCategory{
    name = "Chemicals", -- The name of the category.
    categorises = "entities", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(200, 200, 200, 240), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 51, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}