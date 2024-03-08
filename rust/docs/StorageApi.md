# \StorageApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**read_key_value_from_store**](StorageApi.md#read_key_value_from_store) | **GET** /read-key-value | Read Key Value from Store
[**store_key_value_get**](StorageApi.md#store_key_value_get) | **GET** /store-key-value | Store Key Value (GET)



## read_key_value_from_store

> crate::models::ReadKeyValueFromStore200Response read_key_value_from_store(key)
Read Key Value from Store

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**key** | **String** | The key for which the value is stored (max length 255 characters). | [required] |

### Return type

[**crate::models::ReadKeyValueFromStore200Response**](readKeyValueFromStore_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## store_key_value_get

> crate::models::StoreKeyValueGet200Response store_key_value_get(key, value)
Store Key Value (GET)

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**key** | **String** | The key for which the value is stored (max length 255 characters). | [required] |
**value** | **String** | The value that is supposed to be stored (max length 10,000 characters). | [required] |

### Return type

[**crate::models::StoreKeyValueGet200Response**](storeKeyValueGET_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

