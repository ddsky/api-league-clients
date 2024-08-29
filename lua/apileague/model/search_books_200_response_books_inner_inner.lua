--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_books_200_response_books_inner_inner class
local search_books_200_response_books_inner_inner = {}
local search_books_200_response_books_inner_inner_mt = {
	__name = "search_books_200_response_books_inner_inner";
	__index = search_books_200_response_books_inner_inner;
}

local function cast_search_books_200_response_books_inner_inner(t)
	return setmetatable(t, search_books_200_response_books_inner_inner_mt)
end

local function new_search_books_200_response_books_inner_inner(title, image, id)
	return cast_search_books_200_response_books_inner_inner({
		["title"] = title;
		["image"] = image;
		["id"] = id;
	})
end

return {
	cast = cast_search_books_200_response_books_inner_inner;
	new = new_search_books_200_response_books_inner_inner;
}
