# OpenAPI\Client\ArtApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**imageToAsciiArtByURL()**](ArtApi.md#imageToAsciiArtByURL) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL |
| [**randomPoem()**](ArtApi.md#randomPoem) | **GET** /retrieve-random-poem | Random Poem |


## `imageToAsciiArtByURL()`

```php
imageToAsciiArtByURL($url, $width, $height): string
```

Image to Ascii Art by URL

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

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


$apiInstance = new OpenAPI\Client\Api\ArtApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; // string | The URL to the image.
$width = 200; // int | The maximum width of the image (default 400, max. 500).
$height = 200; // int | The maximum height of the image (default 400, max. 500).

try {
    $result = $apiInstance->imageToAsciiArtByURL($url, $width, $height);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->imageToAsciiArtByURL: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The URL to the image. | |
| **width** | **int**| The maximum width of the image (default 400, max. 500). | [optional] |
| **height** | **int**| The maximum height of the image (default 400, max. 500). | [optional] |

### Return type

**string**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `randomPoem()`

```php
randomPoem($min_lines, $max_lines): \OpenAPI\Client\Model\RandomPoem200Response
```

Random Poem

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

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


$apiInstance = new OpenAPI\Client\Api\ArtApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$min_lines = 5; // int | The minimum number of lines of the poem.
$max_lines = 20; // int | The maximum number of lines of the poem.

try {
    $result = $apiInstance->randomPoem($min_lines, $max_lines);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->randomPoem: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **min_lines** | **int**| The minimum number of lines of the poem. | [optional] |
| **max_lines** | **int**| The maximum number of lines of the poem. | [optional] |

### Return type

[**\OpenAPI\Client\Model\RandomPoem200Response**](../Model/RandomPoem200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
