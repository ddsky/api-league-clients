# MediaApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectMainImageColor**](MediaApi.md#detectMainImageColor) | **GET** /detect-color | Detect Main Image Color
[**rescaleImage**](MediaApi.md#rescaleImage) | **GET** /rescale-image | Rescale Image
[**searchIcons**](MediaApi.md#searchIcons) | **GET** /search-icons | Search Icons
[**searchRoyaltyFreeImages**](MediaApi.md#searchRoyaltyFreeImages) | **GET** /search-images | Search Royalty Free Images



## detectMainImageColor

> List&lt;DetectMainImageColor200ResponseInner&gt; detectMainImageColor(url)

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // String | The url of the image for which the colors should be detected.
try {
    List<DetectMainImageColor200ResponseInner> result = apiInstance.detectMainImageColor(url);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#detectMainImageColor");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the image for which the colors should be detected. | [default to null]

### Return type

[**List&lt;DetectMainImageColor200ResponseInner&gt;**](DetectMainImageColor200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rescaleImage

> File rescaleImage(url, width, height, crop)

Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // String | The url of the image to be rescaled.
Integer width = 200; // Integer | The desired width of the rescaled image.
Integer height = 200; // Integer | The desired height of the rescaled image.
Boolean crop = true; // Boolean | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
try {
    File result = apiInstance.rescaleImage(url, width, height, crop);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#rescaleImage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the image to be rescaled. | [default to null]
 **width** | **Integer**| The desired width of the rescaled image. | [default to null]
 **height** | **Integer**| The desired height of the rescaled image. | [default to null]
 **crop** | **Boolean**| Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | [default to null]

### Return type

[**File**](File.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## searchIcons

> SearchIcons200Response searchIcons(query, onlyPublicDomain, number)

Search Icons

Search through millions of icons to match any topic you want.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String query = cars; // String | The search query.
Boolean onlyPublicDomain = true; // Boolean | If true, only public domain icons will be returned.
Integer number = 3; // Integer | The number of icons to return in range [1,100]
try {
    SearchIcons200Response result = apiInstance.searchIcons(query, onlyPublicDomain, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#searchIcons");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **onlyPublicDomain** | **Boolean**| If true, only public domain icons will be returned. | [optional] [default to null]
 **number** | **Integer**| The number of icons to return in range [1,100] | [optional] [default to null]

### Return type

[**SearchIcons200Response**](SearchIcons200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRoyaltyFreeImages

> SearchRoyaltyFreeImages200Response searchRoyaltyFreeImages(query, number)

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String query = dogs; // String | The search query.
Integer number = 3; // Integer | The number of images to return in range [1,100]
try {
    SearchRoyaltyFreeImages200Response result = apiInstance.searchRoyaltyFreeImages(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#searchRoyaltyFreeImages");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **number** | **Integer**| The number of images to return in range [1,100] | [optional] [default to null]

### Return type

[**SearchRoyaltyFreeImages200Response**](SearchRoyaltyFreeImages200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

