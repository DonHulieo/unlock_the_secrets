print('Hello, I\'m the Server') --> I'm a small chunk

-- [[ EVENTS ]] --

RegisterNetEvent('serverChainedEvent', function() -- I'm a Networked Event, I can be triggered from both the client and server!
  print('I was triggered from the client!')
  TriggerClientEvent('clientChainedEvent', -1)
end) --> From RegisterNetEvent to end) is my chunk, when the script first starts my event name get Registered so it can be called!