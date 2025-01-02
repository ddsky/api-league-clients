# \KnowledgeAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RandomQuoteAPI**](KnowledgeAPI.md#RandomQuoteAPI) | **Get** /retrieve-random-quote | Random Quote API
[**RandomRiddleAPI**](KnowledgeAPI.md#RandomRiddleAPI) | **Get** /retrieve-random-riddle | Random Riddle API
[**RandomTriviaAPI**](KnowledgeAPI.md#RandomTriviaAPI) | **Get** /retrieve-random-trivia | Random Trivia API



## RandomQuoteAPI

> RandomQuoteAPI200Response RandomQuoteAPI(ctx).MinLength(minLength).MaxLength(maxLength).Execute()

Random Quote API



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
	minLength := int32(120) // int32 | The minimum length of the quote in letters. (optional)
	maxLength := int32(300) // int32 | The maximum length of the quote in letters. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.RandomQuoteAPI(context.Background()).MinLength(minLength).MaxLength(maxLength).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.RandomQuoteAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomQuoteAPI`: RandomQuoteAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.RandomQuoteAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomQuoteAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | **int32** | The minimum length of the quote in letters. | 
 **maxLength** | **int32** | The maximum length of the quote in letters. | 

### Return type

[**RandomQuoteAPI200Response**](RandomQuoteAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomRiddleAPI

> RandomRiddleAPI200Response RandomRiddleAPI(ctx).Difficulty(difficulty).Execute()

Random Riddle API



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
	difficulty := "easy" // string | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\". (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.RandomRiddleAPI(context.Background()).Difficulty(difficulty).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.RandomRiddleAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomRiddleAPI`: RandomRiddleAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.RandomRiddleAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomRiddleAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **string** | The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | 

### Return type

[**RandomRiddleAPI200Response**](RandomRiddleAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomTriviaAPI

> RandomTriviaAPI200Response RandomTriviaAPI(ctx).MaxLength(maxLength).Execute()

Random Trivia API



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
	maxLength := int32(300) // int32 | The maximum length of the trivia in letters. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.KnowledgeAPI.RandomTriviaAPI(context.Background()).MaxLength(maxLength).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.RandomTriviaAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomTriviaAPI`: RandomTriviaAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.RandomTriviaAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomTriviaAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int32** | The maximum length of the trivia in letters. | 

### Return type

[**RandomTriviaAPI200Response**](RandomTriviaAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

