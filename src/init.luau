--!strict
local UnitModule = require(script.Unit)

export type Unit = unknown

return (UnitModule :: unknown) :: {
	--[[
	Returns a Unit value. This is an alias for `Unit.New`.
	@return A Unit value.
	]]
	new: () -> Unit,
	--[[
	Returns a Unit value. This is an alias for `Unit.new`.
	@return A Unit value.
	]]
	New: () -> Unit,
	--[[
	A Unit value. This is an alias for `Unit.Unit`.
	]]
	unit: Unit,
	--[[
	A Unit value. This is an alias for `Unit.unit`.
	]]
	Unit: Unit,
}
