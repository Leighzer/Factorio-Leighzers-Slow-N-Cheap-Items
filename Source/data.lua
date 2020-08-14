if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzerslowncheapitems then
    leighzermods.leighzerslowncheapitems = {}
    leighzermods.leighzerslowncheapitems.tints = {}
    
    if mods["miniloader"] then
        leighzermods.leighzerslowncheapitems.updateChuteMiniloader = settings.startup["updateChuteMiniloader"].value    
    end
end

if not leighzermods.leighzerslowncheapitems.productivityEnabledRecipes then --list of recipe names that are going to get productivity modules enabled
    leighzermods.leighzerslowncheapitems.productivityEnabledRecipes = {}
end

--require("prototypes.category")--category for crafting sub menu for now not going to use

--each file introduces item, recipe, and the entity
require("prototypes.slowncheap-assembling-machine")
require("prototypes.slowncheap-burner-inserter")
require("prototypes.slowncheap-burner-mining-drill")
require("prototypes.slowncheap-chemical-plant")
--require("prototypes.cobble-path")
require("prototypes.slowncheap-electric-mining-drill")
require("prototypes.slowncheap-inserter")
require("prototypes.slowncheap-small-electric-pole")
require("prototypes.slowncheap-splitter")
require("prototypes.slowncheap-stone-furnace")
require("prototypes.slowncheap-transport-belt")
require("prototypes.slowncheap-underground-belt")