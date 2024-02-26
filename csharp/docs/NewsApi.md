# com.apileague.NewsApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExtractNews**](NewsApi.md#extractnews) | **GET** /extract-news | Extract News
[**SearchNews**](NewsApi.md#searchnews) | **GET** /search-news | Search News


<a name="extractnews"></a>
# **ExtractNews**
> InlineResponse2003 ExtractNews (string url, bool? analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class ExtractNewsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new NewsApi();
            var url = https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/;  // string | The url of the news.
            var analyze = true;  // bool? | Whether to analyze the news (extract entities etc.)

            try
            {
                // Extract News
                InlineResponse2003 result = apiInstance.ExtractNews(url, analyze);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling NewsApi.ExtractNews: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the news. | 
 **analyze** | **bool?**| Whether to analyze the news (extract entities etc.) | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchnews"></a>
# **SearchNews**
> InlineResponse2002 SearchNews (string text, string sourceCountries, string language, double? minSentiment, double? maxSentiment, string earliestPublishDate, string latestPublishDate, string newsSources, string authors, string entities, string locationFilter, string sort, string sortDirection, int? offset, int? number)

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class SearchNewsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new NewsApi();
            var text = tesla;  // string | The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford (optional) 
            var sourceCountries = us,uk;  // string | A comma-separated list of ISO 3166 country codes from which the news should originate. (optional) 
            var language = en;  // string | The ISO 6391 language code of the news. (optional) 
            var minSentiment = -0.8;  // double? | The minimal sentiment of the news in range [-1,1]. (optional) 
            var maxSentiment = 0.8;  // double? | The maximal sentiment of the news in range [-1,1]. (optional) 
            var earliestPublishDate = 2022-04-22 16:12:35;  // string | The news must have been published after this date. (optional) 
            var latestPublishDate = 2022-04-22 16:12:35;  // string | The news must have been published before this date. (optional) 
            var newsSources = https://www.bbc.co.uk;  // string | A comma-separated list of news sources from which the news should originate. (optional) 
            var authors = John Doe;  // string | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional) 
            var entities = ORG:Tesla;  // string | Filter news by entities (see semantic types). (optional) 
            var locationFilter = 51.050407, 13.737262, 100;  // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" (optional) 
            var sort = publish-time;  // string | The sorting criteria (publish-time or sentiment). (optional) 
            var sortDirection = ASC;  // string | Whether to sort ascending or descending (ASC or DESC). (optional) 
            var offset = 0;  // int? | The number of news to skip in range [0,10000] (optional) 
            var number = 10;  // int? | The number of news to return in range [1,100] (optional) 

            try
            {
                // Search News
                InlineResponse2002 result = apiInstance.SearchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling NewsApi.SearchNews: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] 
 **sourceCountries** | **string**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] 
 **language** | **string**| The ISO 6391 language code of the news. | [optional] 
 **minSentiment** | **double?**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **double?**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **string**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **string**| The news must have been published before this date. | [optional] 
 **newsSources** | **string**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **string**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **string**| Filter news by entities (see semantic types). | [optional] 
 **locationFilter** | **string**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional] 
 **sort** | **string**| The sorting criteria (publish-time or sentiment). | [optional] 
 **sortDirection** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int?**| The number of news to skip in range [0,10000] | [optional] 
 **number** | **int?**| The number of news to return in range [1,100] | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

