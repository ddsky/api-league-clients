# openapi.api.KnowledgeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomAffirmationAPI**](KnowledgeApi.md#randomaffirmationapi) | **GET** /retrieve-random-affirmation | Random Affirmation API
[**randomLifeHackAPI**](KnowledgeApi.md#randomlifehackapi) | **GET** /retrieve-random-life-hack | Random Life Hack API
[**randomQuoteAPI**](KnowledgeApi.md#randomquoteapi) | **GET** /retrieve-random-quote | Random Quote API
[**randomRiddleAPI**](KnowledgeApi.md#randomriddleapi) | **GET** /retrieve-random-riddle | Random Riddle API
[**randomTriviaAPI**](KnowledgeApi.md#randomtriviaapi) | **GET** /retrieve-random-trivia | Random Trivia API


# **randomAffirmationAPI**
> RandomAffirmationAPI200Response randomAffirmationAPI()

Random Affirmation API

This endpoint returns a random affirmation to boost your confidence and motivation. Affirmations are positive statements that can help you overcome negative thoughts and improve your mindset and well-being.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = KnowledgeApi();

try {
    final result = api_instance.randomAffirmationAPI();
    print(result);
} catch (e) {
    print('Exception when calling KnowledgeApi->randomAffirmationAPI: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RandomAffirmationAPI200Response**](RandomAffirmationAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomLifeHackAPI**
> RandomLifeHackAPI200Response randomLifeHackAPI(maxLength)

Random Life Hack API

This endpoint returns a random life hack to make your life easier. Life hacks are simple and clever tips or tricks that can help you save time, money, or effort in your daily life.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = KnowledgeApi();
final maxLength = 300; // int | The maximum length of the hack in letters.

try {
    final result = api_instance.randomLifeHackAPI(maxLength);
    print(result);
} catch (e) {
    print('Exception when calling KnowledgeApi->randomLifeHackAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int**| The maximum length of the hack in letters. | [optional] 

### Return type

[**RandomLifeHackAPI200Response**](RandomLifeHackAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomQuoteAPI**
> RandomQuoteAPI200Response randomQuoteAPI(minLength, maxLength)

Random Quote API

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = KnowledgeApi();
final minLength = 120; // int | The minimum length of the quote in letters.
final maxLength = 300; // int | The maximum length of the quote in letters.

try {
    final result = api_instance.randomQuoteAPI(minLength, maxLength);
    print(result);
} catch (e) {
    print('Exception when calling KnowledgeApi->randomQuoteAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | **int**| The minimum length of the quote in letters. | [optional] 
 **maxLength** | **int**| The maximum length of the quote in letters. | [optional] 

### Return type

[**RandomQuoteAPI200Response**](RandomQuoteAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomRiddleAPI**
> RandomRiddleAPI200Response randomRiddleAPI(difficulty)

Random Riddle API

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = KnowledgeApi();
final difficulty = easy; // String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".

try {
    final result = api_instance.randomRiddleAPI(difficulty);
    print(result);
} catch (e) {
    print('Exception when calling KnowledgeApi->randomRiddleAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **String**| The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\". | [optional] 

### Return type

[**RandomRiddleAPI200Response**](RandomRiddleAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomTriviaAPI**
> RandomTriviaAPI200Response randomTriviaAPI(maxLength)

Random Trivia API

This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = KnowledgeApi();
final maxLength = 300; // int | The maximum length of the trivia in letters.

try {
    final result = api_instance.randomTriviaAPI(maxLength);
    print(result);
} catch (e) {
    print('Exception when calling KnowledgeApi->randomTriviaAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int**| The maximum length of the trivia in letters. | [optional] 

### Return type

[**RandomTriviaAPI200Response**](RandomTriviaAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

