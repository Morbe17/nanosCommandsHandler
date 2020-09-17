# nanosCommandsHandler
A small command handler library for Nanos World

This library usage is pretty basic, the only function available is "RegisterClientCommand(commandName, function)". The usage is meant for Client Side only as Nanos doesn't support server sided commands. 

Example:

```
RegisterClientCommand("test", function(args)

Package:Log("I'm "..args[1].."ing my new command handler")

end)
```

The entire command line is split into a table that is returned. EXAMPLE:

```
/test my name is melvin
```

to access the name you'd have to grab it as ```args[5]```

Pull/push requests are welcome!
