--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_dates_200_response_dates_inner class
local extract_dates_200_response_dates_inner = {}
local extract_dates_200_response_dates_inner_mt = {
	__name = "extract_dates_200_response_dates_inner";
	__index = extract_dates_200_response_dates_inner;
}

local function cast_extract_dates_200_response_dates_inner(t)
	return setmetatable(t, extract_dates_200_response_dates_inner_mt)
end

local function new_extract_dates_200_response_dates_inner(start_position, date, normalized_date, tag, end_position)
	return cast_extract_dates_200_response_dates_inner({
		["start_position"] = start_position;
		["date"] = date;
		["normalized_date"] = normalized_date;
		["tag"] = tag;
		["end_position"] = end_position;
	})
end

return {
	cast = cast_extract_dates_200_response_dates_inner;
	new = new_extract_dates_200_response_dates_inner;
}
