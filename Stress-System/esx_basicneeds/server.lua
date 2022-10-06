-- TEMPLATE

ESX.RegisterUsableItem('İTEM_İSMİ', function(source) --  replace your item with İTEM_İSMİ
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('İTEM_İSMİ', 1) -- removes 1 when used

	TriggerClientEvent('esx_status:OLAY', source, 'stress', MİKTAR) -- replace MİKTAR with the amount you want, and replace OLAY with "add" or "remove"
	TriggerClientEvent('esx_basicneeds:ANIM', source) -- if you want animation or something else on item usage trigger it here
	TriggerClientEvent('esx:showNotification', source, "BİLDİRİM") -- replace BİLDİRİM with the notification you want
end)

--EXAMPLE: CIGARETTES

ESX.RegisterUsableItem('cigarett', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

    	xPlayer.removeInventoryItem('cigarett', 1)
	TriggerClientEvent('esx_basicneeds:cigarett', source)
    	Citizen.Wait(8000) 
	TriggerClientEvent('esx_status:remove', source, 'stress', 250000)
end)