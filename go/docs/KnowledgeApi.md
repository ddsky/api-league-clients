# com.apileague.client\KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RandomQuote**](KnowledgeApi.md#RandomQuote) | **Get** /retrieve-random-quote | Random Quote
[**RandomTrivia**](KnowledgeApi.md#RandomTrivia) | **Get** /retrieve-random-trivia | Random Trivia



## RandomQuote

> InlineResponse20010 RandomQuote(ctx).MinLength(minLength).MaxLength(maxLength).Execute()

Random Quote



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    minLength := int32(120) // int32 | The minimum length of the quote in letters. (optional)
    maxLength := int32(300) // int32 | The maximum length of the quote in letters. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.KnowledgeApi.RandomQuote(context.Background()).MinLength(minLength).MaxLength(maxLength).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeApi.RandomQuote``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RandomQuote`: InlineResponse20010
    fmt.Fprintf(os.Stdout, "Response from `KnowledgeApi.RandomQuote`: %v\n", resp)
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

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomTrivia

> InlineResponse2009 RandomTrivia(ctx).MaxLength(maxLength).Execute()

Random Trivia



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    maxLength := int32(300) // int32 | The maximum length of the trivia in letters. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.KnowledgeApi.RandomTrivia(context.Background()).MaxLength(maxLength).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `KnowledgeApi.RandomTrivia``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RandomTrivia`: InlineResponse2009
    fmt.Fprintf(os.Stdout, "Response from `KnowledgeApi.RandomTrivia`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomTriviaRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **int32** | The maximum length of the trivia in letters. | 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

