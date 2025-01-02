# MediaApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectMainImageColorAPI**](MediaApi.md#detectMainImageColorAPI) | **GET** /detect-color | Detect Main Image Color API
[**rescaleImageAPI**](MediaApi.md#rescaleImageAPI) | **GET** /rescale-image | Rescale Image API
[**searchIconsAPI**](MediaApi.md#searchIconsAPI) | **GET** /search-icons | Search Icons API
[**searchRoyaltyFreeImagesAPI**](MediaApi.md#searchRoyaltyFreeImagesAPI) | **GET** /search-images | Search Royalty Free Images API
[**vectorSearchAPI**](MediaApi.md#vectorSearchAPI) | **GET** /search-vectors | Vector Search API



## detectMainImageColorAPI

> List&lt;DetectMainImageColorAPI200ResponseInner&gt; detectMainImageColorAPI(url)

Detect Main Image Color API

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // String | The url of the image for which the colors should be detected.
try {
    List<DetectMainImageColorAPI200ResponseInner> result = apiInstance.detectMainImageColorAPI(url);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#detectMainImageColorAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the image for which the colors should be detected. | [default to null]

### Return type

[**List&lt;DetectMainImageColorAPI200ResponseInner&gt;**](DetectMainImageColorAPI200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rescaleImageAPI

> File rescaleImageAPI(url, width, height, crop)

Rescale Image API

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
    File result = apiInstance.rescaleImageAPI(url, width, height, crop);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#rescaleImageAPI");
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


## searchIconsAPI

> SearchIconsAPI200Response searchIconsAPI(query, onlyPublicDomain, number)

Search Icons API

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
    SearchIconsAPI200Response result = apiInstance.searchIconsAPI(query, onlyPublicDomain, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#searchIconsAPI");
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

[**SearchIconsAPI200Response**](SearchIconsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRoyaltyFreeImagesAPI

> SearchRoyaltyFreeImagesAPI200Response searchRoyaltyFreeImagesAPI(query, number)

Search Royalty Free Images API

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String query = dogs; // String | The search query.
Integer number = 3; // Integer | The number of images to return in range [1,100]
try {
    SearchRoyaltyFreeImagesAPI200Response result = apiInstance.searchRoyaltyFreeImagesAPI(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#searchRoyaltyFreeImagesAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **number** | **Integer**| The number of images to return in range [1,100] | [optional] [default to null]

### Return type

[**SearchRoyaltyFreeImagesAPI200Response**](SearchRoyaltyFreeImagesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vectorSearchAPI

> VectorSearchAPI200Response vectorSearchAPI(query, offset, number)

Vector Search API

Search through over 700,000 free to use vector icons. The license is either \&quot;PUBLIC_DOMAIN\&quot; or \&quot;ATTRIBUTION\&quot;. If it is \&quot;ATTRIBUTION\&quot; just attribute the author somewhere in your project.

### Example

```java
// Import classes:
//import com.apileague.MediaApi;

MediaApi apiInstance = new MediaApi();
String query = airplanes; // String | The search query.
Integer offset = 0; // Integer | The number of vectors to skip, between 0 and 1000
Integer number = 3; // Integer | The number of vectors to return in range [1,10]
try {
    VectorSearchAPI200Response result = apiInstance.vectorSearchAPI(query, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#vectorSearchAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **offset** | **Integer**| The number of vectors to skip, between 0 and 1000 | [optional] [default to null]
 **number** | **Integer**| The number of vectors to return in range [1,10] | [optional] [default to null]

### Return type

[**VectorSearchAPI200Response**](VectorSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

