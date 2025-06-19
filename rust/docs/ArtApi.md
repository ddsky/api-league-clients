# \ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**art_search_api**](ArtApi.md#art_search_api) | **GET** /search-artworks | Art Search API
[**image_to_ascii_art_by_urlapi**](ArtApi.md#image_to_ascii_art_by_urlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**random_poem_api**](ArtApi.md#random_poem_api) | **GET** /retrieve-random-poem | Random Poem API
[**retrieve_artwork_by_id**](ArtApi.md#retrieve_artwork_by_id) | **GET** /retrieve-artwork | Retrieve Artwork by Id



## art_search_api

> models::ArtSearchApi200Response art_search_api(query, earliest_start_date, latest_start_date, earliest_end_date, latest_end_date, min_ratio, max_ratio, r#type, material, technique, origin, offset, number)
Art Search API

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The search query. |  |
**earliest_start_date** | Option<**i32**> | The artwork must have been created after this date. |  |
**latest_start_date** | Option<**i32**> | The artwork must have been created before this date. |  |
**earliest_end_date** | Option<**i32**> | For artworks with a period of creation, the completion date must be after this date. |  |
**latest_end_date** | Option<**i32**> | For artworks with a period of creation, the completion date must be before this date. |  |
**min_ratio** | Option<**f64**> | The minimum aspect ratio (width/height) the artwork image must have. |  |
**max_ratio** | Option<**f64**> | The maximum aspect ratio (width/height) the artwork image must have. |  |
**r#type** | Option<**String**> | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. |  |
**material** | Option<**String**> | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. |  |
**technique** | Option<**String**> | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. |  |
**origin** | Option<**String**> | The country or region of origin for the artwork |  |
**offset** | Option<**i32**> | The number of artworks to skip in range [0,1000] |  |
**number** | Option<**i32**> | The number of artworks to return in range [1,10] |  |

### Return type

[**models::ArtSearchApi200Response**](artSearchAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## image_to_ascii_art_by_urlapi

> String image_to_ascii_art_by_urlapi(url, width, height)
Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The URL to the image. | [required] |
**width** | Option<**i32**> | The maximum width of the image (default 400, max. 500). |  |
**height** | Option<**i32**> | The maximum height of the image (default 400, max. 500). |  |

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_poem_api

> models::RandomPoemApi200Response random_poem_api(min_lines, max_lines)
Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**min_lines** | Option<**i32**> | The minimum number of lines of the poem. |  |
**max_lines** | Option<**i32**> | The maximum number of lines of the poem. |  |

### Return type

[**models::RandomPoemApi200Response**](randomPoemAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## retrieve_artwork_by_id

> models::RetrieveArtworkById200Response retrieve_artwork_by_id(id)
Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the artwork. | [required] |

### Return type

[**models::RetrieveArtworkById200Response**](retrieveArtworkById_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

