--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- inline_response_200_21_dates class
local inline_response_200_21_dates = {}
local inline_response_200_21_dates_mt = {
	__name = "inline_response_200_21_dates";
	__index = inline_response_200_21_dates;
}

local function cast_inline_response_200_21_dates(t)
	return setmetatable(t, inline_response_200_21_dates_mt)
end

local function new_inline_response_200_21_dates(start_position, date, normalized_date, tag, end_position)
	return cast_inline_response_200_21_dates({
		["start_position"] = start_position;
		["date"] = date;
		["normalized_date"] = normalized_date;
		["tag"] = tag;
		["end_position"] = end_position;
	})
end

return {
	cast = cast_inline_response_200_21_dates;
	new = new_inline_response_200_21_dates;
}
