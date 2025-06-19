# ApileagueJs.ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artSearchAPI**](ArtApi.md#artSearchAPI) | **GET** /search-artworks | Art Search API
[**imageToAsciiArtByURLAPI**](ArtApi.md#imageToAsciiArtByURLAPI) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**randomPoemAPI**](ArtApi.md#randomPoemAPI) | **GET** /retrieve-random-poem | Random Poem API
[**retrieveArtworkById**](ArtApi.md#retrieveArtworkById) | **GET** /retrieve-artwork | Retrieve Artwork by Id



## artSearchAPI

> ArtSearchAPI200Response artSearchAPI(opts)

Art Search API

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.ArtApi();
let opts = {
  'query': "landscape paintings", // String | The search query.
  'earliestStartDate': 1750, // Number | The artwork must have been created after this date.
  'latestStartDate': 1755, // Number | The artwork must have been created before this date.
  'earliestEndDate': 1751, // Number | For artworks with a period of creation, the completion date must be after this date.
  'latestEndDate': 1760, // Number | For artworks with a period of creation, the completion date must be before this date.
  'minRatio': 0.8, // Number | The minimum aspect ratio (width/height) the artwork image must have.
  'maxRatio': 1.5, // Number | The maximum aspect ratio (width/height) the artwork image must have.
  'type': "painting", // String | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
  'material': "ivory", // String | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
  'technique': "etching", // String | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
  'origin': "Italy", // String | The country or region of origin for the artwork
  'offset': 0, // Number | The number of artworks to skip in range [0,1000]
  'number': 10 // Number | The number of artworks to return in range [1,10]
};
apiInstance.artSearchAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **earliestStartDate** | **Number**| The artwork must have been created after this date. | [optional] 
 **latestStartDate** | **Number**| The artwork must have been created before this date. | [optional] 
 **earliestEndDate** | **Number**| For artworks with a period of creation, the completion date must be after this date. | [optional] 
 **latestEndDate** | **Number**| For artworks with a period of creation, the completion date must be before this date. | [optional] 
 **minRatio** | **Number**| The minimum aspect ratio (width/height) the artwork image must have. | [optional] 
 **maxRatio** | **Number**| The maximum aspect ratio (width/height) the artwork image must have. | [optional] 
 **type** | **String**| The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional] 
 **material** | **String**| The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional] 
 **technique** | **String**| The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional] 
 **origin** | **String**| The country or region of origin for the artwork | [optional] 
 **offset** | **Number**| The number of artworks to skip in range [0,1000] | [optional] 
 **number** | **Number**| The number of artworks to return in range [1,10] | [optional] 

### Return type

[**ArtSearchAPI200Response**](ArtSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## imageToAsciiArtByURLAPI

> String imageToAsciiArtByURLAPI(url, opts)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.ArtApi();
let url = "https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png"; // String | The URL to the image.
let opts = {
  'width': 200, // Number | The maximum width of the image (default 400, max. 500).
  'height': 200 // Number | The maximum height of the image (default 400, max. 500).
};
apiInstance.imageToAsciiArtByURLAPI(url, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL to the image. | 
 **width** | **Number**| The maximum width of the image (default 400, max. 500). | [optional] 
 **height** | **Number**| The maximum height of the image (default 400, max. 500). | [optional] 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## randomPoemAPI

> RandomPoemAPI200Response randomPoemAPI(opts)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.ArtApi();
let opts = {
  'minLines': 5, // Number | The minimum number of lines of the poem.
  'maxLines': 20 // Number | The maximum number of lines of the poem.
};
apiInstance.randomPoemAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **Number**| The minimum number of lines of the poem. | [optional] 
 **maxLines** | **Number**| The maximum number of lines of the poem. | [optional] 

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieveArtworkById

> RetrieveArtworkById200Response retrieveArtworkById(id)

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.ArtApi();
let id = 26226350; // Number | The id of the artwork.
apiInstance.retrieveArtworkById(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the artwork. | 

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

