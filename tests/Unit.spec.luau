--!strict

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local unit = require(ReplicatedStorage.unit)

return function()
	-- TestEZ injects these globals at runtime; we bind them to locals for analysis.
	local env = getfenv()
	local describe = env.describe
	local it = env.it
	local expect = env.expect

	describe("Unit", function()
		it("new() should stringify to ()", function()
			expect(tostring(unit.new())).to.equal("()")
		end)

		it("New() should be an alias of new()", function()
			expect(unit.New).to.equal(unit.new)
		end)

		it("unit / Unit should be the same singleton reference", function()
			expect(rawequal(unit.unit, unit.Unit)).to.equal(true)
			expect(rawequal(unit.unit, unit.new())).to.equal(true)
		end)

		it("all Unit values should be equal", function()
			expect(unit.new() == unit.unit).to.equal(true)
			expect(unit.unit == unit.Unit).to.equal(true)
		end)
	end)
end
