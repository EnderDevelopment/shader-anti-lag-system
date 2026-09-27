local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Load player settings
    ESX.TriggerServerCallback('shader_anti_lag:getPlayerSettings', function(settings)
        if settings then
            Config.ShaderIntensity = settings.shader_intensity
            Config.ShaderQuality = settings.shader_quality
            Config.AntiLagEnabled = settings.anti_lag_enabled
            Config.MaxEntities = settings.max_entities
        end
    end)

    -- Apply shader settings
    SetShaderIntensity(Config.ShaderIntensity)
    SetShaderQuality(Config.ShaderQuality)

    -- Anti-lag loop
    if Config.AntiLagEnabled then
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(Config.AntiLagInterval)
                CleanUpEntities(Config.MaxEntities)
            end
        end)
    end
end)

function SetShaderIntensity(intensity)
    -- Apply shader intensity
    -- Implementation depends on the specific shader system being used
end

function SetShaderQuality(quality)
    -- Apply shader quality
    -- Implementation depends on the specific shader system being used
end

function CleanUpEntities(maxEntities)
    -- Clean up entities to reduce lag
    -- Implementation depends on the specific anti-lag system being used
end