--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_recipes_200_response class
local search_recipes_200_response = {}
local search_recipes_200_response_mt = {
	__name = "search_recipes_200_response";
	__index = search_recipes_200_response;
}

local function cast_search_recipes_200_response(t)
	return setmetatable(t, search_recipes_200_response_mt)
end

local function new_search_recipes_200_response(offset, Number_, recipes, total_results)
	return cast_search_recipes_200_response({
		["offset"] = offset;
		["number"] = Number_;
		["recipes"] = recipes;
		["total_results"] = total_results;
	})
end

return {
	cast = cast_search_recipes_200_response;
	new = new_search_recipes_200_response;
}
