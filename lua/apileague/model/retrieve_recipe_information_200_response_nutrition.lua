--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_nutrition class
local retrieve_recipe_information_200_response_nutrition = {}
local retrieve_recipe_information_200_response_nutrition_mt = {
	__name = "retrieve_recipe_information_200_response_nutrition";
	__index = retrieve_recipe_information_200_response_nutrition;
}

local function cast_retrieve_recipe_information_200_response_nutrition(t)
	return setmetatable(t, retrieve_recipe_information_200_response_nutrition_mt)
end

local function new_retrieve_recipe_information_200_response_nutrition(weight_per_serving, caloric_breakdown, flavonoids, ingredient_breakdown, properties, nutrients)
	return cast_retrieve_recipe_information_200_response_nutrition({
		["weight_per_serving"] = weight_per_serving;
		["caloric_breakdown"] = caloric_breakdown;
		["flavonoids"] = flavonoids;
		["ingredient_breakdown"] = ingredient_breakdown;
		["properties"] = properties;
		["nutrients"] = nutrients;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_nutrition;
	new = new_retrieve_recipe_information_200_response_nutrition;
}
