--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.2.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- tag_part_of_speech_200_response class
local tag_part_of_speech_200_response = {}
local tag_part_of_speech_200_response_mt = {
	__name = "tag_part_of_speech_200_response";
	__index = tag_part_of_speech_200_response;
}

local function cast_tag_part_of_speech_200_response(t)
	return setmetatable(t, tag_part_of_speech_200_response_mt)
end

local function new_tag_part_of_speech_200_response(tagged_text)
	return cast_tag_part_of_speech_200_response({
		["tagged_text"] = tagged_text;
	})
end

return {
	cast = cast_tag_part_of_speech_200_response;
	new = new_tag_part_of_speech_200_response;
}
