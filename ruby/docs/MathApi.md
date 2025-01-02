# OpenapiClient::MathApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**convert_units_api**](MathApi.md#convert_units_api) | **GET** /convert-units | Convert Units API |


## convert_units_api

> <ConvertUnitsAPI200Response> convert_units_api(source_amount, source_unit, target_unit, opts)

Convert Units API

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MathApi.new
source_amount = 100 # Float | The source amount.
source_unit = 'kg' # String | The source unit.
target_unit = 'lb' # String | The unit to which should be converted.
opts = {
  food_name: 'flour' # String | An optional food name. For converting foods the food is relevant as they have different densities.
}

begin
  # Convert Units API
  result = api_instance.convert_units_api(source_amount, source_unit, target_unit, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MathApi->convert_units_api: #{e}"
end
```

#### Using the convert_units_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConvertUnitsAPI200Response>, Integer, Hash)> convert_units_api_with_http_info(source_amount, source_unit, target_unit, opts)

```ruby
begin
  # Convert Units API
  data, status_code, headers = api_instance.convert_units_api_with_http_info(source_amount, source_unit, target_unit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConvertUnitsAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MathApi->convert_units_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_amount** | **Float** | The source amount. |  |
| **source_unit** | **String** | The source unit. |  |
| **target_unit** | **String** | The unit to which should be converted. |  |
| **food_name** | **String** | An optional food name. For converting foods the food is relevant as they have different densities. | [optional] |

### Return type

[**ConvertUnitsAPI200Response**](ConvertUnitsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

