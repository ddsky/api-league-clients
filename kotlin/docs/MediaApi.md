# MediaApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**detectMainImageColorAPI**](MediaApi.md#detectMainImageColorAPI) | **GET** /detect-color | Detect Main Image Color API |
| [**rescaleImageAPI**](MediaApi.md#rescaleImageAPI) | **GET** /rescale-image | Rescale Image API |
| [**searchIconsAPI**](MediaApi.md#searchIconsAPI) | **GET** /search-icons | Search Icons API |
| [**searchRoyaltyFreeImagesAPI**](MediaApi.md#searchRoyaltyFreeImagesAPI) | **GET** /search-images | Search Royalty Free Images API |
| [**vectorSearchAPI**](MediaApi.md#vectorSearchAPI) | **GET** /search-vectors | Vector Search API |


<a id="detectMainImageColorAPI"></a>
# **detectMainImageColorAPI**
> kotlin.collections.List&lt;DetectMainImageColorAPI200ResponseInner&gt; detectMainImageColorAPI(url)

Detect Main Image Color API

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = MediaApi()
val url : kotlin.String = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM  // kotlin.String | The url of the image for which the colors should be detected.
try {
    val result : kotlin.collections.List<DetectMainImageColorAPI200ResponseInner> = apiInstance.detectMainImageColorAPI(url)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#detectMainImageColorAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#detectMainImageColorAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **kotlin.String**| The url of the image for which the colors should be detected. | |

### Return type

[**kotlin.collections.List&lt;DetectMainImageColorAPI200ResponseInner&gt;**](DetectMainImageColorAPI200ResponseInner.md)

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

<a id="rescaleImageAPI"></a>
# **rescaleImageAPI**
> java.io.File rescaleImageAPI(url, width, height, crop)

Rescale Image API

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
    val result : java.io.File = apiInstance.rescaleImageAPI(url, width, height, crop)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#rescaleImageAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#rescaleImageAPI")
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

<a id="searchIconsAPI"></a>
# **searchIconsAPI**
> SearchIconsAPI200Response searchIconsAPI(query, onlyPublicDomain, number)

Search Icons API

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
    val result : SearchIconsAPI200Response = apiInstance.searchIconsAPI(query, onlyPublicDomain, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#searchIconsAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#searchIconsAPI")
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

[**SearchIconsAPI200Response**](SearchIconsAPI200Response.md)

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

<a id="searchRoyaltyFreeImagesAPI"></a>
# **searchRoyaltyFreeImagesAPI**
> SearchRoyaltyFreeImagesAPI200Response searchRoyaltyFreeImagesAPI(query, number)

Search Royalty Free Images API

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
    val result : SearchRoyaltyFreeImagesAPI200Response = apiInstance.searchRoyaltyFreeImagesAPI(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#searchRoyaltyFreeImagesAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#searchRoyaltyFreeImagesAPI")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of images to return in range [1,100] | [optional] |

### Return type

[**SearchRoyaltyFreeImagesAPI200Response**](SearchRoyaltyFreeImagesAPI200Response.md)

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

<a id="vectorSearchAPI"></a>
# **vectorSearchAPI**
> VectorSearchAPI200Response vectorSearchAPI(query, offset, number)

Vector Search API

Search through over 700,000 free to use vector icons. The license is either \&quot;PUBLIC_DOMAIN\&quot; or \&quot;ATTRIBUTION\&quot;. If it is \&quot;ATTRIBUTION\&quot; just attribute the author somewhere in your project.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = MediaApi()
val query : kotlin.String = airplanes // kotlin.String | The search query.
val offset : kotlin.Int = 0 // kotlin.Int | The number of vectors to skip, between 0 and 1000
val number : kotlin.Int = 3 // kotlin.Int | The number of vectors to return in range [1,10]
try {
    val result : VectorSearchAPI200Response = apiInstance.vectorSearchAPI(query, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#vectorSearchAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#vectorSearchAPI")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | |
| **offset** | **kotlin.Int**| The number of vectors to skip, between 0 and 1000 | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of vectors to return in range [1,10] | [optional] |

### Return type

[**VectorSearchAPI200Response**](VectorSearchAPI200Response.md)

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

