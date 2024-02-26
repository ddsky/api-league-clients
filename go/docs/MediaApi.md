# com.apileague.client\MediaApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DetectMainImageColor**](MediaApi.md#DetectMainImageColor) | **Get** /detect-color | Detect Main Image Color
[**RescaleImage**](MediaApi.md#RescaleImage) | **Get** /rescale-image | Rescale Image
[**SearchRoyaltyFreeImages**](MediaApi.md#SearchRoyaltyFreeImages) | **Get** /search-images | Search Royalty Free Images



## DetectMainImageColor

> []InlineResponse20029 DetectMainImageColor(ctx).Url(url).Execute()

Detect Main Image Color



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
    url := "https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM " // string | The url of the image for which the colors should be detected.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MediaApi.DetectMainImageColor(context.Background()).Url(url).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MediaApi.DetectMainImageColor``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DetectMainImageColor`: []InlineResponse20029
    fmt.Fprintf(os.Stdout, "Response from `MediaApi.DetectMainImageColor`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectMainImageColorRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the image for which the colors should be detected. | 

### Return type

[**[]InlineResponse20029**](InlineResponse20029.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RescaleImage

> map[string]interface{} RescaleImage(ctx).Url(url).Width(width).Height(height).Crop(crop).Execute()

Rescale Image



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
    url := "https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM " // string | The url of the image to be rescaled.
    width := int32(200) // int32 | The desired width of the rescaled image.
    height := int32(200) // int32 | The desired height of the rescaled image.
    crop := true // bool | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MediaApi.RescaleImage(context.Background()).Url(url).Width(width).Height(height).Crop(crop).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MediaApi.RescaleImage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RescaleImage`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `MediaApi.RescaleImage`: %v\n", resp)
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

**map[string]interface{}**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRoyaltyFreeImages

> InlineResponse20028 SearchRoyaltyFreeImages(ctx).Query(query).Number(number).Execute()

Search Royalty Free Images



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
    query := "dogs" // string | The search query.
    number := int32(3) // int32 | The number of images to return in range [1,10] (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.MediaApi.SearchRoyaltyFreeImages(context.Background()).Query(query).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MediaApi.SearchRoyaltyFreeImages``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchRoyaltyFreeImages`: InlineResponse20028
    fmt.Fprintf(os.Stdout, "Response from `MediaApi.SearchRoyaltyFreeImages`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRoyaltyFreeImagesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **number** | **int32** | The number of images to return in range [1,10] | 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

