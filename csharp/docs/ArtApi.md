# apileague.Api.ArtApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ArtSearchAPI**](ArtApi.md#artsearchapi) | **GET** /search-artworks | Art Search API |
| [**ImageToAsciiArtByURLAPI**](ArtApi.md#imagetoasciiartbyurlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API |
| [**RandomPoemAPI**](ArtApi.md#randompoemapi) | **GET** /retrieve-random-poem | Random Poem API |
| [**RetrieveArtworkById**](ArtApi.md#retrieveartworkbyid) | **GET** /retrieve-artwork | Retrieve Artwork by Id |

<a id="artsearchapi"></a>
# **ArtSearchAPI**
> ArtSearchAPI200Response ArtSearchAPI (string? query = null, int? earliestStartDate = null, int? latestStartDate = null, int? earliestEndDate = null, int? latestEndDate = null, double? minRatio = null, double? maxRatio = null, string? type = null, string? material = null, string? technique = null, string? origin = null, int? offset = null, int? number = null)

Art Search API

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class ArtSearchAPIExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ArtApi(config);
            var query = landscape paintings;  // string? | The search query. (optional) 
            var earliestStartDate = 1750;  // int? | The artwork must have been created after this date. (optional) 
            var latestStartDate = 1755;  // int? | The artwork must have been created before this date. (optional) 
            var earliestEndDate = 1751;  // int? | For artworks with a period of creation, the completion date must be after this date. (optional) 
            var latestEndDate = 1760;  // int? | For artworks with a period of creation, the completion date must be before this date. (optional) 
            var minRatio = 0.8;  // double? | The minimum aspect ratio (width/height) the artwork image must have. (optional) 
            var maxRatio = 1.5;  // double? | The maximum aspect ratio (width/height) the artwork image must have. (optional) 
            var type = painting;  // string? | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. (optional) 
            var material = ivory;  // string? | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. (optional) 
            var technique = etching;  // string? | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. (optional) 
            var origin = Italy;  // string? | The country or region of origin for the artwork (optional) 
            var offset = 0;  // int? | The number of artworks to skip in range [0,1000] (optional) 
            var number = 10;  // int? | The number of artworks to return in range [1,10] (optional) 

            try
            {
                // Art Search API
                ArtSearchAPI200Response result = apiInstance.ArtSearchAPI(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ArtApi.ArtSearchAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ArtSearchAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Art Search API
    ApiResponse<ArtSearchAPI200Response> response = apiInstance.ArtSearchAPIWithHttpInfo(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ArtApi.ArtSearchAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The search query. | [optional]  |
| **earliestStartDate** | **int?** | The artwork must have been created after this date. | [optional]  |
| **latestStartDate** | **int?** | The artwork must have been created before this date. | [optional]  |
| **earliestEndDate** | **int?** | For artworks with a period of creation, the completion date must be after this date. | [optional]  |
| **latestEndDate** | **int?** | For artworks with a period of creation, the completion date must be before this date. | [optional]  |
| **minRatio** | **double?** | The minimum aspect ratio (width/height) the artwork image must have. | [optional]  |
| **maxRatio** | **double?** | The maximum aspect ratio (width/height) the artwork image must have. | [optional]  |
| **type** | **string?** | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional]  |
| **material** | **string?** | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional]  |
| **technique** | **string?** | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional]  |
| **origin** | **string?** | The country or region of origin for the artwork | [optional]  |
| **offset** | **int?** | The number of artworks to skip in range [0,1000] | [optional]  |
| **number** | **int?** | The number of artworks to return in range [1,10] | [optional]  |

### Return type

[**ArtSearchAPI200Response**](ArtSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="imagetoasciiartbyurlapi"></a>
# **ImageToAsciiArtByURLAPI**
> string ImageToAsciiArtByURLAPI (string url, int? width = null, int? height = null)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class ImageToAsciiArtByURLAPIExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ArtApi(config);
            var url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png;  // string | The URL to the image.
            var width = 200;  // int? | The maximum width of the image (default 400, max. 500). (optional) 
            var height = 200;  // int? | The maximum height of the image (default 400, max. 500). (optional) 

            try
            {
                // Image to Ascii Art by URL API
                string result = apiInstance.ImageToAsciiArtByURLAPI(url, width, height);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ArtApi.ImageToAsciiArtByURLAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ImageToAsciiArtByURLAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Image to Ascii Art by URL API
    ApiResponse<string> response = apiInstance.ImageToAsciiArtByURLAPIWithHttpInfo(url, width, height);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ArtApi.ImageToAsciiArtByURLAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The URL to the image. |  |
| **width** | **int?** | The maximum width of the image (default 400, max. 500). | [optional]  |
| **height** | **int?** | The maximum height of the image (default 400, max. 500). | [optional]  |

### Return type

**string**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="randompoemapi"></a>
# **RandomPoemAPI**
> RandomPoemAPI200Response RandomPoemAPI (int? minLines = null, int? maxLines = null)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RandomPoemAPIExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ArtApi(config);
            var minLines = 5;  // int? | The minimum number of lines of the poem. (optional) 
            var maxLines = 20;  // int? | The maximum number of lines of the poem. (optional) 

            try
            {
                // Random Poem API
                RandomPoemAPI200Response result = apiInstance.RandomPoemAPI(minLines, maxLines);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ArtApi.RandomPoemAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RandomPoemAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Random Poem API
    ApiResponse<RandomPoemAPI200Response> response = apiInstance.RandomPoemAPIWithHttpInfo(minLines, maxLines);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ArtApi.RandomPoemAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **minLines** | **int?** | The minimum number of lines of the poem. | [optional]  |
| **maxLines** | **int?** | The maximum number of lines of the poem. | [optional]  |

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="retrieveartworkbyid"></a>
# **RetrieveArtworkById**
> RetrieveArtworkById200Response RetrieveArtworkById (int id)

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RetrieveArtworkByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new ArtApi(config);
            var id = 26226350;  // int | The id of the artwork.

            try
            {
                // Retrieve Artwork by Id
                RetrieveArtworkById200Response result = apiInstance.RetrieveArtworkById(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ArtApi.RetrieveArtworkById: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RetrieveArtworkByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve Artwork by Id
    ApiResponse<RetrieveArtworkById200Response> response = apiInstance.RetrieveArtworkByIdWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ArtApi.RetrieveArtworkByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The id of the artwork. |  |

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

