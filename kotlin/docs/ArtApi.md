# ArtApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**imageToAsciiArtByURLAPI**](ArtApi.md#imageToAsciiArtByURLAPI) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API |
| [**randomPoemAPI**](ArtApi.md#randomPoemAPI) | **GET** /retrieve-random-poem | Random Poem API |


<a id="imageToAsciiArtByURLAPI"></a>
# **imageToAsciiArtByURLAPI**
> kotlin.String imageToAsciiArtByURLAPI(url, width, height)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = ArtApi()
val url : kotlin.String = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png // kotlin.String | The URL to the image.
val width : kotlin.Int = 200 // kotlin.Int | The maximum width of the image (default 400, max. 500).
val height : kotlin.Int = 200 // kotlin.Int | The maximum height of the image (default 400, max. 500).
try {
    val result : kotlin.String = apiInstance.imageToAsciiArtByURLAPI(url, width, height)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ArtApi#imageToAsciiArtByURLAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ArtApi#imageToAsciiArtByURLAPI")
    e.printStackTrace()
}
```

### Parameters
| **url** | **kotlin.String**| The URL to the image. | |
| **width** | **kotlin.Int**| The maximum width of the image (default 400, max. 500). | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **height** | **kotlin.Int**| The maximum height of the image (default 400, max. 500). | [optional] |

### Return type

**kotlin.String**

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="randomPoemAPI"></a>
# **randomPoemAPI**
> RandomPoemAPI200Response randomPoemAPI(minLines, maxLines)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = ArtApi()
val minLines : kotlin.Int = 5 // kotlin.Int | The minimum number of lines of the poem.
val maxLines : kotlin.Int = 20 // kotlin.Int | The maximum number of lines of the poem.
try {
    val result : RandomPoemAPI200Response = apiInstance.randomPoemAPI(minLines, maxLines)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ArtApi#randomPoemAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ArtApi#randomPoemAPI")
    e.printStackTrace()
}
```

### Parameters
| **minLines** | **kotlin.Int**| The minimum number of lines of the poem. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **maxLines** | **kotlin.Int**| The maximum number of lines of the poem. | [optional] |

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

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

