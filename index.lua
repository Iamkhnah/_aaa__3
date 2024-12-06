if getgenv().HookedSetCore == false then
    hookfunction(game:GetService("StarterGui").SetCore, function(event, ...)
        if event == "SendNotification" then
            local arg = {...}
            if arg["Title"] == "TNG-Exploit" then
                arg["Title"] = "TNG-Exploit Premium Trial"
                if arg[2] == "Execute Script" or arg["Text"] == "Execute Script" then
                    arg["Text"] = "TNG Premium\nExecuted Script"
                end
            end
            return event, arg
        end
        return event, ...
    end)
    getgenv().HookedSetCore = true
end
