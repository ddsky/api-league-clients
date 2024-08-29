--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- score_text_200_response_interestingness_subscores class
local score_text_200_response_interestingness_subscores = {}
local score_text_200_response_interestingness_subscores_mt = {
	__name = "score_text_200_response_interestingness_subscores";
	__index = score_text_200_response_interestingness_subscores;
}

local function cast_score_text_200_response_interestingness_subscores(t)
	return setmetatable(t, score_text_200_response_interestingness_subscores_mt)
end

local function new_score_text_200_response_interestingness_subscores(title_rating_score, quote_score, length_score, link_score, google_hits_score)
	return cast_score_text_200_response_interestingness_subscores({
		["title_rating_score"] = title_rating_score;
		["quote_score"] = quote_score;
		["length_score"] = length_score;
		["link_score"] = link_score;
		["google_hits_score"] = google_hits_score;
	})
end

return {
	cast = cast_score_text_200_response_interestingness_subscores;
	new = new_score_text_200_response_interestingness_subscores;
}
