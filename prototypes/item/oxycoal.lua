----------------- Oxycoal ---------------

-- Item --
local ocI = {}
ocI.type = "item"
ocI.name = "Oxycoal"
ocI.icon = "__Mobile_Factory_Graphics__/graphics/icons/Oxycoal.png"
ocI.icon_size = 64
ocI.fuel_category = "chemical"
ocI.fuel_value = "15MJ"
ocI.subgroup = "Resources"
ocI.order = "h"
ocI.stack_size = 200
data:extend{ocI}

-- Recipe --
local ocR = {}
ocR.type = "recipe"
ocR.name = "Oxycoal"
ocR.energy_required = 5
ocR.enabled = false
ocR.category = "Elements"
ocR.ingredients =
    {
		{type="fluid", name="mfOxygen", amount=150},
		{type="item", name="coal", amount=10}
    }
ocR.results = {{type="item", name="Oxycoal", amount=10}}
data:extend{ocR}

-- Technology --
local ocT = {}
ocT.name = "Oxycoal"
ocT.type = "technology"
ocT.icon = "__Mobile_Factory_Graphics__/graphics/icons/Oxycoal.png"
ocT.icon_size = 64
ocT.unit = {
	count=800,
	time=2,
	ingredients={
		{"DimensionalSample", 1}
	}
}
ocT.prerequisites = {"DimensionalPlant"}
ocT.effects = {{type="unlock-recipe", recipe="Oxycoal"}}
data:extend{ocT}