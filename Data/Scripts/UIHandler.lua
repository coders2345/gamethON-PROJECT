local UIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()
local Root = script:GetCustomProperty("root"):WaitForObject()
local UIIcon = script:GetCustomProperty("UIIcon"):WaitForObject()
local UIContainer = script:GetCustomProperty("UIContainer"):WaitForObject()
local CommandFolder = script:GetCustomProperty("CommandFolder"):WaitForObject()
local MoreCommandFolders = script:GetCustomProperty("MoreCommandFolders")
local UIPanelHotkey = script:GetCustomProperty("UIPanelHotkey")
local UITabs = script:GetCustomProperty("UITabs"):WaitForObject()
local UITabTemplate = script:GetCustomProperty("UITabTemplate")
local UIUserTemplate = script:GetCustomProperty("UIUserTemplate")
local UICommandTemplate = script:GetCustomProperty("UICommandTemplate")
local UIStyles = script:GetCustomProperty("UIStyles"):WaitForObject()

local UIStylesTabParent = UIStyles:FindDescendantByName("Tabs")
local UIStylesTabChildren = UIStylesTabParent:GetChildren()
local UIStylesTabs = {}

--local UICursorVisible = UI.IsCursorVisible()
--local UICursorInteractable = UI.CanCursorInteractWithUI()

local UICursorVisible = false
local UICursorInteractable = false

for _, tabStyle in ipairs(UIStylesTabChildren) do
    UIStylesTabs[tabStyle.name] = {
        TabIndex = tabStyle:GetCustomProperty("TabIndex"),
        UIName = tabStyle:GetCustomProperty("UIName"),
        UIIcon = tabStyle:GetCustomProperty("UIIcon"),
    }
end


local player = Game.GetLocalPlayer()
local isUIVisible = true
local TabMaxSize = 239
local SubMaxSize = 370
local TabAnimationState = {}

local DefaultStyleName = "Default"

local adminData = require(script:GetCustomProperty("_AdminData"))

local CommandList = {}
local CommandTabOrder = {
    -- [1] = "Admin",
    -- [2] = "Costumes",
    -- [3] = "Props",
    -- [4] = "Misc",
}
local tabList = {}  -- list of {tabObj, commands={obj, code}}
local objCodeMap = {} -- Map of short obj IDs -> code
local objAudioMap = {} -- Map of short obj IDs -> audio
local buttonListeners = {}
local tabListeners = {}
local commandListeners = {}
local playerListeners = {}
local resourceListeners = {}

local excludedTabs = {}

function split(s, delimiter)
  result = {};
  for match in (s..delimiter):gmatch("(.-)"..delimiter) do
      table.insert(result, match);
  end
  return result;
end

-- Quick utility function for checking if an array contains a value.
function IsInArray(n, a)
    for k,v in pairs(a) do
        if v == n then
            return true
        end
    end
    return false
end

function GenerateCommandList()

    local allCommandFolders = {}
    local allTabs = {}
    for ___, commandFolder in ipairs(World.GetRootObject():FindDescendantsByName("Commands")) do
        for _, commandType in ipairs(commandFolder:GetChildren()) do
            --print(commandType.name)
            if not IsInArray(commandType.name, CommandTabOrder) then
                table.insert(CommandTabOrder, commandType.name)
            end
            if allCommandFolders[commandType.name] == nil then
                allCommandFolders[commandType.name] = {}
            end
            for __, commandScript in ipairs(commandType:GetChildren()) do
                --print("--", commandType.name, commandScript.name)   
                table.insert(allCommandFolders[commandType.name], commandScript)
            end            
            if allTabs[commandType.name] == nil then
                allTabs[commandType.name] = commandType
            end
        end
    end



    for _, audioObj in ipairs(World.GetRootObject():FindDescendantsByType("Audio")) do
        objAudioMap[audioObj:GetReference().id] = audioObj        
    end

  --setup the tabList  
    for tabName, tabContents in pairs(allCommandFolders) do
        local code = {}
        if CommandList[tabName] == nil then
            CommandList[tabName] = {}
        end
        for kk, tabContent in ipairs(tabContents) do
            local cmd = require(tabContent:GetCustomProperty("CommandScript"))
            cmd.Init(tabContent)
            table.insert(CommandList[tabName], {obj = tabContent, code = cmd, referenceId = tabContent:GetReference().id})
            --table.insert(code, {obj = tabContent, code = cmd})
            objCodeMap[tabContent:GetReference().id] = cmd
        end        
    end
    --print("start verify")
    for tabName, commandList in pairs(CommandList) do
        if #commandList == 0 then
            CommandList[tabName] = nil
            allCommandFolders[tabName] = nil
            excludedTabs[tabName] = true
        end
        --print(tabName, #commandList)
    end

end

function OnTabClicked(button, tabIndex)    
    local TabCurrentSize = 0

    for thisIndex, state in ipairs(TabAnimationState) do
        if thisIndex == tabIndex then
            if TabAnimationState[thisIndex].tabOpen then
                TabAnimationState[thisIndex] = {
                    tabOpen = false,
                    subOpen = false,
                }
            else
                TabAnimationState[thisIndex] = {
                    tabOpen = true,
                    subOpen = false,
                }
            end            
        else
            TabAnimationState[thisIndex] = {
                tabOpen = false,
                subOpen = false,
            }
        end
    end    
end

function Tick(deltaTime)
    local TabCurrentSize = 0
    local currentY = 0
    local tabMoveAmount = 20
    local subMoveAmount = 30
    for tabIndex, state in ipairs(TabAnimationState) do
        local thisTab = tabList[tabIndex]
        local UITabContainer = thisTab:GetCustomProperty("UITabContainer"):WaitForObject()
        local UISubContainer = thisTab:GetCustomProperty("UISubContainer"):WaitForObject()
        
        local temp = 0
        if state.tabOpen then     
            temp = TabMaxSize       
            if UITabContainer.height < TabMaxSize then
                temp = UITabContainer.height + tabMoveAmount              
            end
            UITabContainer.height = temp
            thisTab.y = currentY
            currentY = currentY + 48 + temp
        else      
            temp = 0      
            if UITabContainer.height > 0 then
                temp = UITabContainer.height - tabMoveAmount
            end       
            UITabContainer.height = temp
            thisTab.y = currentY
            currentY = currentY + 48 + temp                             
        end        
        --print(tabIndex, state.tabOpen, currentY, UITabContainer.height)
        if state.subOpen then     
            temp = SubMaxSize       
            if UISubContainer.width + subMoveAmount < SubMaxSize then
                temp = UISubContainer.width + subMoveAmount              
            end
            UISubContainer.width = temp            
        else      
            temp = 0      
            if UISubContainer.width - subMoveAmount > 0 then
                temp = UISubContainer.width - subMoveAmount
            end       
            UISubContainer.width = temp                                        
        end 
    end

    --Task.Wait(1)
end

function ClearChildren(container)
    for _, obj in ipairs(container:GetChildren()) do
        if Object.IsValid(obj) then
            obj:Destroy()
        end
    end 
end

function ClearListeners(listeners)
    if listeners == nil then
        return
    end
    if listeners["All"] ~= nil then
        listeners["All"]:Disconnect()        
    end
    for _, listener in pairs(listeners) do
        listener:Disconnect()
    end
    listeners = {}
end

if player.clientUserData.tabListeners ~= nil then
    ClearListeners(player.clientUserData.tabListeners)
    ClearListeners(player.clientUserData.playerListeners)
    player.clientUserData.bindingListener:Disconnect()
end

function GetTabStyle(styleName)
    return UIStylesTabs[styleName] or UIStylesTabs[DefaultStyleName]
end


function GenerateTabs()
    ClearChildren(UITabs)
    ClearListeners(tabListeners)

    --print("-----")
    --for k,v in ipairs(CommandTabOrder) do print(v) end
    local i = 0
    for _, entry in ipairs(CommandTabOrder) do
        --print(entry)
        if excludedTabs[entry] then 
            --do nothing
        else
            i = i + 1
            local thisTab = World.SpawnAsset(UITabTemplate, {parent = UITabs})
            thisTab.x = 0
            thisTab.y = ((i - 1) * 48)
            local UITabButton = thisTab:GetCustomProperty("UITabButton"):WaitForObject()
            local UITabButtonIcon = thisTab:GetCustomProperty("UITabButtonIcon"):WaitForObject()
            local UITabContainer = thisTab:GetCustomProperty("UITabContainer"):WaitForObject()
            local UITabContents = thisTab:GetCustomProperty("UITabContents"):WaitForObject()
            local UISubContainer = thisTab:GetCustomProperty("UISubContainer"):WaitForObject()
            local UISubContents = thisTab:GetCustomProperty("UISubContents"):WaitForObject()
            local UISubTitle = thisTab:GetCustomProperty("UISubTitle"):WaitForObject()
            TabAnimationState[i] = {
                tabOpen = false,
                subOpen = false,
            }
            --commands    
            if CommandList[entry] ~= nil then   
                local col = 0
                local row = 0 
                for _, tab in pairs(CommandList[entry]) do 
                    local thisCommandButton = World.SpawnAsset(UICommandTemplate, {parent = UITabContents})
                    local ButtonText1 = tab["obj"]:GetCustomProperty("ButtonText1")
                    local CanTargetSingle = tab["obj"]:GetCustomProperty("CanTargetSingle")
                    local CanTargetAll = tab["obj"]:GetCustomProperty("CanTargetAll")
                    local hasTargets = 0

                    if CanTargetSingle and CanTargetAll then
                        hasTargets = 3
                    elseif CanTargetSingle then
                        hasTargets = 1
                    elseif CanTargetAll then
                        hasTargets = 2
                    else
                        hasTargets = 0
                    end

                    --print(ButtonText1, hasTargets)

                    thisCommandButton.text = ButtonText1
                    thisCommandButton.x = col * 185
                    thisCommandButton.y = (row//2) * 30
                    row = row + 1
                    col = (col + 1) % 2

                    if hasTargets > 0 then
                        table.insert(tabListeners, i, thisCommandButton.clickedEvent:Connect(OnCommandClicked))
                        thisCommandButton.clientUserData = {obj = tab["obj"], code = tab["code"], hasTargets = hasTargets}                    
                    else
                        table.insert(tabListeners, i, thisCommandButton.clickedEvent:Connect(OnPlayerClicked))
                        thisCommandButton.clientUserData =  {command = tab["code"], targetPlayer = player, obj = tab["obj"], commandButton = thisCommandButton, hasTargets = 0}                    
                    end                
                end            
            end

            table.insert(tabList, i, thisTab)
            table.insert(tabListeners, i, UITabButton.clickedEvent:Connect(OnTabClicked, i))

            

            local tabStyle = GetTabStyle(entry)

            

            if UISubTitle then
                UISubTitle.text = string.upper(entry .. " Commands")
            end

            local UITabButtonTextPanel

            if thisTab:GetCustomProperty("UITabButtonTextPanel") then
                UITabButtonTextPanel = thisTab:GetCustomProperty("UITabButtonTextPanel"):WaitForObject()
                for _, textBox in ipairs(UITabButtonTextPanel:GetChildren()) do
                    textBox.text = entry
                end
                UITabButton.text = ""
            else
                UITabButton.text = entry
            end

            
            if UITabButtonIcon then
                UITabButtonIcon:SetImage(tabStyle["UIIcon"])
            end

            --UITabContainer.visibility = Visibility.FORCE_OFF
            --UISubContainer.visibility = Visibility.FORCE_OFF
            UITabContainer.height = 0
            UISubContainer.width = 0
        end        
    end

    player.clientUserData.tabListeners = tabListeners
end

local SelectedCommand = nil
function OnCommandClicked(button)
    if Object.IsValid(button) == false or button == nil then
        return
    end
    SelectedCommand = button
    local data = button.clientUserData
    local parentTab = button.parent:GetCustomProperty("ParentTab"):WaitForObject()    
    local UISubContainer = parentTab:GetCustomProperty("UISubContainer"):WaitForObject()
    local UISubContents = parentTab:GetCustomProperty("UISubContents"):WaitForObject()
    local UISubTitle = parentTab:GetCustomProperty("UISubTitle"):WaitForObject()

    UISubTitle.text = button.text

    local UISubTitlePanel
    if parentTab:GetCustomProperty("UISubTitlePanel") then
        UISubTitlePanel = parentTab:GetCustomProperty("UISubTitlePanel"):WaitForObject()
        for _, textBox in ipairs(UISubTitlePanel:GetChildren()) do
            textBox.text = button.text
        end
        UISubTitle.text = ""
    else
        UISubTitle.text = button.text
    end

    ClearChildren(UISubContents)
    ClearListeners(playerListeners)

    --print(data, data.commandButton)
    if data.hasTargets == 0 then
        local buttonName, buttonStatus = data.command.GetButtonStatus(player, data.obj)
        print("buttonStatus no target", buttonStatus)
        if buttonStatus == 2 then 
            --buttonColor = data.commandButton:GetCustomProperty("SelectedColor") 
            buttonColor = data.commandButton:GetCustomProperty("DefaultColor") 
        else
            buttonColor = data.commandButton:GetCustomProperty("DefaultColor") 
        end
        data.commandButton:SetButtonColor(buttonColor)
        --print(data.commandButton.text)
    end
    if data.hasTargets > 0 then
        local currentI = 0
        if data.hasTargets == 1 or data.hasTargets == 3 then
            local sortedPlayers = Game.GetPlayers()
            table.sort(sortedPlayers, function(a, b) return a.name < b.name end)

            --generate user buttons
            local col = 0
            for i, sortedplayer in ipairs(sortedPlayers) do
                local thisUserButton = World.SpawnAsset(UIUserTemplate, {parent = UISubContents})
                local buttonTeam = thisUserButton:GetCustomProperty("UITeamLabel"):WaitForObject()
                local buttonName, buttonStatus = data.code.GetButtonStatus(sortedplayer, data.obj)
                local buttonColor = thisUserButton:GetButtonColor()
                --print("buttonStatus", buttonStatus)
                if buttonStatus == 2 then 
                    --buttonColor = thisUserButton:GetCustomProperty("SelectedColor")                     
                end
                buttonTeam.visibility = Visibility.FORCE_OFF
                table.insert(playerListeners, i, thisUserButton.clickedEvent:Connect(OnPlayerClicked))
                thisUserButton:SetButtonColor(buttonColor)
                thisUserButton.text = sortedplayer.name

                thisUserButton.clientUserData = {command = data.code, targetPlayer = sortedplayer, obj = data.obj, commandButton = button}
                thisUserButton.x = col * 185
                thisUserButton.y = ((i - 1)//2) * 30
                col = (col + 1) % 2
                currentI = i
            end
        end

        if data.hasTargets == 2 or data.hasTargets == 3 then
            local thisUserButton = World.SpawnAsset(UIUserTemplate, {parent = UISubContents})
            local buttonTeam = thisUserButton:GetCustomProperty("UITeamLabel"):WaitForObject()
            playerListeners["All"] = thisUserButton.clickedEvent:Connect(OnPlayerClicked)
            buttonTeam.visibility = Visibility.FORCE_OFF
            thisUserButton.text = "All"     
            thisUserButton.clientUserData = {command = data.code, targetPlayer = "all", obj = data.obj, commandButton = button}
            if currentI > 0 then
                thisUserButton.y = ((currentI + 1)//2) * 30
            else
                thisUserButton.y = ((currentI + 2)//2) * 30
            end
        end

        player.clientUserData.playerListeners = playerListeners

        UISubContainer.visibility = Visibility.INHERIT    

        for thisIndex, state in ipairs(TabAnimationState) do
            if TabAnimationState[thisIndex].tabOpen then
                TabAnimationState[thisIndex] = {
                    tabOpen = true,
                    subOpen = true,
                }            
            end 
        end
    end
    
end

function OnPlayerClicked(button)   
    --print(button.name)
    local partyCoins = player:GetResource("PartyCoins")
    if partyCoins <= 0 then
        if adminData.GetRank(player) <= 0 then 
            --print("not admin")
            return 
        end
    end

    local data = button.clientUserData    

    if data.targetPlayer == "all" then
        local thisPlayer = Game.GetLocalPlayer()
        if resourceListeners[thisPlayer.id] then
            resourceListeners[thisPlayer.id]:Disconnect()
        end
        resourceListeners[thisPlayer.id] = thisPlayer.resourceChangedEvent:Connect(OnResourceChanged)
        data.command.Execute_ClientAll(player, data.obj)
        Events.BroadcastToServer("GMCA", data.obj:GetReference())
    else
        data.command.Execute_Client(data.player, data.targetPlayer, data.obj)
        if Object.IsValid(data.commandButton) then
            local SelectedColor = data.commandButton:GetCustomProperty("SelectedColor")
            local DefaultColor = data.commandButton:GetCustomProperty("DefaultColor")
            
            if button:GetButtonColor() == DefaultColor then
                print("default to selected")            
                button:SetButtonColor(SelectedColor)
            else
                print("selected to default")  
                button:SetButtonColor(DefaultColor)
            end
        end
        if resourceListeners[data.targetPlayer.id] then
            resourceListeners[data.targetPlayer.id]:Disconnect()
        end
        resourceListeners[data.targetPlayer.id] = data.targetPlayer.resourceChangedEvent:Connect(OnResourceChanged)
        Events.BroadcastToServer("GMC", data.targetPlayer, data.obj:GetReference())
        --print("client call", data.obj:GetReference())
        --data.command.Execute(player, data.targetPlayer, data.obj)
    end
    OnCommandClicked(data.commandButton)
end

function OnBindingPressed(player, binding)
    if adminData.GetRank(player) <= 0 then return end
    if binding == UIPanelHotkey then        
        if isUIVisible then
            HideUI()
        else
            ShowUI()
        end
    end
end

function ShowUI()
    if UIIcon ~= nil and UIIcon then
       UIIcon.visibility = Visibility.FORCE_OFF
    else
        bindingListener:Disconnect()
        return
    end    
    UIContainer.visibility = Visibility.FORCE_ON
    UICursorVisible = UI.IsCursorVisible()
    UICursorInteractable = UI.CanCursorInteractWithUI()
    UI.SetCursorVisible(true)
    UI.SetCanCursorInteractWithUI(true)

    Events.Broadcast("GodModeUIVisible", true)
    isUIVisible = true
end

function HideUI()
    if UIIcon ~= nil and UIIcon then
        --UIIcon.visibility = Visibility.FORCE_ON
    end
    UIContainer.visibility = Visibility.FORCE_OFF
    UI.SetCursorVisible(false)
    UI.SetCanCursorInteractWithUI(false)

    Events.Broadcast("GodModeUIVisible", false)
    isUIVisible = false
end

function OnResourceChanged(player, resource)
    --if resource:sub(1, 4) == "GMC_" then
    print("OnResourceChanged", player.name, resource)
    if resource:sub(1, 4) == "GMC_" then
        print("OnResourceChanged", player.name, resource)
        OnCommandClicked(SelectedCommand)
    end
end


function OnPlayerJoined(thisplayer)
    resourceListeners[thisplayer.id] = thisplayer.resourceChangedEvent:Connect(OnResourceChanged)
    --print("Resouce listener", thisplayer.name)
end

function OnPlayerLeft(thisplayer)
    if resourceListeners[thisplayer.id] ~= nil then
        resourceListeners[thisplayer.id]:Disconnect()
        resourceListeners[thisplayer.id] = nil
    end
end

function OnDestroyListener(obj)
    print(obj.name, "destroyed")
    UI.SetCursorVisible(false)
    UI.SetCanCursorInteractWithUI(false)
end

function OnAchievementUIVisible(bool)
    if bool then
        if UIIcon ~= nil and UIIcon then
            --UIIcon.visibility = Visibility.FORCE_ON
        end
        UIContainer.visibility = Visibility.FORCE_OFF

        isUIVisible = false
    else
        if isUIVisible then
            UI.SetCursorVisible(true)
            UI.SetCanCursorInteractWithUI(true)
        end
    end
end

script.parent.destroyEvent:Connect(OnDestroyListener)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
  
local bindingListener = player.bindingPressedEvent:Connect(OnBindingPressed)
player.clientUserData.bindingListener = bindingListener

Events.Connect("AchievementUIVisible", OnAchievementUIVisible)

GenerateCommandList()
GenerateTabs()
HideUI()
