--[[
	Made by Max B
	    V1.1a
]]

local RacistDuck = {}

function RacistDuck:CreateCore(p)
	local ScreenGui = Instance.new("ScreenGui")
	
	ScreenGui.Parent = p
	ScreenGui.ResetOnSpawn = false
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	return ScreenGui
end

function RacistDuck:CreateCollum(p)
	local Frame = Instance.new("Frame")
	local UIStroke = Instance.new("UIStroke")
	
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Color = Color3.fromRGB(61, 61, 140)
	UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
	UIStroke.Thickness = 3
	UIStroke.Parent = Frame
	
	Frame.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
	Frame.BackgroundTransparency = 0.20000000298023
	Frame.BorderColor3 = Color3.fromRGB(61, 61, 140)
	Frame.BorderSizePixel = 0
	Frame.Parent = p
	--Frame.Position = UDim2.new(0.01363131403923, 0, 0.059395253658295, 0)
	Frame.Size = UDim2.new(0, 220, 0, 305)
	
	return Frame
end

function RacistDuck:CreateScrollingFrame(p)
	local List = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	
	List.Active = true
	List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	List.BackgroundTransparency = 1
	List.BorderSizePixel = 0
	List.Name = 'List'
	List.Parent = p
	List.Position = UDim2.new(0.031818181276321, 0, 0, 0)
	List.Size = UDim2.new(0, 211, 1, 0)
	List.CanvasSize = UDim2.new(0, 0, 0, 0)
	List.ScrollBarImageColor3 = Color3.fromRGB(56, 56, 56)
	List.ScrollBarThickness = 6
	
	UIListLayout.Parent = List
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	return List
end

function RacistDuck:CreateHeader(p)
	local Header = Instance.new("TextLabel")
	local UIStroke = Instance.new("UIStroke")
	
	Header.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
	Header.BackgroundTransparency = 0.20000000298023
	Header.BorderSizePixel = 0
	Header.Name = 'Header'
	Header.Parent = p
	Header.Position = UDim2.new(0.013341804035008, 0, 0.018358530476689, 0)
	Header.Size = UDim2.new(0, 220, 0, 29)
	Header.Font = Enum.Font.Code
	Header.LineHeight = 1.1000000238419
	Header.Text = 'Example Header'
	Header.TextColor3 = Color3.fromRGB(255, 255, 255)
	Header.TextSize = 17
	Header.TextStrokeTransparency = 0
	Header.TextWrapped = true
	
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Color = Color3.fromRGB(61, 61, 140)
	UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
	UIStroke.Thickness = 3
	UIStroke.Parent = Header
	
	return Header
end

function RacistDuck:CreateButton(p)
	local Button = Instance.new("TextButton")
	local Status = Instance.new("TextLabel")
	
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1
	Button.BorderSizePixel = 0
	Button.Name = 'Button'
	Button.Parent = p
	Button.Position = UDim2.new(-0.004739336669445, 0, 0, 0)
	Button.Size = UDim2.new(0, 214, 0, 22)
	Button.Font = Enum.Font.Code
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextSize = 15
	Button.TextXAlignment = Enum.TextXAlignment.Left

	Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Status.BackgroundTransparency = 1
	Status.Name = 'Status'
	Status.Parent = Button
	Status.Size = UDim2.new(0.97183096408844, 0, 1, 0)
	Status.Font = Enum.Font.Code
	Status.Text = 'OFF'
	Status.TextColor3 = Color3.fromRGB(255, 0, 0)
	Status.TextSize = 15
	Status.TextXAlignment = Enum.TextXAlignment.Right
	
	return Button, Status
end

return RacistDuck
