--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_entities_200_response class
local extract_entities_200_response = {}
local extract_entities_200_response_mt = {
	__name = "extract_entities_200_response";
	__index = extract_entities_200_response;
}

local function cast_extract_entities_200_response(t)
	return setmetatable(t, extract_entities_200_response_mt)
end

local function new_extract_entities_200_response(entities)
	return cast_extract_entities_200_response({
		["entities"] = entities;
	})
end

return {
	cast = cast_extract_entities_200_response;
	new = new_extract_entities_200_response;
}
