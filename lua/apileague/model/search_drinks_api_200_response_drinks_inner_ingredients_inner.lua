--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_api_200_response_drinks_inner_ingredients_inner class
local search_drinks_api_200_response_drinks_inner_ingredients_inner = {}
local search_drinks_api_200_response_drinks_inner_ingredients_inner_mt = {
	__name = "search_drinks_api_200_response_drinks_inner_ingredients_inner";
	__index = search_drinks_api_200_response_drinks_inner_ingredients_inner;
}

local function cast_search_drinks_api_200_response_drinks_inner_ingredients_inner(t)
	return setmetatable(t, search_drinks_api_200_response_drinks_inner_ingredients_inner_mt)
end

local function new_search_drinks_api_200_response_drinks_inner_ingredients_inner(image, name_clean, amount, unit, measures, original, meta, original_name, name, id, aisle, consistency)
	return cast_search_drinks_api_200_response_drinks_inner_ingredients_inner({
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
	cast = cast_search_drinks_api_200_response_drinks_inner_ingredients_inner;
	new = new_search_drinks_api_200_response_drinks_inner_ingredients_inner;
}
