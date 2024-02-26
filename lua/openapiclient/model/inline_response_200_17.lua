--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- inline_response_200_17 class
local inline_response_200_17 = {}
local inline_response_200_17_mt = {
	__name = "inline_response_200_17";
	__index = inline_response_200_17;
}

local function cast_inline_response_200_17(t)
	return setmetatable(t, inline_response_200_17_mt)
end

local function new_inline_response_200_17(language, confidence)
	return cast_inline_response_200_17({
		["language"] = language;
		["confidence"] = confidence;
	})
end

return {
	cast = cast_inline_response_200_17;
	new = new_inline_response_200_17;
}
