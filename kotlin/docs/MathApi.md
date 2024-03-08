# MathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertUnits**](MathApi.md#convertUnits) | **GET** /convert-units | Convert Units


<a id="convertUnits"></a>
# **convertUnits**
> ConvertUnits200Response convertUnits(sourceAmount, sourceUnit, targetUnit, foodName)

Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = MathApi()
val sourceAmount : kotlin.Double = 100 // kotlin.Double | The source amount.
val sourceUnit : kotlin.String = kg // kotlin.String | The source unit.
val targetUnit : kotlin.String = lb // kotlin.String | The unit to which should be converted.
val foodName : kotlin.String = flour // kotlin.String | An optional food name. For converting foods the food is relevant as they have different densities.
try {
    val result : ConvertUnits200Response = apiInstance.convertUnits(sourceAmount, sourceUnit, targetUnit, foodName)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MathApi#convertUnits")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MathApi#convertUnits")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceAmount** | **kotlin.Double**| The source amount. |
 **sourceUnit** | **kotlin.String**| The source unit. |
 **targetUnit** | **kotlin.String**| The unit to which should be converted. |
 **foodName** | **kotlin.String**| An optional food name. For converting foods the food is relevant as they have different densities. | [optional]

### Return type

[**ConvertUnits200Response**](ConvertUnits200Response.md)

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

