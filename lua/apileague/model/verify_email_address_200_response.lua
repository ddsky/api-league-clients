--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- verify_email_address_200_response class
local verify_email_address_200_response = {}
local verify_email_address_200_response_mt = {
	__name = "verify_email_address_200_response";
	__index = verify_email_address_200_response;
}

local function cast_verify_email_address_200_response(t)
	return setmetatable(t, verify_email_address_200_response_mt)
end

local function new_verify_email_address_200_response(email, domain, first_name, middle_name, last_name, full_name, username, image, result, disposable, accept_all, free_provider)
	return cast_verify_email_address_200_response({
		["email"] = email;
		["domain"] = domain;
		["first_name"] = first_name;
		["middle_name"] = middle_name;
		["last_name"] = last_name;
		["full_name"] = full_name;
		["username"] = username;
		["image"] = image;
		["result"] = result;
		["disposable"] = disposable;
		["accept_all"] = accept_all;
		["free_provider"] = free_provider;
	})
end

return {
	cast = cast_verify_email_address_200_response;
	new = new_verify_email_address_200_response;
}
