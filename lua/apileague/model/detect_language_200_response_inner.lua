--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- detect_language_200_response_inner class
local detect_language_200_response_inner = {}
local detect_language_200_response_inner_mt = {
	__name = "detect_language_200_response_inner";
	__index = detect_language_200_response_inner;
}

local function cast_detect_language_200_response_inner(t)
	return setmetatable(t, detect_language_200_response_inner_mt)
end

local function new_detect_language_200_response_inner(language, confidence)
	return cast_detect_language_200_response_inner({
		["language"] = language;
		["confidence"] = confidence;
	})
end

return {
	cast = cast_detect_language_200_response_inner;
	new = new_detect_language_200_response_inner;
}
