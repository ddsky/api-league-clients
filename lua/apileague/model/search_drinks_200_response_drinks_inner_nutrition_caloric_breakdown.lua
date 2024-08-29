--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.3
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown class
local search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown = {}
local search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown_mt = {
	__name = "search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown";
	__index = search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown;
}

local function cast_search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown(t)
	return setmetatable(t, search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown_mt)
end

local function new_search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown(percent_fat, percent_carbs, percent_protein)
	return cast_search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown({
		["percent_fat"] = percent_fat;
		["percent_carbs"] = percent_carbs;
		["percent_protein"] = percent_protein;
	})
end

return {
	cast = cast_search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown;
	new = new_search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown;
}
