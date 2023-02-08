
local EaseUI = require(script:GetCustomProperty("EaseUI"))

local ROOT = script.parent
local AMMO_BULLET_TEMPLATE = script:GetCustomProperty("ReloadBulletIndicator")
local WEAPON = script:GetCustomProperty("Equipment"):WaitForObject()
local RELOAD_ABILITY = script:GetCustomProperty("ReloadAbility"):WaitForObject()
local SHOOT_ABILITY = script:GetCustomProperty("ShootAbility"):WaitForObject()

local BULLET_CONTAINER_PANEL = World.FindObjectByName("BulletPanel")
local RELOAD_INDICATOR = World.FindObjectByName("ReloadIndicator")
local propAmmoIndicator = World.FindObjectByName("MainPanel")

local LOCAL_PLAYER = Game.GetLocalPlayer()

---- Internal variables
local currentShot = 1
local bullets = {}


local function RefreshAmmoCounter()
    local SEPERATION = -50

    RELOAD_INDICATOR.visibility = Visibility.FORCE_OFF
    BULLET_CONTAINER_PANEL.visibility = Visibility.FORCE_ON

    -- Remove all bullets
    for _, child in pairs(bullets) do
        if Object.IsValid(child) then
            child:Destroy()
        end
    end

    -- Add the bullets
    for i=1,WEAPON.maxAmmo do
        local spawnedBulletIcon = World.SpawnAsset(AMMO_BULLET_TEMPLATE,{ parent = BULLET_CONTAINER_PANEL })
        spawnedBulletIcon.x = i * -(spawnedBulletIcon.width + SEPERATION)

        spawnedBulletIcon.width = spawnedBulletIcon.width + 40
        spawnedBulletIcon.height = spawnedBulletIcon.height + 40

        EaseUI.EaseWidth(spawnedBulletIcon, spawnedBulletIcon.width - 40, 0.2, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.OUT)
		EaseUI.EaseHeight(spawnedBulletIcon, spawnedBulletIcon.height - 40, 0.2, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.OUT)
    end

    bullets = BULLET_CONTAINER_PANEL:GetChildren()
    currentShot = #bullets
end

-- On begin reloading remove ammo indicators
RELOAD_ABILITY.cooldownEvent:Connect(function()
    if WEAPON.owner ~= LOCAL_PLAYER then return end

    RefreshAmmoCounter()
end)

-- On shoot reduce the ammo counter.
SHOOT_ABILITY.executeEvent:Connect(function()
    if WEAPON.owner ~= LOCAL_PLAYER then return end

    if not bullets[currentShot] then return end
    local bulletIcon = bullets[currentShot]
    
    -- Bounce the bullet
    local originalY = bulletIcon.y
    local originalWidth = bulletIcon.width
    local originalHeight = bulletIcon.height
    
    bulletIcon:SetColor(Color.GRAY)
    
    -- WOOSH!
    Task.Spawn(function()
        EaseUI.EaseY(bulletIcon, bulletIcon.y - 20, 0.1, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.OUT)
		EaseUI.EaseWidth(bulletIcon, bulletIcon.width + 10, 0.1, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.OUT)
		EaseUI.EaseHeight(bulletIcon, bulletIcon.height + 10, 0.1, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.OUT)

        Task.Wait(0.1)
        if Object.IsValid(bulletIcon) then
            EaseUI.EaseY(bulletIcon, originalY, 0.1, EaseUI.EasingEquation.LINEAR, EaseUI.EasingDirection.OUT)
            EaseUI.EaseWidth(bulletIcon, originalWidth, 0.1, EaseUI.EasingEquation.LINEAR, EaseUI.EasingDirection.OUT)
            EaseUI.EaseHeight(bulletIcon, originalHeight, 0.1, EaseUI.EasingEquation.LINEAR, EaseUI.EasingDirection.OUT)
        end
    end)

    currentShot = currentShot - 1

    if currentShot <= 0 then
        RELOAD_INDICATOR.visibility = Visibility.FORCE_ON
        BULLET_CONTAINER_PANEL.visibility = Visibility.FORCE_OFF
    end
end)


-- Well this is unfortunate... We have to wait until we receive that we own the weapon.
while WEAPON.owner == nil do Task.Wait() end

-- Inital refresh of ammo counter
if WEAPON.owner == LOCAL_PLAYER then
    RefreshAmmoCounter()
    ROOT.visibility = Visibility.FORCE_ON
    propAmmoIndicator.visibility = Visibility.FORCE_ON

    ROOT.destroyEvent:Connect(function(_)
        ROOT.visibility = Visibility.FORCE_OFF
    end)
end

