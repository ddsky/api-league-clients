# MediaApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectMainImageColor**](MediaApi.md#detectMainImageColor) | **GET** /detect-color | Detect Main Image Color
[**rescaleImage**](MediaApi.md#rescaleImage) | **GET** /rescale-image | Rescale Image
[**searchRoyaltyFreeImages**](MediaApi.md#searchRoyaltyFreeImages) | **GET** /search-images | Search Royalty Free Images



## detectMainImageColor

> List&lt;InlineResponse20029&gt; detectMainImageColor(url)

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // String | The url of the image for which the colors should be detected.
try {
    List<InlineResponse20029> result = apiInstance.detectMainImageColor(url);
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

[**List&lt;InlineResponse20029&gt;**](InlineResponse20029.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rescaleImage

> Object rescaleImage(url, width, height, crop)

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
    Object result = apiInstance.rescaleImage(url, width, height, crop);
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

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## searchRoyaltyFreeImages

> InlineResponse20028 searchRoyaltyFreeImages(query, number)

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String query = dogs; // String | The search query.
Integer number = 3; // Integer | The number of images to return in range [1,10]
try {
    InlineResponse20028 result = apiInstance.searchRoyaltyFreeImages(query, number);
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
 **number** | **Integer**| The number of images to return in range [1,10] | [optional] [default to null]

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

