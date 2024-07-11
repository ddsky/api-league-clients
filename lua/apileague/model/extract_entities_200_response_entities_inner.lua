--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.1
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_entities_200_response_entities_inner class
local extract_entities_200_response_entities_inner = {}
local extract_entities_200_response_entities_inner_mt = {
	__name = "extract_entities_200_response_entities_inner";
	__index = extract_entities_200_response_entities_inner;
}

local function cast_extract_entities_200_response_entities_inner(t)
	return setmetatable(t, extract_entities_200_response_entities_inner_mt)
end

local function new_extract_entities_200_response_entities_inner(start_position, image, type, value, end_position)
	return cast_extract_entities_200_response_entities_inner({
		["start_position"] = start_position;
		["image"] = image;
		["type"] = type;
		["value"] = value;
		["end_position"] = end_position;
	})
end

return {
	cast = cast_extract_entities_200_response_entities_inner;
	new = new_extract_entities_200_response_entities_inner;
}
