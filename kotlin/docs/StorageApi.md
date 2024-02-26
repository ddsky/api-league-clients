# StorageApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**readKeyValueFromStore**](StorageApi.md#readKeyValueFromStore) | **GET** /read-key-value | Read Key Value from Store
[**storeKeyValueGET**](StorageApi.md#storeKeyValueGET) | **GET** /store-key-value | Store Key Value (GET)


<a name="readKeyValueFromStore"></a>
# **readKeyValueFromStore**
> InlineResponse20031 readKeyValueFromStore(key)

Read Key Value from Store

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = StorageApi()
val key : kotlin.String = visitors24h // kotlin.String | The key for which the value is stored (max length 255 characters).
try {
    val result : InlineResponse20031 = apiInstance.readKeyValueFromStore(key)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StorageApi#readKeyValueFromStore")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StorageApi#readKeyValueFromStore")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **kotlin.String**| The key for which the value is stored (max length 255 characters). |

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

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

<a name="storeKeyValueGET"></a>
# **storeKeyValueGET**
> InlineResponse20032 storeKeyValueGET(key, `value`)

Store Key Value (GET)

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = StorageApi()
val key : kotlin.String = visitors24h // kotlin.String | The key for which the value is stored (max length 255 characters).
val `value` : kotlin.String = 23578 visitors // kotlin.String | The value that is supposed to be stored (max length 10,000 characters).
try {
    val result : InlineResponse20032 = apiInstance.storeKeyValueGET(key, `value`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling StorageApi#storeKeyValueGET")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling StorageApi#storeKeyValueGET")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **kotlin.String**| The key for which the value is stored (max length 255 characters). |
 **&#x60;value&#x60;** | **kotlin.String**| The value that is supposed to be stored (max length 10,000 characters). |

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

