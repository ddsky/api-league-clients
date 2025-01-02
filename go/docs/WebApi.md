# \WebAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExtractAuthorsAPI**](WebAPI.md#ExtractAuthorsAPI) | **Get** /extract-authors | Extract Authors API
[**ExtractContentFromAWebPageAPI**](WebAPI.md#ExtractContentFromAWebPageAPI) | **Get** /extract-content | Extract Content from a Web Page API
[**ExtractPublishDateAPI**](WebAPI.md#ExtractPublishDateAPI) | **Get** /extract-publish-date | Extract Publish Date API
[**RetrievePageRankAPI**](WebAPI.md#RetrievePageRankAPI) | **Get** /retrieve-page-rank | Retrieve Page Rank API
[**SearchWebAPI**](WebAPI.md#SearchWebAPI) | **Get** /search-web | Search Web API
[**VerifyEmailAddressAPI**](WebAPI.md#VerifyEmailAddressAPI) | **Get** /verify-email | Verify Email Address API



## ExtractAuthorsAPI

> ExtractAuthorsAPI200Response ExtractAuthorsAPI(ctx).Url(url).Execute()

Extract Authors API



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
	url := "https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html" // string | The url with the article from which authors should be extracted.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.WebAPI.ExtractAuthorsAPI(context.Background()).Url(url).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WebAPI.ExtractAuthorsAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractAuthorsAPI`: ExtractAuthorsAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `WebAPI.ExtractAuthorsAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractAuthorsAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url with the article from which authors should be extracted. | 

### Return type

[**ExtractAuthorsAPI200Response**](ExtractAuthorsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractContentFromAWebPageAPI

> ExtractContentFromAWebPageAPI200Response ExtractContentFromAWebPageAPI(ctx).Url(url).Execute()

Extract Content from a Web Page API



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
	url := "https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html" // string | The url for which the content will be extracted.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.WebAPI.ExtractContentFromAWebPageAPI(context.Background()).Url(url).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WebAPI.ExtractContentFromAWebPageAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractContentFromAWebPageAPI`: ExtractContentFromAWebPageAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `WebAPI.ExtractContentFromAWebPageAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractContentFromAWebPageAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url for which the content will be extracted. | 

### Return type

[**ExtractContentFromAWebPageAPI200Response**](ExtractContentFromAWebPageAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractPublishDateAPI

> ExtractPublishDateAPI200Response ExtractPublishDateAPI(ctx).Url(url).Execute()

Extract Publish Date API



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
	url := "https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html" // string | The url for which the publish date should be extracted.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.WebAPI.ExtractPublishDateAPI(context.Background()).Url(url).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WebAPI.ExtractPublishDateAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractPublishDateAPI`: ExtractPublishDateAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `WebAPI.ExtractPublishDateAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractPublishDateAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url for which the publish date should be extracted. | 

### Return type

[**ExtractPublishDateAPI200Response**](ExtractPublishDateAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrievePageRankAPI

> RetrievePageRankAPI200Response RetrievePageRankAPI(ctx).Domain(domain).Execute()

Retrieve Page Rank API



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
	domain := "amazon.com" // string | The domain for which the page rank should be returned.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.WebAPI.RetrievePageRankAPI(context.Background()).Domain(domain).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WebAPI.RetrievePageRankAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrievePageRankAPI`: RetrievePageRankAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `WebAPI.RetrievePageRankAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrievePageRankAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string** | The domain for which the page rank should be returned. | 

### Return type

[**RetrievePageRankAPI200Response**](RetrievePageRankAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchWebAPI

> SearchWebAPI200Response SearchWebAPI(ctx).Query(query).Number(number).Execute()

Search Web API



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
	query := "penguins" // string | The search query.
	number := int32(5) // int32 | The number of results to return in range [1,50] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.WebAPI.SearchWebAPI(context.Background()).Query(query).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WebAPI.SearchWebAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchWebAPI`: SearchWebAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `WebAPI.SearchWebAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchWebAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **number** | **int32** | The number of results to return in range [1,50] | 

### Return type

[**SearchWebAPI200Response**](SearchWebAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VerifyEmailAddressAPI

> VerifyEmailAddressAPI200Response VerifyEmailAddressAPI(ctx).Email(email).Execute()

Verify Email Address API



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
	email := "maxtest@gmail.com" // string | The email address to verify.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.WebAPI.VerifyEmailAddressAPI(context.Background()).Email(email).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `WebAPI.VerifyEmailAddressAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VerifyEmailAddressAPI`: VerifyEmailAddressAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `WebAPI.VerifyEmailAddressAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVerifyEmailAddressAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **string** | The email address to verify. | 

### Return type

[**VerifyEmailAddressAPI200Response**](VerifyEmailAddressAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

