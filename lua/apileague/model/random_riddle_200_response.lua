--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.3
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- random_riddle_200_response class
local random_riddle_200_response = {}
local random_riddle_200_response_mt = {
	__name = "random_riddle_200_response";
	__index = random_riddle_200_response;
}

local function cast_random_riddle_200_response(t)
	return setmetatable(t, random_riddle_200_response_mt)
end

local function new_random_riddle_200_response(riddle, answer, difficulty)
	return cast_random_riddle_200_response({
		["riddle"] = riddle;
		["answer"] = answer;
		["difficulty"] = difficulty;
	})
end

return {
	cast = cast_random_riddle_200_response;
	new = new_random_riddle_200_response;
}
