--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.3
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_dietary_properties class
local retrieve_recipe_information_200_response_dietary_properties = {}
local retrieve_recipe_information_200_response_dietary_properties_mt = {
	__name = "retrieve_recipe_information_200_response_dietary_properties";
	__index = retrieve_recipe_information_200_response_dietary_properties;
}

local function cast_retrieve_recipe_information_200_response_dietary_properties(t)
	return setmetatable(t, retrieve_recipe_information_200_response_dietary_properties_mt)
end

local function new_retrieve_recipe_information_200_response_dietary_properties(low_fodmap, vegetarian, vegan, gluten_free, dairy_free, gaps, diets)
	return cast_retrieve_recipe_information_200_response_dietary_properties({
		["low_fodmap"] = low_fodmap;
		["vegetarian"] = vegetarian;
		["vegan"] = vegan;
		["gluten_free"] = gluten_free;
		["dairy_free"] = dairy_free;
		["gaps"] = gaps;
		["diets"] = diets;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_dietary_properties;
	new = new_retrieve_recipe_information_200_response_dietary_properties;
}
