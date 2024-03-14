--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_recipes_200_response_recipes_inner_nutrition_nutrients_inner class
local search_recipes_200_response_recipes_inner_nutrition_nutrients_inner = {}
local search_recipes_200_response_recipes_inner_nutrition_nutrients_inner_mt = {
	__name = "search_recipes_200_response_recipes_inner_nutrition_nutrients_inner";
	__index = search_recipes_200_response_recipes_inner_nutrition_nutrients_inner;
}

local function cast_search_recipes_200_response_recipes_inner_nutrition_nutrients_inner(t)
	return setmetatable(t, search_recipes_200_response_recipes_inner_nutrition_nutrients_inner_mt)
end

local function new_search_recipes_200_response_recipes_inner_nutrition_nutrients_inner(name, amount, unit)
	return cast_search_recipes_200_response_recipes_inner_nutrition_nutrients_inner({
		["name"] = name;
		["amount"] = amount;
		["unit"] = unit;
	})
end

return {
	cast = cast_search_recipes_200_response_recipes_inner_nutrition_nutrients_inner;
	new = new_search_recipes_200_response_recipes_inner_nutrition_nutrients_inner;
}