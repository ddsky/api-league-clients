--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.3
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_200_response_drinks_inner_nutrition_weight_per_serving class
local search_drinks_200_response_drinks_inner_nutrition_weight_per_serving = {}
local search_drinks_200_response_drinks_inner_nutrition_weight_per_serving_mt = {
	__name = "search_drinks_200_response_drinks_inner_nutrition_weight_per_serving";
	__index = search_drinks_200_response_drinks_inner_nutrition_weight_per_serving;
}

local function cast_search_drinks_200_response_drinks_inner_nutrition_weight_per_serving(t)
	return setmetatable(t, search_drinks_200_response_drinks_inner_nutrition_weight_per_serving_mt)
end

local function new_search_drinks_200_response_drinks_inner_nutrition_weight_per_serving(amount, unit)
	return cast_search_drinks_200_response_drinks_inner_nutrition_weight_per_serving({
		["amount"] = amount;
		["unit"] = unit;
	})
end

return {
	cast = cast_search_drinks_200_response_drinks_inner_nutrition_weight_per_serving;
	new = new_search_drinks_200_response_drinks_inner_nutrition_weight_per_serving;
}
