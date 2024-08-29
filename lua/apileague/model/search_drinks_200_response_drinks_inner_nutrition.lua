--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.3
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_200_response_drinks_inner_nutrition class
local search_drinks_200_response_drinks_inner_nutrition = {}
local search_drinks_200_response_drinks_inner_nutrition_mt = {
	__name = "search_drinks_200_response_drinks_inner_nutrition";
	__index = search_drinks_200_response_drinks_inner_nutrition;
}

local function cast_search_drinks_200_response_drinks_inner_nutrition(t)
	return setmetatable(t, search_drinks_200_response_drinks_inner_nutrition_mt)
end

local function new_search_drinks_200_response_drinks_inner_nutrition(weight_per_serving, caloric_breakdown, flavonoids, ingredient_breakdown, properties, nutrients)
	return cast_search_drinks_200_response_drinks_inner_nutrition({
		["weight_per_serving"] = weight_per_serving;
		["caloric_breakdown"] = caloric_breakdown;
		["flavonoids"] = flavonoids;
		["ingredient_breakdown"] = ingredient_breakdown;
		["properties"] = properties;
		["nutrients"] = nutrients;
	})
end

return {
	cast = cast_search_drinks_200_response_drinks_inner_nutrition;
	new = new_search_drinks_200_response_drinks_inner_nutrition;
}
