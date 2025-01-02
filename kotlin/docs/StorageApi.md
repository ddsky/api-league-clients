# StorageApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**readKeyValueFromStoreAPI**](StorageApi.md#readKeyValueFromStoreAPI) | **GET** /read-key-value | Read Key Value from Store API |
| [**storeKeyValueGETAPI**](StorageApi.md#storeKeyValueGETAPI) | **GET** /store-key-value | Store Key Value (GET) API |


<a id="readKeyValueFromStoreAPI"></a>
# **readKeyValueFromStoreAPI**
> ReadKeyValueFromStoreAPI200Response readKeyValueFromStoreAPI(key)

Read Key Value from Store API

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = StorageApi()
val key : kotlin.String = visitors24h // kotlin.String | The key for which the value is stored (max length 255 characters).
try {
    val result : ReadKeyValueFromStoreAPI200Response = apiInstance.readKeyValueFromStoreAPI(key)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StorageApi#readKeyValueFromStoreAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StorageApi#readKeyValueFromStoreAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **key** | **kotlin.String**| The key for which the value is stored (max length 255 characters). | |

### Return type

[**ReadKeyValueFromStoreAPI200Response**](ReadKeyValueFromStoreAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="storeKeyValueGETAPI"></a>
# **storeKeyValueGETAPI**
> StoreKeyValueGETAPI200Response storeKeyValueGETAPI(key, `value`)

Store Key Value (GET) API

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = StorageApi()
val key : kotlin.String = visitors24h // kotlin.String | The key for which the value is stored (max length 255 characters).
val `value` : kotlin.String = 23578 visitors // kotlin.String | The value that is supposed to be stored (max length 10,000 characters).
try {
    val result : StoreKeyValueGETAPI200Response = apiInstance.storeKeyValueGETAPI(key, `value`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StorageApi#storeKeyValueGETAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StorageApi#storeKeyValueGETAPI")
    e.printStackTrace()
}
```

### Parameters
| **key** | **kotlin.String**| The key for which the value is stored (max length 255 characters). | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **&#x60;value&#x60;** | **kotlin.String**| The value that is supposed to be stored (max length 10,000 characters). | |

### Return type

[**StoreKeyValueGETAPI200Response**](StoreKeyValueGETAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

