local data_util = {}

--- Add a given quantity of titanium plates to a given recipe
function data_util.add_titanium_ingredient(quantity, recipe)
	table.insert(recipe.ingredients, {"titanium-plate", quantity})
end

--- Add titanium processing as a prerequisite to a given technology
function data_util.add_titanium_prerequisite(technology)
	table.insert(technology.prerequisites, "titanium-processing")
end

--- Change all occurances of steel plates to titanium plates in a given recipe
function data_util.steel_to_titanium(recipe)
	if recipe ~= nil and recipe.ingredients ~= nil then
		for i, ingredient in pairs(recipe.ingredients) do 
			-- For final fixes
			if ingredient.name == "steel-plate" then ingredient.name = "titanium-plate" end
			-- For updates
			if ingredient[1] == "steel-plate" then ingredient[1] = "titanium-plate" end
		end
	end
end

return data_util
