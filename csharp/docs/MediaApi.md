# apileague.Api.MediaApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DetectMainImageColor**](MediaApi.md#detectmainimagecolor) | **GET** /detect-color | Detect Main Image Color |
| [**RescaleImage**](MediaApi.md#rescaleimage) | **GET** /rescale-image | Rescale Image |
| [**SearchIcons**](MediaApi.md#searchicons) | **GET** /search-icons | Search Icons |
| [**SearchRoyaltyFreeImages**](MediaApi.md#searchroyaltyfreeimages) | **GET** /search-images | Search Royalty Free Images |

<a id="detectmainimagecolor"></a>
# **DetectMainImageColor**
> List&lt;DetectMainImageColor200ResponseInner&gt; DetectMainImageColor (string url)

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class DetectMainImageColorExample
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

            var apiInstance = new MediaApi(config);
            var url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ;  // string | The url of the image for which the colors should be detected.

            try
            {
                // Detect Main Image Color
                List<DetectMainImageColor200ResponseInner> result = apiInstance.DetectMainImageColor(url);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MediaApi.DetectMainImageColor: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DetectMainImageColorWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Detect Main Image Color
    ApiResponse<List<DetectMainImageColor200ResponseInner>> response = apiInstance.DetectMainImageColorWithHttpInfo(url);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MediaApi.DetectMainImageColorWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url of the image for which the colors should be detected. |  |

### Return type

[**List&lt;DetectMainImageColor200ResponseInner&gt;**](DetectMainImageColor200ResponseInner.md)

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

<a id="rescaleimage"></a>
# **RescaleImage**
> System.IO.Stream RescaleImage (string url, int width, int height, bool crop)

Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RescaleImageExample
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

            var apiInstance = new MediaApi(config);
            var url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ;  // string | The url of the image to be rescaled.
            var width = 200;  // int | The desired width of the rescaled image.
            var height = 200;  // int | The desired height of the rescaled image.
            var crop = true;  // bool | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

            try
            {
                // Rescale Image
                System.IO.Stream result = apiInstance.RescaleImage(url, width, height, crop);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MediaApi.RescaleImage: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RescaleImageWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Rescale Image
    ApiResponse<System.IO.Stream> response = apiInstance.RescaleImageWithHttpInfo(url, width, height, crop);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MediaApi.RescaleImageWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **url** | **string** | The url of the image to be rescaled. |  |
| **width** | **int** | The desired width of the rescaled image. |  |
| **height** | **int** | The desired height of the rescaled image. |  |
| **crop** | **bool** | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. |  |

### Return type

**System.IO.Stream**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream


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

<a id="searchicons"></a>
# **SearchIcons**
> SearchIcons200Response SearchIcons (string query, bool? onlyPublicDomain = null, int? number = null)

Search Icons

Search through millions of icons to match any topic you want.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchIconsExample
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

            var apiInstance = new MediaApi(config);
            var query = cars;  // string | The search query.
            var onlyPublicDomain = true;  // bool? | If true, only public domain icons will be returned. (optional) 
            var number = 3;  // int? | The number of icons to return in range [1,100] (optional) 

            try
            {
                // Search Icons
                SearchIcons200Response result = apiInstance.SearchIcons(query, onlyPublicDomain, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MediaApi.SearchIcons: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchIconsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Icons
    ApiResponse<SearchIcons200Response> response = apiInstance.SearchIconsWithHttpInfo(query, onlyPublicDomain, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MediaApi.SearchIconsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** | The search query. |  |
| **onlyPublicDomain** | **bool?** | If true, only public domain icons will be returned. | [optional]  |
| **number** | **int?** | The number of icons to return in range [1,100] | [optional]  |

### Return type

[**SearchIcons200Response**](SearchIcons200Response.md)

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

<a id="searchroyaltyfreeimages"></a>
# **SearchRoyaltyFreeImages**
> SearchRoyaltyFreeImages200Response SearchRoyaltyFreeImages (string query, int? number = null)

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchRoyaltyFreeImagesExample
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

            var apiInstance = new MediaApi(config);
            var query = dogs;  // string | The search query.
            var number = 3;  // int? | The number of images to return in range [1,100] (optional) 

            try
            {
                // Search Royalty Free Images
                SearchRoyaltyFreeImages200Response result = apiInstance.SearchRoyaltyFreeImages(query, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MediaApi.SearchRoyaltyFreeImages: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchRoyaltyFreeImagesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Royalty Free Images
    ApiResponse<SearchRoyaltyFreeImages200Response> response = apiInstance.SearchRoyaltyFreeImagesWithHttpInfo(query, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MediaApi.SearchRoyaltyFreeImagesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** | The search query. |  |
| **number** | **int?** | The number of images to return in range [1,100] | [optional]  |

### Return type

[**SearchRoyaltyFreeImages200Response**](SearchRoyaltyFreeImages200Response.md)

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

