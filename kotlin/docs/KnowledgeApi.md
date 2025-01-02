# KnowledgeApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**randomQuoteAPI**](KnowledgeApi.md#randomQuoteAPI) | **GET** /retrieve-random-quote | Random Quote API |
| [**randomRiddleAPI**](KnowledgeApi.md#randomRiddleAPI) | **GET** /retrieve-random-riddle | Random Riddle API |
| [**randomTriviaAPI**](KnowledgeApi.md#randomTriviaAPI) | **GET** /retrieve-random-trivia | Random Trivia API |


<a id="randomQuoteAPI"></a>
# **randomQuoteAPI**
> RandomQuoteAPI200Response randomQuoteAPI(minLength, maxLength)

Random Quote API

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
    val result : RandomQuoteAPI200Response = apiInstance.randomQuoteAPI(minLength, maxLength)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#randomQuoteAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#randomQuoteAPI")
    e.printStackTrace()
}
```

### Parameters
| **minLength** | **kotlin.Int**| The minimum length of the quote in letters. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **maxLength** | **kotlin.Int**| The maximum length of the quote in letters. | [optional] |

### Return type

[**RandomQuoteAPI200Response**](RandomQuoteAPI200Response.md)

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

<a id="randomRiddleAPI"></a>
# **randomRiddleAPI**
> RandomRiddleAPI200Response randomRiddleAPI(difficulty)

Random Riddle API

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = KnowledgeApi()
val difficulty : kotlin.String = easy // kotlin.String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
try {
    val result : RandomRiddleAPI200Response = apiInstance.randomRiddleAPI(difficulty)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#randomRiddleAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#randomRiddleAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **difficulty** | **kotlin.String**| The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional] |

### Return type

[**RandomRiddleAPI200Response**](RandomRiddleAPI200Response.md)

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

<a id="randomTriviaAPI"></a>
# **randomTriviaAPI**
> RandomTriviaAPI200Response randomTriviaAPI(maxLength)

Random Trivia API

This endpoint returns a random piece of trivia like \&quot;Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\&quot;.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = KnowledgeApi()
val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the trivia in letters.
try {
    val result : RandomTriviaAPI200Response = apiInstance.randomTriviaAPI(maxLength)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling KnowledgeApi#randomTriviaAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling KnowledgeApi#randomTriviaAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **maxLength** | **kotlin.Int**| The maximum length of the trivia in letters. | [optional] |

### Return type

[**RandomTriviaAPI200Response**](RandomTriviaAPI200Response.md)

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

