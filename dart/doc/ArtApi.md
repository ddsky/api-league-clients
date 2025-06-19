# openapi.api.ArtApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artSearchAPI**](ArtApi.md#artsearchapi) | **GET** /search-artworks | Art Search API
[**imageToAsciiArtByURLAPI**](ArtApi.md#imagetoasciiartbyurlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**randomPoemAPI**](ArtApi.md#randompoemapi) | **GET** /retrieve-random-poem | Random Poem API
[**retrieveArtworkById**](ArtApi.md#retrieveartworkbyid) | **GET** /retrieve-artwork | Retrieve Artwork by Id


# **artSearchAPI**
> ArtSearchAPI200Response artSearchAPI(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number)

Art Search API

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = ArtApi();
final query = landscape paintings; // String | The search query.
final earliestStartDate = 1750; // int | The artwork must have been created after this date.
final latestStartDate = 1755; // int | The artwork must have been created before this date.
final earliestEndDate = 1751; // int | For artworks with a period of creation, the completion date must be after this date.
final latestEndDate = 1760; // int | For artworks with a period of creation, the completion date must be before this date.
final minRatio = 0.8; // double | The minimum aspect ratio (width/height) the artwork image must have.
final maxRatio = 1.5; // double | The maximum aspect ratio (width/height) the artwork image must have.
final type = painting; // String | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
final material = ivory; // String | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
final technique = etching; // String | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
final origin = Italy; // String | The country or region of origin for the artwork
final offset = 0; // int | The number of artworks to skip in range [0,1000]
final number = 10; // int | The number of artworks to return in range [1,10]

try {
    final result = api_instance.artSearchAPI(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling ArtApi->artSearchAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **earliestStartDate** | **int**| The artwork must have been created after this date. | [optional] 
 **latestStartDate** | **int**| The artwork must have been created before this date. | [optional] 
 **earliestEndDate** | **int**| For artworks with a period of creation, the completion date must be after this date. | [optional] 
 **latestEndDate** | **int**| For artworks with a period of creation, the completion date must be before this date. | [optional] 
 **minRatio** | **double**| The minimum aspect ratio (width/height) the artwork image must have. | [optional] 
 **maxRatio** | **double**| The maximum aspect ratio (width/height) the artwork image must have. | [optional] 
 **type** | **String**| The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional] 
 **material** | **String**| The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional] 
 **technique** | **String**| The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional] 
 **origin** | **String**| The country or region of origin for the artwork | [optional] 
 **offset** | **int**| The number of artworks to skip in range [0,1000] | [optional] 
 **number** | **int**| The number of artworks to return in range [1,10] | [optional] 

### Return type

[**ArtSearchAPI200Response**](ArtSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageToAsciiArtByURLAPI**
> String imageToAsciiArtByURLAPI(url, width, height)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = ArtApi();
final url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; // String | The URL to the image.
final width = 200; // int | The maximum width of the image (default 400, max. 500).
final height = 200; // int | The maximum height of the image (default 400, max. 500).

try {
    final result = api_instance.imageToAsciiArtByURLAPI(url, width, height);
    print(result);
} catch (e) {
    print('Exception when calling ArtApi->imageToAsciiArtByURLAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL to the image. | 
 **width** | **int**| The maximum width of the image (default 400, max. 500). | [optional] 
 **height** | **int**| The maximum height of the image (default 400, max. 500). | [optional] 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomPoemAPI**
> RandomPoemAPI200Response randomPoemAPI(minLines, maxLines)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = ArtApi();
final minLines = 5; // int | The minimum number of lines of the poem.
final maxLines = 20; // int | The maximum number of lines of the poem.

try {
    final result = api_instance.randomPoemAPI(minLines, maxLines);
    print(result);
} catch (e) {
    print('Exception when calling ArtApi->randomPoemAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **int**| The minimum number of lines of the poem. | [optional] 
 **maxLines** | **int**| The maximum number of lines of the poem. | [optional] 

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveArtworkById**
> RetrieveArtworkById200Response retrieveArtworkById(id)

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = ArtApi();
final id = 26226350; // int | The id of the artwork.

try {
    final result = api_instance.retrieveArtworkById(id);
    print(result);
} catch (e) {
    print('Exception when calling ArtApi->retrieveArtworkById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the artwork. | 

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

