# com.apileague.client\HumorApi

All URIs are relative to https://api.apileague.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord()**](HumorApi.md#generateNonsenseWord) | **GET** /generate-nonsense-word | Generate Nonsense Word
[**randomJoke()**](HumorApi.md#randomJoke) | **GET** /retrieve-random-joke | Random Joke
[**randomMeme()**](HumorApi.md#randomMeme) | **GET** /retrieve-random-meme | Random Meme
[**searchGifs()**](HumorApi.md#searchGifs) | **GET** /search-gifs | Search Gifs
[**searchJokes()**](HumorApi.md#searchJokes) | **GET** /search-jokes | Search Jokes
[**searchMemes()**](HumorApi.md#searchMemes) | **GET** /search-memes | Search Memes


## `generateNonsenseWord()`

```php
generateNonsenseWord(): \com.apileague.client\com.apileague.client.model\InlineResponse2008
```

Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.apileague.client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->generateNonsenseWord();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->generateNonsenseWord: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\com.apileague.client\com.apileague.client.model\InlineResponse2008**](../Model/InlineResponse2008.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `randomJoke()`

```php
randomJoke($include_tags, $exclude_tags, $min_rating, $max_length): \com.apileague.client\com.apileague.client.model\InlineResponse2004Jokes
```

Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.apileague.client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$include_tags = animal; // string | A comma-separated list of tags the jokes should have.
$exclude_tags = nsfw,dark; // string | A comma-separated list of tags the jokes must not have.
$min_rating = 0; // double | The minimum rating in range [0.0,1.0] of the jokes.
$max_length = 140; // int | The maximum length of the joke in letters.

try {
    $result = $apiInstance->randomJoke($include_tags, $exclude_tags, $min_rating, $max_length);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->randomJoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_tags** | **string**| A comma-separated list of tags the jokes should have. | [optional]
 **exclude_tags** | **string**| A comma-separated list of tags the jokes must not have. | [optional]
 **min_rating** | **double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional]
 **max_length** | **int**| The maximum length of the joke in letters. | [optional]

### Return type

[**\com.apileague.client\com.apileague.client.model\InlineResponse2004Jokes**](../Model/InlineResponse2004Jokes.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `randomMeme()`

```php
randomMeme($keywords, $keywords_in_image, $media_type, $min_rating, $max_age_days): \com.apileague.client\com.apileague.client.model\InlineResponse2006
```

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.apileague.client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = airplane; // string | A comma-separated list of words that must occur in the meme.
$keywords_in_image = true; // bool | Whether the keywords must occur in the image.
$media_type = image; // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
$min_rating = 0; // double | The minimum rating in range [0.0-1.0] of the meme.
$max_age_days = 30; // int | The maximum age of the meme in days.

try {
    $result = $apiInstance->randomMeme($keywords, $keywords_in_image, $media_type, $min_rating, $max_age_days);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->randomMeme: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the meme. | [optional]
 **keywords_in_image** | **bool**| Whether the keywords must occur in the image. | [optional]
 **media_type** | **string**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional]
 **min_rating** | **double**| The minimum rating in range [0.0-1.0] of the meme. | [optional]
 **max_age_days** | **int**| The maximum age of the meme in days. | [optional]

### Return type

[**\com.apileague.client\com.apileague.client.model\InlineResponse2006**](../Model/InlineResponse2006.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchGifs()`

```php
searchGifs($query, $number): \com.apileague.client\com.apileague.client.model\InlineResponse2007
```

Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.apileague.client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = dogs; // string | The search query.
$number = 5; // int | The number of gifs to return in range [1,10]

try {
    $result = $apiInstance->searchGifs($query, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->searchGifs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. |
 **number** | **int**| The number of gifs to return in range [1,10] | [optional]

### Return type

[**\com.apileague.client\com.apileague.client.model\InlineResponse2007**](../Model/InlineResponse2007.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchJokes()`

```php
searchJokes($keywords, $include_tags, $exclude_tags, $min_rating, $max_length, $offset, $number): \com.apileague.client\com.apileague.client.model\InlineResponse2004
```

Search Jokes

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.apileague.client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = horse,man; // string | A comma-separated list of words that must occur in the joke.
$include_tags = animal; // string | A comma-separated list of tags the jokes should have.
$exclude_tags = nsfw,dark; // string | A comma-separated list of tags the jokes must not have.
$min_rating = 0; // double | The minimum rating (0-10) of the jokes.
$max_length = 140; // double | The maximum length of the joke in letters.
$offset = 0; // int | The number of jokes to skip, between 0 and 1000.
$number = 3; // int | The number of jokes, between 1 and 10.

try {
    $result = $apiInstance->searchJokes($keywords, $include_tags, $exclude_tags, $min_rating, $max_length, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->searchJokes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the joke. | [optional]
 **include_tags** | **string**| A comma-separated list of tags the jokes should have. | [optional]
 **exclude_tags** | **string**| A comma-separated list of tags the jokes must not have. | [optional]
 **min_rating** | **double**| The minimum rating (0-10) of the jokes. | [optional]
 **max_length** | **double**| The maximum length of the joke in letters. | [optional]
 **offset** | **int**| The number of jokes to skip, between 0 and 1000. | [optional]
 **number** | **int**| The number of jokes, between 1 and 10. | [optional]

### Return type

[**\com.apileague.client\com.apileague.client.model\InlineResponse2004**](../Model/InlineResponse2004.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchMemes()`

```php
searchMemes($keywords, $keywords_in_image, $media_type, $min_rating, $max_age_days, $offset, $number): \com.apileague.client\com.apileague.client.model\InlineResponse2005
```

Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.apileague.client\Api\HumorApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$keywords = rocket; // string | A comma-separated list of words that must occur in the meme.
$keywords_in_image = true; // bool | Whether the keywords must occur in the image.
$media_type = image; // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
$min_rating = 0; // double | The minimum rating in range [0.0,1.0] of the meme.
$max_age_days = 30; // int | The maximum age of the meme in days.
$offset = 0; // int | The number of memes to skip, between 0 and 1000.
$number = 3; // int | The number of memes, between 0 and 10.

try {
    $result = $apiInstance->searchMemes($keywords, $keywords_in_image, $media_type, $min_rating, $max_age_days, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HumorApi->searchMemes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the meme. | [optional]
 **keywords_in_image** | **bool**| Whether the keywords must occur in the image. | [optional]
 **media_type** | **string**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional]
 **min_rating** | **double**| The minimum rating in range [0.0,1.0] of the meme. | [optional]
 **max_age_days** | **int**| The maximum age of the meme in days. | [optional]
 **offset** | **int**| The number of memes to skip, between 0 and 1000. | [optional]
 **number** | **int**| The number of memes, between 0 and 10. | [optional]

### Return type

[**\com.apileague.client\com.apileague.client.model\InlineResponse2005**](../Model/InlineResponse2005.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
