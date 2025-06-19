# ArtApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**artSearchAPI**](ArtApi.md#artSearchAPI) | **GET** /search-artworks | Art Search API |
| [**imageToAsciiArtByURLAPI**](ArtApi.md#imageToAsciiArtByURLAPI) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API |
| [**randomPoemAPI**](ArtApi.md#randomPoemAPI) | **GET** /retrieve-random-poem | Random Poem API |
| [**retrieveArtworkById**](ArtApi.md#retrieveArtworkById) | **GET** /retrieve-artwork | Retrieve Artwork by Id |


<a id="artSearchAPI"></a>
# **artSearchAPI**
> ArtSearchAPI200Response artSearchAPI(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number)

Art Search API

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.ArtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    ArtApi apiInstance = new ArtApi(defaultClient);
    String query = "landscape paintings"; // String | The search query.
    Integer earliestStartDate = 1750; // Integer | The artwork must have been created after this date.
    Integer latestStartDate = 1755; // Integer | The artwork must have been created before this date.
    Integer earliestEndDate = 1751; // Integer | For artworks with a period of creation, the completion date must be after this date.
    Integer latestEndDate = 1760; // Integer | For artworks with a period of creation, the completion date must be before this date.
    Double minRatio = 0.8D; // Double | The minimum aspect ratio (width/height) the artwork image must have.
    Double maxRatio = 1.5D; // Double | The maximum aspect ratio (width/height) the artwork image must have.
    String type = "painting"; // String | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
    String material = "ivory"; // String | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
    String technique = "etching"; // String | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
    String origin = "Italy"; // String | The country or region of origin for the artwork
    Integer offset = 0; // Integer | The number of artworks to skip in range [0,1000]
    Integer number = 10; // Integer | The number of artworks to return in range [1,10]
    try {
      ArtSearchAPI200Response result = apiInstance.artSearchAPI(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ArtApi#artSearchAPI");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **query** | **String**| The search query. | [optional] |
| **earliestStartDate** | **Integer**| The artwork must have been created after this date. | [optional] |
| **latestStartDate** | **Integer**| The artwork must have been created before this date. | [optional] |
| **earliestEndDate** | **Integer**| For artworks with a period of creation, the completion date must be after this date. | [optional] |
| **latestEndDate** | **Integer**| For artworks with a period of creation, the completion date must be before this date. | [optional] |
| **minRatio** | **Double**| The minimum aspect ratio (width/height) the artwork image must have. | [optional] |
| **maxRatio** | **Double**| The maximum aspect ratio (width/height) the artwork image must have. | [optional] |
| **type** | **String**| The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional] |
| **material** | **String**| The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional] |
| **technique** | **String**| The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional] |
| **origin** | **String**| The country or region of origin for the artwork | [optional] |
| **offset** | **Integer**| The number of artworks to skip in range [0,1000] | [optional] |
| **number** | **Integer**| The number of artworks to return in range [1,10] | [optional] |

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

<a id="imageToAsciiArtByURLAPI"></a>
# **imageToAsciiArtByURLAPI**
> String imageToAsciiArtByURLAPI(url, width, height)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.ArtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    ArtApi apiInstance = new ArtApi(defaultClient);
    String url = "https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png"; // String | The URL to the image.
    Integer width = 200; // Integer | The maximum width of the image (default 400, max. 500).
    Integer height = 200; // Integer | The maximum height of the image (default 400, max. 500).
    try {
      String result = apiInstance.imageToAsciiArtByURLAPI(url, width, height);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ArtApi#imageToAsciiArtByURLAPI");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **url** | **String**| The URL to the image. | |
| **width** | **Integer**| The maximum width of the image (default 400, max. 500). | [optional] |
| **height** | **Integer**| The maximum height of the image (default 400, max. 500). | [optional] |

### Return type

**String**

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

<a id="randomPoemAPI"></a>
# **randomPoemAPI**
> RandomPoemAPI200Response randomPoemAPI(minLines, maxLines)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.ArtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    ArtApi apiInstance = new ArtApi(defaultClient);
    Integer minLines = 5; // Integer | The minimum number of lines of the poem.
    Integer maxLines = 20; // Integer | The maximum number of lines of the poem.
    try {
      RandomPoemAPI200Response result = apiInstance.randomPoemAPI(minLines, maxLines);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ArtApi#randomPoemAPI");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **minLines** | **Integer**| The minimum number of lines of the poem. | [optional] |
| **maxLines** | **Integer**| The maximum number of lines of the poem. | [optional] |

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

<a id="retrieveArtworkById"></a>
# **retrieveArtworkById**
> RetrieveArtworkById200Response retrieveArtworkById(id)

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.ArtApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    ArtApi apiInstance = new ArtApi(defaultClient);
    Integer id = 26226350; // Integer | The id of the artwork.
    try {
      RetrieveArtworkById200Response result = apiInstance.retrieveArtworkById(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ArtApi#retrieveArtworkById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The id of the artwork. | |

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

