--[[
    This script checks for player's purchases of membership perks on client
    and registers to APIMembership the functions for other scripts to use.

    VIP Membership offers benefits like sell bonus and discounts.

    This script also sends out client event when a VIP member left or joined.
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
local references = {}
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
    --return "member"
    --print("Waiting for promo membership to load")
    --[[
    while not player:GetPrivateNetworkedData("PromoData") do
        Task.Wait()
    end
    ]]
    --print("Promo membership data loaded")

    if not player:GetPrivateNetworkedData("PromoData") then return false end

    local dataPromo = player:GetPrivateNetworkedData("PromoData")
    local promoPerk = ""
    if dataPromo then
        for keyString, promo in pairs(dataPromo) do 
            --[[
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
            ]]
            if IsDateExpired(promo.endYear, promo.endMonth, promo.endDay) then
            --if IsDateExpired(2022, 4, 12) then
                --print(keyString, " is expired")
                --return false
            else
                --print(keyString, " is active")
                --return promo.membership
                return true
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

    if promoPerk then
        return true, references[3]
    end

    for _, perk in ipairs(references) do
        if player:HasPerk(perk) then
            return true, perk
        end
    end

    return false
end

function IsPlayerMember1(player)
    if not Object.IsValid(player) then
        return false
    end

    for _, perk in ipairs(references) do
        if player:HasPerk(perk) then
            return true, perk
        end
    end

    return false
end

-- table<Players> GetMembers()
-- Get table of VIP members
function GetMembers()
    local result = {}
    for _, player in ipairs(Game.GetPlayers()) do
        if IsPlayerMember(player) or HasPromoMembership(player) then
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

function OnPlayerJoined(player)
    if IsPlayerMember(player) or HasPromoMembership(player) then
        Events.Broadcast("MemberJoined", player)
    end
end

function OnPlayerLeft(player)
    if IsPlayerMember(player) or HasPromoMembership(player) then
        Events.Broadcast("MemberLeft", player)
    end
end

-- Initialize
local functionTable = {}
functionTable.GetMaxMembersBonus = GetMaxMembersBonus
functionTable.IsPlayerMember = IsPlayerMember
functionTable.GetMembers = GetMembers
functionTable.GetSellBonus = GetSellBonus
functionTable.HasPromoMembership = HasPromoMembership


API.RegisterMembership(functionTable)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)