# KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomQuote**](KnowledgeApi.md#randomQuote) | **GET** /retrieve-random-quote | Random Quote
[**randomTrivia**](KnowledgeApi.md#randomTrivia) | **GET** /retrieve-random-trivia | Random Trivia



## randomQuote

> InlineResponse20010 randomQuote(minLength, maxLength)

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
    InlineResponse20010 result = apiInstance.randomQuote(minLength, maxLength);
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

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomTrivia

> InlineResponse2009 randomTrivia(maxLength)

Random Trivia

This endpoint returns a random piece of trivia.

### Example

```java
// Import classes:
//import com.apileague.KnowledgeApi;

KnowledgeApi apiInstance = new KnowledgeApi();
Integer maxLength = 300; // Integer | The maximum length of the trivia in letters.
try {
    InlineResponse2009 result = apiInstance.randomTrivia(maxLength);
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

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

