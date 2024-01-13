local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent("md-craft:server:crafting", function(src, item, reward, xpgain, skillxp, skill, amountrecieve)
    local Player = QBCore.Functions.GetPlayer(src)
     local craftxp = Player.PlayerData.metadata[skillxp]
     local lvl = Player.PlayerData.metadata[skill]
     Player.Functions.AddItem(item, reward * amountrecieve)
     TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "add", reward * amountrecieve)
     Player.Functions.SetMetaData(skillxp,  (craftxp + xpgain))
     if craftxp >= 1000 then
         Player.Functions.SetMetaData(skill, (lvl + 1))
         Player.Functions.SetMetaData(skillxp, 0)  
     end

end)

RegisterServerEvent("md-craft:server:crafting2", function(amountmake, item, xp, success, table, skillxp, skill, amountrecieve)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local craft = false
    local fail = false
    local total = 0
    local count = 0
    local reward = 1 * amountmake
    local xpgain = xp * amountmake
    local successchance = math.random(1,100)
    local lvl = Player.PlayerData.metadata['crafting']
   
    for k, v in pairs(table[item].recipe) do
        total = total + 1
        local recipe = Player.Functions.GetItemByName(k)
        if recipe ~= nil and recipe.amount >= v * amountmake then
            count = count + 1
        end
    end
    if total == count then
        if success + lvl >= successchance then 
            craft = true
        else     
            fail = true
            TriggerClientEvent('QBCore:Notify', src, 'You Failed At Crafting This', "error")
        end    
    else
        TriggerClientEvent('QBCore:Notify', src, 'You dont have enough materials', "error")
    end

    if craft then
        for k, v in pairs(table[item].recipe) do
            Player.Functions.RemoveItem(k, v * amountmake * amountrecieve )
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[k], "remove", v * amountmake * amountrecieve) 
        end
        TriggerEvent("md-craft:server:crafting", src, item, reward, xpgain, skillxp, skill, amountrecieve)
    end
    if fail then
        for k, v in pairs(table[item].recipe) do
           if  Player.Functions.RemoveItem(k, v * amountmake) then
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[k], "remove", v * amountmake * amountrecieve) 
           end     
        end
    end    
end)