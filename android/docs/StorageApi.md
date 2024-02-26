# StorageApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**readKeyValueFromStore**](StorageApi.md#readKeyValueFromStore) | **GET** /read-key-value | Read Key Value from Store
[**storeKeyValueGET**](StorageApi.md#storeKeyValueGET) | **GET** /store-key-value | Store Key Value (GET)



## readKeyValueFromStore

> InlineResponse20031 readKeyValueFromStore(key)

Read Key Value from Store

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example

```java
// Import classes:
//import com.apileague.StorageApi;

StorageApi apiInstance = new StorageApi();
String key = visitors24h; // String | The key for which the value is stored (max length 255 characters).
try {
    InlineResponse20031 result = apiInstance.readKeyValueFromStore(key);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StorageApi#readKeyValueFromStore");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key for which the value is stored (max length 255 characters). | [default to null]

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storeKeyValueGET

> InlineResponse20032 storeKeyValueGET(key, value)

Store Key Value (GET)

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example

```java
// Import classes:
//import com.apileague.StorageApi;

StorageApi apiInstance = new StorageApi();
String key = visitors24h; // String | The key for which the value is stored (max length 255 characters).
String value = 23578 visitors; // String | The value that is supposed to be stored (max length 10,000 characters).
try {
    InlineResponse20032 result = apiInstance.storeKeyValueGET(key, value);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StorageApi#storeKeyValueGET");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key for which the value is stored (max length 255 characters). | [default to null]
 **value** | **String**| The value that is supposed to be stored (max length 10,000 characters). | [default to null]

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

