local commands = {}

Client:on("Chat", function(text)
    local args = splitString(string.sub(text, 2))
    local command = args[1]

    if commands[command] then
        commands[command](args)
    end
end)

function splitString(string)
    local t = {}
    local i = 0

    if string == nil then
        return false
    else
        for k in string.gmatch(string, "[^%s]+") do
            i = i + 1
            t[i] = k    
        end
        return t
    end
end

function RegisterClientCommand(command, func)
	if not commands[command] then
		commands[command] = func
    else
        return false
	end
end
