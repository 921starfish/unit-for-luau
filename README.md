# Unit for Luau

A minimal `Unit` type implementation for Luau.

> [!WARNING]
> This library is currently in **beta**. Tests are not yet implemented.

## What is Unit Type?

Unit type is a type that has exactly one value. It is useful when you need to represent "no meaningful value" in a type-safe way, similar to `void` in other languages but as an actual value.

## Installation

### Wally

Add the following to your `wally.toml`:

```toml
[dependencies]
Unit = "921starfish/unit@0.9.3"
```

### pesde

TODO

## Usage

```luau
local Unit = require(path.to.Unit)

-- Create a Unit value
local unit = Unit.new()

-- Or use pre-created Unit value
local unit = Unit.unit

-- All Unit values are equal
print(Unit.new() == Unit.unit) -- true

-- String representation
print(tostring(unit)) -- "()"
```

### Type Annotation

```luau
local Unit = require(path.to.Unit)

type Unit = Unit.Unit

local function doSomething(): Unit
    -- do something...
    return Unit.new()
end
```

## API

### Functions

#### `Unit.new(): Unit`

Creates and returns a Unit value.

#### `Unit.New(): Unit`

Alias for `Unit.new()`.

### Values

#### `Unit.unit: Unit`

A pre-created Unit value. Use this when you don't need to create a new instance.

#### `Unit.Unit: Unit`

Alias for `Unit.unit`.

### Types

#### `Unit.Unit` (Type)

The Unit type for type annotations.

## License

[MIT](LICENSE)
