--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.1
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_nutrition_caloric_breakdown class
local retrieve_recipe_information_200_response_nutrition_caloric_breakdown = {}
local retrieve_recipe_information_200_response_nutrition_caloric_breakdown_mt = {
	__name = "retrieve_recipe_information_200_response_nutrition_caloric_breakdown";
	__index = retrieve_recipe_information_200_response_nutrition_caloric_breakdown;
}

local function cast_retrieve_recipe_information_200_response_nutrition_caloric_breakdown(t)
	return setmetatable(t, retrieve_recipe_information_200_response_nutrition_caloric_breakdown_mt)
end

local function new_retrieve_recipe_information_200_response_nutrition_caloric_breakdown(percent_fat, percent_carbs, percent_protein)
	return cast_retrieve_recipe_information_200_response_nutrition_caloric_breakdown({
		["percent_fat"] = percent_fat;
		["percent_carbs"] = percent_carbs;
		["percent_protein"] = percent_protein;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_nutrition_caloric_breakdown;
	new = new_retrieve_recipe_information_200_response_nutrition_caloric_breakdown;
}
