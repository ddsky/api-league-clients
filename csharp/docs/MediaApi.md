# com.apileague.MediaApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DetectMainImageColor**](MediaApi.md#detectmainimagecolor) | **GET** /detect-color | Detect Main Image Color
[**RescaleImage**](MediaApi.md#rescaleimage) | **GET** /rescale-image | Rescale Image
[**SearchRoyaltyFreeImages**](MediaApi.md#searchroyaltyfreeimages) | **GET** /search-images | Search Royalty Free Images


<a name="detectmainimagecolor"></a>
# **DetectMainImageColor**
> List<InlineResponse20029> DetectMainImageColor (string url)

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class DetectMainImageColorExample
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

            var apiInstance = new MediaApi();
            var url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ;  // string | The url of the image for which the colors should be detected.

            try
            {
                // Detect Main Image Color
                List&lt;InlineResponse20029&gt; result = apiInstance.DetectMainImageColor(url);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MediaApi.DetectMainImageColor: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the image for which the colors should be detected. | 

### Return type

[**List<InlineResponse20029>**](InlineResponse20029.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="rescaleimage"></a>
# **RescaleImage**
> Object RescaleImage (string url, int? width, int? height, bool? crop)

Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class RescaleImageExample
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

            var apiInstance = new MediaApi();
            var url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ;  // string | The url of the image to be rescaled.
            var width = 200;  // int? | The desired width of the rescaled image.
            var height = 200;  // int? | The desired height of the rescaled image.
            var crop = true;  // bool? | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

            try
            {
                // Rescale Image
                Object result = apiInstance.RescaleImage(url, width, height, crop);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MediaApi.RescaleImage: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the image to be rescaled. | 
 **width** | **int?**| The desired width of the rescaled image. | 
 **height** | **int?**| The desired height of the rescaled image. | 
 **crop** | **bool?**| Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchroyaltyfreeimages"></a>
# **SearchRoyaltyFreeImages**
> InlineResponse20028 SearchRoyaltyFreeImages (string query, int? number)

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class SearchRoyaltyFreeImagesExample
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

            var apiInstance = new MediaApi();
            var query = dogs;  // string | The search query.
            var number = 3;  // int? | The number of images to return in range [1,10] (optional) 

            try
            {
                // Search Royalty Free Images
                InlineResponse20028 result = apiInstance.SearchRoyaltyFreeImages(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MediaApi.SearchRoyaltyFreeImages: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **number** | **int?**| The number of images to return in range [1,10] | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

