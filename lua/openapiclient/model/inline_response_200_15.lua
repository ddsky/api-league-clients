--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- inline_response_200_15 class
local inline_response_200_15 = {}
local inline_response_200_15_mt = {
	__name = "inline_response_200_15";
	__index = inline_response_200_15;
}

local function cast_inline_response_200_15(t)
	return setmetatable(t, inline_response_200_15_mt)
end

local function new_inline_response_200_15(results)
	return cast_inline_response_200_15({
		["results"] = results;
	})
end

return {
	cast = cast_inline_response_200_15;
	new = new_inline_response_200_15;
}
