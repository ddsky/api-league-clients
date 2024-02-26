# com.apileague.BooksApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FindSimilarBooks**](BooksApi.md#findsimilarbooks) | **GET** /list-similar-books | Find Similar Books
[**SearchBooks**](BooksApi.md#searchbooks) | **GET** /search-books | Search Books


<a name="findsimilarbooks"></a>
# **FindSimilarBooks**
> InlineResponse2001 FindSimilarBooks (int? id, int? number)

Find Similar Books

Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class FindSimilarBooksExample
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

            var apiInstance = new BooksApi();
            var id = 8302059;  // int? | The id of the book to which similar books should be found.
            var number = 10;  // int? | The number of similar books to return in range [1,100] (optional) 

            try
            {
                // Find Similar Books
                InlineResponse2001 result = apiInstance.FindSimilarBooks(id, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BooksApi.FindSimilarBooks: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**| The id of the book to which similar books should be found. | 
 **number** | **int?**| The number of similar books to return in range [1,100] | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchbooks"></a>
# **SearchBooks**
> InlineResponse200 SearchBooks (string query, int? earliestPublishYear, int? latestPublishYear, double? minRating, double? maxRating, string genres, string authors, string isbn, string oclc, string sort, string sortDirection, bool? groupResults, int? offset, int? number)

Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class SearchBooksExample
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

            var apiInstance = new BooksApi();
            var query = books about wizards;  // string | The search query. (optional) 
            var earliestPublishYear = 2022;  // int? | The books must have been published after this year. (optional) 
            var latestPublishYear = 2023;  // int? | The books must have been published before this year. (optional) 
            var minRating = 0.8;  // double? | The minimum rating the book must have gotten in the interval [0,1]. (optional) 
            var maxRating = 0.99;  // double? | The maximum rating the book must have gotten in the interval [0,1]. (optional) 
            var genres = nonfiction;  // string | A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional) 
            var authors = J.K. Rowling;  // string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional) 
            var isbn = 9781781257654;  // string | Only the book matching the ISBN-13 will be returned (optional) 
            var oclc = 864418200;  // string | Only the book matching the OCLC will be returned (optional) 
            var sort = rating;  // string | The sorting criteria (publish-date or rating). (optional) 
            var sortDirection = DESC;  // string | Whether to sort ascending or descending (ASC or DESC). (optional) 
            var groupResults = false;  // bool? | Whether to group similar editions of the same book. (optional) 
            var offset = 0;  // int? | The number of books to skip in range [0,1000] (optional) 
            var number = 10;  // int? | The number of books to return in range [1,100] (optional) 

            try
            {
                // Search Books
                InlineResponse200 result = apiInstance.SearchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BooksApi.SearchBooks: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional] 
 **earliestPublishYear** | **int?**| The books must have been published after this year. | [optional] 
 **latestPublishYear** | **int?**| The books must have been published before this year. | [optional] 
 **minRating** | **double?**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **maxRating** | **double?**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **string**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **string**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] 
 **isbn** | **string**| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **string**| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **string**| The sorting criteria (publish-date or rating). | [optional] 
 **sortDirection** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **groupResults** | **bool?**| Whether to group similar editions of the same book. | [optional] 
 **offset** | **int?**| The number of books to skip in range [0,1000] | [optional] 
 **number** | **int?**| The number of books to return in range [1,100] | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

