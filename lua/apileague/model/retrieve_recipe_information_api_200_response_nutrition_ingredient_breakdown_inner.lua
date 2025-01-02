--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner class
local retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner = {}
local retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner_mt = {
	__name = "retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner";
	__index = retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner;
}

local function cast_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner(t)
	return setmetatable(t, retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner_mt)
end

local function new_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner(name, amount, unit, id, nutrients)
	return cast_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner({
		["name"] = name;
		["amount"] = amount;
		["unit"] = unit;
		["id"] = id;
		["nutrients"] = nutrients;
	})
end

return {
	cast = cast_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner;
	new = new_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner;
}
