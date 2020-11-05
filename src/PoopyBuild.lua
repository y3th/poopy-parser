local newInstance = Instance.new

local function build(modelData)
	local model = newInstance("Model")
	for _, partData in ipairs(modelData) do
		local part = newInstance(partData.partType.instance)

		part.Size = partData.size
		part.CFrame = CFrame.lookAt(partData.position, partData.position + partData.lookAt)
		part.Shape = partData.partType.shape
		part.Material = partData.material

		part.Anchored = true
		part.CanCollide = true

		part.Parent = model
	end

	return model
end

return build
