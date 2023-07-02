local Utils = loadModule("modules.utils.client")

for k, v in pairs(Utils) do
	print(k, v)
end

AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
		if NetworkIsPlayerActive(PlayerId()) then
			-- Init()
		end
	end
end)

function Init()
	if MBT.Target["Active"] then
		for zId, zFunct in pairs(MBT.Target["Zones"]) do
			zFunct()
		end
 	end
end

RegisterNUICallback('closeUI', function(data, cb)
	SetNuiFocus(false, false)
	cb('ok')
end)

RegisterCommand("mbt_templateUI", function(source, args, raw)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "UI",
        display = true,
        payload = {}
    })
end)

-- RegisterKeyMapping('mbt_templateUI', 'TEMPLATE', 'keyboard', 'E')