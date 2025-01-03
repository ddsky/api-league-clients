--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_api_200_response_times class
local retrieve_recipe_information_api_200_response_times = {}
local retrieve_recipe_information_api_200_response_times_mt = {
	__name = "retrieve_recipe_information_api_200_response_times";
	__index = retrieve_recipe_information_api_200_response_times;
}

local function cast_retrieve_recipe_information_api_200_response_times(t)
	return setmetatable(t, retrieve_recipe_information_api_200_response_times_mt)
end

local function new_retrieve_recipe_information_api_200_response_times(total_minutes)
	return cast_retrieve_recipe_information_api_200_response_times({
		["total_minutes"] = total_minutes;
	})
end

return {
	cast = cast_retrieve_recipe_information_api_200_response_times;
	new = new_retrieve_recipe_information_api_200_response_times;
}
