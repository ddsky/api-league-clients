# ApileagueJs.KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomQuote**](KnowledgeApi.md#randomQuote) | **GET** /retrieve-random-quote | Random Quote
[**randomRiddle**](KnowledgeApi.md#randomRiddle) | **GET** /retrieve-random-riddle | Random Riddle
[**randomTrivia**](KnowledgeApi.md#randomTrivia) | **GET** /retrieve-random-trivia | Random Trivia



## randomQuote

> RandomQuote200Response randomQuote(opts)

Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.KnowledgeApi();
let opts = {
  'minLength': 120, // Number | The minimum length of the quote in letters.
  'maxLength': 300 // Number | The maximum length of the quote in letters.
};
apiInstance.randomQuote(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | **Number**| The minimum length of the quote in letters. | [optional] 
 **maxLength** | **Number**| The maximum length of the quote in letters. | [optional] 

### Return type

[**RandomQuote200Response**](RandomQuote200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomRiddle

> RandomRiddle200Response randomRiddle(opts)

Random Riddle

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.KnowledgeApi();
let opts = {
  'difficulty': "easy" // String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
};
apiInstance.randomRiddle(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **String**| The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional] 

### Return type

[**RandomRiddle200Response**](RandomRiddle200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomTrivia

> RandomTrivia200Response randomTrivia(opts)

Random Trivia

This endpoint returns a random piece of trivia.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.KnowledgeApi();
let opts = {
  'maxLength': 300 // Number | The maximum length of the trivia in letters.
};
apiInstance.randomTrivia(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **Number**| The maximum length of the trivia in letters. | [optional] 

### Return type

[**RandomTrivia200Response**](RandomTrivia200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

