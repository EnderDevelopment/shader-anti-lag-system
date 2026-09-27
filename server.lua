local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Register server callbacks
ESX.RegisterServerCallback('shader_anti_lag:getPlayerSettings', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        MySQL.Async.fetchScalar('SELECT COUNT(*) FROM player_settings WHERE player_id = @player_id', {
            ['@player_id'] = xPlayer.identifier
        }, function(count)
            if count > 0 then
                MySQL.Async.fetchAll('SELECT * FROM player_settings WHERE player_id = @player_id', {
                    ['@player_id'] = xPlayer.identifier
                }, function(result)
                    if result[1] then
                        cb(result[1])
                    else
                        cb(nil)
                    end
                end)
            else
                MySQL.Async.execute('INSERT INTO player_settings (player_id) VALUES (@player_id)', {
                    ['@player_id'] = xPlayer.identifier
                }, function()
                    cb(nil)
                end)
            end
        end)
    else
        cb(nil)
    end
end)

-- Register commands
ESX.RegisterCommand('shader', 'admin', function(xPlayer, args, showError)
    -- Handle shader commands
end, false)

ESX.RegisterCommand('antilag', 'admin', function(xPlayer, args, showError)
    -- Handle anti-lag commands
end, false)