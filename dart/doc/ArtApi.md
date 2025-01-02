# openapi.api.ArtApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageToAsciiArtByURLAPI**](ArtApi.md#imagetoasciiartbyurlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**randomPoemAPI**](ArtApi.md#randompoemapi) | **GET** /retrieve-random-poem | Random Poem API


# **imageToAsciiArtByURLAPI**
> String imageToAsciiArtByURLAPI(url, width, height)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

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

final api_instance = ArtApi();
final url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; // String | The URL to the image.
final width = 200; // int | The maximum width of the image (default 400, max. 500).
final height = 200; // int | The maximum height of the image (default 400, max. 500).

try {
    final result = api_instance.imageToAsciiArtByURLAPI(url, width, height);
    print(result);
} catch (e) {
    print('Exception when calling ArtApi->imageToAsciiArtByURLAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL to the image. | 
 **width** | **int**| The maximum width of the image (default 400, max. 500). | [optional] 
 **height** | **int**| The maximum height of the image (default 400, max. 500). | [optional] 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomPoemAPI**
> RandomPoemAPI200Response randomPoemAPI(minLines, maxLines)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

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

final api_instance = ArtApi();
final minLines = 5; // int | The minimum number of lines of the poem.
final maxLines = 20; // int | The maximum number of lines of the poem.

try {
    final result = api_instance.randomPoemAPI(minLines, maxLines);
    print(result);
} catch (e) {
    print('Exception when calling ArtApi->randomPoemAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **int**| The minimum number of lines of the poem. | [optional] 
 **maxLines** | **int**| The maximum number of lines of the poem. | [optional] 

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

