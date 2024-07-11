--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.1
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- stem_text_200_response class
local stem_text_200_response = {}
local stem_text_200_response_mt = {
	__name = "stem_text_200_response";
	__index = stem_text_200_response;
}

local function cast_stem_text_200_response(t)
	return setmetatable(t, stem_text_200_response_mt)
end

local function new_stem_text_200_response(original, stemmed)
	return cast_stem_text_200_response({
		["original"] = original;
		["stemmed"] = stemmed;
	})
end

return {
	cast = cast_stem_text_200_response;
	new = new_stem_text_200_response;
}
