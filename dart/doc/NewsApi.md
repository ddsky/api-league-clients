# openapi.api.NewsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNewsAPI**](NewsApi.md#extractnewsapi) | **GET** /extract-news | Extract News API
[**searchNewsAPI**](NewsApi.md#searchnewsapi) | **GET** /search-news | Search News API
[**topNewsAPI**](NewsApi.md#topnewsapi) | **GET** /retrieve-top-news | Top News API


# **extractNewsAPI**
> ExtractNewsAPI200Response extractNewsAPI(url, analyze)

Extract News API

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
    final result = api_instance.extractNewsAPI(url, analyze);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->extractNewsAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | 
 **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | 

### Return type

[**ExtractNewsAPI200Response**](ExtractNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNewsAPI**
> SearchNewsAPI200Response searchNewsAPI(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number)

Search News API

Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

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
final text = tesla; // String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.
final sourceCountries = us,uk; // String | A comma-separated list of ISO 3166 country codes from which the news should originate.
final language = en; // String | The ISO 6391 language code of the news.
final minSentiment = -0.8; // double | The minimal sentiment of the news in range [-1,1].
final maxSentiment = 0.8; // double | The maximal sentiment of the news in range [-1,1].
final earliestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published after this date.
final latestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published before this date.
final newsSources = https://www.bbc.co.uk; // String | A comma-separated list of news sources from which the news should originate.
final authors = John Doe; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
final categories = politics,sports; // String | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
final entities = ORG:Tesla; // String | Filter news by entities (ORG, PER, or LOC).
final locationFilter = 51.050407, 13.737262, 100; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
final sort = publish-time; // String | The sorting criteria (publish-time).
final sortDirection = ASC; // String | Whether to sort ascending or descending (ASC or DESC).
final offset = 0; // int | The number of news to skip in range [0,10000]
final number = 10; // int | The number of news to return in range [1,100]

try {
    final result = api_instance.searchNewsAPI(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->searchNewsAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. | [optional] 
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] 
 **language** | **String**| The ISO 6391 language code of the news. | [optional] 
 **minSentiment** | **double**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **double**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] 
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **categories** | **String**| A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | [optional] 
 **entities** | **String**| Filter news by entities (ORG, PER, or LOC). | [optional] 
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" | [optional] 
 **sort** | **String**| The sorting criteria (publish-time). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of news to skip in range [0,10000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 

### Return type

[**SearchNewsAPI200Response**](SearchNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topNewsAPI**
> TopNewsAPI200Response topNewsAPI(sourceCountry, language, date, headlinesOnly)

Top News API

Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

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
final sourceCountry = us; // String | The ISO 3166 country code of the country for which top news should be retrieved.
final language = en; // String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
final date = 2024-05-30; // String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
final headlinesOnly = false; // bool | Whether to only return basic information such as id, title, and url of the news.

try {
    final result = api_instance.topNewsAPI(sourceCountry, language, date, headlinesOnly);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->topNewsAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **String**| The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **String**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **String**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] 
 **headlinesOnly** | **bool**| Whether to only return basic information such as id, title, and url of the news. | [optional] 

### Return type

[**TopNewsAPI200Response**](TopNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

