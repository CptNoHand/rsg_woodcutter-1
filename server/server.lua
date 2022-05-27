local sharedItems = exports['qbr-core']:GetItems()

-- give wood reward
RegisterServerEvent('rsg_woodcutter:server:giveWoodcuttingReward')
AddEventHandler('rsg_woodcutter:server:giveWoodcuttingReward', function()
    local src = source
	local Player = exports['qbr-core']:GetPlayer(src)
	local randomNumber = math.random(1,4)
	if randomNumber == 1 then
		Player.Functions.AddItem('wood', 1)
		TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['wood'], "add")
		TriggerClientEvent('rsg_notify:client:notifiy', src, 'you chopped one wood', 5000)
	elseif randomNumber == 2 then
		Player.Functions.AddItem('wood', 2)
		TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['wood'], "add")
		TriggerClientEvent('rsg_notify:client:notifiy', src, 'you chopped two wood', 5000)
	elseif randomNumber == 3 then
		Player.Functions.AddItem('wood', 3)
		TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['wood'], "add")
		TriggerClientEvent('rsg_notify:client:notifiy', src, 'you chopped three wood', 5000)
	else
		TriggerClientEvent('rsg_woodcutter:client:alert', src, 'You\'re axe got stuck, no wood this time!', 5000)
	end
end)