# OpenAPI\Client\HumorApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**generateNonsenseWordAPI()**](HumorApi.md#generateNonsenseWordAPI) | **GET** /generate-nonsense-word | Generate Nonsense Word API |
| [**randomJokeAPI()**](HumorApi.md#randomJokeAPI) | **GET** /retrieve-random-joke | Random Joke API |
| [**randomMemeAPI()**](HumorApi.md#randomMemeAPI) | **GET** /retrieve-random-meme | Random Meme API |
| [**searchGifsAPI()**](HumorApi.md#searchGifsAPI) | **GET** /search-gifs | Search Gifs API |
| [**searchJokesAPI()**](HumorApi.md#searchJokesAPI) | **GET** /search-jokes | Search Jokes API |
| [**searchMemesAPI()**](HumorApi.md#searchMemesAPI) | **GET** /search-memes | Search Memes API |


## `generateNonsenseWordAPI()`

```php
generateNonsenseWordAPI(): \OpenAPI\Client\Model\GenerateNonsenseWordAPI200Response
```

Generate Nonsense Word API

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

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


$apiInstance = new OpenAPI\Client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->generateNonsenseWordAPI();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->generateNonsenseWordAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\GenerateNonsenseWordAPI200Response**](../Model/GenerateNonsenseWordAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `randomJokeAPI()`

```php
randomJokeAPI($include_tags, $exclude_tags, $min_rating, $max_length): \OpenAPI\Client\Model\SearchJokesAPI200ResponseJokesInner
```

Random Joke API

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

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


$apiInstance = new OpenAPI\Client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$include_tags = animal; // string | A comma-separated list of tags the jokes should have.
$exclude_tags = nsfw,dark; // string | A comma-separated list of tags the jokes must not have.
$min_rating = 0; // float | The minimum rating in range [0.0,1.0] of the jokes.
$max_length = 140; // int | The maximum length of the joke in letters.

try {
    $result = $apiInstance->randomJokeAPI($include_tags, $exclude_tags, $min_rating, $max_length);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->randomJokeAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **include_tags** | **string**| A comma-separated list of tags the jokes should have. | [optional] |
| **exclude_tags** | **string**| A comma-separated list of tags the jokes must not have. | [optional] |
| **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] |
| **max_length** | **int**| The maximum length of the joke in letters. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchJokesAPI200ResponseJokesInner**](../Model/SearchJokesAPI200ResponseJokesInner.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `randomMemeAPI()`

```php
randomMemeAPI($keywords, $keywords_in_image, $media_type, $min_rating, $max_age_days): \OpenAPI\Client\Model\RandomMemeAPI200Response
```

Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

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


$apiInstance = new OpenAPI\Client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = airplane; // string | A comma-separated list of words that must occur in the meme.
$keywords_in_image = true; // bool | Whether the keywords must occur in the image.
$media_type = image; // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
$min_rating = 0; // float | The minimum rating in range [0.0,1.0] of the meme.
$max_age_days = 30; // int | The maximum age of the meme in days.

try {
    $result = $apiInstance->randomMemeAPI($keywords, $keywords_in_image, $media_type, $min_rating, $max_age_days);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->randomMemeAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **keywords** | **string**| A comma-separated list of words that must occur in the meme. | [optional] |
| **keywords_in_image** | **bool**| Whether the keywords must occur in the image. | [optional] |
| **media_type** | **string**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] |
| **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the meme. | [optional] |
| **max_age_days** | **int**| The maximum age of the meme in days. | [optional] |

### Return type

[**\OpenAPI\Client\Model\RandomMemeAPI200Response**](../Model/RandomMemeAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchGifsAPI()`

```php
searchGifsAPI($query, $number): \OpenAPI\Client\Model\SearchGifsAPI200Response
```

Search Gifs API

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

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


$apiInstance = new OpenAPI\Client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = dogs; // string | The search query.
$number = 5; // int | The number of gifs to return in range [1,10]

try {
    $result = $apiInstance->searchGifsAPI($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->searchGifsAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | |
| **number** | **int**| The number of gifs to return in range [1,10] | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchGifsAPI200Response**](../Model/SearchGifsAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchJokesAPI()`

```php
searchJokesAPI($keywords, $include_tags, $exclude_tags, $min_rating, $max_length, $offset, $number): \OpenAPI\Client\Model\SearchJokesAPI200Response
```

Search Jokes API

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

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


$apiInstance = new OpenAPI\Client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = horse,man; // string | A comma-separated list of words that must occur in the joke.
$include_tags = animal; // string | A comma-separated list of tags the jokes should have.
$exclude_tags = nsfw,dark; // string | A comma-separated list of tags the jokes must not have.
$min_rating = 0; // float | The minimum rating in range [0.0,1.0] of the jokes.
$max_length = 140; // float | The maximum length of the joke in letters.
$offset = 0; // int | The number of jokes to skip, between 0 and 1000.
$number = 3; // int | The number of jokes, between 1 and 10.

try {
    $result = $apiInstance->searchJokesAPI($keywords, $include_tags, $exclude_tags, $min_rating, $max_length, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->searchJokesAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **keywords** | **string**| A comma-separated list of words that must occur in the joke. | [optional] |
| **include_tags** | **string**| A comma-separated list of tags the jokes should have. | [optional] |
| **exclude_tags** | **string**| A comma-separated list of tags the jokes must not have. | [optional] |
| **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] |
| **max_length** | **float**| The maximum length of the joke in letters. | [optional] |
| **offset** | **int**| The number of jokes to skip, between 0 and 1000. | [optional] |
| **number** | **int**| The number of jokes, between 1 and 10. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchJokesAPI200Response**](../Model/SearchJokesAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchMemesAPI()`

```php
searchMemesAPI($keywords, $keywords_in_image, $media_type, $min_rating, $max_age_days, $offset, $number): \OpenAPI\Client\Model\SearchMemesAPI200Response
```

Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.

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


$apiInstance = new OpenAPI\Client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = rocket; // string | A comma-separated list of words that must occur in the meme.
$keywords_in_image = true; // bool | Whether the keywords must occur in the image.
$media_type = image; // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
$min_rating = 0; // float | The minimum rating in range [0.0,1.0] of the meme.
$max_age_days = 30; // int | The maximum age of the meme in days.
$offset = 0; // int | The number of memes to skip, between 0 and 1000.
$number = 3; // int | The number of memes, between 1 and 10.

try {
    $result = $apiInstance->searchMemesAPI($keywords, $keywords_in_image, $media_type, $min_rating, $max_age_days, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->searchMemesAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **keywords** | **string**| A comma-separated list of words that must occur in the meme. | [optional] |
| **keywords_in_image** | **bool**| Whether the keywords must occur in the image. | [optional] |
| **media_type** | **string**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] |
| **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the meme. | [optional] |
| **max_age_days** | **int**| The maximum age of the meme in days. | [optional] |
| **offset** | **int**| The number of memes to skip, between 0 and 1000. | [optional] |
| **number** | **int**| The number of memes, between 1 and 10. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchMemesAPI200Response**](../Model/SearchMemesAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
