--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- list_word_synonyms_200_response class
local list_word_synonyms_200_response = {}
local list_word_synonyms_200_response_mt = {
	__name = "list_word_synonyms_200_response";
	__index = list_word_synonyms_200_response;
}

local function cast_list_word_synonyms_200_response(t)
	return setmetatable(t, list_word_synonyms_200_response_mt)
end

local function new_list_word_synonyms_200_response(synonyms)
	return cast_list_word_synonyms_200_response({
		["synonyms"] = synonyms;
	})
end

return {
	cast = cast_list_word_synonyms_200_response;
	new = new_list_word_synonyms_200_response;
}
