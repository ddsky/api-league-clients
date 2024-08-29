# openapi.api.MediaApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectMainImageColor**](MediaApi.md#detectmainimagecolor) | **GET** /detect-color | Detect Main Image Color
[**rescaleImage**](MediaApi.md#rescaleimage) | **GET** /rescale-image | Rescale Image
[**searchIcons**](MediaApi.md#searchicons) | **GET** /search-icons | Search Icons
[**searchRoyaltyFreeImages**](MediaApi.md#searchroyaltyfreeimages) | **GET** /search-images | Search Royalty Free Images


# **detectMainImageColor**
> List<DetectMainImageColor200ResponseInner> detectMainImageColor(url)

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = MediaApi();
final url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // String | The url of the image for which the colors should be detected.

try {
    final result = api_instance.detectMainImageColor(url);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->detectMainImageColor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the image for which the colors should be detected. | 

### Return type

[**List<DetectMainImageColor200ResponseInner>**](DetectMainImageColor200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rescaleImage**
> MultipartFile rescaleImage(url, width, height, crop)

Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = MediaApi();
final url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // String | The url of the image to be rescaled.
final width = 200; // int | The desired width of the rescaled image.
final height = 200; // int | The desired height of the rescaled image.
final crop = true; // bool | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

try {
    final result = api_instance.rescaleImage(url, width, height, crop);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->rescaleImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the image to be rescaled. | 
 **width** | **int**| The desired width of the rescaled image. | 
 **height** | **int**| The desired height of the rescaled image. | 
 **crop** | **bool**| Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIcons**
> SearchIcons200Response searchIcons(query, onlyPublicDomain, number)

Search Icons

Search through millions of icons to match any topic you want.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = MediaApi();
final query = cars; // String | The search query.
final onlyPublicDomain = true; // bool | If true, only public domain icons will be returned.
final number = 3; // int | The number of icons to return in range [1,100]

try {
    final result = api_instance.searchIcons(query, onlyPublicDomain, number);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->searchIcons: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **onlyPublicDomain** | **bool**| If true, only public domain icons will be returned. | [optional] 
 **number** | **int**| The number of icons to return in range [1,100] | [optional] 

### Return type

[**SearchIcons200Response**](SearchIcons200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRoyaltyFreeImages**
> SearchRoyaltyFreeImages200Response searchRoyaltyFreeImages(query, number)

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = MediaApi();
final query = dogs; // String | The search query.
final number = 3; // int | The number of images to return in range [1,100]

try {
    final result = api_instance.searchRoyaltyFreeImages(query, number);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->searchRoyaltyFreeImages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **number** | **int**| The number of images to return in range [1,100] | [optional] 

### Return type

[**SearchRoyaltyFreeImages200Response**](SearchRoyaltyFreeImages200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

