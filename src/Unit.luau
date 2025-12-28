--!strict
local Unit = {}
Unit.__index = Unit

type UnitData = { _: never }

export type Unit = typeof(setmetatable({} :: UnitData, Unit))

-- The only value that exists as a Unit type.
local UNIT_VALUE = {} :: UnitData

function Unit.new(): Unit
	local self = UNIT_VALUE

	return setmetatable(self, Unit)
end

return Unit
