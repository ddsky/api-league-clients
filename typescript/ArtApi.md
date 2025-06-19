# .ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artSearchAPI**](ArtApi.md#artSearchAPI) | **GET** /search-artworks | Art Search API
[**imageToAsciiArtByURLAPI**](ArtApi.md#imageToAsciiArtByURLAPI) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**randomPoemAPI**](ArtApi.md#randomPoemAPI) | **GET** /retrieve-random-poem | Random Poem API
[**retrieveArtworkById**](ArtApi.md#retrieveArtworkById) | **GET** /retrieve-artwork | Retrieve Artwork by Id


# **artSearchAPI**
> ArtSearchAPI200Response artSearchAPI()

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:.ArtApiArtSearchAPIRequest = {
  // string | The search query. (optional)
  query: "landscape paintings",
  // number | The artwork must have been created after this date. (optional)
  earliestStartDate: 1750,
  // number | The artwork must have been created before this date. (optional)
  latestStartDate: 1755,
  // number | For artworks with a period of creation, the completion date must be after this date. (optional)
  earliestEndDate: 1751,
  // number | For artworks with a period of creation, the completion date must be before this date. (optional)
  latestEndDate: 1760,
  // number | The minimum aspect ratio (width/height) the artwork image must have. (optional)
  minRatio: 0.8,
  // number | The maximum aspect ratio (width/height) the artwork image must have. (optional)
  maxRatio: 1.5,
  // string | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. (optional)
  type: "painting",
  // string | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. (optional)
  material: "ivory",
  // string | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. (optional)
  technique: "etching",
  // string | The country or region of origin for the artwork (optional)
  origin: "Italy",
  // number | The number of artworks to skip in range [0,1000] (optional)
  offset: 0,
  // number | The number of artworks to return in range [1,10] (optional)
  number: 10,
};

apiInstance.artSearchAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **earliestStartDate** | [**number**] | The artwork must have been created after this date. | (optional) defaults to undefined
 **latestStartDate** | [**number**] | The artwork must have been created before this date. | (optional) defaults to undefined
 **earliestEndDate** | [**number**] | For artworks with a period of creation, the completion date must be after this date. | (optional) defaults to undefined
 **latestEndDate** | [**number**] | For artworks with a period of creation, the completion date must be before this date. | (optional) defaults to undefined
 **minRatio** | [**number**] | The minimum aspect ratio (width/height) the artwork image must have. | (optional) defaults to undefined
 **maxRatio** | [**number**] | The maximum aspect ratio (width/height) the artwork image must have. | (optional) defaults to undefined
 **type** | [**string**] | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | (optional) defaults to undefined
 **material** | [**string**] | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | (optional) defaults to undefined
 **technique** | [**string**] | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | (optional) defaults to undefined
 **origin** | [**string**] | The country or region of origin for the artwork | (optional) defaults to undefined
 **offset** | [**number**] | The number of artworks to skip in range [0,1000] | (optional) defaults to undefined
 **number** | [**number**] | The number of artworks to return in range [1,10] | (optional) defaults to undefined


### Return type

**ArtSearchAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **imageToAsciiArtByURLAPI**
> string imageToAsciiArtByURLAPI()

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:.ArtApiImageToAsciiArtByURLAPIRequest = {
  // string | The URL to the image.
  url: "https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png",
  // number | The maximum width of the image (default 400, max. 500). (optional)
  width: 200,
  // number | The maximum height of the image (default 400, max. 500). (optional)
  height: 200,
};

apiInstance.imageToAsciiArtByURLAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The URL to the image. | defaults to undefined
 **width** | [**number**] | The maximum width of the image (default 400, max. 500). | (optional) defaults to undefined
 **height** | [**number**] | The maximum height of the image (default 400, max. 500). | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **randomPoemAPI**
> RandomPoemAPI200Response randomPoemAPI()

Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:.ArtApiRandomPoemAPIRequest = {
  // number | The minimum number of lines of the poem. (optional)
  minLines: 5,
  // number | The maximum number of lines of the poem. (optional)
  maxLines: 20,
};

apiInstance.randomPoemAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | [**number**] | The minimum number of lines of the poem. | (optional) defaults to undefined
 **maxLines** | [**number**] | The maximum number of lines of the poem. | (optional) defaults to undefined


### Return type

**RandomPoemAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **retrieveArtworkById**
> RetrieveArtworkById200Response retrieveArtworkById()

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:.ArtApiRetrieveArtworkByIdRequest = {
  // number | The id of the artwork.
  id: 26226350,
};

apiInstance.retrieveArtworkById(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the artwork. | defaults to undefined


### Return type

**RetrieveArtworkById200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


