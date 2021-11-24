local NubracLib = {}

local Camera = workspace.CurrentCamera
local Players = {}

function NubracLib:Search()
	coroutine.wrap(function()
        while wait(1.5) do
            local L_Players = game:GetService("Players")
            for i_v, p_1 in pairs(L_Players:GetPlayers()) do
                table.insert(Players,p_1)
            end
        end
    end)
end

function NubracLib:CheckVisiblity(Part, Target)
    local plr = Players.LocalPlayer
    local Character = plr.Character or plr.CharacterAdded:Wait()
    local Camera_Position = Camera.CFrame.Position
    local Visible = Camera:WorldToViewportPoint(Part.Position)

    if Visible then
        local rayparams = RaycastParams.new()
        local result = workspace:Raycast(Camera_Position, Part.Position - Camera_Position, rayparams)
        rayparams.FilterType = Enum.RaycastFilterType.Blacklist
		rayparams.FilterDescendantsInstances = {Camera, Character}
        
        if result then
			local hit = result.Instance
			return not hit or hit:IsDescendantOf(Target)
		end
    end
end

return NubracLib
