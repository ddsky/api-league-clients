--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_ingredients_inner_measures_metric class
local retrieve_recipe_information_200_response_ingredients_inner_measures_metric = {}
local retrieve_recipe_information_200_response_ingredients_inner_measures_metric_mt = {
	__name = "retrieve_recipe_information_200_response_ingredients_inner_measures_metric";
	__index = retrieve_recipe_information_200_response_ingredients_inner_measures_metric;
}

local function cast_retrieve_recipe_information_200_response_ingredients_inner_measures_metric(t)
	return setmetatable(t, retrieve_recipe_information_200_response_ingredients_inner_measures_metric_mt)
end

local function new_retrieve_recipe_information_200_response_ingredients_inner_measures_metric(unit_short, amount, unit_long)
	return cast_retrieve_recipe_information_200_response_ingredients_inner_measures_metric({
		["unit_short"] = unit_short;
		["amount"] = amount;
		["unit_long"] = unit_long;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_ingredients_inner_measures_metric;
	new = new_retrieve_recipe_information_200_response_ingredients_inner_measures_metric;
}
