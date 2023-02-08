local CMD = {}
local commandData = {}

function CMD.Init(obj)
  commandData[obj] = {}
end


-- Client stuff
---------------------------------------

function IsActive(player, obj)
  --return player:GetResource(commandData[obj].resourceFlagName) > 0
  return player.isDead
end


-- Returns button name, color, and boolean if the button is enabled.
function CMD.GetButtonStatus(player, obj)
  if not IsActive(player, obj) then
    return obj:GetCustomProperty("ButtonText1"), 1
  else
    return obj:GetCustomProperty("ButtonText2"), 2
  end
end

function CMD.Execute_Client(sourcePlayer, targetPlayer, obj)
--  print("execute client")
    print("Checking BAN status")
    Events.BroadcastToServer("CheckBanStatus", sourcePlayer)
end

function CMD.Execute_ClientAll(sourcePlayer, obj)
--  print("execute client all")
end

-- Server stuff
---------------------------------------

function CMD.Execute_Server(sourcePlayer, targetPlayer, obj)
  local playerDataTable = Storage.GetPlayerData(targetPlayer)
  if type(playerDataTable.GMC) ~= "table" then    
    playerDataTable.GMC = {}                                        -- Creating GMC subtable
    playerDataTable.GMC.banned = 1                                  -- Set banned status to active
    playerDataTable.GMC.timestamp = time()                          -- Set timestamp to current time
    Storage.SetPlayerData(targetPlayer, playerDataTable)
    targetPlayer:SetWorldScale(Vector3.New(0.01, 0.01, 0.01))
    targetPlayer.maxWalkSpeed = 0
    targetPlayer.maxJumpCount = 0
    targetPlayer.canMount = false
    Task.Spawn(function()
      if Object.IsValid(targetPlayer) then
        targetPlayer:TransferToGame("e23e99/spellshock")
        Task.Wait(1)
      end
    end).repeatCount = -1
  else
    local banned = playerDataTable.GMC.banned
    playerDataTable.GMC = {}
    if banned == 1 then
      playerDataTable.GMC.banned = 0
    else
      playerDataTable.GMC.banned = 1
    end
    
    playerDataTable.GMC.timestamp = time()
    Storage.SetPlayerData(targetPlayer, playerDataTable)
  end
    
end


function CMD.Execute_ServerAll(sourcePlayer, obj)
  --print("execute server all")
end

if Environment.IsServer() then
        
    function OnPlayerJoined(sourcePlayer)
        -- Checking if player is already banned when they join game

        local timestamp = time()                                          -- get local time
        
        playerDataTable = Storage.GetPlayerData(sourcePlayer)             -- Call Player Storage

        if type(playerDataTable.GMC) ~= "table" then                      -- If GMC subtable doesn't exist then must be player 1st visit = do nothing
                                           
        else                                                              -- Otherwise if table exists check if under 24hr ban

          local CurrentTime = time()                                      -- Get current time
          local pTimestamp = playerDataTable.GMC["timestamp"]             -- Get player timestamp
          local BanStatus = playerDataTable.GMC["banned"]                 -- Get player ban status
          local TimeDiff = (CurrentTime - pTimestamp)/3600                -- Compare times
              
            if TimeDiff < 24 and BanStatus == 1 then                      -- if < 24hrs then 
                  print("AUTO-KICK ENABLED")
                  sourcePlayer:SetWorldScale(Vector3.New(0.01, 0.01, 0.01))
                  sourcePlayer.maxWalkSpeed = 0
                  sourcePlayer.maxJumpCount = 0
                  sourcePlayer.canMount = false
                  Task.Spawn(function()
                    if Object.IsValid(sourcePlayer) then
                      sourcePlayer:TransferToGame("e23e99/spellshock")
                      Task.Wait(1)
                    end
                  end).repeatCount = -1
                  --sourcePlayer:TransferToGame("e23e99/spellshock")        -- kick player to Void
            else
            end

        end
    end

    function CheckBanStatus(sourcePlayer)

    end
    function CheckBanStatus2(sourcePlayer)
        -- check if player is banned when BAN button clicked
        
        playerDataTable = Storage.GetPlayerData(sourcePlayer)

        if type(playerDataTable.GMC) ~= "table" then                      -- Check if GMC subtable exists
          playerDataTable.GMC = {}                                        -- Creating GMC subtable
          playerDataTable.GMC.banned = 1                                  -- Set banned status to active
          playerDataTable.GMC.timestamp = time()                          -- Set timestamp to current time
          Storage.SetPlayerData(sourcePlayer, playerDataTable)            -- Update Player Storage
          --print("Have fun in the VOID!!")          
          sourcePlayer:TransferToGame("e23e99/spellshock")                -- kick player to Void
        else
        end 
        
    end

    Events.ConnectForPlayer("CheckBanStatus", CheckBanStatus)  

    Game.playerJoinedEvent:Connect(OnPlayerJoined)

end

return CMD