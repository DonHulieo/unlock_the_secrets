-- print('Hello World') --> I'm also a chunk!

-- ----------------------------------------------|
-- print('This is the start of my chunk')      --|
-- print('This is the middle of my chunk')     --|> This is a Chunk
-- print('And this is the end of my chunk!')   --|
-- ----------------------------------------------|

-- [[ EVENTS ]] --

AddEventHandler('onResourceStart',function(resource) -- I trigger locally!
  if resource ~= GetCurrentResourceName() then return end
  print('I was triggered from the "onResourceStart" event!')
  TriggerEvent('nextStartEvent')
end)

AddEventHandler('nextStartEvent', function() -- I also trigger locally!
  print('I was chained from the "onResourceStartEvent"!')
  TriggerServerEvent('serverChainedEvent')
end)

RegisterNetEvent('clientChainedEvent', function() -- I'm a Network Event, you can call me from the client or server!
  print('I can be triggered on all clients!')
end)