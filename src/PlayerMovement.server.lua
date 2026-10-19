-- PlayerMovement.server.lua

local Players = game:GetService("Players")

local PlayerMovement = {}

function PlayerMovement:Start()
    -- Connect player events
    Players.PlayerAdded:Connect(function(player)
        self:OnPlayerAdded(player)
    end)
end

function PlayerMovement:OnPlayerAdded(player)
    -- Handle player addition
    print("Player added: " .. player.Name)
    
    -- Initialize player movement
    self:InitializePlayerMovement(player)
end

function PlayerMovement:InitializePlayerMovement(player)
    -- Initialize player movement
    print("Initializing player movement: " .. player.Name)
end

return PlayerMovement