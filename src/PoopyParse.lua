local gmatch = string.gmatch
local split = string.split

local newVector3 = Vector3.new

local partTypeDictionary = {
	b = {
		instance = "Part";
		shape = "Block";
	};
}

local function parse(str)
	local modelData = {}
	for line in gmatch(str, "([^\n]+)") do
		local partData = split(line, " ")
		table.insert(modelData, {
			partType = partTypeDictionary[partData[1]];

			material = partData[11];
			brickColor = partData[12];

			position = newVector3(partData[2], partData[3], partData[4]);
			size = newVector3(partData[5], partData[6], partData[7]);
			lookAt = newVector3(partData[8], partData[9], partData[10]);
		})
	end

	return modelData
end

return parse
