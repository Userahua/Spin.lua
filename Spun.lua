local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Character = script.Parent
local Humanoid = Character:WaitForChild("Humanoid")
local Spin = Character:WaitForChild("Spin")

local function SpinFunction(input)
    if input.UserInputType == Enum.UserInputType.MouseWheel then
        local mouseWheel = input.Position.Y
        if mouseWheel > 0 then
            Spin.C0 = Spin.C0 * CFrame.Angles(0, math.rad( SpinPower ), 0)
        elseif mouseWheel < 0 then
            Spin.C0 = Spin.C0 / CFrame.Angles(0, math.rad( SpinPower ), 0)
        end
    end
end

local SpinPower = 0

local function ChangeSpin(power)
    SpinPower = power
end

UserInputService.InputBegan:Connect(SpinFunction)

return ChangeSpin
