local parse = require(script.PoopyParse)
local build = require(script.PoopyBuild)

local test = script.tests.test.Value
build(parse(test)).Parent = workspace
