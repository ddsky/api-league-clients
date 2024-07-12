--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- score_text_200_response_style class
local score_text_200_response_style = {}
local score_text_200_response_style_mt = {
	__name = "score_text_200_response_style";
	__index = score_text_200_response_style;
}

local function cast_score_text_200_response_style(t)
	return setmetatable(t, score_text_200_response_style_mt)
end

local function new_score_text_200_response_style(mainscores, subscores)
	return cast_score_text_200_response_style({
		["mainscores"] = mainscores;
		["subscores"] = subscores;
	})
end

return {
	cast = cast_score_text_200_response_style;
	new = new_score_text_200_response_style;
}
