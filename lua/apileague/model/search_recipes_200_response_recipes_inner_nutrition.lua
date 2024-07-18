--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_recipes_200_response_recipes_inner_nutrition class
local search_recipes_200_response_recipes_inner_nutrition = {}
local search_recipes_200_response_recipes_inner_nutrition_mt = {
	__name = "search_recipes_200_response_recipes_inner_nutrition";
	__index = search_recipes_200_response_recipes_inner_nutrition;
}

local function cast_search_recipes_200_response_recipes_inner_nutrition(t)
	return setmetatable(t, search_recipes_200_response_recipes_inner_nutrition_mt)
end

local function new_search_recipes_200_response_recipes_inner_nutrition(nutrients)
	return cast_search_recipes_200_response_recipes_inner_nutrition({
		["nutrients"] = nutrients;
	})
end

return {
	cast = cast_search_recipes_200_response_recipes_inner_nutrition;
	new = new_search_recipes_200_response_recipes_inner_nutrition;
}
