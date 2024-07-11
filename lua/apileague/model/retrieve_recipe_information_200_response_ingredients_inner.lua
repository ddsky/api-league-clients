--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.1
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_ingredients_inner class
local retrieve_recipe_information_200_response_ingredients_inner = {}
local retrieve_recipe_information_200_response_ingredients_inner_mt = {
	__name = "retrieve_recipe_information_200_response_ingredients_inner";
	__index = retrieve_recipe_information_200_response_ingredients_inner;
}

local function cast_retrieve_recipe_information_200_response_ingredients_inner(t)
	return setmetatable(t, retrieve_recipe_information_200_response_ingredients_inner_mt)
end

local function new_retrieve_recipe_information_200_response_ingredients_inner(image, name_clean, amount, unit, measures, original, meta, original_name, name, id, aisle, consistency)
	return cast_retrieve_recipe_information_200_response_ingredients_inner({
		["image"] = image;
		["name_clean"] = name_clean;
		["amount"] = amount;
		["unit"] = unit;
		["measures"] = measures;
		["original"] = original;
		["meta"] = meta;
		["original_name"] = original_name;
		["name"] = name;
		["id"] = id;
		["aisle"] = aisle;
		["consistency"] = consistency;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_ingredients_inner;
	new = new_retrieve_recipe_information_200_response_ingredients_inner;
}
