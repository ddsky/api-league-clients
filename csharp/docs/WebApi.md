# apileague.Api.WebApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ExtractAuthors**](WebApi.md#extractauthors) | **GET** /extract-authors | Extract Authors |
| [**ExtractContentFromAWebPage**](WebApi.md#extractcontentfromawebpage) | **GET** /extract-content | Extract Content from a Web Page |
| [**ExtractPublishDate**](WebApi.md#extractpublishdate) | **GET** /extract-publish-date | Extract Publish Date |
| [**RetrievePageRank**](WebApi.md#retrievepagerank) | **GET** /retrieve-page-rank | Retrieve Page Rank |
| [**SearchWeb**](WebApi.md#searchweb) | **GET** /search-web | Search Web |
| [**VerifyEmailAddress**](WebApi.md#verifyemailaddress) | **GET** /verify-email | Verify Email Address |

<a id="extractauthors"></a>
# **ExtractAuthors**
> ExtractAuthors200Response ExtractAuthors (string url)

Extract Authors

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class ExtractAuthorsExample
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

            var apiInstance = new WebApi(config);
            var url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html;  // string | The url with the article from which authors should be extracted.

            try
            {
                // Extract Authors
                ExtractAuthors200Response result = apiInstance.ExtractAuthors(url);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WebApi.ExtractAuthors: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ExtractAuthorsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract Authors
    ApiResponse<ExtractAuthors200Response> response = apiInstance.ExtractAuthorsWithHttpInfo(url);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WebApi.ExtractAuthorsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url with the article from which authors should be extracted. |  |

### Return type

[**ExtractAuthors200Response**](ExtractAuthors200Response.md)

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

<a id="extractcontentfromawebpage"></a>
# **ExtractContentFromAWebPage**
> ExtractContentFromAWebPage200Response ExtractContentFromAWebPage (string url)

Extract Content from a Web Page

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class ExtractContentFromAWebPageExample
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

            var apiInstance = new WebApi(config);
            var url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html;  // string | The url for which the content will be extracted.

            try
            {
                // Extract Content from a Web Page
                ExtractContentFromAWebPage200Response result = apiInstance.ExtractContentFromAWebPage(url);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WebApi.ExtractContentFromAWebPage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ExtractContentFromAWebPageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract Content from a Web Page
    ApiResponse<ExtractContentFromAWebPage200Response> response = apiInstance.ExtractContentFromAWebPageWithHttpInfo(url);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WebApi.ExtractContentFromAWebPageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url for which the content will be extracted. |  |

### Return type

[**ExtractContentFromAWebPage200Response**](ExtractContentFromAWebPage200Response.md)

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

<a id="extractpublishdate"></a>
# **ExtractPublishDate**
> ExtractPublishDate200Response ExtractPublishDate (string url)

Extract Publish Date

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class ExtractPublishDateExample
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

            var apiInstance = new WebApi(config);
            var url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html;  // string | The url for which the publish date should be extracted.

            try
            {
                // Extract Publish Date
                ExtractPublishDate200Response result = apiInstance.ExtractPublishDate(url);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WebApi.ExtractPublishDate: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ExtractPublishDateWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract Publish Date
    ApiResponse<ExtractPublishDate200Response> response = apiInstance.ExtractPublishDateWithHttpInfo(url);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WebApi.ExtractPublishDateWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url for which the publish date should be extracted. |  |

### Return type

[**ExtractPublishDate200Response**](ExtractPublishDate200Response.md)

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

<a id="retrievepagerank"></a>
# **RetrievePageRank**
> RetrievePageRank200Response RetrievePageRank (string domain)

Retrieve Page Rank

This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RetrievePageRankExample
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

            var apiInstance = new WebApi(config);
            var domain = amazon.com;  // string | The domain for which the page rank should be returned.

            try
            {
                // Retrieve Page Rank
                RetrievePageRank200Response result = apiInstance.RetrievePageRank(domain);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WebApi.RetrievePageRank: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RetrievePageRankWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve Page Rank
    ApiResponse<RetrievePageRank200Response> response = apiInstance.RetrievePageRankWithHttpInfo(domain);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WebApi.RetrievePageRankWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **domain** | **string** | The domain for which the page rank should be returned. |  |

### Return type

[**RetrievePageRank200Response**](RetrievePageRank200Response.md)

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

<a id="searchweb"></a>
# **SearchWeb**
> SearchWeb200Response SearchWeb (string query, int? number = null)

Search Web

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchWebExample
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

            var apiInstance = new WebApi(config);
            var query = penguins;  // string | The search query.
            var number = 5;  // int? | The number of results to return in range [1,50] (optional) 

            try
            {
                // Search Web
                SearchWeb200Response result = apiInstance.SearchWeb(query, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WebApi.SearchWeb: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchWebWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Web
    ApiResponse<SearchWeb200Response> response = apiInstance.SearchWebWithHttpInfo(query, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WebApi.SearchWebWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** | The search query. |  |
| **number** | **int?** | The number of results to return in range [1,50] | [optional]  |

### Return type

[**SearchWeb200Response**](SearchWeb200Response.md)

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

<a id="verifyemailaddress"></a>
# **VerifyEmailAddress**
> VerifyEmailAddress200Response VerifyEmailAddress (string email)

Verify Email Address

This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class VerifyEmailAddressExample
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

            var apiInstance = new WebApi(config);
            var email = maxtest@gmail.com;  // string | The email address to verify.

            try
            {
                // Verify Email Address
                VerifyEmailAddress200Response result = apiInstance.VerifyEmailAddress(email);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WebApi.VerifyEmailAddress: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VerifyEmailAddressWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Verify Email Address
    ApiResponse<VerifyEmailAddress200Response> response = apiInstance.VerifyEmailAddressWithHttpInfo(email);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WebApi.VerifyEmailAddressWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **email** | **string** | The email address to verify. |  |

### Return type

[**VerifyEmailAddress200Response**](VerifyEmailAddress200Response.md)

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

