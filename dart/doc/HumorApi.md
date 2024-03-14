# openapi.api.HumorApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](HumorApi.md#generatenonsenseword) | **GET** /generate-nonsense-word | Generate Nonsense Word
[**randomJoke**](HumorApi.md#randomjoke) | **GET** /retrieve-random-joke | Random Joke
[**randomMeme**](HumorApi.md#randommeme) | **GET** /retrieve-random-meme | Random Meme
[**searchGifs**](HumorApi.md#searchgifs) | **GET** /search-gifs | Search Gifs
[**searchJokes**](HumorApi.md#searchjokes) | **GET** /search-jokes | Search Jokes
[**searchMemes**](HumorApi.md#searchmemes) | **GET** /search-memes | Search Memes


# **generateNonsenseWord**
> GenerateNonsenseWord200Response generateNonsenseWord()

Generate Nonsense Word

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
    final result = api_instance.generateNonsenseWord();
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->generateNonsenseWord: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWord200Response**](GenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomJoke**
> SearchJokes200ResponseJokesInner randomJoke(includeTags, excludeTags, minRating, maxLength)

Random Joke

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
    final result = api_instance.randomJoke(includeTags, excludeTags, minRating, maxLength);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->randomJoke: $e\n');
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

[**SearchJokes200ResponseJokesInner**](SearchJokes200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomMeme**
> RandomMeme200Response randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays)

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

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
    final result = api_instance.randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->randomMeme: $e\n');
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

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGifs**
> SearchGifs200Response searchGifs(query, number)

Search Gifs

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
    final result = api_instance.searchGifs(query, number);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->searchGifs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **number** | **int**| The number of gifs to return in range [1,10] | [optional] 

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchJokes**
> SearchJokes200Response searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number)

Search Jokes

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
    final result = api_instance.searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->searchJokes: $e\n');
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

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMemes**
> SearchMemes200Response searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number)

Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

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
    final result = api_instance.searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling HumorApi->searchMemes: $e\n');
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

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

