# \GamesAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FindSimilarGamesAPI**](GamesAPI.md#FindSimilarGamesAPI) | **Get** /list-similar-games | Find Similar Games API
[**RetrieveGameById**](GamesAPI.md#RetrieveGameById) | **Get** /retrieve-game | Retrieve Game by Id
[**SearchGamesAPI**](GamesAPI.md#SearchGamesAPI) | **Get** /search-games | Search Games API



## FindSimilarGamesAPI

> FindSimilarGamesAPI200Response FindSimilarGamesAPI(ctx).Id(id).Limit(limit).Execute()

Find Similar Games API



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
	id := int32(1273796) // int32 | The id of the game.
	limit := int32(10) // int32 | Number of results to return between 1 and 10. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GamesAPI.FindSimilarGamesAPI(context.Background()).Id(id).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GamesAPI.FindSimilarGamesAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `FindSimilarGamesAPI`: FindSimilarGamesAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `GamesAPI.FindSimilarGamesAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFindSimilarGamesAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int32** | The id of the game. | 
 **limit** | **int32** | Number of results to return between 1 and 10. | 

### Return type

[**FindSimilarGamesAPI200Response**](FindSimilarGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrieveGameById

> RetrieveGameById200Response RetrieveGameById(ctx).Id(id).Execute()

Retrieve Game by Id



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
	id := int32(1273796) // int32 | The id of the game.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GamesAPI.RetrieveGameById(context.Background()).Id(id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GamesAPI.RetrieveGameById``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrieveGameById`: RetrieveGameById200Response
	fmt.Fprintf(os.Stdout, "Response from `GamesAPI.RetrieveGameById`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrieveGameByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int32** | The id of the game. | 

### Return type

[**RetrieveGameById200Response**](RetrieveGameById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGamesAPI

> SearchGamesAPI200Response SearchGamesAPI(ctx).Query(query).Offset(offset).Limit(limit).Filters(filters).Sort(sort).SortOrder(sortOrder).GenerateFilterOptions(generateFilterOptions).Execute()

Search Games API



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
	query := "strategy games" // string | The search query. (optional)
	offset := int32(0) // int32 | Pagination offset (start index) between 0 and 1000. (optional)
	limit := int32(10) // int32 | Number of results to return between 1 and 100. (optional)
	filters := "[]" // string | JSON array of filters (optional)
	sort := "rating" // string | Field to sort by (optional)
	sortOrder := "asc" // string | Sort order (asc or desc) (optional)
	generateFilterOptions := true // bool | Whether to generate filter options (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GamesAPI.SearchGamesAPI(context.Background()).Query(query).Offset(offset).Limit(limit).Filters(filters).Sort(sort).SortOrder(sortOrder).GenerateFilterOptions(generateFilterOptions).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GamesAPI.SearchGamesAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchGamesAPI`: SearchGamesAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `GamesAPI.SearchGamesAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchGamesAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **offset** | **int32** | Pagination offset (start index) between 0 and 1000. | 
 **limit** | **int32** | Number of results to return between 1 and 100. | 
 **filters** | **string** | JSON array of filters | 
 **sort** | **string** | Field to sort by | 
 **sortOrder** | **string** | Sort order (asc or desc) | 
 **generateFilterOptions** | **bool** | Whether to generate filter options | 

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

