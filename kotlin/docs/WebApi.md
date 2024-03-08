# WebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractAuthors**](WebApi.md#extractAuthors) | **GET** /extract-authors | Extract Authors
[**extractContentFromAWebPage**](WebApi.md#extractContentFromAWebPage) | **GET** /extract-content | Extract Content from a Web Page
[**extractPublishDate**](WebApi.md#extractPublishDate) | **GET** /extract-publish-date | Extract Publish Date
[**searchWeb**](WebApi.md#searchWeb) | **GET** /search-web | Search Web


<a id="extractAuthors"></a>
# **extractAuthors**
> ExtractAuthors200Response extractAuthors(url)

Extract Authors

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val url : kotlin.String = https://www.bbc.com/news/entertainment-arts-68270826 // kotlin.String | The url with the article from which authors should be extracted.
try {
    val result : ExtractAuthors200Response = apiInstance.extractAuthors(url)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#extractAuthors")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#extractAuthors")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **kotlin.String**| The url with the article from which authors should be extracted. |

### Return type

[**ExtractAuthors200Response**](ExtractAuthors200Response.md)

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

<a id="extractContentFromAWebPage"></a>
# **extractContentFromAWebPage**
> ExtractContentFromAWebPage200Response extractContentFromAWebPage(url)

Extract Content from a Web Page

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val url : kotlin.String = https://www.bbc.com/news/entertainment-arts-68270826 // kotlin.String | The url for which the content will be extracted.
try {
    val result : ExtractContentFromAWebPage200Response = apiInstance.extractContentFromAWebPage(url)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#extractContentFromAWebPage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#extractContentFromAWebPage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **kotlin.String**| The url for which the content will be extracted. |

### Return type

[**ExtractContentFromAWebPage200Response**](ExtractContentFromAWebPage200Response.md)

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

<a id="extractPublishDate"></a>
# **extractPublishDate**
> ExtractPublishDate200Response extractPublishDate(url)

Extract Publish Date

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val url : kotlin.String = https://www.bbc.com/news/entertainment-arts-68270826 // kotlin.String | The url for which the publish date should be extracted.
try {
    val result : ExtractPublishDate200Response = apiInstance.extractPublishDate(url)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#extractPublishDate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#extractPublishDate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **kotlin.String**| The url for which the publish date should be extracted. |

### Return type

[**ExtractPublishDate200Response**](ExtractPublishDate200Response.md)

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

<a id="searchWeb"></a>
# **searchWeb**
> SearchWeb200Response searchWeb(query, number)

Search Web

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val query : kotlin.String = penguins // kotlin.String | The search query.
val number : kotlin.Int = 5 // kotlin.Int | The number of results to return in range [1,50]
try {
    val result : SearchWeb200Response = apiInstance.searchWeb(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#searchWeb")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#searchWeb")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The search query. |
 **number** | **kotlin.Int**| The number of results to return in range [1,50] | [optional]

### Return type

[**SearchWeb200Response**](SearchWeb200Response.md)

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

