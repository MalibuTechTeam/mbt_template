if GetResourceState('es_extended') ~= 'started' then return end

ESX = exports.es_extended:getSharedObject()



RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerLoaded = true
    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end) 

AddEventHandler('esx:onPlayerSpawn', function(xPlayer)
    
end)