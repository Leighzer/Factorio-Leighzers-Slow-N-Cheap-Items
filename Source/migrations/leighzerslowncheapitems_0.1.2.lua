for _,force in pairs(game.forces) do    
    
    if force.recipes["slowncheap-assembling-machine"] then
        force.recipes["slowncheap-assembling-machine"].enabled = force.technologies["automation"].researched
    end

    if force.recipes["slowncheap-chemical-plant"] then
        force.recipes["slowncheap-chemical-plant"].enabled = force.technologies["oil-processing"].researched
    end

    if force.recipes["slowncheap-splitter"] then
        force.recipes["slowncheap-splitter"].enabled = force.technologies["logistics"].researched
    end

    if force.recipes["slowncheap-underground-belt"] then
        force.recipes["slowncheap-underground-belt"].enabled = force.technologies["logistics"].researched
    end

    if force.recipes["chute-miniloader"] then
        force.recipes["chute-miniloader"].enabled = force.technologies["logistics"].researched
    end
end