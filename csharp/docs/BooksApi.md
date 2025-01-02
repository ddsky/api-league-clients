# apileague.Api.BooksApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**FindSimilarBooksAPI**](BooksApi.md#findsimilarbooksapi) | **GET** /list-similar-books | Find Similar Books API |
| [**SearchBooksAPI**](BooksApi.md#searchbooksapi) | **GET** /search-books | Search Books API |

<a id="findsimilarbooksapi"></a>
# **FindSimilarBooksAPI**
> FindSimilarBooksAPI200Response FindSimilarBooksAPI (int id, int? number = null)

Find Similar Books API

Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class FindSimilarBooksAPIExample
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

            var apiInstance = new BooksApi(config);
            var id = 8302059;  // int | The id of the book to which similar books should be found.
            var number = 10;  // int? | The number of similar books to return in range [1,100] (optional) 

            try
            {
                // Find Similar Books API
                FindSimilarBooksAPI200Response result = apiInstance.FindSimilarBooksAPI(id, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling BooksApi.FindSimilarBooksAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the FindSimilarBooksAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Find Similar Books API
    ApiResponse<FindSimilarBooksAPI200Response> response = apiInstance.FindSimilarBooksAPIWithHttpInfo(id, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling BooksApi.FindSimilarBooksAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The id of the book to which similar books should be found. |  |
| **number** | **int?** | The number of similar books to return in range [1,100] | [optional]  |

### Return type

[**FindSimilarBooksAPI200Response**](FindSimilarBooksAPI200Response.md)

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

<a id="searchbooksapi"></a>
# **SearchBooksAPI**
> SearchBooksAPI200Response SearchBooksAPI (string? query = null, int? earliestPublishYear = null, int? latestPublishYear = null, double? minRating = null, double? maxRating = null, string? genres = null, string? authors = null, string? isbn = null, string? oclc = null, string? sort = null, string? sortDirection = null, bool? groupResults = null, int? offset = null, int? number = null)

Search Books API

Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchBooksAPIExample
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

            var apiInstance = new BooksApi(config);
            var query = books about wizards;  // string? | The search query. (optional) 
            var earliestPublishYear = 2022;  // int? | The books must have been published after this year. (optional) 
            var latestPublishYear = 2023;  // int? | The books must have been published before this year. (optional) 
            var minRating = 0.8;  // double? | The minimum rating the book must have gotten in the interval [0,1]. (optional) 
            var maxRating = 0.99;  // double? | The maximum rating the book must have gotten in the interval [0,1]. (optional) 
            var genres = nonfiction;  // string? | A comma-separated list of genres. Only books from any of the given genres will be returned. (optional) 
            var authors = J.K. Rowling;  // string? | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional) 
            var isbn = 9781781257654;  // string? | Only the book matching the ISBN-13 will be returned (optional) 
            var oclc = 864418200;  // string? | Only the book matching the OCLC will be returned (optional) 
            var sort = rating;  // string? | The sorting criteria (publish-date or rating). (optional) 
            var sortDirection = DESC;  // string? | Whether to sort ascending or descending (ASC or DESC). (optional) 
            var groupResults = false;  // bool? | Whether to group similar editions of the same book. (optional) 
            var offset = 0;  // int? | The number of books to skip in range [0,1000] (optional) 
            var number = 10;  // int? | The number of books to return in range [1,100] (optional) 

            try
            {
                // Search Books API
                SearchBooksAPI200Response result = apiInstance.SearchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling BooksApi.SearchBooksAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchBooksAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Books API
    ApiResponse<SearchBooksAPI200Response> response = apiInstance.SearchBooksAPIWithHttpInfo(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling BooksApi.SearchBooksAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The search query. | [optional]  |
| **earliestPublishYear** | **int?** | The books must have been published after this year. | [optional]  |
| **latestPublishYear** | **int?** | The books must have been published before this year. | [optional]  |
| **minRating** | **double?** | The minimum rating the book must have gotten in the interval [0,1]. | [optional]  |
| **maxRating** | **double?** | The maximum rating the book must have gotten in the interval [0,1]. | [optional]  |
| **genres** | **string?** | A comma-separated list of genres. Only books from any of the given genres will be returned. | [optional]  |
| **authors** | **string?** | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional]  |
| **isbn** | **string?** | Only the book matching the ISBN-13 will be returned | [optional]  |
| **oclc** | **string?** | Only the book matching the OCLC will be returned | [optional]  |
| **sort** | **string?** | The sorting criteria (publish-date or rating). | [optional]  |
| **sortDirection** | **string?** | Whether to sort ascending or descending (ASC or DESC). | [optional]  |
| **groupResults** | **bool?** | Whether to group similar editions of the same book. | [optional]  |
| **offset** | **int?** | The number of books to skip in range [0,1000] | [optional]  |
| **number** | **int?** | The number of books to return in range [1,100] | [optional]  |

### Return type

[**SearchBooksAPI200Response**](SearchBooksAPI200Response.md)

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

