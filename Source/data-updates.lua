-- miniloader update
if mods["miniloader"] then    
    if settings.startup["miniloader-enable-chute"].value and leighzermods.leighzerslowncheapitems.updateChuteMiniloader then
        local inserter = data.raw.inserter["chute-miniloader-inserter"]
        if data.raw["loader-1x1"] and data.raw["loader-1x1"]["chute-miniloader-loader"] and inserter then -- avoid null reference error

            -- quick and dirty doubling chute speeds to match slow n' cheap belt speed of 7.5s
            data.raw["loader-1x1"]["chute-miniloader-loader"].speed = data.raw["loader-1x1"]["chute-miniloader-loader"].speed * 2        
            inserter.localised_description[5] =
                math.floor(data.raw["loader-1x1"]["chute-miniloader-loader"].speed * 480 * 100 + 0.5) / 100
            inserter.rotation_speed = data.raw.inserter["chute-miniloader-inserter"].rotation_speed * 2            

            data.raw.recipe["chute-miniloader"].ingredients = {{"iron-plate",8},{"slowncheap-underground-belt",1},{"slowncheap-inserter",8}}
            data.raw.recipe["chute-miniloader"].enabled = false
            table.insert(data.raw.technology["logistics"].effects,3,{
                type = "unlock-recipe",
                recipe = "chute-miniloader"
            })
        end
    end
end