# WWW::OpenAPIClient::StorageApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::StorageApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**read_key_value_from_store_api**](StorageApi.md#read_key_value_from_store_api) | **GET** /read-key-value | Read Key Value from Store API
[**store_key_value_getapi**](StorageApi.md#store_key_value_getapi) | **GET** /store-key-value | Store Key Value (GET) API


# **read_key_value_from_store_api**
> ReadKeyValueFromStoreAPI200Response read_key_value_from_store_api(key => $key)

Read Key Value from Store API

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StorageApi;
my $api_instance = WWW::OpenAPIClient::StorageApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $key = visitors24h; # string | The key for which the value is stored (max length 255 characters).

eval {
    my $result = $api_instance->read_key_value_from_store_api(key => $key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StorageApi->read_key_value_from_store_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string**| The key for which the value is stored (max length 255 characters). | 

### Return type

[**ReadKeyValueFromStoreAPI200Response**](ReadKeyValueFromStoreAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **store_key_value_getapi**
> StoreKeyValueGETAPI200Response store_key_value_getapi(key => $key, value => $value)

Store Key Value (GET) API

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StorageApi;
my $api_instance = WWW::OpenAPIClient::StorageApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $key = visitors24h; # string | The key for which the value is stored (max length 255 characters).
my $value = 23578 visitors; # string | The value that is supposed to be stored (max length 10,000 characters).

eval {
    my $result = $api_instance->store_key_value_getapi(key => $key, value => $value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StorageApi->store_key_value_getapi: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string**| The key for which the value is stored (max length 255 characters). | 
 **value** | **string**| The value that is supposed to be stored (max length 10,000 characters). | 

### Return type

[**StoreKeyValueGETAPI200Response**](StoreKeyValueGETAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

