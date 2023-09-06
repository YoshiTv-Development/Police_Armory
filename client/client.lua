local tempo = false
local options = {
    {
        name = 'ox:option1',
        event = Config.Armory.Event,
        icon = Config.Armory.Icon,
        label = Config.Armory.Label,
        groups = Config.Armory.Groups,
    },
}
local armamento = { 
    Config.Armory.Ped
}
exports.ox_target:addModel(armamento, options)

Citizen.CreateThread(function()
    if not HasModelLoaded(Config.Armory.Ped) then
        RequestModel(Config.Armory.Ped)
        while not HasModelLoaded(Config.Armory.Ped) do
            Citizen.Wait(5)
        end
    end

    local npc = CreatePed(4, Config.Armory.Ped, Config.Armory.CoordsPed, false, true)
    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
end)

RegisterNetEvent(Config.Armory.Event, function()
    if not tempo then 
        tempo = true
        TriggerServerEvent('polizia', 0)
        ESX.ShowNotification(Config.Lang.successarmory)
        Wait(Config.Armory.Wait)
        tempo = false
    else
        ESX.ShowNotification(Config.Lang.errorarmory)
    end
end)

