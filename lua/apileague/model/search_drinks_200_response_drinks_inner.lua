--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_200_response_drinks_inner class
local search_drinks_200_response_drinks_inner = {}
local search_drinks_200_response_drinks_inner_mt = {
	__name = "search_drinks_200_response_drinks_inner";
	__index = search_drinks_200_response_drinks_inner;
}

local function cast_search_drinks_200_response_drinks_inner(t)
	return setmetatable(t, search_drinks_200_response_drinks_inner_mt)
end

local function new_search_drinks_200_response_drinks_inner(flavors, instructions, images, nutrition, glass_type, credits, price_per_serving, description, ingredients, id, title, cuisines)
	return cast_search_drinks_200_response_drinks_inner({
		["flavors"] = flavors;
		["instructions"] = instructions;
		["images"] = images;
		["nutrition"] = nutrition;
		["glass_type"] = glass_type;
		["credits"] = credits;
		["price_per_serving"] = price_per_serving;
		["description"] = description;
		["ingredients"] = ingredients;
		["id"] = id;
		["title"] = title;
		["cuisines"] = cuisines;
	})
end

return {
	cast = cast_search_drinks_200_response_drinks_inner;
	new = new_search_drinks_200_response_drinks_inner;
}
