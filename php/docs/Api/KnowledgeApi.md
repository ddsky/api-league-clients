# OpenAPI\Client\KnowledgeApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**randomQuote()**](KnowledgeApi.md#randomQuote) | **GET** /retrieve-random-quote | Random Quote |
| [**randomTrivia()**](KnowledgeApi.md#randomTrivia) | **GET** /retrieve-random-trivia | Random Trivia |


## `randomQuote()`

```php
randomQuote($min_length, $max_length): \OpenAPI\Client\Model\RandomQuote200Response
```

Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

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


$apiInstance = new OpenAPI\Client\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$min_length = 120; // int | The minimum length of the quote in letters.
$max_length = 300; // int | The maximum length of the quote in letters.

try {
    $result = $apiInstance->randomQuote($min_length, $max_length);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->randomQuote: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **min_length** | **int**| The minimum length of the quote in letters. | [optional] |
| **max_length** | **int**| The maximum length of the quote in letters. | [optional] |

### Return type

[**\OpenAPI\Client\Model\RandomQuote200Response**](../Model/RandomQuote200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `randomTrivia()`

```php
randomTrivia($max_length): \OpenAPI\Client\Model\RandomTrivia200Response
```

Random Trivia

This endpoint returns a random piece of trivia.

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


$apiInstance = new OpenAPI\Client\Api\KnowledgeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$max_length = 300; // int | The maximum length of the trivia in letters.

try {
    $result = $apiInstance->randomTrivia($max_length);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling KnowledgeApi->randomTrivia: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **max_length** | **int**| The maximum length of the trivia in letters. | [optional] |

### Return type

[**\OpenAPI\Client\Model\RandomTrivia200Response**](../Model/RandomTrivia200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
