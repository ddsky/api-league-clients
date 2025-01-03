--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- convert_units_api_200_response class
local convert_units_api_200_response = {}
local convert_units_api_200_response_mt = {
	__name = "convert_units_api_200_response";
	__index = convert_units_api_200_response;
}

local function cast_convert_units_api_200_response(t)
	return setmetatable(t, convert_units_api_200_response_mt)
end

local function new_convert_units_api_200_response(target_amount, target_unit)
	return cast_convert_units_api_200_response({
		["target_amount"] = target_amount;
		["target_unit"] = target_unit;
	})
end

return {
	cast = cast_convert_units_api_200_response;
	new = new_convert_units_api_200_response;
}
