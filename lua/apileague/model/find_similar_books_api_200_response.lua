--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- find_similar_books_api_200_response class
local find_similar_books_api_200_response = {}
local find_similar_books_api_200_response_mt = {
	__name = "find_similar_books_api_200_response";
	__index = find_similar_books_api_200_response;
}

local function cast_find_similar_books_api_200_response(t)
	return setmetatable(t, find_similar_books_api_200_response_mt)
end

local function new_find_similar_books_api_200_response(similar_books)
	return cast_find_similar_books_api_200_response({
		["similar_books"] = similar_books;
	})
end

return {
	cast = cast_find_similar_books_api_200_response;
	new = new_find_similar_books_api_200_response;
}
