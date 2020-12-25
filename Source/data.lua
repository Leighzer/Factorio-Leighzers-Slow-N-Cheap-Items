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

--each file introduces item, recipe, and the entity
require("prototypes.slowncheap-transport-belt-pictures")
require("prototypes.slowncheap-assembling-machine")
require("prototypes.slowncheap-burner-inserter")
require("prototypes.slowncheap-burner-mining-drill")
require("prototypes.slowncheap-chemical-plant")
require("prototypes.slowncheap-electric-mining-drill")
require("prototypes.slowncheap-inserter")
require("prototypes.slowncheap-loader")
require("prototypes.slowncheap-small-electric-pole")
require("prototypes.slowncheap-splitter")
require("prototypes.slowncheap-stone-furnace")
require("prototypes.slowncheap-transport-belt")
require("prototypes.slowncheap-underground-belt")