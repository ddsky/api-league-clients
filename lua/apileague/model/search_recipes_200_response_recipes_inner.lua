--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.1
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_recipes_200_response_recipes_inner class
local search_recipes_200_response_recipes_inner = {}
local search_recipes_200_response_recipes_inner_mt = {
	__name = "search_recipes_200_response_recipes_inner";
	__index = search_recipes_200_response_recipes_inner;
}

local function cast_search_recipes_200_response_recipes_inner(t)
	return setmetatable(t, search_recipes_200_response_recipes_inner_mt)
end

local function new_search_recipes_200_response_recipes_inner(images, nutrition, id, title)
	return cast_search_recipes_200_response_recipes_inner({
		["images"] = images;
		["nutrition"] = nutrition;
		["id"] = id;
		["title"] = title;
	})
end

return {
	cast = cast_search_recipes_200_response_recipes_inner;
	new = new_search_recipes_200_response_recipes_inner;
}
