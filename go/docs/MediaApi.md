# \MediaAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DetectMainImageColor**](MediaAPI.md#DetectMainImageColor) | **Get** /detect-color | Detect Main Image Color
[**RescaleImage**](MediaAPI.md#RescaleImage) | **Get** /rescale-image | Rescale Image
[**SearchIcons**](MediaAPI.md#SearchIcons) | **Get** /search-icons | Search Icons
[**SearchRoyaltyFreeImages**](MediaAPI.md#SearchRoyaltyFreeImages) | **Get** /search-images | Search Royalty Free Images



## DetectMainImageColor

> []DetectMainImageColor200ResponseInner DetectMainImageColor(ctx).Url(url).Execute()

Detect Main Image Color



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
	resp, r, err := apiClient.MediaAPI.DetectMainImageColor(context.Background()).Url(url).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.DetectMainImageColor``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectMainImageColor`: []DetectMainImageColor200ResponseInner
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.DetectMainImageColor`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectMainImageColorRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the image for which the colors should be detected. | 

### Return type

[**[]DetectMainImageColor200ResponseInner**](DetectMainImageColor200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RescaleImage

> *os.File RescaleImage(ctx).Url(url).Width(width).Height(height).Crop(crop).Execute()

Rescale Image



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
	resp, r, err := apiClient.MediaAPI.RescaleImage(context.Background()).Url(url).Width(width).Height(height).Crop(crop).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.RescaleImage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RescaleImage`: *os.File
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.RescaleImage`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRescaleImageRequest struct via the builder pattern


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


## SearchIcons

> SearchIcons200Response SearchIcons(ctx).Query(query).OnlyPublicDomain(onlyPublicDomain).Number(number).Execute()

Search Icons



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
	resp, r, err := apiClient.MediaAPI.SearchIcons(context.Background()).Query(query).OnlyPublicDomain(onlyPublicDomain).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.SearchIcons``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchIcons`: SearchIcons200Response
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.SearchIcons`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchIconsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **onlyPublicDomain** | **bool** | If true, only public domain icons will be returned. | 
 **number** | **int32** | The number of icons to return in range [1,100] | 

### Return type

[**SearchIcons200Response**](SearchIcons200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRoyaltyFreeImages

> SearchRoyaltyFreeImages200Response SearchRoyaltyFreeImages(ctx).Query(query).Number(number).Execute()

Search Royalty Free Images



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
	resp, r, err := apiClient.MediaAPI.SearchRoyaltyFreeImages(context.Background()).Query(query).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MediaAPI.SearchRoyaltyFreeImages``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchRoyaltyFreeImages`: SearchRoyaltyFreeImages200Response
	fmt.Fprintf(os.Stdout, "Response from `MediaAPI.SearchRoyaltyFreeImages`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRoyaltyFreeImagesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **number** | **int32** | The number of images to return in range [1,100] | 

### Return type

[**SearchRoyaltyFreeImages200Response**](SearchRoyaltyFreeImages200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

