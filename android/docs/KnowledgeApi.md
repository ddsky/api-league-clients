# KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomQuoteAPI**](KnowledgeApi.md#randomQuoteAPI) | **GET** /retrieve-random-quote | Random Quote API
[**randomRiddleAPI**](KnowledgeApi.md#randomRiddleAPI) | **GET** /retrieve-random-riddle | Random Riddle API
[**randomTriviaAPI**](KnowledgeApi.md#randomTriviaAPI) | **GET** /retrieve-random-trivia | Random Trivia API



## randomQuoteAPI

> RandomQuoteAPI200Response randomQuoteAPI(minLength, maxLength)

Random Quote API

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example

```java
// Import classes:
//import com.apileague.KnowledgeApi;

KnowledgeApi apiInstance = new KnowledgeApi();
Integer minLength = 120; // Integer | The minimum length of the quote in letters.
Integer maxLength = 300; // Integer | The maximum length of the quote in letters.
try {
    RandomQuoteAPI200Response result = apiInstance.randomQuoteAPI(minLength, maxLength);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling KnowledgeApi#randomQuoteAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | **Integer**| The minimum length of the quote in letters. | [optional] [default to null]
 **maxLength** | **Integer**| The maximum length of the quote in letters. | [optional] [default to null]

### Return type

[**RandomQuoteAPI200Response**](RandomQuoteAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomRiddleAPI

> RandomRiddleAPI200Response randomRiddleAPI(difficulty)

Random Riddle API

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example

```java
// Import classes:
//import com.apileague.KnowledgeApi;

KnowledgeApi apiInstance = new KnowledgeApi();
String difficulty = easy; // String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
try {
    RandomRiddleAPI200Response result = apiInstance.randomRiddleAPI(difficulty);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling KnowledgeApi#randomRiddleAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **String**| The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional] [default to null]

### Return type

[**RandomRiddleAPI200Response**](RandomRiddleAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomTriviaAPI

> RandomTriviaAPI200Response randomTriviaAPI(maxLength)

Random Trivia API

This endpoint returns a random piece of trivia like \&quot;Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\&quot;.

### Example

```java
// Import classes:
//import com.apileague.KnowledgeApi;

KnowledgeApi apiInstance = new KnowledgeApi();
Integer maxLength = 300; // Integer | The maximum length of the trivia in letters.
try {
    RandomTriviaAPI200Response result = apiInstance.randomTriviaAPI(maxLength);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling KnowledgeApi#randomTriviaAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **Integer**| The maximum length of the trivia in letters. | [optional] [default to null]

### Return type

[**RandomTriviaAPI200Response**](RandomTriviaAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

