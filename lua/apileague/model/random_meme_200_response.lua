--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- random_meme_200_response class
local random_meme_200_response = {}
local random_meme_200_response_mt = {
	__name = "random_meme_200_response";
	__index = random_meme_200_response;
}

local function cast_random_meme_200_response(t)
	return setmetatable(t, random_meme_200_response_mt)
end

local function new_random_meme_200_response(description, url, type, width, height, ratio)
	return cast_random_meme_200_response({
		["description"] = description;
		["url"] = url;
		["type"] = type;
		["width"] = width;
		["height"] = height;
		["ratio"] = ratio;
	})
end

return {
	cast = cast_random_meme_200_response;
	new = new_random_meme_200_response;
}
