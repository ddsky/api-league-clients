# com.apileague.WebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExtractAuthors**](WebApi.md#extractauthors) | **GET** /extract-authors | Extract Authors
[**ExtractContentFromAWebPage**](WebApi.md#extractcontentfromawebpage) | **GET** /extract-content | Extract Content from a Web Page
[**ExtractPublishDate**](WebApi.md#extractpublishdate) | **GET** /extract-publish-date | Extract Publish Date
[**SearchWeb**](WebApi.md#searchweb) | **GET** /search-web | Search Web


<a name="extractauthors"></a>
# **ExtractAuthors**
> InlineResponse20014 ExtractAuthors (string url)

Extract Authors

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class ExtractAuthorsExample
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

            var apiInstance = new WebApi();
            var url = https://www.bbc.com/news/entertainment-arts-68270826;  // string | The url with the article from which authors should be extracted.

            try
            {
                // Extract Authors
                InlineResponse20014 result = apiInstance.ExtractAuthors(url);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WebApi.ExtractAuthors: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url with the article from which authors should be extracted. | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="extractcontentfromawebpage"></a>
# **ExtractContentFromAWebPage**
> InlineResponse20012 ExtractContentFromAWebPage (string url)

Extract Content from a Web Page

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class ExtractContentFromAWebPageExample
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

            var apiInstance = new WebApi();
            var url = https://www.bbc.com/news/entertainment-arts-68270826;  // string | The url for which the content will be extracted.

            try
            {
                // Extract Content from a Web Page
                InlineResponse20012 result = apiInstance.ExtractContentFromAWebPage(url);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WebApi.ExtractContentFromAWebPage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url for which the content will be extracted. | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="extractpublishdate"></a>
# **ExtractPublishDate**
> InlineResponse20013 ExtractPublishDate (string url)

Extract Publish Date

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class ExtractPublishDateExample
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

            var apiInstance = new WebApi();
            var url = https://www.bbc.com/news/entertainment-arts-68270826;  // string | The url for which the publish date should be extracted.

            try
            {
                // Extract Publish Date
                InlineResponse20013 result = apiInstance.ExtractPublishDate(url);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WebApi.ExtractPublishDate: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url for which the publish date should be extracted. | 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchweb"></a>
# **SearchWeb**
> InlineResponse20015 SearchWeb (string query, int? number)

Search Web

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class SearchWebExample
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

            var apiInstance = new WebApi();
            var query = penguins;  // string | The search query.
            var number = 5;  // int? | The number of results to return in range [1,50] (optional) 

            try
            {
                // Search Web
                InlineResponse20015 result = apiInstance.SearchWeb(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling WebApi.SearchWeb: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **number** | **int?**| The number of results to return in range [1,50] | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

