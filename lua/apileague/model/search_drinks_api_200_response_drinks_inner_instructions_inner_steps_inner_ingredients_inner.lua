--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner class
local search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner = {}
local search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner_mt = {
	__name = "search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner";
	__index = search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner;
}

local function cast_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner(t)
	return setmetatable(t, search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner_mt)
end

local function new_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner(name, image, id)
	return cast_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner({
		["name"] = name;
		["image"] = image;
		["id"] = id;
	})
end

return {
	cast = cast_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner;
	new = new_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner;
}