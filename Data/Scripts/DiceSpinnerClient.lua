local Root = script:GetCustomProperty("root"):WaitForObject()
local Sides = Root:GetCustomProperty("Sides")
local Geo = script:GetCustomProperty("Geo"):WaitForObject()
local Side = {
    Root:GetCustomProperty("1"),
    Root:GetCustomProperty("2"),
    Root:GetCustomProperty("3"),
    Root:GetCustomProperty("4"),
    Root:GetCustomProperty("5"),

    Root:GetCustomProperty("6"),
    Root:GetCustomProperty("7"),
    Root:GetCustomProperty("8"),
    Root:GetCustomProperty("9"),
    Root:GetCustomProperty("10"),

    Root:GetCustomProperty("11"),
    Root:GetCustomProperty("12"),
    Root:GetCustomProperty("13"),
    Root:GetCustomProperty("14"),
    Root:GetCustomProperty("15"),

    Root:GetCustomProperty("16"),
    Root:GetCustomProperty("17"),
    Root:GetCustomProperty("18"),
    Root:GetCustomProperty("19"),
    Root:GetCustomProperty("20"),
}

local SpinnerZ = script:GetCustomProperty("SpinnerZ"):WaitForObject()
local Spinner1 = script:GetCustomProperty("Spinner1"):WaitForObject()
local Spinner2 = script:GetCustomProperty("Spinner2"):WaitForObject()
local Spinner3 = script:GetCustomProperty("Spinner3"):WaitForObject()
local Spinner4 = script:GetCustomProperty("Spinner4"):WaitForObject()
local isSpinning = false
local spinAmount = 0
local flipAmount = 42
local flipValues = {
    10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
    20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20,
    30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30
}

function OnCustomPropertyChanged(coreObject, customPropertyName)    
    if customPropertyName == "Value" then
        local newValue = coreObject:GetCustomProperty(customPropertyName)
        Geo:RotateTo(Side[newValue], 2.2)
        --Geo:RotateTo(Side[newValue], 2)
        --SpinnerZ:RotateTo(SpinnerZ:GetWorldRotation() + Rotation.New(0, 0, 90), 1)
        --Spinner1:RotateTo(SpinnerZ:GetWorldRotation() + Rotation.New(0, 0, 300), 1.3)
        --Spinner2:RotateTo(SpinnerZ:GetWorldRotation() + Rotation.New(0, 0, 300), 1.6)
        --Spinner3:RotateTo(SpinnerZ:GetWorldRotation() + Rotation.New(0, 0, 300), 1.9)
        --Spinner4:RotateTo(SpinnerZ:GetWorldRotation() + Rotation.New(0, 0, 300), 2.1)        

        --SpinnerZ:RotateContinuous(Rotation.New(0, 0, 230))
        --Spinner1:RotateContinuous(Rotation.New(0, 0, 230))
        --Spinner2:RotateContinuous(Rotation.New(0, 0, 230))
        --Spinner3:RotateContinuous(Rotation.New(0, 0, 230))
        --Spinner4:RotateContinuous(Rotation.New(0, 0, 230))
        --Spinner1:RotateTo(Spinner1:GetRotation() + Rotation.New(0, 0, 90), 0.5)
        --Spinner2:RotateTo(Spinner2:GetRotation() + Rotation.New(0, 0, 90), 1)
        --Spinner3:RotateTo(Spinner3:GetRotation() + Rotation.New(0, 0, 90), 1.5)
        --Spinner4:RotateTo(Spinner4:GetRotation() + Rotation.New(0, 0, 90), 2)
        --isSpinning = true
        --spinAmount = 30
        --isSpinning = false
        --SpinnerZ:StopRotate()
        --Spinner1:StopRotate()
        --Spinner2:StopRotate()
        --Spinner3:StopRotate()
        --Spinner4:StopRotate()
    end
    if customPropertyName == "State" then
        local newValue = coreObject:GetCustomProperty(customPropertyName)
        if newValue == 1 then
            spinAmount = 20
            flipAmount = 60
        end
    end
end

function Tick(deltaTime)
    if spinAmount > 0 then
        --print(SpinnerZ:GetRotation() + Rotation.New(0, 0, spinAmount))
        SpinnerZ:SetRotation(SpinnerZ:GetRotation() + Rotation.New(0, 0, spinAmount))
        spinAmount = spinAmount - (deltaTime*10)
        if spinAmount < 0 then
            spinAmount = 0
            flipAmount = 0
            
            print(Spinner1:GetWorldRotation())
            Spinner1:RotateTo(Rotation.New(0, 0, Spinner1:GetRotation().z), 3, true)
        end
        if flipAmount > 0 then
            if Sides == 2 then
                Spinner1:SetRotation(Spinner1:GetRotation() + Rotation.New(flipValues[flipAmount], 0, 0))
            end
            flipAmount = flipAmount - 1
        end
    else
        --print("hold")
    end
end

function OnPlayerJoined(player)
	local newValue = Root:GetCustomProperty("Value")
    Geo:RotateTo(Side[newValue], 1)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Root.networkedPropertyChangedEvent:Connect(OnCustomPropertyChanged)