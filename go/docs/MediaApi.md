# \MediaAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DetectMainImageColorAPI**](MediaAPI.md#DetectMainImageColorAPI) | **Get** /detect-color | Detect Main Image Color API
[**RescaleImageAPI**](MediaAPI.md#RescaleImageAPI) | **Get** /rescale-image | Rescale Image API
[**SearchIconsAPI**](MediaAPI.md#SearchIconsAPI) | **Get** /search-icons | Search Icons API
[**SearchRoyaltyFreeImagesAPI**](MediaAPI.md#SearchRoyaltyFreeImagesAPI) | **Get** /search-images | Search Royalty Free Images API
[**VectorSearchAPI**](MediaAPI.md#VectorSearchAPI) | **Get** /search-vectors | Vector Search API



## DetectMainImageColorAPI

> []DetectMainImageColorAPI200ResponseInner DetectMainImageColorAPI(ctx).Url(url).Execute()

Detect Main Image Color API



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
	url := "https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM " // string | The url of the image for which the colors should be detected.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MediaAPI.DetectMainImageColorAPI(context.Background()).Url(url).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.DetectMainImageColorAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectMainImageColorAPI`: []DetectMainImageColorAPI200ResponseInner
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.DetectMainImageColorAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectMainImageColorAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the image for which the colors should be detected. | 

### Return type

[**[]DetectMainImageColorAPI200ResponseInner**](DetectMainImageColorAPI200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RescaleImageAPI

> *os.File RescaleImageAPI(ctx).Url(url).Width(width).Height(height).Crop(crop).Execute()

Rescale Image API



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
	url := "https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM " // string | The url of the image to be rescaled.
	width := int32(200) // int32 | The desired width of the rescaled image.
	height := int32(200) // int32 | The desired height of the rescaled image.
	crop := true // bool | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MediaAPI.RescaleImageAPI(context.Background()).Url(url).Width(width).Height(height).Crop(crop).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.RescaleImageAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RescaleImageAPI`: *os.File
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.RescaleImageAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRescaleImageAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the image to be rescaled. | 
 **width** | **int32** | The desired width of the rescaled image. | 
 **height** | **int32** | The desired height of the rescaled image. | 
 **crop** | **bool** | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | 

### Return type

[***os.File**](*os.File.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchIconsAPI

> SearchIconsAPI200Response SearchIconsAPI(ctx).Query(query).OnlyPublicDomain(onlyPublicDomain).Number(number).Execute()

Search Icons API



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
	query := "cars" // string | The search query.
	onlyPublicDomain := true // bool | If true, only public domain icons will be returned. (optional)
	number := int32(3) // int32 | The number of icons to return in range [1,100] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MediaAPI.SearchIconsAPI(context.Background()).Query(query).OnlyPublicDomain(onlyPublicDomain).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.SearchIconsAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchIconsAPI`: SearchIconsAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.SearchIconsAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchIconsAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **onlyPublicDomain** | **bool** | If true, only public domain icons will be returned. | 
 **number** | **int32** | The number of icons to return in range [1,100] | 

### Return type

[**SearchIconsAPI200Response**](SearchIconsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRoyaltyFreeImagesAPI

> SearchRoyaltyFreeImagesAPI200Response SearchRoyaltyFreeImagesAPI(ctx).Query(query).Number(number).Execute()

Search Royalty Free Images API



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
	query := "dogs" // string | The search query.
	number := int32(3) // int32 | The number of images to return in range [1,100] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MediaAPI.SearchRoyaltyFreeImagesAPI(context.Background()).Query(query).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.SearchRoyaltyFreeImagesAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchRoyaltyFreeImagesAPI`: SearchRoyaltyFreeImagesAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.SearchRoyaltyFreeImagesAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRoyaltyFreeImagesAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **number** | **int32** | The number of images to return in range [1,100] | 

### Return type

[**SearchRoyaltyFreeImagesAPI200Response**](SearchRoyaltyFreeImagesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VectorSearchAPI

> VectorSearchAPI200Response VectorSearchAPI(ctx).Query(query).Offset(offset).Number(number).Execute()

Vector Search API



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
	query := "airplanes" // string | The search query.
	offset := int32(0) // int32 | The number of vectors to skip, between 0 and 1000 (optional)
	number := int32(3) // int32 | The number of vectors to return in range [1,10] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MediaAPI.VectorSearchAPI(context.Background()).Query(query).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.VectorSearchAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VectorSearchAPI`: VectorSearchAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.VectorSearchAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiVectorSearchAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **offset** | **int32** | The number of vectors to skip, between 0 and 1000 | 
 **number** | **int32** | The number of vectors to return in range [1,10] | 

### Return type

[**VectorSearchAPI200Response**](VectorSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

