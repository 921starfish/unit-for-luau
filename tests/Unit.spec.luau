--!strict

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Unit = require(ReplicatedStorage.unit)

return function()
	-- TestEZ injects these globals at runtime; we bind them to locals for analysis.
	local env = getfenv()
	local describe = env.describe
	local it = env.it
	local expect = env.expect

	describe("Unit", function()
		it("new() should stringify to ()", function()
			expect(tostring(Unit.new())).to.equal("()")
		end)

		it("New() should be an alias of new()", function()
			expect(Unit.New).to.equal(Unit.new)
		end)

		it("unit / Unit should be the same singleton reference", function()
			expect(rawequal(Unit.unit, Unit.Unit)).to.equal(true)
			expect(rawequal(Unit.unit, Unit.new())).to.equal(true)
		end)

		it("all Unit values should be equal", function()
			expect(Unit.new() == Unit.unit).to.equal(true)
			expect(Unit.unit == Unit.Unit).to.equal(true)
		end)

		it("should not be equal to any other value", function()
			expect(Unit.new() == { __brand = "UnitData" } :: Unit.Unit).to.equal(false)
		end)

		it("should be of type table", function()
			expect(type(Unit.unit)).to.equal("table")
			expect(typeof(Unit.Unit)).to.equal("table")
		end)
	end)
end
