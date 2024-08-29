# MediaApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**detectMainImageColor**](MediaApi.md#detectMainImageColor) | **GET** /detect-color | Detect Main Image Color |
| [**rescaleImage**](MediaApi.md#rescaleImage) | **GET** /rescale-image | Rescale Image |
| [**searchIcons**](MediaApi.md#searchIcons) | **GET** /search-icons | Search Icons |
| [**searchRoyaltyFreeImages**](MediaApi.md#searchRoyaltyFreeImages) | **GET** /search-images | Search Royalty Free Images |


<a id="detectMainImageColor"></a>
# **detectMainImageColor**
> kotlin.collections.List&lt;DetectMainImageColor200ResponseInner&gt; detectMainImageColor(url)

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = MediaApi()
val url : kotlin.String = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM  // kotlin.String | The url of the image for which the colors should be detected.
try {
    val result : kotlin.collections.List<DetectMainImageColor200ResponseInner> = apiInstance.detectMainImageColor(url)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#detectMainImageColor")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#detectMainImageColor")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **kotlin.String**| The url of the image for which the colors should be detected. | |

### Return type

[**kotlin.collections.List&lt;DetectMainImageColor200ResponseInner&gt;**](DetectMainImageColor200ResponseInner.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="rescaleImage"></a>
# **rescaleImage**
> java.io.File rescaleImage(url, width, height, crop)

Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = MediaApi()
val url : kotlin.String = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM  // kotlin.String | The url of the image to be rescaled.
val width : kotlin.Int = 200 // kotlin.Int | The desired width of the rescaled image.
val height : kotlin.Int = 200 // kotlin.Int | The desired height of the rescaled image.
val crop : kotlin.Boolean = true // kotlin.Boolean | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
try {
    val result : java.io.File = apiInstance.rescaleImage(url, width, height, crop)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#rescaleImage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#rescaleImage")
    e.printStackTrace()
}
```

### Parameters
| **url** | **kotlin.String**| The url of the image to be rescaled. | |
| **width** | **kotlin.Int**| The desired width of the rescaled image. | |
| **height** | **kotlin.Int**| The desired height of the rescaled image. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **crop** | **kotlin.Boolean**| Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | |

### Return type

[**java.io.File**](java.io.File.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

<a id="searchIcons"></a>
# **searchIcons**
> SearchIcons200Response searchIcons(query, onlyPublicDomain, number)

Search Icons

Search through millions of icons to match any topic you want.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = MediaApi()
val query : kotlin.String = cars // kotlin.String | The search query.
val onlyPublicDomain : kotlin.Boolean = true // kotlin.Boolean | If true, only public domain icons will be returned.
val number : kotlin.Int = 3 // kotlin.Int | The number of icons to return in range [1,100]
try {
    val result : SearchIcons200Response = apiInstance.searchIcons(query, onlyPublicDomain, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#searchIcons")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#searchIcons")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | |
| **onlyPublicDomain** | **kotlin.Boolean**| If true, only public domain icons will be returned. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of icons to return in range [1,100] | [optional] |

### Return type

[**SearchIcons200Response**](SearchIcons200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchRoyaltyFreeImages"></a>
# **searchRoyaltyFreeImages**
> SearchRoyaltyFreeImages200Response searchRoyaltyFreeImages(query, number)

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = MediaApi()
val query : kotlin.String = dogs // kotlin.String | The search query.
val number : kotlin.Int = 3 // kotlin.Int | The number of images to return in range [1,100]
try {
    val result : SearchRoyaltyFreeImages200Response = apiInstance.searchRoyaltyFreeImages(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#searchRoyaltyFreeImages")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#searchRoyaltyFreeImages")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of images to return in range [1,100] | [optional] |

### Return type

[**SearchRoyaltyFreeImages200Response**](SearchRoyaltyFreeImages200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

