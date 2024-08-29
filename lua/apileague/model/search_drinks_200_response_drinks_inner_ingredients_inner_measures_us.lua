--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.3
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_200_response_drinks_inner_ingredients_inner_measures_us class
local search_drinks_200_response_drinks_inner_ingredients_inner_measures_us = {}
local search_drinks_200_response_drinks_inner_ingredients_inner_measures_us_mt = {
	__name = "search_drinks_200_response_drinks_inner_ingredients_inner_measures_us";
	__index = search_drinks_200_response_drinks_inner_ingredients_inner_measures_us;
}

local function cast_search_drinks_200_response_drinks_inner_ingredients_inner_measures_us(t)
	return setmetatable(t, search_drinks_200_response_drinks_inner_ingredients_inner_measures_us_mt)
end

local function new_search_drinks_200_response_drinks_inner_ingredients_inner_measures_us(unit_short, amount, unit_long)
	return cast_search_drinks_200_response_drinks_inner_ingredients_inner_measures_us({
		["unit_short"] = unit_short;
		["amount"] = amount;
		["unit_long"] = unit_long;
	})
end

return {
	cast = cast_search_drinks_200_response_drinks_inner_ingredients_inner_measures_us;
	new = new_search_drinks_200_response_drinks_inner_ingredients_inner_measures_us;
}
