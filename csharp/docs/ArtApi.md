# com.apileague.ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ImageToAsciiArtByURL**](ArtApi.md#imagetoasciiartbyurl) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
[**RandomPoem**](ArtApi.md#randompoem) | **GET** /retrieve-random-poem | Random Poem


<a name="imagetoasciiartbyurl"></a>
# **ImageToAsciiArtByURL**
> string ImageToAsciiArtByURL (string url, int? width, int? height)

Image to Ascii Art by URL

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class ImageToAsciiArtByURLExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new ArtApi();
            var url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png;  // string | The URL to the image.
            var width = 200;  // int? | The maximum width of the image (default 400, max. 500). (optional) 
            var height = 200;  // int? | The maximum height of the image (default 400, max. 500). (optional) 

            try
            {
                // Image to Ascii Art by URL
                string result = apiInstance.ImageToAsciiArtByURL(url, width, height);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ArtApi.ImageToAsciiArtByURL: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The URL to the image. | 
 **width** | **int?**| The maximum width of the image (default 400, max. 500). | [optional] 
 **height** | **int?**| The maximum height of the image (default 400, max. 500). | [optional] 

### Return type

**string**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="randompoem"></a>
# **RandomPoem**
> InlineResponse20011 RandomPoem (int? minLines, int? maxLines)

Random Poem

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class RandomPoemExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new ArtApi();
            var minLines = 5;  // int? | The minimum number of lines of the poem. (optional) 
            var maxLines = 20;  // int? | The maximum number of lines of the poem. (optional) 

            try
            {
                // Random Poem
                InlineResponse20011 result = apiInstance.RandomPoem(minLines, maxLines);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ArtApi.RandomPoem: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **int?**| The minimum number of lines of the poem. | [optional] 
 **maxLines** | **int?**| The maximum number of lines of the poem. | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

