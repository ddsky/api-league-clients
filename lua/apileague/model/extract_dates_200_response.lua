--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_dates_200_response class
local extract_dates_200_response = {}
local extract_dates_200_response_mt = {
	__name = "extract_dates_200_response";
	__index = extract_dates_200_response;
}

local function cast_extract_dates_200_response(t)
	return setmetatable(t, extract_dates_200_response_mt)
end

local function new_extract_dates_200_response(dates)
	return cast_extract_dates_200_response({
		["dates"] = dates;
	})
end

return {
	cast = cast_extract_dates_200_response;
	new = new_extract_dates_200_response;
}
