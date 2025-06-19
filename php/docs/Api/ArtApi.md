# OpenAPI\Client\ArtApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**artSearchAPI()**](ArtApi.md#artSearchAPI) | **GET** /search-artworks | Art Search API |
| [**imageToAsciiArtByURLAPI()**](ArtApi.md#imageToAsciiArtByURLAPI) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API |
| [**randomPoemAPI()**](ArtApi.md#randomPoemAPI) | **GET** /retrieve-random-poem | Random Poem API |
| [**retrieveArtworkById()**](ArtApi.md#retrieveArtworkById) | **GET** /retrieve-artwork | Retrieve Artwork by Id |


## `artSearchAPI()`

```php
artSearchAPI($query, $earliest_start_date, $latest_start_date, $earliest_end_date, $latest_end_date, $min_ratio, $max_ratio, $type, $material, $technique, $origin, $offset, $number): \OpenAPI\Client\Model\ArtSearchAPI200Response
```

Art Search API

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

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
$query = landscape paintings; // string | The search query.
$earliest_start_date = 1750; // int | The artwork must have been created after this date.
$latest_start_date = 1755; // int | The artwork must have been created before this date.
$earliest_end_date = 1751; // int | For artworks with a period of creation, the completion date must be after this date.
$latest_end_date = 1760; // int | For artworks with a period of creation, the completion date must be before this date.
$min_ratio = 0.8; // float | The minimum aspect ratio (width/height) the artwork image must have.
$max_ratio = 1.5; // float | The maximum aspect ratio (width/height) the artwork image must have.
$type = painting; // string | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
$material = ivory; // string | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
$technique = etching; // string | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
$origin = Italy; // string | The country or region of origin for the artwork
$offset = 0; // int | The number of artworks to skip in range [0,1000]
$number = 10; // int | The number of artworks to return in range [1,10]

try {
    $result = $apiInstance->artSearchAPI($query, $earliest_start_date, $latest_start_date, $earliest_end_date, $latest_end_date, $min_ratio, $max_ratio, $type, $material, $technique, $origin, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->artSearchAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | [optional] |
| **earliest_start_date** | **int**| The artwork must have been created after this date. | [optional] |
| **latest_start_date** | **int**| The artwork must have been created before this date. | [optional] |
| **earliest_end_date** | **int**| For artworks with a period of creation, the completion date must be after this date. | [optional] |
| **latest_end_date** | **int**| For artworks with a period of creation, the completion date must be before this date. | [optional] |
| **min_ratio** | **float**| The minimum aspect ratio (width/height) the artwork image must have. | [optional] |
| **max_ratio** | **float**| The maximum aspect ratio (width/height) the artwork image must have. | [optional] |
| **type** | **string**| The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional] |
| **material** | **string**| The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional] |
| **technique** | **string**| The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional] |
| **origin** | **string**| The country or region of origin for the artwork | [optional] |
| **offset** | **int**| The number of artworks to skip in range [0,1000] | [optional] |
| **number** | **int**| The number of artworks to return in range [1,10] | [optional] |

### Return type

[**\OpenAPI\Client\Model\ArtSearchAPI200Response**](../Model/ArtSearchAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `imageToAsciiArtByURLAPI()`

```php
imageToAsciiArtByURLAPI($url, $width, $height): string
```

Image to Ascii Art by URL API

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
    $result = $apiInstance->imageToAsciiArtByURLAPI($url, $width, $height);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->imageToAsciiArtByURLAPI: ', $e->getMessage(), PHP_EOL;
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

## `randomPoemAPI()`

```php
randomPoemAPI($min_lines, $max_lines): \OpenAPI\Client\Model\RandomPoemAPI200Response
```

Random Poem API

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
    $result = $apiInstance->randomPoemAPI($min_lines, $max_lines);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->randomPoemAPI: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **min_lines** | **int**| The minimum number of lines of the poem. | [optional] |
| **max_lines** | **int**| The maximum number of lines of the poem. | [optional] |

### Return type

[**\OpenAPI\Client\Model\RandomPoemAPI200Response**](../Model/RandomPoemAPI200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `retrieveArtworkById()`

```php
retrieveArtworkById($id): \OpenAPI\Client\Model\RetrieveArtworkById200Response
```

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

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
$id = 26226350; // int | The id of the artwork.

try {
    $result = $apiInstance->retrieveArtworkById($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->retrieveArtworkById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The id of the artwork. | |

### Return type

[**\OpenAPI\Client\Model\RetrieveArtworkById200Response**](../Model/RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
