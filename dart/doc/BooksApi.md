# openapi.api.BooksApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooksAPI**](BooksApi.md#findsimilarbooksapi) | **GET** /list-similar-books | Find Similar Books API
[**searchBooksAPI**](BooksApi.md#searchbooksapi) | **GET** /search-books | Search Books API


# **findSimilarBooksAPI**
> FindSimilarBooksAPI200Response findSimilarBooksAPI(id, number)

Find Similar Books API

Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = BooksApi();
final id = 8302059; // int | The id of the book to which similar books should be found.
final number = 10; // int | The number of similar books to return in range [1,100]

try {
    final result = api_instance.findSimilarBooksAPI(id, number);
    print(result);
} catch (e) {
    print('Exception when calling BooksApi->findSimilarBooksAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the book to which similar books should be found. | 
 **number** | **int**| The number of similar books to return in range [1,100] | [optional] 

### Return type

[**FindSimilarBooksAPI200Response**](FindSimilarBooksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchBooksAPI**
> SearchBooksAPI200Response searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number)

Search Books API

Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = BooksApi();
final query = books about wizards; // String | The search query.
final earliestPublishYear = 2022; // int | The books must have been published after this year.
final latestPublishYear = 2023; // int | The books must have been published before this year.
final minRating = 0.8; // double | The minimum rating the book must have gotten in the interval [0,1].
final maxRating = 0.99; // double | The maximum rating the book must have gotten in the interval [0,1].
final genres = nonfiction; // String | A comma-separated list of genres. Only books from any of the given genres will be returned.
final authors = J.K. Rowling; // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
final isbn = 9781781257654; // String | Only the book matching the ISBN-13 will be returned
final oclc = 864418200; // String | Only the book matching the OCLC will be returned
final sort = rating; // String | The sorting criteria (publish-date or rating).
final sortDirection = DESC; // String | Whether to sort ascending or descending (ASC or DESC).
final groupResults = false; // bool | Whether to group similar editions of the same book.
final offset = 0; // int | The number of books to skip in range [0,1000]
final number = 10; // int | The number of books to return in range [1,100]

try {
    final result = api_instance.searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling BooksApi->searchBooksAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **earliestPublishYear** | **int**| The books must have been published after this year. | [optional] 
 **latestPublishYear** | **int**| The books must have been published before this year. | [optional] 
 **minRating** | **double**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **maxRating** | **double**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **String**| A comma-separated list of genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. | [optional] 
 **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **String**| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **String**| The sorting criteria (publish-date or rating). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **groupResults** | **bool**| Whether to group similar editions of the same book. | [optional] 
 **offset** | **int**| The number of books to skip in range [0,1000] | [optional] 
 **number** | **int**| The number of books to return in range [1,100] | [optional] 

### Return type

[**SearchBooksAPI200Response**](SearchBooksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

