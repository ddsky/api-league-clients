--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_nutrition_weight_per_serving class
local retrieve_recipe_information_200_response_nutrition_weight_per_serving = {}
local retrieve_recipe_information_200_response_nutrition_weight_per_serving_mt = {
	__name = "retrieve_recipe_information_200_response_nutrition_weight_per_serving";
	__index = retrieve_recipe_information_200_response_nutrition_weight_per_serving;
}

local function cast_retrieve_recipe_information_200_response_nutrition_weight_per_serving(t)
	return setmetatable(t, retrieve_recipe_information_200_response_nutrition_weight_per_serving_mt)
end

local function new_retrieve_recipe_information_200_response_nutrition_weight_per_serving(amount, unit)
	return cast_retrieve_recipe_information_200_response_nutrition_weight_per_serving({
		["amount"] = amount;
		["unit"] = unit;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_nutrition_weight_per_serving;
	new = new_retrieve_recipe_information_200_response_nutrition_weight_per_serving;
}
