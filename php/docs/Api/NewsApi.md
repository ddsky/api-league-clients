# OpenAPI\Client\NewsApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**extractNews()**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News |
| [**searchNews()**](NewsApi.md#searchNews) | **GET** /search-news | Search News |


## `extractNews()`

```php
extractNews($url, $analyze): \OpenAPI\Client\Model\ExtractNews200Response
```

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

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


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/; // string | The url of the news.
$analyze = true; // bool | Whether to analyze the news (extract entities etc.)

try {
    $result = $apiInstance->extractNews($url, $analyze);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->extractNews: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The url of the news. | |
| **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | |

### Return type

[**\OpenAPI\Client\Model\ExtractNews200Response**](../Model/ExtractNews200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchNews()`

```php
searchNews($text, $source_countries, $language, $min_sentiment, $max_sentiment, $earliest_publish_date, $latest_publish_date, $news_sources, $authors, $entities, $location_filter, $sort, $sort_direction, $offset, $number): \OpenAPI\Client\Model\SearchNews200Response
```

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

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


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$text = tesla; // string | The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
$source_countries = us,uk; // string | A comma-separated list of ISO 3166 country codes from which the news should originate.
$language = en; // string | The ISO 6391 language code of the news.
$min_sentiment = -0.8; // float | The minimal sentiment of the news in range [-1,1].
$max_sentiment = 0.8; // float | The maximal sentiment of the news in range [-1,1].
$earliest_publish_date = 2022-04-22 16:12:35; // string | The news must have been published after this date.
$latest_publish_date = 2022-04-22 16:12:35; // string | The news must have been published before this date.
$news_sources = https://www.bbc.co.uk; // string | A comma-separated list of news sources from which the news should originate.
$authors = John Doe; // string | A comma-separated list of author names. Only news from any of the given authors will be returned.
$entities = ORG:Tesla; // string | Filter news by entities (ORG, PER, or LOC).
$location_filter = 51.050407, 13.737262, 100; // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
$sort = publish-time; // string | The sorting criteria (publish-time or sentiment).
$sort_direction = ASC; // string | Whether to sort ascending or descending (ASC or DESC).
$offset = 0; // int | The number of news to skip in range [0,10000]
$number = 10; // int | The number of news to return in range [1,100]

try {
    $result = $apiInstance->searchNews($text, $source_countries, $language, $min_sentiment, $max_sentiment, $earliest_publish_date, $latest_publish_date, $news_sources, $authors, $entities, $location_filter, $sort, $sort_direction, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->searchNews: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **string**| The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] |
| **source_countries** | **string**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] |
| **language** | **string**| The ISO 6391 language code of the news. | [optional] |
| **min_sentiment** | **float**| The minimal sentiment of the news in range [-1,1]. | [optional] |
| **max_sentiment** | **float**| The maximal sentiment of the news in range [-1,1]. | [optional] |
| **earliest_publish_date** | **string**| The news must have been published after this date. | [optional] |
| **latest_publish_date** | **string**| The news must have been published before this date. | [optional] |
| **news_sources** | **string**| A comma-separated list of news sources from which the news should originate. | [optional] |
| **authors** | **string**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] |
| **entities** | **string**| Filter news by entities (ORG, PER, or LOC). | [optional] |
| **location_filter** | **string**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional] |
| **sort** | **string**| The sorting criteria (publish-time or sentiment). | [optional] |
| **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **int**| The number of news to skip in range [0,10000] | [optional] |
| **number** | **int**| The number of news to return in range [1,100] | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchNews200Response**](../Model/SearchNews200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
