--!nocheck
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local TestEZ = require(ReplicatedStorage.DevPackages.TestEZ)
local Tests = ReplicatedStorage.Tests

local results = TestEZ.TestBootstrap:run({ Tests })

if results.failureCount > 0 or #results.errors > 0 then
	error(("TestEZ: %d failed, %d errors"):format(results.failureCount, #results.errors), 0)
end
