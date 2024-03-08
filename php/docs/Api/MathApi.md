# OpenAPI\Client\MathApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**convertUnits()**](MathApi.md#convertUnits) | **GET** /convert-units | Convert Units |


## `convertUnits()`

```php
convertUnits($source_amount, $source_unit, $target_unit, $food_name): \OpenAPI\Client\Model\ConvertUnits200Response
```

Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

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


$apiInstance = new OpenAPI\Client\Api\MathApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$source_amount = 100; // float | The source amount.
$source_unit = kg; // string | The source unit.
$target_unit = lb; // string | The unit to which should be converted.
$food_name = flour; // string | An optional food name. For converting foods the food is relevant as they have different densities.

try {
    $result = $apiInstance->convertUnits($source_amount, $source_unit, $target_unit, $food_name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MathApi->convertUnits: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **source_amount** | **float**| The source amount. | |
| **source_unit** | **string**| The source unit. | |
| **target_unit** | **string**| The unit to which should be converted. | |
| **food_name** | **string**| An optional food name. For converting foods the food is relevant as they have different densities. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ConvertUnits200Response**](../Model/ConvertUnits200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
