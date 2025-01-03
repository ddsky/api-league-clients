--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- random_trivia_api_200_response class
local random_trivia_api_200_response = {}
local random_trivia_api_200_response_mt = {
	__name = "random_trivia_api_200_response";
	__index = random_trivia_api_200_response;
}

local function cast_random_trivia_api_200_response(t)
	return setmetatable(t, random_trivia_api_200_response_mt)
end

local function new_random_trivia_api_200_response(trivia)
	return cast_random_trivia_api_200_response({
		["trivia"] = trivia;
	})
end

return {
	cast = cast_random_trivia_api_200_response;
	new = new_random_trivia_api_200_response;
}
