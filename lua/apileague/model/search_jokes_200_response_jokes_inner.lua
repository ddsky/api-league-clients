--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_jokes_200_response_jokes_inner class
local search_jokes_200_response_jokes_inner = {}
local search_jokes_200_response_jokes_inner_mt = {
	__name = "search_jokes_200_response_jokes_inner";
	__index = search_jokes_200_response_jokes_inner;
}

local function cast_search_jokes_200_response_jokes_inner(t)
	return setmetatable(t, search_jokes_200_response_jokes_inner_mt)
end

local function new_search_jokes_200_response_jokes_inner(joke)
	return cast_search_jokes_200_response_jokes_inner({
		["joke"] = joke;
	})
end

return {
	cast = cast_search_jokes_200_response_jokes_inner;
	new = new_search_jokes_200_response_jokes_inner;
}
