--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.3.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- store_key_value_get_200_response class
local store_key_value_get_200_response = {}
local store_key_value_get_200_response_mt = {
	__name = "store_key_value_get_200_response";
	__index = store_key_value_get_200_response;
}

local function cast_store_key_value_get_200_response(t)
	return setmetatable(t, store_key_value_get_200_response_mt)
end

local function new_store_key_value_get_200_response(status)
	return cast_store_key_value_get_200_response({
		["status"] = status;
	})
end

return {
	cast = cast_store_key_value_get_200_response;
	new = new_store_key_value_get_200_response;
}
