--[[
    Ocylix: This will now also check Player Storage for data.Promo

    This script checks for player's purchases of membership perks on server
    and registers to APIMembership the functions for other scripts to use.

    VIP Membership offers benefits like sell bonus and discounts.
--]]

-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
local ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local REFERENCES = script:GetCustomProperty("References"):WaitForObject()

-- Exposed custom properties
local MAX_MEMBERS_BONUS = ROOT:GetCustomProperty("MaxMembersBonus")
local CROP_SELL_BONUS = ROOT:GetCustomProperty("CropSellBonus")
local FISH_SELL_BONUS = ROOT:GetCustomProperty("FishSellBonus")
local ITEM_SELL_BONUS = ROOT:GetCustomProperty("ItemSellBonus")
local BARN_DISCOUNT = ROOT:GetCustomProperty("BarnUpgradeDiscount")
local BACKPACK_DISCOUNT = ROOT:GetCustomProperty("BackpackUpgradeDiscount")
local MOUNT_DISCOUNT = ROOT:GetCustomProperty("MountUpgradeDiscount")
local LAND_DISCOUNT = ROOT:GetCustomProperty("LandUpgradeDiscount")

-- Internal variables
local list = {}                 -- List to track player's membership status
local references = {}

-- Create the list of references for membership perks
for _, child in ipairs(REFERENCES:GetChildren()) do
    local ref = child:GetCustomProperty("Perk")
    table.insert(references, ref)
end

function IsDateExpired(year, month, day)
    local currentDate = {}
    currentDate.Year = tonumber(os.date('%Y', os.time()))
    currentDate.Month = tonumber(os.date('%m', os.time()))
    currentDate.Day = tonumber(os.date('%d', os.time()))

    if currentDate.Year == year and currentDate.Month == month then
        if currentDate.Day < day then
            return false
        else
            return true
        end
    end
    if currentDate.Year == year then
        if currentDate.Month < month then
            return false
        else
            return true
        end
    end
    if currentDate.Year < year then
        return false
    end
end

function HasPromoMembership(player)
    local data = Storage.GetPlayerData(player)
    local promoPerk = ""
    if data.Promo then
        for keyString, promo in pairs(data.Promo) do 
            print(keyString, 
                "Claimed on",
                promo.claimYear,
                promo.claimMonth,
                promo.claimDay,
                " | Membership ends on",
                promo.endYear,
                promo.endMonth,
                promo.endDay
            )
            if IsDateExpired(promo.endYear, promo.endMonth, promo.endDay) then
            --if IsDateExpired(2022, 4, 12) then
                print(keyString, " is expired")
            else
                print(keyString, " is active")
                return promo.membership
            end
        end
    end    
    return false
end

-- <bool, NetReference> IsPlayerMember(Player)
-- Check if the specified player is member
function IsPlayerMember(player)
    if not Object.IsValid(player) then
        return false
    end

    --Check Promo
    promoPerk = HasPromoMembership(player)

    if promoPerk == false then
        --do nothing
        print("no promo membership found")
    else
        print("has promo membership")
        return true, promoPerk
    end

    for _, perk in ipairs(references) do
        if player:HasPerk(perk) then
            return true, perk
        end
    end

    return false
end

-- <bool> IsMembershipPerk(NetReference)
-- Check if the specified perk is one of the VIP membership perk
function IsMembershipPerk(perk)
    for _, perkReference in ipairs(references) do
        --print("Available perk:", perkReference)
        if perkReference == perk then
            return true
        end
    end
    return false
end

-- table<Players> GetMembers()
-- Get table of VIP members
function GetMembers()
    local result = {}
    for _, player in ipairs(Game.GetPlayers()) do
        if IsPlayerMember(player) then
            table.insert(result, player)
        end
    end
    return result
end

-- float GetSellBonus(int)
-- Returns either the dicount or sell bonus based on provided int
function GetSellBonus(sellType)
    if sellType == API.CROP_SELL_BONUS then
        return CROP_SELL_BONUS
    elseif sellType == API.FISH_SELL_BONUS then
        return FISH_SELL_BONUS
    elseif sellType == API.ITEM_SELL_BONUS then
        return ITEM_SELL_BONUS
    elseif sellType == API.BARN_DISCOUNT then
        return BARN_DISCOUNT
    elseif sellType == API.BACKPACK_DISCOUNT then
        return BACKPACK_DISCOUNT
    elseif sellType == API.MOUNT_DISCOUNT then
        return MOUNT_DISCOUNT
    elseif sellType == API.LAND_DISCOUNT then
        return LAND_DISCOUNT
    end
    return nil
end

-- int GetMaxMembersBonus()
-- Returns the number of max players that can server boost
function GetMaxMembersBonus()
    return MAX_MEMBERS_BONUS
end

function OnPrivateNetworkedDataChanged(player, key)
    if key == "PromoData" then
        if list[player] ~= IsPlayerMember(player) then
            if not list[player] then
                Events.BroadcastToAllPlayers("MembershipPurchased", player)
            end
            list[player] = IsPlayerMember(player)
        end
    end
end

function OnPerkChanged(player, perk)
    -- Sends our purchase event to all players if the membership status of player has changed
    if IsMembershipPerk(perk) and list[player] ~= IsPlayerMember(player) then
        if not list[player] then
            Events.BroadcastToAllPlayers("MembershipPurchased", player)
        end
        list[player] = IsPlayerMember(player)
    end
end

function OnPlayerJoined(player)
    list[player] = IsPlayerMember(player)
    IsMembershipPerk("Test Perk")
    player.perkChangedEvent:Connect(OnPerkChanged)
    player.privateNetworkedDataChangedEvent:Connect(OnPrivateNetworkedDataChanged)
end

function OnPlayerLeft(player)
    list[player] = nil
end

-- Initialize
local functionTable = {}
functionTable.GetMaxMembersBonus = GetMaxMembersBonus
functionTable.IsPlayerMember = IsPlayerMember
functionTable.GetMembers = GetMembers
functionTable.GetSellBonus = GetSellBonus

API.RegisterMembership(functionTable)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)