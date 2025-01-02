--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- vector_search_api_200_response class
local vector_search_api_200_response = {}
local vector_search_api_200_response_mt = {
	__name = "vector_search_api_200_response";
	__index = vector_search_api_200_response;
}

local function cast_vector_search_api_200_response(t)
	return setmetatable(t, vector_search_api_200_response_mt)
end

local function new_vector_search_api_200_response(vectors)
	return cast_vector_search_api_200_response({
		["vectors"] = vectors;
	})
end

return {
	cast = cast_vector_search_api_200_response;
	new = new_vector_search_api_200_response;
}