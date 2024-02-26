# KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomQuote**](KnowledgeApi.md#randomQuote) | **GET** /retrieve-random-quote | Random Quote
[**randomTrivia**](KnowledgeApi.md#randomTrivia) | **GET** /retrieve-random-trivia | Random Trivia


<a name="randomQuote"></a>
# **randomQuote**
> InlineResponse20010 randomQuote(minLength, maxLength)

Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = KnowledgeApi()
val minLength : kotlin.Int = 120 // kotlin.Int | The minimum length of the quote in letters.
val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the quote in letters.
try {
    val result : InlineResponse20010 = apiInstance.randomQuote(minLength, maxLength)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#randomQuote")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#randomQuote")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | **kotlin.Int**| The minimum length of the quote in letters. | [optional]
 **maxLength** | **kotlin.Int**| The maximum length of the quote in letters. | [optional]

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

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

<a name="randomTrivia"></a>
# **randomTrivia**
> InlineResponse2009 randomTrivia(maxLength)

Random Trivia

This endpoint returns a random piece of trivia.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = KnowledgeApi()
val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the trivia in letters.
try {
    val result : InlineResponse2009 = apiInstance.randomTrivia(maxLength)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#randomTrivia")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#randomTrivia")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **kotlin.Int**| The maximum length of the trivia in letters. | [optional]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

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

