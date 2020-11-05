local parse = require(script.PoopyParse)
local build = require(script.PoopyBuild)

local test = script.tests.test.Value
local test2 = script.tests.test2.Value

build(parse(test)).Parent = workspace
build(parse(test2)).Parent = workspace
