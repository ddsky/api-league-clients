# apileague.Api.GamesApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**FindSimilarGamesAPI**](GamesApi.md#findsimilargamesapi) | **GET** /list-similar-games | Find Similar Games API |
| [**RetrieveGameById**](GamesApi.md#retrievegamebyid) | **GET** /retrieve-game | Retrieve Game by Id |
| [**SearchGamesAPI**](GamesApi.md#searchgamesapi) | **GET** /search-games | Search Games API |

<a id="findsimilargamesapi"></a>
# **FindSimilarGamesAPI**
> FindSimilarGamesAPI200Response FindSimilarGamesAPI (int id, int? limit = null)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class FindSimilarGamesAPIExample
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

            var apiInstance = new GamesApi(config);
            var id = 1273796;  // int | The id of the game.
            var limit = 10;  // int? | Number of results to return between 1 and 10. (optional) 

            try
            {
                // Find Similar Games API
                FindSimilarGamesAPI200Response result = apiInstance.FindSimilarGamesAPI(id, limit);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling GamesApi.FindSimilarGamesAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the FindSimilarGamesAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Find Similar Games API
    ApiResponse<FindSimilarGamesAPI200Response> response = apiInstance.FindSimilarGamesAPIWithHttpInfo(id, limit);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling GamesApi.FindSimilarGamesAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The id of the game. |  |
| **limit** | **int?** | Number of results to return between 1 and 10. | [optional]  |

### Return type

[**FindSimilarGamesAPI200Response**](FindSimilarGamesAPI200Response.md)

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

<a id="retrievegamebyid"></a>
# **RetrieveGameById**
> RetrieveGameById200Response RetrieveGameById (int id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RetrieveGameByIdExample
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

            var apiInstance = new GamesApi(config);
            var id = 1273796;  // int | The id of the game.

            try
            {
                // Retrieve Game by Id
                RetrieveGameById200Response result = apiInstance.RetrieveGameById(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling GamesApi.RetrieveGameById: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RetrieveGameByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve Game by Id
    ApiResponse<RetrieveGameById200Response> response = apiInstance.RetrieveGameByIdWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling GamesApi.RetrieveGameByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The id of the game. |  |

### Return type

[**RetrieveGameById200Response**](RetrieveGameById200Response.md)

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

<a id="searchgamesapi"></a>
# **SearchGamesAPI**
> SearchGamesAPI200Response SearchGamesAPI (string? query = null, int? offset = null, int? limit = null, string? filters = null, string? sort = null, string? sortOrder = null, bool? generateFilterOptions = null)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchGamesAPIExample
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

            var apiInstance = new GamesApi(config);
            var query = strategy games;  // string? | The search query. (optional) 
            var offset = 0;  // int? | Pagination offset (start index) between 0 and 1000. (optional) 
            var limit = 10;  // int? | Number of results to return between 1 and 100. (optional) 
            var filters = [];  // string? | JSON array of filters (optional) 
            var sort = rating;  // string? | Field to sort by (optional) 
            var sortOrder = asc;  // string? | Sort order (asc or desc) (optional) 
            var generateFilterOptions = true;  // bool? | Whether to generate filter options (optional) 

            try
            {
                // Search Games API
                SearchGamesAPI200Response result = apiInstance.SearchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling GamesApi.SearchGamesAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchGamesAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Games API
    ApiResponse<SearchGamesAPI200Response> response = apiInstance.SearchGamesAPIWithHttpInfo(query, offset, limit, filters, sort, sortOrder, generateFilterOptions);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling GamesApi.SearchGamesAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The search query. | [optional]  |
| **offset** | **int?** | Pagination offset (start index) between 0 and 1000. | [optional]  |
| **limit** | **int?** | Number of results to return between 1 and 100. | [optional]  |
| **filters** | **string?** | JSON array of filters | [optional]  |
| **sort** | **string?** | Field to sort by | [optional]  |
| **sortOrder** | **string?** | Sort order (asc or desc) | [optional]  |
| **generateFilterOptions** | **bool?** | Whether to generate filter options | [optional]  |

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

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

