LangS = {
    ["player"] = "\n **Player:** ",
    ["id"] = "\n **ServerId:** ",
    ["discord"] = "\n **Discord:** ",
    ["tempo"] = "\n **Alle ore:** ",
    ["cosa"] = "\n **Ha Preso:** ",
    ["armamento"] = "Il Suo Armamento Della Polizia"
}

RegisterServerEvent("polizia", function(item)
    for k, v in pairs(ItemRicevere) do
        exports.ox_inventory:AddItem(source, v, 1, false, false)
        yoshilog(source)
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    yoshi()
end)

function yoshi()
    print(Config.LogDiscord.PrintF8)
end

function yoshilog(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local gruppo = xPlayer.getGroup()
    local name = GetPlayerName(source)
    local now = os.date('%H:%M')
	local steam = "n/a"
    local discord = "n/a"
    local license = "n/a"
    for m, n in ipairs(GetPlayerIdentifiers(_source)) do
        if n:match("steam") then
           steam = n
        elseif n:match("discord") then
           discord = n:gsub("discord:", "")
        elseif n:match("license") then
           license = n
        end
     end
    PerformHttpRequest(Config.LogDiscord.Webhooks, function()
    end, "POST", json.encode({
        username = 'YoshiTv Developement LOGS',
        embeds = {{
            author = {
                name = "[YoshiTv Developement]",
                url = "https://discord.gg/XnYDhzWyuq",
            },
            description = LangS.player..name..LangS.id..source..LangS.discord.."<@"..discord..">"..LangS.tempo..now..LangS.cosa..LangS.armamento.."\n\n **YoshiTv Development - YoshiTv**",
            color = Config.LogDiscord.Color
        }}}),{["Content-Type"] = "application/json"})
end