--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.3
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- score_readability_200_response class
local score_readability_200_response = {}
local score_readability_200_response_mt = {
	__name = "score_readability_200_response";
	__index = score_readability_200_response;
}

local function cast_score_readability_200_response(t)
	return setmetatable(t, score_readability_200_response_mt)
end

local function new_score_readability_200_response(readability)
	return cast_score_readability_200_response({
		["readability"] = readability;
	})
end

return {
	cast = cast_score_readability_200_response;
	new = new_score_readability_200_response;
}
