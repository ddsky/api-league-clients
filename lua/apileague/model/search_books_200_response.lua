--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.3.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_books_200_response class
local search_books_200_response = {}
local search_books_200_response_mt = {
	__name = "search_books_200_response";
	__index = search_books_200_response;
}

local function cast_search_books_200_response(t)
	return setmetatable(t, search_books_200_response_mt)
end

local function new_search_books_200_response(available, Number_, offset, books)
	return cast_search_books_200_response({
		["available"] = available;
		["number"] = Number_;
		["offset"] = offset;
		["books"] = books;
	})
end

return {
	cast = cast_search_books_200_response;
	new = new_search_books_200_response;
}
