# \BooksAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FindSimilarBooks**](BooksAPI.md#FindSimilarBooks) | **Get** /list-similar-books | Find Similar Books
[**SearchBooks**](BooksAPI.md#SearchBooks) | **Get** /search-books | Search Books



## FindSimilarBooks

> FindSimilarBooks200Response FindSimilarBooks(ctx, id).Number(number).Execute()

Find Similar Books



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	id := int32(8302059) // int32 | The id of the book to which similar books should be found.
	number := int32(10) // int32 | The number of similar books to return in range [1,100] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BooksAPI.FindSimilarBooks(context.Background(), id).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BooksAPI.FindSimilarBooks``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `FindSimilarBooks`: FindSimilarBooks200Response
	fmt.Fprintf(os.Stdout, "Response from `BooksAPI.FindSimilarBooks`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The id of the book to which similar books should be found. | 

### Other Parameters

Other parameters are passed through a pointer to a apiFindSimilarBooksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **number** | **int32** | The number of similar books to return in range [1,100] | 

### Return type

[**FindSimilarBooks200Response**](FindSimilarBooks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchBooks

> SearchBooks200Response SearchBooks(ctx).Query(query).EarliestPublishYear(earliestPublishYear).LatestPublishYear(latestPublishYear).MinRating(minRating).MaxRating(maxRating).Genres(genres).Authors(authors).Isbn(isbn).Oclc(oclc).Sort(sort).SortDirection(sortDirection).GroupResults(groupResults).Offset(offset).Number(number).Execute()

Search Books



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	query := "books about wizards" // string | The search query. (optional)
	earliestPublishYear := int32(2022) // int32 | The books must have been published after this year. (optional)
	latestPublishYear := int32(2023) // int32 | The books must have been published before this year. (optional)
	minRating := float64(0.8) // float64 | The minimum rating the book must have gotten in the interval [0,1]. (optional)
	maxRating := float64(0.99) // float64 | The maximum rating the book must have gotten in the interval [0,1]. (optional)
	genres := "nonfiction" // string | A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
	authors := "J.K. Rowling" // string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional)
	isbn := "9781781257654" // string | Only the book matching the ISBN-13 will be returned (optional)
	oclc := "864418200" // string | Only the book matching the OCLC will be returned (optional)
	sort := "rating" // string | The sorting criteria (publish-date or rating). (optional)
	sortDirection := "DESC" // string | Whether to sort ascending or descending (ASC or DESC). (optional)
	groupResults := false // bool | Whether to group similar editions of the same book. (optional)
	offset := int32(0) // int32 | The number of books to skip in range [0,1000] (optional)
	number := int32(10) // int32 | The number of books to return in range [1,100] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BooksAPI.SearchBooks(context.Background()).Query(query).EarliestPublishYear(earliestPublishYear).LatestPublishYear(latestPublishYear).MinRating(minRating).MaxRating(maxRating).Genres(genres).Authors(authors).Isbn(isbn).Oclc(oclc).Sort(sort).SortDirection(sortDirection).GroupResults(groupResults).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BooksAPI.SearchBooks``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchBooks`: SearchBooks200Response
	fmt.Fprintf(os.Stdout, "Response from `BooksAPI.SearchBooks`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchBooksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **earliestPublishYear** | **int32** | The books must have been published after this year. | 
 **latestPublishYear** | **int32** | The books must have been published before this year. | 
 **minRating** | **float64** | The minimum rating the book must have gotten in the interval [0,1]. | 
 **maxRating** | **float64** | The maximum rating the book must have gotten in the interval [0,1]. | 
 **genres** | **string** | A comma-separated list of genres. Only books from any of the given genres will be returned. | 
 **authors** | **string** | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | 
 **isbn** | **string** | Only the book matching the ISBN-13 will be returned | 
 **oclc** | **string** | Only the book matching the OCLC will be returned | 
 **sort** | **string** | The sorting criteria (publish-date or rating). | 
 **sortDirection** | **string** | Whether to sort ascending or descending (ASC or DESC). | 
 **groupResults** | **bool** | Whether to group similar editions of the same book. | 
 **offset** | **int32** | The number of books to skip in range [0,1000] | 
 **number** | **int32** | The number of books to return in range [1,100] | 

### Return type

[**SearchBooks200Response**](SearchBooks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

