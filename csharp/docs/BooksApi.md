# apileague.Api.BooksApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**FindSimilarBooks**](BooksApi.md#findsimilarbooks) | **GET** /list-similar-books | Find Similar Books |
| [**SearchBooks**](BooksApi.md#searchbooks) | **GET** /search-books | Search Books |

<a id="findsimilarbooks"></a>
# **FindSimilarBooks**
> FindSimilarBooks200Response FindSimilarBooks (int id, int? number = null)

Find Similar Books

Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class FindSimilarBooksExample
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
                // Find Similar Books
                FindSimilarBooks200Response result = apiInstance.FindSimilarBooks(id, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling BooksApi.FindSimilarBooks: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the FindSimilarBooksWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Find Similar Books
    ApiResponse<FindSimilarBooks200Response> response = apiInstance.FindSimilarBooksWithHttpInfo(id, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling BooksApi.FindSimilarBooksWithHttpInfo: " + e.Message);
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

[**FindSimilarBooks200Response**](FindSimilarBooks200Response.md)

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

<a id="searchbooks"></a>
# **SearchBooks**
> SearchBooks200Response SearchBooks (string? query = null, int? earliestPublishYear = null, int? latestPublishYear = null, double? minRating = null, double? maxRating = null, string? genres = null, string? authors = null, string? isbn = null, string? oclc = null, string? sort = null, string? sortDirection = null, bool? groupResults = null, int? offset = null, int? number = null)

Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchBooksExample
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
            var genres = nonfiction;  // string? | A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional) 
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
                // Search Books
                SearchBooks200Response result = apiInstance.SearchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling BooksApi.SearchBooks: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchBooksWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Books
    ApiResponse<SearchBooks200Response> response = apiInstance.SearchBooksWithHttpInfo(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling BooksApi.SearchBooksWithHttpInfo: " + e.Message);
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
| **genres** | **string?** | A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional]  |
| **authors** | **string?** | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional]  |
| **isbn** | **string?** | Only the book matching the ISBN-13 will be returned | [optional]  |
| **oclc** | **string?** | Only the book matching the OCLC will be returned | [optional]  |
| **sort** | **string?** | The sorting criteria (publish-date or rating). | [optional]  |
| **sortDirection** | **string?** | Whether to sort ascending or descending (ASC or DESC). | [optional]  |
| **groupResults** | **bool?** | Whether to group similar editions of the same book. | [optional]  |
| **offset** | **int?** | The number of books to skip in range [0,1000] | [optional]  |
| **number** | **int?** | The number of books to return in range [1,100] | [optional]  |

### Return type

[**SearchBooks200Response**](SearchBooks200Response.md)

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

