--!strict
local Unit = {}

local UnitMetatable = {}
UnitMetatable.__index = UnitMetatable

function UnitMetatable.__tostring(t)
	return "()"
end

function UnitMetatable.__eq(a, b)
	return true
end

type UnitData = { __brand: "UnitData" }

export type Unit = typeof(setmetatable({} :: UnitData, UnitMetatable))

-- The only value that exists as a Unit type.
local UNIT_VALUE: UnitData = { __brand = "UnitData" }

local new = function(): Unit
	local self = UNIT_VALUE

	return setmetatable(self, UnitMetatable)
end

Unit.new = new
Unit.New = new
Unit.unit = new()
Unit.Unit = new()

return Unit
