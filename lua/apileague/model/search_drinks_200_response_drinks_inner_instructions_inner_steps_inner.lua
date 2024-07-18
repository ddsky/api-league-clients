--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_drinks_200_response_drinks_inner_instructions_inner_steps_inner class
local search_drinks_200_response_drinks_inner_instructions_inner_steps_inner = {}
local search_drinks_200_response_drinks_inner_instructions_inner_steps_inner_mt = {
	__name = "search_drinks_200_response_drinks_inner_instructions_inner_steps_inner";
	__index = search_drinks_200_response_drinks_inner_instructions_inner_steps_inner;
}

local function cast_search_drinks_200_response_drinks_inner_instructions_inner_steps_inner(t)
	return setmetatable(t, search_drinks_200_response_drinks_inner_instructions_inner_steps_inner_mt)
end

local function new_search_drinks_200_response_drinks_inner_instructions_inner_steps_inner(Number_, ingredients, equipment, step)
	return cast_search_drinks_200_response_drinks_inner_instructions_inner_steps_inner({
		["number"] = Number_;
		["ingredients"] = ingredients;
		["equipment"] = equipment;
		["step"] = step;
	})
end

return {
	cast = cast_search_drinks_200_response_drinks_inner_instructions_inner_steps_inner;
	new = new_search_drinks_200_response_drinks_inner_instructions_inner_steps_inner;
}
