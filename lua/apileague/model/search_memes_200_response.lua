--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.1
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_memes_200_response class
local search_memes_200_response = {}
local search_memes_200_response_mt = {
	__name = "search_memes_200_response";
	__index = search_memes_200_response;
}

local function cast_search_memes_200_response(t)
	return setmetatable(t, search_memes_200_response_mt)
end

local function new_search_memes_200_response(memes, available)
	return cast_search_memes_200_response({
		["memes"] = memes;
		["available"] = available;
	})
end

return {
	cast = cast_search_memes_200_response;
	new = new_search_memes_200_response;
}
