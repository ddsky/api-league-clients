--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_api_200_response class
local retrieve_recipe_information_api_200_response = {}
local retrieve_recipe_information_api_200_response_mt = {
	__name = "retrieve_recipe_information_api_200_response";
	__index = retrieve_recipe_information_api_200_response;
}

local function cast_retrieve_recipe_information_api_200_response(t)
	return setmetatable(t, retrieve_recipe_information_api_200_response_mt)
end

local function new_retrieve_recipe_information_api_200_response(id, title, servings, images, dietary_properties, price_per_serving, times, nutrition, taste, cuisines, meal_types, occasions, ingredients, instructions, credits, scores)
	return cast_retrieve_recipe_information_api_200_response({
		["id"] = id;
		["title"] = title;
		["servings"] = servings;
		["images"] = images;
		["dietary_properties"] = dietary_properties;
		["price_per_serving"] = price_per_serving;
		["times"] = times;
		["nutrition"] = nutrition;
		["taste"] = taste;
		["cuisines"] = cuisines;
		["meal_types"] = meal_types;
		["occasions"] = occasions;
		["ingredients"] = ingredients;
		["instructions"] = instructions;
		["credits"] = credits;
		["scores"] = scores;
	})
end

return {
	cast = cast_retrieve_recipe_information_api_200_response;
	new = new_retrieve_recipe_information_api_200_response;
}