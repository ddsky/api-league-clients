# StorageApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**readKeyValueFromStoreAPI**](StorageApi.md#readKeyValueFromStoreAPI) | **GET** /read-key-value | Read Key Value from Store API
[**storeKeyValueGETAPI**](StorageApi.md#storeKeyValueGETAPI) | **GET** /store-key-value | Store Key Value (GET) API



## readKeyValueFromStoreAPI

> ReadKeyValueFromStoreAPI200Response readKeyValueFromStoreAPI(key)

Read Key Value from Store API

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example

```java
// Import classes:
//import com.apileague.StorageApi;

StorageApi apiInstance = new StorageApi();
String key = visitors24h; // String | The key for which the value is stored (max length 255 characters).
try {
    ReadKeyValueFromStoreAPI200Response result = apiInstance.readKeyValueFromStoreAPI(key);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StorageApi#readKeyValueFromStoreAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key for which the value is stored (max length 255 characters). | [default to null]

### Return type

[**ReadKeyValueFromStoreAPI200Response**](ReadKeyValueFromStoreAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storeKeyValueGETAPI

> StoreKeyValueGETAPI200Response storeKeyValueGETAPI(key, value)

Store Key Value (GET) API

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example

```java
// Import classes:
//import com.apileague.StorageApi;

StorageApi apiInstance = new StorageApi();
String key = visitors24h; // String | The key for which the value is stored (max length 255 characters).
String value = 23578 visitors; // String | The value that is supposed to be stored (max length 10,000 characters).
try {
    StoreKeyValueGETAPI200Response result = apiInstance.storeKeyValueGETAPI(key, value);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StorageApi#storeKeyValueGETAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key for which the value is stored (max length 255 characters). | [default to null]
 **value** | **String**| The value that is supposed to be stored (max length 10,000 characters). | [default to null]

### Return type

[**StoreKeyValueGETAPI200Response**](StoreKeyValueGETAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

