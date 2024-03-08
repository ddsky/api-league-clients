# apileague.Api.ArtApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ImageToAsciiArtByURL**](ArtApi.md#imagetoasciiartbyurl) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL |
| [**RandomPoem**](ArtApi.md#randompoem) | **GET** /retrieve-random-poem | Random Poem |

<a id="imagetoasciiartbyurl"></a>
# **ImageToAsciiArtByURL**
> string ImageToAsciiArtByURL (string url, int? width = null, int? height = null)

Image to Ascii Art by URL

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
    public class ImageToAsciiArtByURLExample
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
                // Image to Ascii Art by URL
                string result = apiInstance.ImageToAsciiArtByURL(url, width, height);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ArtApi.ImageToAsciiArtByURL: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ImageToAsciiArtByURLWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Image to Ascii Art by URL
    ApiResponse<string> response = apiInstance.ImageToAsciiArtByURLWithHttpInfo(url, width, height);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ArtApi.ImageToAsciiArtByURLWithHttpInfo: " + e.Message);
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

<a id="randompoem"></a>
# **RandomPoem**
> RandomPoem200Response RandomPoem (int? minLines = null, int? maxLines = null)

Random Poem

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
    public class RandomPoemExample
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
                // Random Poem
                RandomPoem200Response result = apiInstance.RandomPoem(minLines, maxLines);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ArtApi.RandomPoem: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RandomPoemWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Random Poem
    ApiResponse<RandomPoem200Response> response = apiInstance.RandomPoemWithHttpInfo(minLines, maxLines);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ArtApi.RandomPoemWithHttpInfo: " + e.Message);
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

[**RandomPoem200Response**](RandomPoem200Response.md)

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

