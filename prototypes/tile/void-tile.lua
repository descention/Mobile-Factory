------------------------------- VOID TILE -------------------------------

-- Tile --
local vtT = table.deepcopy(data.raw.tile["out-of-map"])
vtT.name = "VoidTile"
vtT.autoplace = {default_enabled = false}
data:extend{vtT}

-- Item --
local vtI = {}
vtI.type = "item"
vtI.name = "VoidTile"
vtI.icon = "__Mobile_Factory_Graphics__/graphics/icons/VoidTileI.png"
vtI.icon_size = 128
vtI.subgroup = "Tiles"
vtI.order = "b"
vtI.stack_size = 200
vtI.place_as_tile =
    {
      result = "VoidTile",
      condition_size = 1,
      condition = { "water-tile" }
    }
data:extend{vtI}

-- Recipe --
local vtR = {}
vtR.type = "recipe"
vtR.name = "VoidTile"
vtR.energy_required = 1
vtR.enabled = false
vtR.ingredients =
    {
		{"DimensionalOre", 4}
    }
vtR.result = "VoidTile"
data:extend{vtR}

-- Technology --
local vtT = {}
vtT.name = "VoidTile"
vtT.type = "technology"
vtT.icon = "__Mobile_Factory_Graphics__/graphics/icons/VoidTileI.png"
vtT.icon_size = 128
vtT.unit = {
	count=500,
	time=2,
	ingredients={
		{"DimensionalSample", 1}
	}
}
vtT.prerequisites = {"LabTile"}
vtT.effects = {{type="unlock-recipe", recipe="VoidTile"}}
data:extend{vtT}