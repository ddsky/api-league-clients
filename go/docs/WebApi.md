# com.apileague.client\WebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExtractAuthors**](WebApi.md#ExtractAuthors) | **Get** /extract-authors | Extract Authors
[**ExtractContentFromAWebPage**](WebApi.md#ExtractContentFromAWebPage) | **Get** /extract-content | Extract Content from a Web Page
[**ExtractPublishDate**](WebApi.md#ExtractPublishDate) | **Get** /extract-publish-date | Extract Publish Date
[**SearchWeb**](WebApi.md#SearchWeb) | **Get** /search-web | Search Web



## ExtractAuthors

> InlineResponse20014 ExtractAuthors(ctx).Url(url).Execute()

Extract Authors



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
    url := "https://www.bbc.com/news/entertainment-arts-68270826" // string | The url with the article from which authors should be extracted.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.WebApi.ExtractAuthors(context.Background()).Url(url).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WebApi.ExtractAuthors``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExtractAuthors`: InlineResponse20014
    fmt.Fprintf(os.Stdout, "Response from `WebApi.ExtractAuthors`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractAuthorsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url with the article from which authors should be extracted. | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractContentFromAWebPage

> InlineResponse20012 ExtractContentFromAWebPage(ctx).Url(url).Execute()

Extract Content from a Web Page



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
    url := "https://www.bbc.com/news/entertainment-arts-68270826" // string | The url for which the content will be extracted.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.WebApi.ExtractContentFromAWebPage(context.Background()).Url(url).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WebApi.ExtractContentFromAWebPage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExtractContentFromAWebPage`: InlineResponse20012
    fmt.Fprintf(os.Stdout, "Response from `WebApi.ExtractContentFromAWebPage`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractContentFromAWebPageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url for which the content will be extracted. | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractPublishDate

> InlineResponse20013 ExtractPublishDate(ctx).Url(url).Execute()

Extract Publish Date



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
    url := "https://www.bbc.com/news/entertainment-arts-68270826" // string | The url for which the publish date should be extracted.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.WebApi.ExtractPublishDate(context.Background()).Url(url).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WebApi.ExtractPublishDate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExtractPublishDate`: InlineResponse20013
    fmt.Fprintf(os.Stdout, "Response from `WebApi.ExtractPublishDate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractPublishDateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url for which the publish date should be extracted. | 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchWeb

> InlineResponse20015 SearchWeb(ctx).Query(query).Number(number).Execute()

Search Web



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
    query := "penguins" // string | The search query.
    number := int32(5) // int32 | The number of results to return in range [1,50] (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.WebApi.SearchWeb(context.Background()).Query(query).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WebApi.SearchWeb``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchWeb`: InlineResponse20015
    fmt.Fprintf(os.Stdout, "Response from `WebApi.SearchWeb`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchWebRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **number** | **int32** | The number of results to return in range [1,50] | 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

