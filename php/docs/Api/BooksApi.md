# OpenAPI\Client\BooksApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**findSimilarBooksAPI()**](BooksApi.md#findSimilarBooksAPI) | **GET** /list-similar-books | Find Similar Books API |
| [**searchBooksAPI()**](BooksApi.md#searchBooksAPI) | **GET** /search-books | Search Books API |


## `findSimilarBooksAPI()`

```php
findSimilarBooksAPI($id, $number): \OpenAPI\Client\Model\FindSimilarBooksAPI200Response
```

Find Similar Books API

Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

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


$apiInstance = new OpenAPI\Client\Api\BooksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 8302059; // int | The id of the book to which similar books should be found.
$number = 10; // int | The number of similar books to return in range [1,100]

try {
    $result = $apiInstance->findSimilarBooksAPI($id, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BooksApi->findSimilarBooksAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The id of the book to which similar books should be found. | |
| **number** | **int**| The number of similar books to return in range [1,100] | [optional] |

### Return type

[**\OpenAPI\Client\Model\FindSimilarBooksAPI200Response**](../Model/FindSimilarBooksAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchBooksAPI()`

```php
searchBooksAPI($query, $earliest_publish_year, $latest_publish_year, $min_rating, $max_rating, $genres, $authors, $isbn, $oclc, $sort, $sort_direction, $group_results, $offset, $number): \OpenAPI\Client\Model\SearchBooksAPI200Response
```

Search Books API

Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

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


$apiInstance = new OpenAPI\Client\Api\BooksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = books about wizards; // string | The search query.
$earliest_publish_year = 2022; // int | The books must have been published after this year.
$latest_publish_year = 2023; // int | The books must have been published before this year.
$min_rating = 0.8; // float | The minimum rating the book must have gotten in the interval [0,1].
$max_rating = 0.99; // float | The maximum rating the book must have gotten in the interval [0,1].
$genres = nonfiction; // string | A comma-separated list of genres. Only books from any of the given genres will be returned.
$authors = J.K. Rowling; // string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
$isbn = 9781781257654; // string | Only the book matching the ISBN-13 will be returned
$oclc = 864418200; // string | Only the book matching the OCLC will be returned
$sort = rating; // string | The sorting criteria (publish-date or rating).
$sort_direction = DESC; // string | Whether to sort ascending or descending (ASC or DESC).
$group_results = false; // bool | Whether to group similar editions of the same book.
$offset = 0; // int | The number of books to skip in range [0,1000]
$number = 10; // int | The number of books to return in range [1,100]

try {
    $result = $apiInstance->searchBooksAPI($query, $earliest_publish_year, $latest_publish_year, $min_rating, $max_rating, $genres, $authors, $isbn, $oclc, $sort, $sort_direction, $group_results, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BooksApi->searchBooksAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | [optional] |
| **earliest_publish_year** | **int**| The books must have been published after this year. | [optional] |
| **latest_publish_year** | **int**| The books must have been published before this year. | [optional] |
| **min_rating** | **float**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] |
| **max_rating** | **float**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] |
| **genres** | **string**| A comma-separated list of genres. Only books from any of the given genres will be returned. | [optional] |
| **authors** | **string**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] |
| **isbn** | **string**| Only the book matching the ISBN-13 will be returned | [optional] |
| **oclc** | **string**| Only the book matching the OCLC will be returned | [optional] |
| **sort** | **string**| The sorting criteria (publish-date or rating). | [optional] |
| **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **group_results** | **bool**| Whether to group similar editions of the same book. | [optional] |
| **offset** | **int**| The number of books to skip in range [0,1000] | [optional] |
| **number** | **int**| The number of books to return in range [1,100] | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchBooksAPI200Response**](../Model/SearchBooksAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
