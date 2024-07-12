--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_200_response_credits class
local retrieve_recipe_information_200_response_credits = {}
local retrieve_recipe_information_200_response_credits_mt = {
	__name = "retrieve_recipe_information_200_response_credits";
	__index = retrieve_recipe_information_200_response_credits;
}

local function cast_retrieve_recipe_information_200_response_credits(t)
	return setmetatable(t, retrieve_recipe_information_200_response_credits_mt)
end

local function new_retrieve_recipe_information_200_response_credits(license, text, source_name, source_url)
	return cast_retrieve_recipe_information_200_response_credits({
		["license"] = license;
		["text"] = text;
		["source_name"] = source_name;
		["source_url"] = source_url;
	})
end

return {
	cast = cast_retrieve_recipe_information_200_response_credits;
	new = new_retrieve_recipe_information_200_response_credits;
}
