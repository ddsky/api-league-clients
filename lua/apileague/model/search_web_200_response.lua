--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_web_200_response class
local search_web_200_response = {}
local search_web_200_response_mt = {
	__name = "search_web_200_response";
	__index = search_web_200_response;
}

local function cast_search_web_200_response(t)
	return setmetatable(t, search_web_200_response_mt)
end

local function new_search_web_200_response(results)
	return cast_search_web_200_response({
		["results"] = results;
	})
end

return {
	cast = cast_search_web_200_response;
	new = new_search_web_200_response;
}