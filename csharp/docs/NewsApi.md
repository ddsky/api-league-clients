# apileague.Api.NewsApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ExtractNews**](NewsApi.md#extractnews) | **GET** /extract-news | Extract News |
| [**SearchNews**](NewsApi.md#searchnews) | **GET** /search-news | Search News |
| [**TopNews**](NewsApi.md#topnews) | **GET** /retrieve-top-news | Top News |

<a id="extractnews"></a>
# **ExtractNews**
> ExtractNews200Response ExtractNews (string url, bool analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class ExtractNewsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var url = https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/;  // string | The url of the news.
            var analyze = true;  // bool | Whether to analyze the news (extract entities etc.)

            try
            {
                // Extract News
                ExtractNews200Response result = apiInstance.ExtractNews(url, analyze);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.ExtractNews: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ExtractNewsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract News
    ApiResponse<ExtractNews200Response> response = apiInstance.ExtractNewsWithHttpInfo(url, analyze);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.ExtractNewsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url of the news. |  |
| **analyze** | **bool** | Whether to analyze the news (extract entities etc.) |  |

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchnews"></a>
# **SearchNews**
> SearchNews200Response SearchNews (string? text = null, string? sourceCountries = null, string? language = null, double? minSentiment = null, double? maxSentiment = null, string? earliestPublishDate = null, string? latestPublishDate = null, string? newsSources = null, string? authors = null, string? categories = null, string? entities = null, string? locationFilter = null, string? sort = null, string? sortDirection = null, int? offset = null, int? number = null)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchNewsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var text = tesla;  // string? | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford (optional) 
            var sourceCountries = us,uk;  // string? | A comma-separated list of ISO 3166 country codes from which the news should originate. (optional) 
            var language = en;  // string? | The ISO 6391 language code of the news. (optional) 
            var minSentiment = -0.8;  // double? | The minimal sentiment of the news in range [-1,1]. (optional) 
            var maxSentiment = 0.8;  // double? | The maximal sentiment of the news in range [-1,1]. (optional) 
            var earliestPublishDate = 2022-04-22 16:12:35;  // string? | The news must have been published after this date. (optional) 
            var latestPublishDate = 2022-04-22 16:12:35;  // string? | The news must have been published before this date. (optional) 
            var newsSources = https://www.bbc.co.uk;  // string? | A comma-separated list of news sources from which the news should originate. (optional) 
            var authors = John Doe;  // string? | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional) 
            var categories = politics,sports;  // string? | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. (optional) 
            var entities = ORG:Tesla;  // string? | Filter news by entities (ORG, PER, or LOC). (optional) 
            var locationFilter = 51.050407, 13.737262, 100;  // string? | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" (optional) 
            var sort = publish-time;  // string? | The sorting criteria (publish-time). (optional) 
            var sortDirection = ASC;  // string? | Whether to sort ascending or descending (ASC or DESC). (optional) 
            var offset = 0;  // int? | The number of news to skip in range [0,10000] (optional) 
            var number = 10;  // int? | The number of news to return in range [1,100] (optional) 

            try
            {
                // Search News
                SearchNews200Response result = apiInstance.SearchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.SearchNews: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchNewsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search News
    ApiResponse<SearchNews200Response> response = apiInstance.SearchNewsWithHttpInfo(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.SearchNewsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **text** | **string?** | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional]  |
| **sourceCountries** | **string?** | A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional]  |
| **language** | **string?** | The ISO 6391 language code of the news. | [optional]  |
| **minSentiment** | **double?** | The minimal sentiment of the news in range [-1,1]. | [optional]  |
| **maxSentiment** | **double?** | The maximal sentiment of the news in range [-1,1]. | [optional]  |
| **earliestPublishDate** | **string?** | The news must have been published after this date. | [optional]  |
| **latestPublishDate** | **string?** | The news must have been published before this date. | [optional]  |
| **newsSources** | **string?** | A comma-separated list of news sources from which the news should originate. | [optional]  |
| **authors** | **string?** | A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional]  |
| **categories** | **string?** | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | [optional]  |
| **entities** | **string?** | Filter news by entities (ORG, PER, or LOC). | [optional]  |
| **locationFilter** | **string?** | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional]  |
| **sort** | **string?** | The sorting criteria (publish-time). | [optional]  |
| **sortDirection** | **string?** | Whether to sort ascending or descending (ASC or DESC). | [optional]  |
| **offset** | **int?** | The number of news to skip in range [0,10000] | [optional]  |
| **number** | **int?** | The number of news to return in range [1,100] | [optional]  |

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="topnews"></a>
# **TopNews**
> TopNews200Response TopNews (string sourceCountry, string language, string? date = null, bool? headlinesOnly = null)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class TopNewsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new NewsApi(config);
            var sourceCountry = us;  // string | The ISO 3166 country code of the country for which top news should be retrieved.
            var language = en;  // string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
            var date = 2024-05-30;  // string? | The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional) 
            var headlinesOnly = false;  // bool? | Whether to only return basic information such as id, title, and url of the news. (optional) 

            try
            {
                // Top News
                TopNews200Response result = apiInstance.TopNews(sourceCountry, language, date, headlinesOnly);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling NewsApi.TopNews: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TopNewsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Top News
    ApiResponse<TopNews200Response> response = apiInstance.TopNewsWithHttpInfo(sourceCountry, language, date, headlinesOnly);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling NewsApi.TopNewsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sourceCountry** | **string** | The ISO 3166 country code of the country for which top news should be retrieved. |  |
| **language** | **string** | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. |  |
| **date** | **string?** | The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional]  |
| **headlinesOnly** | **bool?** | Whether to only return basic information such as id, title, and url of the news. | [optional]  |

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

