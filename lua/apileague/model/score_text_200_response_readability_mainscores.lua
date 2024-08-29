--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- score_text_200_response_readability_mainscores class
local score_text_200_response_readability_mainscores = {}
local score_text_200_response_readability_mainscores_mt = {
	__name = "score_text_200_response_readability_mainscores";
	__index = score_text_200_response_readability_mainscores;
}

local function cast_score_text_200_response_readability_mainscores(t)
	return setmetatable(t, score_text_200_response_readability_mainscores_mt)
end

local function new_score_text_200_response_readability_mainscores(total_possible, total)
	return cast_score_text_200_response_readability_mainscores({
		["total_possible"] = total_possible;
		["total"] = total;
	})
end

return {
	cast = cast_score_text_200_response_readability_mainscores;
	new = new_score_text_200_response_readability_mainscores;
}
