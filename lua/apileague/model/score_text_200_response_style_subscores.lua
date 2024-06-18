--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.3.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- score_text_200_response_style_subscores class
local score_text_200_response_style_subscores = {}
local score_text_200_response_style_subscores_mt = {
	__name = "score_text_200_response_style_subscores";
	__index = score_text_200_response_style_subscores;
}

local function cast_score_text_200_response_style_subscores(t)
	return setmetatable(t, score_text_200_response_style_subscores_mt)
end

local function new_score_text_200_response_style_subscores(abbreviation_score, style_score, spelling_score)
	return cast_score_text_200_response_style_subscores({
		["abbreviation_score"] = abbreviation_score;
		["style_score"] = style_score;
		["spelling_score"] = spelling_score;
	})
end

return {
	cast = cast_score_text_200_response_style_subscores;
	new = new_score_text_200_response_style_subscores;
}
