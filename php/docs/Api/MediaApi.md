# OpenAPI\Client\MediaApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**detectMainImageColor()**](MediaApi.md#detectMainImageColor) | **GET** /detect-color | Detect Main Image Color |
| [**rescaleImage()**](MediaApi.md#rescaleImage) | **GET** /rescale-image | Rescale Image |
| [**searchIcons()**](MediaApi.md#searchIcons) | **GET** /search-icons | Search Icons |
| [**searchRoyaltyFreeImages()**](MediaApi.md#searchRoyaltyFreeImages) | **GET** /search-images | Search Royalty Free Images |


## `detectMainImageColor()`

```php
detectMainImageColor($url): \OpenAPI\Client\Model\DetectMainImageColor200ResponseInner[]
```

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MediaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // string | The url of the image for which the colors should be detected.

try {
    $result = $apiInstance->detectMainImageColor($url);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MediaApi->detectMainImageColor: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The url of the image for which the colors should be detected. | |

### Return type

[**\OpenAPI\Client\Model\DetectMainImageColor200ResponseInner[]**](../Model/DetectMainImageColor200ResponseInner.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rescaleImage()`

```php
rescaleImage($url, $width, $height, $crop): \SplFileObject
```

Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MediaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // string | The url of the image to be rescaled.
$width = 200; // int | The desired width of the rescaled image.
$height = 200; // int | The desired height of the rescaled image.
$crop = true; // bool | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

try {
    $result = $apiInstance->rescaleImage($url, $width, $height, $crop);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MediaApi->rescaleImage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The url of the image to be rescaled. | |
| **width** | **int**| The desired width of the rescaled image. | |
| **height** | **int**| The desired height of the rescaled image. | |
| **crop** | **bool**| Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | |

### Return type

**\SplFileObject**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/octet-stream`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchIcons()`

```php
searchIcons($query, $only_public_domain, $number): \OpenAPI\Client\Model\SearchIcons200Response
```

Search Icons

Search through millions of icons to match any topic you want.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MediaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = cars; // string | The search query.
$only_public_domain = true; // bool | If true, only public domain icons will be returned.
$number = 3; // int | The number of icons to return in range [1,100]

try {
    $result = $apiInstance->searchIcons($query, $only_public_domain, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MediaApi->searchIcons: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | |
| **only_public_domain** | **bool**| If true, only public domain icons will be returned. | [optional] |
| **number** | **int**| The number of icons to return in range [1,100] | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchIcons200Response**](../Model/SearchIcons200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchRoyaltyFreeImages()`

```php
searchRoyaltyFreeImages($query, $number): \OpenAPI\Client\Model\SearchRoyaltyFreeImages200Response
```

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MediaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = dogs; // string | The search query.
$number = 3; // int | The number of images to return in range [1,100]

try {
    $result = $apiInstance->searchRoyaltyFreeImages($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MediaApi->searchRoyaltyFreeImages: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | |
| **number** | **int**| The number of images to return in range [1,100] | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchRoyaltyFreeImages200Response**](../Model/SearchRoyaltyFreeImages200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
