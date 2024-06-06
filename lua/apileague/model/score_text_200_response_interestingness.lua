--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.2.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- score_text_200_response_interestingness class
local score_text_200_response_interestingness = {}
local score_text_200_response_interestingness_mt = {
	__name = "score_text_200_response_interestingness";
	__index = score_text_200_response_interestingness;
}

local function cast_score_text_200_response_interestingness(t)
	return setmetatable(t, score_text_200_response_interestingness_mt)
end

local function new_score_text_200_response_interestingness(mainscores, subscores)
	return cast_score_text_200_response_interestingness({
		["mainscores"] = mainscores;
		["subscores"] = subscores;
	})
end

return {
	cast = cast_score_text_200_response_interestingness;
	new = new_score_text_200_response_interestingness;
}
