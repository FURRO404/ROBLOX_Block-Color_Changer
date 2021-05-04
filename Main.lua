-- Start Script --
-- Made by NotSoToothless
game.Workspace.Baseplate_real.Transparency = 0.75
wait(3)
local Part = Instance.new("Part", game.Workspace)
game.Workspace.Part.Name = "Block_One"		
game.Workspace.Block_One.Position = Vector3.new(20, 5, 10)
game.Workspace.Block_One.Anchored = true

local Part = Instance.new("Part", game.Workspace)
game.Workspace.Part.Name = "Block_Two"		
game.Workspace.Block_Two.Position = Vector3.new(20, 5, 20)
game.Workspace.Block_Two.Anchored = true

local Part = Instance.new("Part", game.Workspace)
game.Workspace.Part.Name = "Block_Three"
game.Workspace.Block_Three.Position = Vector3.new(20, 5, 30)
game.Workspace.Block_Three.Anchored = true

local BlockArray = {"Block_One", "Block_Two", "Block_Three"}
local ColorArray = {"Really red", "New Yeller", "Lime green", "Toothpaste", "Dark blue"}

function RandomSizeChanger()
	local block = BlockArray[math.random(1, 3)]
	print(block)
	x = math.random(1,10)
	y = math.random(1,10)
	z = math.random(1,10)
	
	if block == "Block_One" then
		game.Workspace.Block_One.Size = Vector3.new(x, y, z)
		print("Changed Block One's size!")


	elseif block == "Block_Two" then
		game.Workspace.Block_Two.Size = Vector3.new(x, y, z)
		print("Changed Block Two's size!")


	elseif block == "Block_Three" then
		game.Workspace.Block_Three.Size = Vector3.new(x, y, z)
		print("Changed Block Three's size!")
	end
end

function RandomColorChanger()
	local color = ColorArray[math.random(1, 5)]
	local block = BlockArray[math.random(1, 3)]
	print("Turning", block, "to", color)
	
	if block == "Block_One" then
		game.Workspace.Block_One.BrickColor = BrickColor.new(color)
		print("Changed Block One's color to", color)
		
	elseif block == "Block_Two" then
		game.Workspace.Block_Two.BrickColor = BrickColor.new(color)
		print("Changed Block Two's color to", color)
		
	elseif block == "Block_Three" then
		game.Workspace.Block_Three.BrickColor = BrickColor.new(color)
		print("Changed Block Three's color to", color)
	end
end

while true do
	RandomSizeChanger()
	RandomColorChanger()
	wait(0.1)
end
-- End Script --
