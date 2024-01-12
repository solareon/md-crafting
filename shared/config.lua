Config = {}
Config.Oxmenu = true -- if you want to use ox menu then change to true
Config.defaultmaxmake = 1 -- default the max amount someone can make at once
Config.defaultanimationtime = 4000 -- how many seconds the animation and progressbar takes in ms
Config.defaultxp = 5 -- amount of default xp
Config.defaultsuccesschance = 100 -- default amount of success to craft
Config.defaultamount = 1 -- default amount of the item you recieve 
Config.Inventoryimages = "ps-inventory/html/images/"
Config.Defaultanimation = "uncuff"

Config.skills = {
    [1] = {label = 'crafting', nextlevel = 1000, xp = 'craftingxp'},
}
------ EXAMPLE OF ALL options what isnt listed as required has default amounts 

--[[
 MiscCraft = { -- how to create a new crafting table
 ['cookeddeermeat'] = {          -- item you receive
    xp = 5,                      -- xp you are granted
    skillxp = 'craftingxp',      -- xp metadata to add to
    skill = 'crafting',          -- lvl metadata to add to when you hit the threshold
    lvlreq = 0,                  -- lvl of skill required to craft
    ingredienttext = " Raw Deer Meat X 1", -- required
    max = 1,                     -- max amount to make at once
    successchance = 50,          -- chance to make or fail. higher the number the less you fail
    animtime = 20000,            -- how long the animation/progressbar lasts for
    emote = 'uncuff',            -- emote played 
    requireditem = 'lockpick',   -- what item you need to craft it 
    amount = 1,                   -- how many you recieve per recipe. 
    progressbar = "Making Meat", -- what the progressbar says 
      recipe = { --required
        ['rawdeermeat'] = 1,     -- what item and how much
        ['copperore'] = 10       -- what item and how much
    }                            -- close recipe bracket
},                               -- close item code bracket
}                                -- close table
--- locations
 [1] = {
    location = vector3(58.95, 145.83, 98.91),           -- required 
    Craftstation = Config.Crafting.MiningCrafting,      -- required which table the target directs to
    targetlabel = "Craft Necklace",                     -- not required but changes  target label name
    job = '',                                           -- not required but locks to job
    gang = "",                                          -- not required but locks to gang
     icon = ""                                          -- not required but locks to job change icon if you want
},

SO in order for this to work all you technically need is this 
['cookeddeermeat'] = {   
    ingredienttext = " Raw Deer Meat X 1", -- required
      recipe = { --required
        ['rawdeermeat'] = 1,
        ['copperore'] = 10
    }
},
or 
[1] = {
    location = vector3(58.95, 145.83, 98.91), -- required
    Craftstation = Config.Crafting.MiningCrafting, -- required
},
--]]

Config.Crafting = {
MiscCraft = {
    ['lockpick'] = {                  xp = 25, ingredienttext = "plastic X 10, Metal Scrap X 10",          max = 5,               recipe = { ['plastic'] = 10, ['metalscrap'] = 10}},
    ['screwdriverset'] = {            xp = 25, ingredienttext = "Steel X 10, Metal Scrap X 10",            max = 5,               recipe = { ['steel'] = 10, ['metalscrap'] = 10}},
    ['electronickit'] = {             xp = 25, ingredienttext = "Aluminum X 10, Metal Scrap X 10",         max = 5,               recipe = { ['aluminum'] = 10, ['metalscrap'] = 10}},
    ['radioscanner'] = {              xp = 25, ingredienttext = "Aluminum X 10, Steel X 10",               max = 5,               recipe = { ['steel'] = 10, ['aluminum'] = 10}},
    ['handcuffs'] = {                 xp = 25, ingredienttext = "steel X 100, Metal Scrap X 100",          max = 5,               recipe = { ['steel'] = 100, ['metalscrap'] = 100}},
    ['repairkit'] = {                 xp = 25, ingredienttext = "steel X 100, Metal Scrap X 100",          max = 5,               recipe = { ['steel'] = 100, ['metalscrap'] = 100}},
},
}

Config.Locations = {
    [1] = {location = vector3(68.2, 140.13, 100.54), Craftstation = Config.Crafting.MiscCraft,          targetlabel = "Craft Attachments", job = '', gang = "", icon = ""},
}
