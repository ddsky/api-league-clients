--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_authors_200_response_authors_inner class
local extract_authors_200_response_authors_inner = {}
local extract_authors_200_response_authors_inner_mt = {
	__name = "extract_authors_200_response_authors_inner";
	__index = extract_authors_200_response_authors_inner;
}

local function cast_extract_authors_200_response_authors_inner(t)
	return setmetatable(t, extract_authors_200_response_authors_inner_mt)
end

local function new_extract_authors_200_response_authors_inner(link, name)
	return cast_extract_authors_200_response_authors_inner({
		["link"] = link;
		["name"] = name;
	})
end

return {
	cast = cast_extract_authors_200_response_authors_inner;
	new = new_extract_authors_200_response_authors_inner;
}
