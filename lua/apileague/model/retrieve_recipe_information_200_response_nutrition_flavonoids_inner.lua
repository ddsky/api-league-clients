--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_nutrition_flavonoids_inner class
local retrieve_recipe_information_200_response_nutrition_flavonoids_inner = {}
local retrieve_recipe_information_200_response_nutrition_flavonoids_inner_mt = {
	__name = "retrieve_recipe_information_200_response_nutrition_flavonoids_inner";
	__index = retrieve_recipe_information_200_response_nutrition_flavonoids_inner;
}

local function cast_retrieve_recipe_information_200_response_nutrition_flavonoids_inner(t)
	return setmetatable(t, retrieve_recipe_information_200_response_nutrition_flavonoids_inner_mt)
end

local function new_retrieve_recipe_information_200_response_nutrition_flavonoids_inner(name, amount, unit)
	return cast_retrieve_recipe_information_200_response_nutrition_flavonoids_inner({
		["name"] = name;
		["amount"] = amount;
		["unit"] = unit;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_nutrition_flavonoids_inner;
	new = new_retrieve_recipe_information_200_response_nutrition_flavonoids_inner;
}
