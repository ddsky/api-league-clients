# openapi.api.NewsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractnews) | **GET** /extract-news | Extract News
[**searchNews**](NewsApi.md#searchnews) | **GET** /search-news | Search News


# **extractNews**
> InlineResponse2003 extractNews(url, analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

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

final api_instance = NewsApi();
final url = https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/; // String | The url of the news.
final analyze = true; // bool | Whether to analyze the news (extract entities etc.)

try {
    final result = api_instance.extractNews(url, analyze);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->extractNews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | 
 **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNews**
> InlineResponse2002 searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number)

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

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

final api_instance = NewsApi();
final text = tesla; // String | The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
final sourceCountries = us,uk; // String | A comma-separated list of ISO 3166 country codes from which the news should originate.
final language = en; // String | The ISO 6391 language code of the news.
final minSentiment = -0.8; // double | The minimal sentiment of the news in range [-1,1].
final maxSentiment = 0.8; // double | The maximal sentiment of the news in range [-1,1].
final earliestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published after this date.
final latestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published before this date.
final newsSources = https://www.bbc.co.uk; // String | A comma-separated list of news sources from which the news should originate.
final authors = John Doe; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
final entities = ORG:Tesla; // String | Filter news by entities (see semantic types).
final locationFilter = 51.050407, 13.737262, 100; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
final sort = publish-time; // String | The sorting criteria (publish-time or sentiment).
final sortDirection = ASC; // String | Whether to sort ascending or descending (ASC or DESC).
final offset = 0; // int | The number of news to skip in range [0,10000]
final number = 10; // int | The number of news to return in range [1,100]

try {
    final result = api_instance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->searchNews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] 
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] 
 **language** | **String**| The ISO 6391 language code of the news. | [optional] 
 **minSentiment** | **double**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **double**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] 
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **String**| Filter news by entities (see semantic types). | [optional] 
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" | [optional] 
 **sort** | **String**| The sorting criteria (publish-time or sentiment). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of news to skip in range [0,10000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

