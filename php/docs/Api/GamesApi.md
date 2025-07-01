# OpenAPI\Client\GamesApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**findSimilarGamesAPI()**](GamesApi.md#findSimilarGamesAPI) | **GET** /list-similar-games | Find Similar Games API |
| [**retrieveGameById()**](GamesApi.md#retrieveGameById) | **GET** /retrieve-game | Retrieve Game by Id |
| [**searchGamesAPI()**](GamesApi.md#searchGamesAPI) | **GET** /search-games | Search Games API |


## `findSimilarGamesAPI()`

```php
findSimilarGamesAPI($id, $limit): \OpenAPI\Client\Model\FindSimilarGamesAPI200Response
```

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

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


$apiInstance = new OpenAPI\Client\Api\GamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1273796; // int | The id of the game.
$limit = 10; // int | Number of results to return between 1 and 10.

try {
    $result = $apiInstance->findSimilarGamesAPI($id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GamesApi->findSimilarGamesAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The id of the game. | |
| **limit** | **int**| Number of results to return between 1 and 10. | [optional] |

### Return type

[**\OpenAPI\Client\Model\FindSimilarGamesAPI200Response**](../Model/FindSimilarGamesAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `retrieveGameById()`

```php
retrieveGameById($id): \OpenAPI\Client\Model\RetrieveGameById200Response
```

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

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


$apiInstance = new OpenAPI\Client\Api\GamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 1273796; // int | The id of the game.

try {
    $result = $apiInstance->retrieveGameById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GamesApi->retrieveGameById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The id of the game. | |

### Return type

[**\OpenAPI\Client\Model\RetrieveGameById200Response**](../Model/RetrieveGameById200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchGamesAPI()`

```php
searchGamesAPI($query, $offset, $limit, $filters, $sort, $sort_order, $generate_filter_options): \OpenAPI\Client\Model\SearchGamesAPI200Response
```

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

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


$apiInstance = new OpenAPI\Client\Api\GamesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = strategy games; // string | The search query.
$offset = 0; // int | Pagination offset (start index) between 0 and 1000.
$limit = 10; // int | Number of results to return between 1 and 100.
$filters = []; // string | JSON array of filters
$sort = rating; // string | Field to sort by
$sort_order = asc; // string | Sort order (asc or desc)
$generate_filter_options = true; // bool | Whether to generate filter options

try {
    $result = $apiInstance->searchGamesAPI($query, $offset, $limit, $filters, $sort, $sort_order, $generate_filter_options);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GamesApi->searchGamesAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | [optional] |
| **offset** | **int**| Pagination offset (start index) between 0 and 1000. | [optional] |
| **limit** | **int**| Number of results to return between 1 and 100. | [optional] |
| **filters** | **string**| JSON array of filters | [optional] |
| **sort** | **string**| Field to sort by | [optional] |
| **sort_order** | **string**| Sort order (asc or desc) | [optional] |
| **generate_filter_options** | **bool**| Whether to generate filter options | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchGamesAPI200Response**](../Model/SearchGamesAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
