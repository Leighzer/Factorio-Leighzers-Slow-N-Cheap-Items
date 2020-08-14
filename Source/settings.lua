if mods["miniloader"] then
    data:extend({
        {
            type = "bool-setting",
            name = "updateChuteMiniloader",
            setting_type = "startup",
            default_value = false,
            order = "a"
        }
    })
end