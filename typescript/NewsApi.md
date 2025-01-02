# .NewsApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNewsAPI**](NewsApi.md#extractNewsAPI) | **GET** /extract-news | Extract News API
[**searchNewsAPI**](NewsApi.md#searchNewsAPI) | **GET** /search-news | Search News API
[**topNewsAPI**](NewsApi.md#topNewsAPI) | **GET** /retrieve-top-news | Top News API


# **extractNewsAPI**
> ExtractNewsAPI200Response extractNewsAPI()

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiExtractNewsAPIRequest = {
  // string | The url of the news.
  url: "https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/",
  // boolean | Whether to analyze the news (extract entities etc.)
  analyze: true,
};

apiInstance.extractNewsAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url of the news. | defaults to undefined
 **analyze** | [**boolean**] | Whether to analyze the news (extract entities etc.) | defaults to undefined


### Return type

**ExtractNewsAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchNewsAPI**
> SearchNewsAPI200Response searchNewsAPI()

Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiSearchNewsAPIRequest = {
  // string | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. (optional)
  text: "tesla",
  // string | A comma-separated list of ISO 3166 country codes from which the news should originate. (optional)
  sourceCountries: "us,uk",
  // string | The ISO 6391 language code of the news. (optional)
  language: "en",
  // number | The minimal sentiment of the news in range [-1,1]. (optional)
  minSentiment: -0.8,
  // number | The maximal sentiment of the news in range [-1,1]. (optional)
  maxSentiment: 0.8,
  // string | The news must have been published after this date. (optional)
  earliestPublishDate: "2022-04-22 16:12:35",
  // string | The news must have been published before this date. (optional)
  latestPublishDate: "2022-04-22 16:12:35",
  // string | A comma-separated list of news sources from which the news should originate. (optional)
  newsSources: "https://www.bbc.co.uk",
  // string | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
  authors: "John Doe",
  // string | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. (optional)
  categories: "politics,sports",
  // string | Filter news by entities (ORG, PER, or LOC). (optional)
  entities: "ORG:Tesla",
  // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" (optional)
  locationFilter: "51.050407, 13.737262, 100",
  // string | The sorting criteria (publish-time). (optional)
  sort: "publish-time",
  // string | Whether to sort ascending or descending (ASC or DESC). (optional)
  sortDirection: "ASC",
  // number | The number of news to skip in range [0,10000] (optional)
  offset: 0,
  // number | The number of news to return in range [1,100] (optional)
  number: 10,
};

apiInstance.searchNewsAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. | (optional) defaults to undefined
 **sourceCountries** | [**string**] | A comma-separated list of ISO 3166 country codes from which the news should originate. | (optional) defaults to undefined
 **language** | [**string**] | The ISO 6391 language code of the news. | (optional) defaults to undefined
 **minSentiment** | [**number**] | The minimal sentiment of the news in range [-1,1]. | (optional) defaults to undefined
 **maxSentiment** | [**number**] | The maximal sentiment of the news in range [-1,1]. | (optional) defaults to undefined
 **earliestPublishDate** | [**string**] | The news must have been published after this date. | (optional) defaults to undefined
 **latestPublishDate** | [**string**] | The news must have been published before this date. | (optional) defaults to undefined
 **newsSources** | [**string**] | A comma-separated list of news sources from which the news should originate. | (optional) defaults to undefined
 **authors** | [**string**] | A comma-separated list of author names. Only news from any of the given authors will be returned. | (optional) defaults to undefined
 **categories** | [**string**] | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | (optional) defaults to undefined
 **entities** | [**string**] | Filter news by entities (ORG, PER, or LOC). | (optional) defaults to undefined
 **locationFilter** | [**string**] | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | (optional) defaults to undefined
 **sort** | [**string**] | The sorting criteria (publish-time). | (optional) defaults to undefined
 **sortDirection** | [**string**] | Whether to sort ascending or descending (ASC or DESC). | (optional) defaults to undefined
 **offset** | [**number**] | The number of news to skip in range [0,10000] | (optional) defaults to undefined
 **number** | [**number**] | The number of news to return in range [1,100] | (optional) defaults to undefined


### Return type

**SearchNewsAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **topNewsAPI**
> TopNewsAPI200Response topNewsAPI()

Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiTopNewsAPIRequest = {
  // string | The ISO 3166 country code of the country for which top news should be retrieved.
  sourceCountry: "us",
  // string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
  language: "en",
  // string | The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional)
  date: "2024-05-30",
  // boolean | Whether to only return basic information such as id, title, and url of the news. (optional)
  headlinesOnly: false,
};

apiInstance.topNewsAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | [**string**] | The ISO 3166 country code of the country for which top news should be retrieved. | defaults to undefined
 **language** | [**string**] | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | defaults to undefined
 **date** | [**string**] | The date for which the top news should be retrieved. If no date is given, the current day is assumed. | (optional) defaults to undefined
 **headlinesOnly** | [**boolean**] | Whether to only return basic information such as id, title, and url of the news. | (optional) defaults to undefined


### Return type

**TopNewsAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


