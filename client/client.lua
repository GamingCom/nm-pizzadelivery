QBCore = nil
TriggerEvent('RLCore:GetObject', function(obj) QBCore = obj end)

local tabletObject = nil
local dict = nil
local startJob = false
local delivered = false
local loc = {x=0,y=0,z=0}
local blip = nil

RegisterNetEvent("RLCore:Client:OnPlayerLoaded")
AddEventHandler("RLCore:Client:OnPlayerLoaded", function()
    local player = QBCore.Functions.GetPlayerData()
    if player.job.name == "ambulance" then
        loc = Config.Locations.job
        blip = AddBlipForCoord(loc.x, loc.y, loc.z)
        SetBlipSprite(blip, 267)
        SetBlipColour(blip, 2)
        SetBlipScale(blip, 0.5)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Pizza This")
        EndTextCommandSetBlipName(blip)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Prevent crashing  
        local player = QBCore.Functions.GetPlayerData()
        local plyPed = PlayerPedId()
        local plyCoords = GetEntityCoords(plyPed)
        local pos = Config.Locations

        if (GetDistanceBetweenCoords(plyCoords.x, plyCoords.y, plyCoords.z, pos.job.x, pos.job.y, pos.job.z, true) < 5) then
            if player.job.name == "ambulance" then
                DrawText3D(pos.job.x, pos.job.y, pos.job.z, "~b~[E]~w~ - Start Delivering Pizza")
                if IsControlJustReleased(0, 38) then
                    ClearPedTasks(PlayerPedId())
                    ClearAllPedProps(PlayerPedId())
                    DeleteEntity(tabletObject)
                    ClearAllBlipRoutes() -- Clear the route
                    RemoveBlip(blip) -- Clear the blip
                    if not startJob then
                        RLCore.Functions.SpawnVehicle("faggio",cb,pos.vehicle, false)
                    end
                    dict = "anim@heists@box_carry@"
                    RequestAnimDict(dict)
                    tabletObject = CreateObject(GetHashKey('prop_pizza_box_01'), GetEntityCoords(plyPed), 1, 1, 1)
                    AttachEntityToEntity(tabletObject, plyPed, GetPedBoneIndex(plyPed, 60309), 0.025, 0.08, 0.255, -55.0, 290.0, 0.0, 1, 1, 0, 1, 0, 1)
                    while not HasAnimDictLoaded(dict) do Citizen.Wait(100) end
                    if not IsEntityPlayingAnim(plyPed, dict, 'idle', 3) then
                        TaskPlayAnim(plyPed, dict, "idle", 3.0, 3.0, -1, 49, 1.0, 0, 0, 0)
                    end
                    startJob = true
                    delivered = false
                    SetLocation()
                end
            end
        end

        if (GetDistanceBetweenCoords(plyCoords.x, plyCoords.y, plyCoords.z, pos.exit.x, pos.exit.y, pos.exit.z, true) < 5) and startJob then
            if player.job.name == "ambulance" then
                if GetVehiclePedIsIn(PlayerPedId(), false) ~= 0 then
                    DrawText3D(pos.exit.x, pos.exit.y, pos.exit.z, "~b~[E]~w~ - Stop Delivering Pizza")
                    if IsControlJustReleased(0, 38) then
                        ClearPedTasks(PlayerPedId())
                        ClearAllPedProps(PlayerPedId())
                        DeleteEntity(tabletObject) 
                        ClearAllBlipRoutes() -- Clear the route
                        RemoveBlip(blip) -- Clear the blip
                        startJob = false
                        delivered = false
                        RLCore.Functions.DeleteVehicle(GetVehiclePedIsIn(GetPlayerPed(-1)))
                    end
                end
            end
        end

        if (GetDistanceBetweenCoords(plyCoords.x, plyCoords.y, plyCoords.z, loc.x, loc.y, loc.z, true) < 2.5) and not delivered and startJob then
            if player.job.name == "ambulance" then
                DrawText3D(loc.x, loc.y, loc.z, "~b~[E]~w~ - Deliver The Pizza")
                if IsControlJustReleased(0, 38) then
                    delivered = true
                    TriggerServerEvent('nm-pizzadelivery:server:givemoney', Tip())
                    ClearPedTasks(PlayerPedId())
                    ClearAllPedProps(PlayerPedId())
                    DeleteEntity(tabletObject) 
                    ClearAllBlipRoutes() -- Clear the route
                    RemoveBlip(blip) -- Clear the blip

                    blip = AddBlipForCoord(Config.Locations.job.x, Config.Locations.job.y, Config.Locations.job.z)
    
                    SetBlipSprite(blip, 267)
                    SetBlipColour(blip, 3)
                    SetBlipScale(blip, 0.5)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString("")
                    EndTextCommandSetBlipName(blip)

                    SetBlipRoute(blip, true)
                    SetBlipRouteColour(blip, 3)
                end
            end
        end

    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Prevent crashing 
        if not delivered and startJob then
            local plyped = PlayerPedId()
            dict = "anim@heists@box_carry@"
            if GetVehiclePedIsIn(plyped ,false) ~= 0 then
                if tabletObject ~= nil then
                    DeleteEntity(tabletObject)
                else
                    print("it is nil")
                end
            else
                print("DOING ANIMATION WITH PROP")
            end
        end
    end
end)

function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 50)
    ClearDrawOrigin()
end

function SetLocation()
    local v = math.random(1,#Config.ToLocations) -- Random location
    loc = Config.ToLocations[v]
    blip = AddBlipForCoord(loc.x, loc.y, loc.z)
    
    SetBlipSprite(blip, 501)
    SetBlipColour(blip, 2)
    SetBlipScale(blip, 0.5)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("")
    EndTextCommandSetBlipName(blip)
    
    SetBlipRoute(blip, true)
    SetBlipRouteColour(blip, 2)
end

function Tip()
    local r = math.random(100,350)
    if loc.money == 'h' then r = r * 1.5
    elseif loc.money == 'l' then r = r * 0.5
    elseif loc.money == 'n' then r = r * 3
    else r = r end
    return r
end
