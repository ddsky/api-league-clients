--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.2.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_authors_200_response class
local extract_authors_200_response = {}
local extract_authors_200_response_mt = {
	__name = "extract_authors_200_response";
	__index = extract_authors_200_response;
}

local function cast_extract_authors_200_response(t)
	return setmetatable(t, extract_authors_200_response_mt)
end

local function new_extract_authors_200_response(authors)
	return cast_extract_authors_200_response({
		["authors"] = authors;
	})
end

return {
	cast = cast_extract_authors_200_response;
	new = new_extract_authors_200_response;
}
