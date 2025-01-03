--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_api_200_response_ingredients_inner_measures class
local retrieve_recipe_information_api_200_response_ingredients_inner_measures = {}
local retrieve_recipe_information_api_200_response_ingredients_inner_measures_mt = {
	__name = "retrieve_recipe_information_api_200_response_ingredients_inner_measures";
	__index = retrieve_recipe_information_api_200_response_ingredients_inner_measures;
}

local function cast_retrieve_recipe_information_api_200_response_ingredients_inner_measures(t)
	return setmetatable(t, retrieve_recipe_information_api_200_response_ingredients_inner_measures_mt)
end

local function new_retrieve_recipe_information_api_200_response_ingredients_inner_measures(metric, us)
	return cast_retrieve_recipe_information_api_200_response_ingredients_inner_measures({
		["metric"] = metric;
		["us"] = us;
	})
end

return {
	cast = cast_retrieve_recipe_information_api_200_response_ingredients_inner_measures;
	new = new_retrieve_recipe_information_api_200_response_ingredients_inner_measures;
}
