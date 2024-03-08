--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_memes_200_response_memes_inner class
local search_memes_200_response_memes_inner = {}
local search_memes_200_response_memes_inner_mt = {
	__name = "search_memes_200_response_memes_inner";
	__index = search_memes_200_response_memes_inner;
}

local function cast_search_memes_200_response_memes_inner(t)
	return setmetatable(t, search_memes_200_response_memes_inner_mt)
end

local function new_search_memes_200_response_memes_inner(type, description, url)
	return cast_search_memes_200_response_memes_inner({
		["type"] = type;
		["description"] = description;
		["url"] = url;
	})
end

return {
	cast = cast_search_memes_200_response_memes_inner;
	new = new_search_memes_200_response_memes_inner;
}
