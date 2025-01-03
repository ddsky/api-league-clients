--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_api_200_response_instructions_inner class
local retrieve_recipe_information_api_200_response_instructions_inner = {}
local retrieve_recipe_information_api_200_response_instructions_inner_mt = {
	__name = "retrieve_recipe_information_api_200_response_instructions_inner";
	__index = retrieve_recipe_information_api_200_response_instructions_inner;
}

local function cast_retrieve_recipe_information_api_200_response_instructions_inner(t)
	return setmetatable(t, retrieve_recipe_information_api_200_response_instructions_inner_mt)
end

local function new_retrieve_recipe_information_api_200_response_instructions_inner(name, steps)
	return cast_retrieve_recipe_information_api_200_response_instructions_inner({
		["name"] = name;
		["steps"] = steps;
	})
end

return {
	cast = cast_retrieve_recipe_information_api_200_response_instructions_inner;
	new = new_retrieve_recipe_information_api_200_response_instructions_inner;
}
