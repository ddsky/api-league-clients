--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.3.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- detect_gender_by_name_200_response class
local detect_gender_by_name_200_response = {}
local detect_gender_by_name_200_response_mt = {
	__name = "detect_gender_by_name_200_response";
	__index = detect_gender_by_name_200_response;
}

local function cast_detect_gender_by_name_200_response(t)
	return setmetatable(t, detect_gender_by_name_200_response_mt)
end

local function new_detect_gender_by_name_200_response(name, probability_male)
	return cast_detect_gender_by_name_200_response({
		["name"] = name;
		["probability_male"] = probability_male;
	})
end

return {
	cast = cast_detect_gender_by_name_200_response;
	new = new_detect_gender_by_name_200_response;
}