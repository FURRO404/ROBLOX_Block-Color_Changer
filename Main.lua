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

function RandomPositionChanger()
	local block = BlockArray[math.random(1, 3)]
	x = math.random(-5,5)
	y = math.random(-3,3)
	z = math.random(-5,5)
	
	if block == "Block_One" then
		game.Workspace.Block_One.Position = game.Workspace.Block_One.Position + Vector3.new(x, y, z)
		print("Moved Block One's position to", game.Workspace.Block_One.Position)

	elseif block == "Block_Two" then
		game.Workspace.Block_Two.Position = game.Workspace.Block_Two.Position + Vector3.new(x, y, z)
		print("Moved Block Two's position to", game.Workspace.Block_Two.Position)

	elseif block == "Block_Three" then
		game.Workspace.Block_Three.Position = game.Workspace.Block_Three.Position + Vector3.new(x, y, z)
		print("Moved Block Three's position to", game.Workspace.Block_Three.Position)
	end
	
end

-- CALCULATOR AREA --
function ADD()
	return print("The sum is", x+y)
end

function SUBTRACT()
	return print("The difference is", math.floor(x-y + 0.5))
end

function DIVIDE()
	return print("The quotient is", math.floor(x-y + 0.5))
end

function MULTIPLY()
	return print("The product is", math.floor(x-y + 0.5))
end

function REMAINDER()
	if x % y ~= 0 then
		return print("The remainder is", math.floor(x-y + 0.5))
			
	elseif x % y == 0 then
		 return print("No remainder")
	end
end

function Calculator()
	x = game.Workspace.Block_One.Size.x
	y = game.Workspace.Block_One.Size.y
	ADD(x, y)
	SUBTRACT(x, y)
	DIVIDE(x, y)
	MULTIPLY(x, y)
	REMAINDER(x, y)	
end
-- CALCULATOR AREA --

while true do
	RandomSizeChanger()
 	RandomColorChanger()
	RandomPositionChanger()
	--print("NEW LINE")
	--Calculator()
	wait(0.1)
end
-- End Script --
