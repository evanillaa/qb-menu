RegisterNUICallback("dataPost", function(data, cb)
    SetNuiFocus(false)
    TriggerEvent(data.event, data.args)
    TriggerServerEvent(data.event, data.args)
    cb('ok')
end)

RegisterNUICallback("cancel", function()
    SetNuiFocus(false)
end)


RegisterNetEvent('qb-menu:sendMenu', function(data)
    if not data then return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        data = data
    })
end)

RegisterCommand("test", function(source, args, raw)
    TriggerEvent("qb-menu:testMenu")
end)

RegisterNetEvent('qb-menu:testMenu', function()
    TriggerEvent('qb-menu:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "qb-menu:testMenu"
            }
        },
        {
            id = 2,
            header = "bmx",
            txt = "bmx 25$",
            url='https://cdn.discordapp.com/attachments/872381119138500648/901248979667411005/3.png',
            params = {
                event = "spawn"
            }
        },
        {
            id = 3,
            header = "cruiser",
            txt = "cruiser 25$",
            url='https://cdn.discordapp.com/attachments/872381119138500648/901249011753844796/4.png',
            params = {
                event = "spawn"
            }
        },
        {
            id = 4,
            header = "fixter",
            txt = "fixter 50$",
            url='https://cdn.discordapp.com/attachments/872381119138500648/901249036147888178/5.png',
            params = {
                event = "spawn"
            }
        },
        {
            id = 5,
            header = "scorcher",
            txt = "scorcher 50$",
            url='https://cdn.discordapp.com/attachments/872381119138500648/901249080955666502/6.png',
            params = {
                event = "spawn"
            }
        },	
    })
end)