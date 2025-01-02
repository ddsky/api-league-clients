# openapi.api.HumorApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWordAPI**](HumorApi.md#generatenonsensewordapi) | **GET** /generate-nonsense-word | Generate Nonsense Word API
[**randomJokeAPI**](HumorApi.md#randomjokeapi) | **GET** /retrieve-random-joke | Random Joke API
[**randomMemeAPI**](HumorApi.md#randommemeapi) | **GET** /retrieve-random-meme | Random Meme API
[**searchGifsAPI**](HumorApi.md#searchgifsapi) | **GET** /search-gifs | Search Gifs API
[**searchJokesAPI**](HumorApi.md#searchjokesapi) | **GET** /search-jokes | Search Jokes API
[**searchMemesAPI**](HumorApi.md#searchmemesapi) | **GET** /search-memes | Search Memes API


# **generateNonsenseWordAPI**
> GenerateNonsenseWordAPI200Response generateNonsenseWordAPI()

Generate Nonsense Word API

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

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

final api_instance = HumorApi();

try {
    final result = api_instance.generateNonsenseWordAPI();
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->generateNonsenseWordAPI: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWordAPI200Response**](GenerateNonsenseWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomJokeAPI**
> SearchJokesAPI200ResponseJokesInner randomJokeAPI(includeTags, excludeTags, minRating, maxLength)

Random Joke API

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

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

final api_instance = HumorApi();
final includeTags = animal; // String | A comma-separated list of tags the jokes should have.
final excludeTags = nsfw,dark; // String | A comma-separated list of tags the jokes must not have.
final minRating = 0; // double | The minimum rating in range [0.0,1.0] of the jokes.
final maxLength = 140; // int | The maximum length of the joke in letters.

try {
    final result = api_instance.randomJokeAPI(includeTags, excludeTags, minRating, maxLength);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->randomJokeAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | **String**| A comma-separated list of tags the jokes should have. | [optional] 
 **excludeTags** | **String**| A comma-separated list of tags the jokes must not have. | [optional] 
 **minRating** | **double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **maxLength** | **int**| The maximum length of the joke in letters. | [optional] 

### Return type

[**SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomMemeAPI**
> RandomMemeAPI200Response randomMemeAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays)

Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

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

final api_instance = HumorApi();
final keywords = airplane; // String | A comma-separated list of words that must occur in the meme.
final keywordsInImage = true; // bool | Whether the keywords must occur in the image.
final mediaType = image; // String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
final minRating = 0; // double | The minimum rating in range [0.0,1.0] of the meme.
final maxAgeDays = 30; // int | The maximum age of the meme in days.

try {
    final result = api_instance.randomMemeAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->randomMemeAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywordsInImage** | **bool**| Whether the keywords must occur in the image. | [optional] 
 **mediaType** | **String**| The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). | [optional] 
 **minRating** | **double**| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **maxAgeDays** | **int**| The maximum age of the meme in days. | [optional] 

### Return type

[**RandomMemeAPI200Response**](RandomMemeAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGifsAPI**
> SearchGifsAPI200Response searchGifsAPI(query, number)

Search Gifs API

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

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

final api_instance = HumorApi();
final query = dogs; // String | The search query.
final number = 5; // int | The number of gifs to return in range [1,10]

try {
    final result = api_instance.searchGifsAPI(query, number);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->searchGifsAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **number** | **int**| The number of gifs to return in range [1,10] | [optional] 

### Return type

[**SearchGifsAPI200Response**](SearchGifsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchJokesAPI**
> SearchJokesAPI200Response searchJokesAPI(keywords, includeTags, excludeTags, minRating, maxLength, offset, number)

Search Jokes API

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

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

final api_instance = HumorApi();
final keywords = horse,man; // String | A comma-separated list of words that must occur in the joke.
final includeTags = animal; // String | A comma-separated list of tags the jokes should have.
final excludeTags = nsfw,dark; // String | A comma-separated list of tags the jokes must not have.
final minRating = 0; // double | The minimum rating in range [0.0,1.0] of the jokes.
final maxLength = 140; // double | The maximum length of the joke in letters.
final offset = 0; // int | The number of jokes to skip, between 0 and 1000.
final number = 3; // int | The number of jokes, between 1 and 10.

try {
    final result = api_instance.searchJokesAPI(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->searchJokesAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the joke. | [optional] 
 **includeTags** | **String**| A comma-separated list of tags the jokes should have. | [optional] 
 **excludeTags** | **String**| A comma-separated list of tags the jokes must not have. | [optional] 
 **minRating** | **double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **maxLength** | **double**| The maximum length of the joke in letters. | [optional] 
 **offset** | **int**| The number of jokes to skip, between 0 and 1000. | [optional] 
 **number** | **int**| The number of jokes, between 1 and 10. | [optional] 

### Return type

[**SearchJokesAPI200Response**](SearchJokesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMemesAPI**
> SearchMemesAPI200Response searchMemesAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number)

Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.

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

final api_instance = HumorApi();
final keywords = rocket; // String | A comma-separated list of words that must occur in the meme.
final keywordsInImage = true; // bool | Whether the keywords must occur in the image.
final mediaType = image; // String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
final minRating = 0; // double | The minimum rating in range [0.0,1.0] of the meme.
final maxAgeDays = 30; // int | The maximum age of the meme in days.
final offset = 0; // int | The number of memes to skip, between 0 and 1000.
final number = 3; // int | The number of memes, between 1 and 10.

try {
    final result = api_instance.searchMemesAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->searchMemesAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywordsInImage** | **bool**| Whether the keywords must occur in the image. | [optional] 
 **mediaType** | **String**| The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). | [optional] 
 **minRating** | **double**| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **maxAgeDays** | **int**| The maximum age of the meme in days. | [optional] 
 **offset** | **int**| The number of memes to skip, between 0 and 1000. | [optional] 
 **number** | **int**| The number of memes, between 1 and 10. | [optional] 

### Return type

[**SearchMemesAPI200Response**](SearchMemesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

