MBT = {}

MBT.Debug = false

MBT.Notification = function (source, text, description) -- Put your custom notification event here
    -- exports.ox_lib:notify(source,{
    --     title = text,
    --     description = description or nil,
    --     duration = 10000,
    --     position = 'bottom-right',
    --     style = {
    --         borderRadius = 7,
    --         backgroundColor = '#2e3847',
    --         color = '#white',
    --         fontFamily = 'Poppins',
    --         fontWeight = '500',
    --         fontSize = 15,
    --         textShadowColor = '#0000',

    --         borderRightColor = '#2e3847' ,
    --         borderBottomColor = '#2e3847',
    --         borderTopColor = '#2e3847', 
    --         borderLeftColor = '#d54090',
            
    --         borderLeftWidth = 5 ,
    --         borderBottomWidth = 0,
    --         borderTopWidth = 0, 
    --         borderRightWidth = 0,

    --         borderTopRightRadius = 7,
    --         borderLeftRadius  = 7,
    --         borderBottomRadius  = 7,
    --         borderTopRadius  = 7, 
    --         borderRightRadius  =7,

    --         borderStyle = 'solid',
    --         marginBottom = 20
    --     },
    --     icon = 'whiskey-glass',
    --     iconColor = '#ffcc48'
    -- })
end


MBT.Target = {
	["Active"] = false,
    ["Zones"] = {
        ["T1"] = function ()
            
            exports.ox_target:addBoxZone({
                coords = vector3(0.0, 0.0, 0.0),
                size = vec3(1.4, 0.6, 2.2),
                rotation = 8.0,
                debug = false,
                options = {
                    {
                        name = 'box',
                        event = "",
                        distance = 1.0,
                        icon = 'fa-solid fa-cube',
                        label = MBT.Language["test_not"],
                    }
                }
            })
        end
    }

}


MBT.Language = { 
    ["test_not"] = "Test"
}

