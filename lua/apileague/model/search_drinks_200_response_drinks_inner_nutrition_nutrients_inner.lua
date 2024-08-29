--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.3
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_200_response_drinks_inner_nutrition_nutrients_inner class
local search_drinks_200_response_drinks_inner_nutrition_nutrients_inner = {}
local search_drinks_200_response_drinks_inner_nutrition_nutrients_inner_mt = {
	__name = "search_drinks_200_response_drinks_inner_nutrition_nutrients_inner";
	__index = search_drinks_200_response_drinks_inner_nutrition_nutrients_inner;
}

local function cast_search_drinks_200_response_drinks_inner_nutrition_nutrients_inner(t)
	return setmetatable(t, search_drinks_200_response_drinks_inner_nutrition_nutrients_inner_mt)
end

local function new_search_drinks_200_response_drinks_inner_nutrition_nutrients_inner(name, percent_of_daily_needs, amount, unit)
	return cast_search_drinks_200_response_drinks_inner_nutrition_nutrients_inner({
		["name"] = name;
		["percent_of_daily_needs"] = percent_of_daily_needs;
		["amount"] = amount;
		["unit"] = unit;
	})
end

return {
	cast = cast_search_drinks_200_response_drinks_inner_nutrition_nutrients_inner;
	new = new_search_drinks_200_response_drinks_inner_nutrition_nutrients_inner;
}
