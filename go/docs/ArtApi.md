# \ArtAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ArtSearchAPI**](ArtAPI.md#ArtSearchAPI) | **Get** /search-artworks | Art Search API
[**ImageToAsciiArtByURLAPI**](ArtAPI.md#ImageToAsciiArtByURLAPI) | **Get** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**RandomPoemAPI**](ArtAPI.md#RandomPoemAPI) | **Get** /retrieve-random-poem | Random Poem API
[**RetrieveArtworkById**](ArtAPI.md#RetrieveArtworkById) | **Get** /retrieve-artwork | Retrieve Artwork by Id



## ArtSearchAPI

> ArtSearchAPI200Response ArtSearchAPI(ctx).Query(query).EarliestStartDate(earliestStartDate).LatestStartDate(latestStartDate).EarliestEndDate(earliestEndDate).LatestEndDate(latestEndDate).MinRatio(minRatio).MaxRatio(maxRatio).Type_(type_).Material(material).Technique(technique).Origin(origin).Offset(offset).Number(number).Execute()

Art Search API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	query := "landscape paintings" // string | The search query. (optional)
	earliestStartDate := int32(1750) // int32 | The artwork must have been created after this date. (optional)
	latestStartDate := int32(1755) // int32 | The artwork must have been created before this date. (optional)
	earliestEndDate := int32(1751) // int32 | For artworks with a period of creation, the completion date must be after this date. (optional)
	latestEndDate := int32(1760) // int32 | For artworks with a period of creation, the completion date must be before this date. (optional)
	minRatio := float64(0.8) // float64 | The minimum aspect ratio (width/height) the artwork image must have. (optional)
	maxRatio := float64(1.5) // float64 | The maximum aspect ratio (width/height) the artwork image must have. (optional)
	type_ := "painting" // string | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. (optional)
	material := "ivory" // string | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. (optional)
	technique := "etching" // string | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. (optional)
	origin := "Italy" // string | The country or region of origin for the artwork (optional)
	offset := int32(0) // int32 | The number of artworks to skip in range [0,1000] (optional)
	number := int32(10) // int32 | The number of artworks to return in range [1,10] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.ArtSearchAPI(context.Background()).Query(query).EarliestStartDate(earliestStartDate).LatestStartDate(latestStartDate).EarliestEndDate(earliestEndDate).LatestEndDate(latestEndDate).MinRatio(minRatio).MaxRatio(maxRatio).Type_(type_).Material(material).Technique(technique).Origin(origin).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.ArtSearchAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ArtSearchAPI`: ArtSearchAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.ArtSearchAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiArtSearchAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **earliestStartDate** | **int32** | The artwork must have been created after this date. | 
 **latestStartDate** | **int32** | The artwork must have been created before this date. | 
 **earliestEndDate** | **int32** | For artworks with a period of creation, the completion date must be after this date. | 
 **latestEndDate** | **int32** | For artworks with a period of creation, the completion date must be before this date. | 
 **minRatio** | **float64** | The minimum aspect ratio (width/height) the artwork image must have. | 
 **maxRatio** | **float64** | The maximum aspect ratio (width/height) the artwork image must have. | 
 **type_** | **string** | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | 
 **material** | **string** | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | 
 **technique** | **string** | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | 
 **origin** | **string** | The country or region of origin for the artwork | 
 **offset** | **int32** | The number of artworks to skip in range [0,1000] | 
 **number** | **int32** | The number of artworks to return in range [1,10] | 

### Return type

[**ArtSearchAPI200Response**](ArtSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ImageToAsciiArtByURLAPI

> string ImageToAsciiArtByURLAPI(ctx).Url(url).Width(width).Height(height).Execute()

Image to Ascii Art by URL API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	url := "https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png" // string | The URL to the image.
	width := int32(200) // int32 | The maximum width of the image (default 400, max. 500). (optional)
	height := int32(200) // int32 | The maximum height of the image (default 400, max. 500). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.ImageToAsciiArtByURLAPI(context.Background()).Url(url).Width(width).Height(height).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.ImageToAsciiArtByURLAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ImageToAsciiArtByURLAPI`: string
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.ImageToAsciiArtByURLAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiImageToAsciiArtByURLAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The URL to the image. | 
 **width** | **int32** | The maximum width of the image (default 400, max. 500). | 
 **height** | **int32** | The maximum height of the image (default 400, max. 500). | 

### Return type

**string**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomPoemAPI

> RandomPoemAPI200Response RandomPoemAPI(ctx).MinLines(minLines).MaxLines(maxLines).Execute()

Random Poem API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	minLines := int32(5) // int32 | The minimum number of lines of the poem. (optional)
	maxLines := int32(20) // int32 | The maximum number of lines of the poem. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.RandomPoemAPI(context.Background()).MinLines(minLines).MaxLines(maxLines).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.RandomPoemAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomPoemAPI`: RandomPoemAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.RandomPoemAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomPoemAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **int32** | The minimum number of lines of the poem. | 
 **maxLines** | **int32** | The maximum number of lines of the poem. | 

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrieveArtworkById

> RetrieveArtworkById200Response RetrieveArtworkById(ctx).Id(id).Execute()

Retrieve Artwork by Id



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	id := int32(26226350) // int32 | The id of the artwork.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.RetrieveArtworkById(context.Background()).Id(id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.RetrieveArtworkById``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrieveArtworkById`: RetrieveArtworkById200Response
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.RetrieveArtworkById`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrieveArtworkByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int32** | The id of the artwork. | 

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

