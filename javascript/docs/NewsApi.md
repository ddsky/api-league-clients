# ApileagueJs.NewsApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNewsAPI**](NewsApi.md#extractNewsAPI) | **GET** /extract-news | Extract News API
[**searchNewsAPI**](NewsApi.md#searchNewsAPI) | **GET** /search-news | Search News API
[**topNewsAPI**](NewsApi.md#topNewsAPI) | **GET** /retrieve-top-news | Top News API



## extractNewsAPI

> ExtractNewsAPI200Response extractNewsAPI(url, analyze)

Extract News API

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

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

let apiInstance = new ApileagueJs.NewsApi();
let url = "https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/"; // String | The url of the news.
let analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
apiInstance.extractNewsAPI(url, analyze, (error, data, response) => {
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
 **url** | **String**| The url of the news. | 
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | 

### Return type

[**ExtractNewsAPI200Response**](ExtractNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchNewsAPI

> SearchNewsAPI200Response searchNewsAPI(opts)

Search News API

Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

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

let apiInstance = new ApileagueJs.NewsApi();
let opts = {
  'text': "tesla", // String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.
  'sourceCountries': "us,uk", // String | A comma-separated list of ISO 3166 country codes from which the news should originate.
  'language': "en", // String | The ISO 6391 language code of the news.
  'minSentiment': -0.8, // Number | The minimal sentiment of the news in range [-1,1].
  'maxSentiment': 0.8, // Number | The maximal sentiment of the news in range [-1,1].
  'earliestPublishDate': "2022-04-22 16:12:35", // String | The news must have been published after this date.
  'latestPublishDate': "2022-04-22 16:12:35", // String | The news must have been published before this date.
  'newsSources': "https://www.bbc.co.uk", // String | A comma-separated list of news sources from which the news should originate.
  'authors': "John Doe", // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
  'categories': "politics,sports", // String | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
  'entities': "ORG:Tesla", // String | Filter news by entities (ORG, PER, or LOC).
  'locationFilter': "51.050407, 13.737262, 100", // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
  'sort': "publish-time", // String | The sorting criteria (publish-time).
  'sortDirection': "ASC", // String | Whether to sort ascending or descending (ASC or DESC).
  'offset': 0, // Number | The number of news to skip in range [0,10000]
  'number': 10 // Number | The number of news to return in range [1,100]
};
apiInstance.searchNewsAPI(opts, (error, data, response) => {
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
 **text** | **String**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. | [optional] 
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] 
 **language** | **String**| The ISO 6391 language code of the news. | [optional] 
 **minSentiment** | **Number**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **Number**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] 
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **categories** | **String**| A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | [optional] 
 **entities** | **String**| Filter news by entities (ORG, PER, or LOC). | [optional] 
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional] 
 **sort** | **String**| The sorting criteria (publish-time). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **Number**| The number of news to skip in range [0,10000] | [optional] 
 **number** | **Number**| The number of news to return in range [1,100] | [optional] 

### Return type

[**SearchNewsAPI200Response**](SearchNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## topNewsAPI

> TopNewsAPI200Response topNewsAPI(sourceCountry, language, opts)

Top News API

Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

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

let apiInstance = new ApileagueJs.NewsApi();
let sourceCountry = "us"; // String | The ISO 3166 country code of the country for which top news should be retrieved.
let language = "en"; // String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
let opts = {
  'date': "2024-05-30", // String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
  'headlinesOnly': false // Boolean | Whether to only return basic information such as id, title, and url of the news.
};
apiInstance.topNewsAPI(sourceCountry, language, opts, (error, data, response) => {
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
 **sourceCountry** | **String**| The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **String**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **String**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] 
 **headlinesOnly** | **Boolean**| Whether to only return basic information such as id, title, and url of the news. | [optional] 

### Return type

[**TopNewsAPI200Response**](TopNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

