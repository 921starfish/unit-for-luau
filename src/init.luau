--!strict
local UnitModule = require(script.Unit)

export type Unit = unknown

return (UnitModule :: unknown) :: {
	new: () -> Unit,
	New: () -> Unit,
	unit: Unit,
	Unit: Unit,
}
