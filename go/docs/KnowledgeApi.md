# \KnowledgeAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RandomQuote**](KnowledgeAPI.md#RandomQuote) | **Get** /retrieve-random-quote | Random Quote
[**RandomRiddle**](KnowledgeAPI.md#RandomRiddle) | **Get** /retrieve-random-riddle | Random Riddle
[**RandomTrivia**](KnowledgeAPI.md#RandomTrivia) | **Get** /retrieve-random-trivia | Random Trivia



## RandomQuote

> RandomQuote200Response RandomQuote(ctx).MinLength(minLength).MaxLength(maxLength).Execute()

Random Quote



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
	resp, r, err := apiClient.KnowledgeAPI.RandomQuote(context.Background()).MinLength(minLength).MaxLength(maxLength).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.RandomQuote``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomQuote`: RandomQuote200Response
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.RandomQuote`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomQuoteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | **int32** | The minimum length of the quote in letters. | 
 **maxLength** | **int32** | The maximum length of the quote in letters. | 

### Return type

[**RandomQuote200Response**](RandomQuote200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomRiddle

> RandomRiddle200Response RandomRiddle(ctx).Difficulty(difficulty).Execute()

Random Riddle



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
	resp, r, err := apiClient.KnowledgeAPI.RandomRiddle(context.Background()).Difficulty(difficulty).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.RandomRiddle``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomRiddle`: RandomRiddle200Response
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.RandomRiddle`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomRiddleRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **string** | The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | 

### Return type

[**RandomRiddle200Response**](RandomRiddle200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomTrivia

> RandomTrivia200Response RandomTrivia(ctx).MaxLength(maxLength).Execute()

Random Trivia



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
	resp, r, err := apiClient.KnowledgeAPI.RandomTrivia(context.Background()).MaxLength(maxLength).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeAPI.RandomTrivia``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomTrivia`: RandomTrivia200Response
	fmt.Fprintf(os.Stdout, "Response from `KnowledgeAPI.RandomTrivia`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomTriviaRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int32** | The maximum length of the trivia in letters. | 

### Return type

[**RandomTrivia200Response**](RandomTrivia200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

