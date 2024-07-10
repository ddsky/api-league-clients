# KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomQuote**](KnowledgeApi.md#randomQuote) | **GET** /retrieve-random-quote | Random Quote
[**randomRiddle**](KnowledgeApi.md#randomRiddle) | **GET** /retrieve-random-riddle | Random Riddle
[**randomTrivia**](KnowledgeApi.md#randomTrivia) | **GET** /retrieve-random-trivia | Random Trivia


<a id="randomQuote"></a>
# **randomQuote**
> RandomQuote200Response randomQuote(minLength, maxLength)

Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = KnowledgeApi()
val minLength : kotlin.Int = 120 // kotlin.Int | The minimum length of the quote in letters.
val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the quote in letters.
try {
    val result : RandomQuote200Response = apiInstance.randomQuote(minLength, maxLength)
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

[**RandomQuote200Response**](RandomQuote200Response.md)

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

<a id="randomRiddle"></a>
# **randomRiddle**
> RandomRiddle200Response randomRiddle(difficulty)

Random Riddle

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = KnowledgeApi()
val difficulty : kotlin.String = easy // kotlin.String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
try {
    val result : RandomRiddle200Response = apiInstance.randomRiddle(difficulty)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#randomRiddle")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#randomRiddle")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **kotlin.String**| The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional]

### Return type

[**RandomRiddle200Response**](RandomRiddle200Response.md)

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

<a id="randomTrivia"></a>
# **randomTrivia**
> RandomTrivia200Response randomTrivia(maxLength)

Random Trivia

This endpoint returns a random piece of trivia.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = KnowledgeApi()
val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the trivia in letters.
try {
    val result : RandomTrivia200Response = apiInstance.randomTrivia(maxLength)
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

[**RandomTrivia200Response**](RandomTrivia200Response.md)

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

