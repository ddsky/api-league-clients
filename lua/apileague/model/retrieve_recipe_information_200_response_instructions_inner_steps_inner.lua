--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_instructions_inner_steps_inner class
local retrieve_recipe_information_200_response_instructions_inner_steps_inner = {}
local retrieve_recipe_information_200_response_instructions_inner_steps_inner_mt = {
	__name = "retrieve_recipe_information_200_response_instructions_inner_steps_inner";
	__index = retrieve_recipe_information_200_response_instructions_inner_steps_inner;
}

local function cast_retrieve_recipe_information_200_response_instructions_inner_steps_inner(t)
	return setmetatable(t, retrieve_recipe_information_200_response_instructions_inner_steps_inner_mt)
end

local function new_retrieve_recipe_information_200_response_instructions_inner_steps_inner(Number_, ingredients, equipment, step)
	return cast_retrieve_recipe_information_200_response_instructions_inner_steps_inner({
		["number"] = Number_;
		["ingredients"] = ingredients;
		["equipment"] = equipment;
		["step"] = step;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_instructions_inner_steps_inner;
	new = new_retrieve_recipe_information_200_response_instructions_inner_steps_inner;
}
