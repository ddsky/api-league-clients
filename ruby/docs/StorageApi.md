# OpenapiClient::StorageApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_key_value_from_store**](StorageApi.md#read_key_value_from_store) | **GET** /read-key-value | Read Key Value from Store |
| [**store_key_value_get**](StorageApi.md#store_key_value_get) | **GET** /store-key-value | Store Key Value (GET) |


## read_key_value_from_store

> <InlineResponse20031> read_key_value_from_store(key)

Read Key Value from Store

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

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

api_instance = OpenapiClient::StorageApi.new
key = 'visitors24h' # String | The key for which the value is stored (max length 255 characters).

begin
  # Read Key Value from Store
  result = api_instance.read_key_value_from_store(key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->read_key_value_from_store: #{e}"
end
```

#### Using the read_key_value_from_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse20031>, Integer, Hash)> read_key_value_from_store_with_http_info(key)

```ruby
begin
  # Read Key Value from Store
  data, status_code, headers = api_instance.read_key_value_from_store_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse20031>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->read_key_value_from_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key for which the value is stored (max length 255 characters). |  |

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## store_key_value_get

> <InlineResponse20032> store_key_value_get(key, value)

Store Key Value (GET)

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

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

api_instance = OpenapiClient::StorageApi.new
key = 'visitors24h' # String | The key for which the value is stored (max length 255 characters).
value = '23578 visitors' # String | The value that is supposed to be stored (max length 10,000 characters).

begin
  # Store Key Value (GET)
  result = api_instance.store_key_value_get(key, value)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->store_key_value_get: #{e}"
end
```

#### Using the store_key_value_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse20032>, Integer, Hash)> store_key_value_get_with_http_info(key, value)

```ruby
begin
  # Store Key Value (GET)
  data, status_code, headers = api_instance.store_key_value_get_with_http_info(key, value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse20032>
rescue OpenapiClient::ApiError => e
  puts "Error when calling StorageApi->store_key_value_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key for which the value is stored (max length 255 characters). |  |
| **value** | **String** | The value that is supposed to be stored (max length 10,000 characters). |  |

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

