# KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomQuote**](KnowledgeApi.md#randomQuote) | **GET** /retrieve-random-quote | Random Quote
[**randomRiddle**](KnowledgeApi.md#randomRiddle) | **GET** /retrieve-random-riddle | Random Riddle
[**randomTrivia**](KnowledgeApi.md#randomTrivia) | **GET** /retrieve-random-trivia | Random Trivia



## randomQuote

> RandomQuote200Response randomQuote(minLength, maxLength)

Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example

```java
// Import classes:
//import com.apileague.KnowledgeApi;

KnowledgeApi apiInstance = new KnowledgeApi();
Integer minLength = 120; // Integer | The minimum length of the quote in letters.
Integer maxLength = 300; // Integer | The maximum length of the quote in letters.
try {
    RandomQuote200Response result = apiInstance.randomQuote(minLength, maxLength);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling KnowledgeApi#randomQuote");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | **Integer**| The minimum length of the quote in letters. | [optional] [default to null]
 **maxLength** | **Integer**| The maximum length of the quote in letters. | [optional] [default to null]

### Return type

[**RandomQuote200Response**](RandomQuote200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomRiddle

> RandomRiddle200Response randomRiddle(difficulty)

Random Riddle

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example

```java
// Import classes:
//import com.apileague.KnowledgeApi;

KnowledgeApi apiInstance = new KnowledgeApi();
String difficulty = easy; // String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
try {
    RandomRiddle200Response result = apiInstance.randomRiddle(difficulty);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling KnowledgeApi#randomRiddle");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **String**| The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional] [default to null]

### Return type

[**RandomRiddle200Response**](RandomRiddle200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomTrivia

> RandomTrivia200Response randomTrivia(maxLength)

Random Trivia

This endpoint returns a random piece of trivia.

### Example

```java
// Import classes:
//import com.apileague.KnowledgeApi;

KnowledgeApi apiInstance = new KnowledgeApi();
Integer maxLength = 300; // Integer | The maximum length of the trivia in letters.
try {
    RandomTrivia200Response result = apiInstance.randomTrivia(maxLength);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling KnowledgeApi#randomTrivia");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **Integer**| The maximum length of the trivia in letters. | [optional] [default to null]

### Return type

[**RandomTrivia200Response**](RandomTrivia200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

