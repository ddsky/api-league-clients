--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- inline_response_200_books class
local inline_response_200_books = {}
local inline_response_200_books_mt = {
	__name = "inline_response_200_books";
	__index = inline_response_200_books;
}

local function cast_inline_response_200_books(t)
	return setmetatable(t, inline_response_200_books_mt)
end

local function new_inline_response_200_books(title, image, id)
	return cast_inline_response_200_books({
		["title"] = title;
		["image"] = image;
		["id"] = id;
	})
end

return {
	cast = cast_inline_response_200_books;
	new = new_inline_response_200_books;
}
