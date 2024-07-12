--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_publish_date_200_response class
local extract_publish_date_200_response = {}
local extract_publish_date_200_response_mt = {
	__name = "extract_publish_date_200_response";
	__index = extract_publish_date_200_response;
}

local function cast_extract_publish_date_200_response(t)
	return setmetatable(t, extract_publish_date_200_response_mt)
end

local function new_extract_publish_date_200_response(publish_date)
	return cast_extract_publish_date_200_response({
		["publish_date"] = publish_date;
	})
end

return {
	cast = cast_extract_publish_date_200_response;
	new = new_extract_publish_date_200_response;
}
