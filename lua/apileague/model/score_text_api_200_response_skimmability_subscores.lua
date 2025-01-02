--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- score_text_api_200_response_skimmability_subscores class
local score_text_api_200_response_skimmability_subscores = {}
local score_text_api_200_response_skimmability_subscores_mt = {
	__name = "score_text_api_200_response_skimmability_subscores";
	__index = score_text_api_200_response_skimmability_subscores;
}

local function cast_score_text_api_200_response_skimmability_subscores(t)
	return setmetatable(t, score_text_api_200_response_skimmability_subscores_mt)
end

local function new_score_text_api_200_response_skimmability_subscores(bullet_point_ratio_score, image_score, highlighted_word_ratio_score, video_score, paragraph_score, paragraph_headline_ratio_score)
	return cast_score_text_api_200_response_skimmability_subscores({
		["bullet_point_ratio_score"] = bullet_point_ratio_score;
		["image_score"] = image_score;
		["highlighted_word_ratio_score"] = highlighted_word_ratio_score;
		["video_score"] = video_score;
		["paragraph_score"] = paragraph_score;
		["paragraph_headline_ratio_score"] = paragraph_headline_ratio_score;
	})
end

return {
	cast = cast_score_text_api_200_response_skimmability_subscores;
	new = new_score_text_api_200_response_skimmability_subscores;
}