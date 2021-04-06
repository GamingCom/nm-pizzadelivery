RLCore = nil
TriggerEvent('RLCore:GetObject', function(obj) RLCore = obj end)

CreateThread(function()
    Wait(1200)
    print("^2[nm-pizzadelivery] ^7Created by Noam#7432")
end)

RegisterServerEvent('nm-pizzadelivery:server:givemoney')
AddEventHandler('nm-pizzadelivery:server:givemoney', function(tip)
    local src = source
    local xPlayer = RLCore.Functions.GetPlayer(src)
  
    xPlayer.Functions.AddMoney("cash", tip)
end)