# WebApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**extractAuthorsAPI**](WebApi.md#extractAuthorsAPI) | **GET** /extract-authors | Extract Authors API |
| [**extractContentFromAWebPageAPI**](WebApi.md#extractContentFromAWebPageAPI) | **GET** /extract-content | Extract Content from a Web Page API |
| [**extractPublishDateAPI**](WebApi.md#extractPublishDateAPI) | **GET** /extract-publish-date | Extract Publish Date API |
| [**retrievePageRankAPI**](WebApi.md#retrievePageRankAPI) | **GET** /retrieve-page-rank | Retrieve Page Rank API |
| [**searchWebAPI**](WebApi.md#searchWebAPI) | **GET** /search-web | Search Web API |
| [**verifyEmailAddressAPI**](WebApi.md#verifyEmailAddressAPI) | **GET** /verify-email | Verify Email Address API |


<a id="extractAuthorsAPI"></a>
# **extractAuthorsAPI**
> ExtractAuthorsAPI200Response extractAuthorsAPI(url)

Extract Authors API

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val url : kotlin.String = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html // kotlin.String | The url with the article from which authors should be extracted.
try {
    val result : ExtractAuthorsAPI200Response = apiInstance.extractAuthorsAPI(url)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#extractAuthorsAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#extractAuthorsAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **kotlin.String**| The url with the article from which authors should be extracted. | |

### Return type

[**ExtractAuthorsAPI200Response**](ExtractAuthorsAPI200Response.md)

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

<a id="extractContentFromAWebPageAPI"></a>
# **extractContentFromAWebPageAPI**
> ExtractContentFromAWebPageAPI200Response extractContentFromAWebPageAPI(url)

Extract Content from a Web Page API

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val url : kotlin.String = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html // kotlin.String | The url for which the content will be extracted.
try {
    val result : ExtractContentFromAWebPageAPI200Response = apiInstance.extractContentFromAWebPageAPI(url)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#extractContentFromAWebPageAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#extractContentFromAWebPageAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **kotlin.String**| The url for which the content will be extracted. | |

### Return type

[**ExtractContentFromAWebPageAPI200Response**](ExtractContentFromAWebPageAPI200Response.md)

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

<a id="extractPublishDateAPI"></a>
# **extractPublishDateAPI**
> ExtractPublishDateAPI200Response extractPublishDateAPI(url)

Extract Publish Date API

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val url : kotlin.String = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html // kotlin.String | The url for which the publish date should be extracted.
try {
    val result : ExtractPublishDateAPI200Response = apiInstance.extractPublishDateAPI(url)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#extractPublishDateAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#extractPublishDateAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **kotlin.String**| The url for which the publish date should be extracted. | |

### Return type

[**ExtractPublishDateAPI200Response**](ExtractPublishDateAPI200Response.md)

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

<a id="retrievePageRankAPI"></a>
# **retrievePageRankAPI**
> RetrievePageRankAPI200Response retrievePageRankAPI(domain)

Retrieve Page Rank API

This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val domain : kotlin.String = amazon.com // kotlin.String | The domain for which the page rank should be returned.
try {
    val result : RetrievePageRankAPI200Response = apiInstance.retrievePageRankAPI(domain)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#retrievePageRankAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#retrievePageRankAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **kotlin.String**| The domain for which the page rank should be returned. | |

### Return type

[**RetrievePageRankAPI200Response**](RetrievePageRankAPI200Response.md)

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

<a id="searchWebAPI"></a>
# **searchWebAPI**
> SearchWebAPI200Response searchWebAPI(query, number)

Search Web API

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
    val result : SearchWebAPI200Response = apiInstance.searchWebAPI(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#searchWebAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#searchWebAPI")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of results to return in range [1,50] | [optional] |

### Return type

[**SearchWebAPI200Response**](SearchWebAPI200Response.md)

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

<a id="verifyEmailAddressAPI"></a>
# **verifyEmailAddressAPI**
> VerifyEmailAddressAPI200Response verifyEmailAddressAPI(email)

Verify Email Address API

This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = WebApi()
val email : kotlin.String = maxtest@gmail.com // kotlin.String | The email address to verify.
try {
    val result : VerifyEmailAddressAPI200Response = apiInstance.verifyEmailAddressAPI(email)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling WebApi#verifyEmailAddressAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling WebApi#verifyEmailAddressAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **email** | **kotlin.String**| The email address to verify. | |

### Return type

[**VerifyEmailAddressAPI200Response**](VerifyEmailAddressAPI200Response.md)

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

