# NewsApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News
[**topNews**](NewsApi.md#topNews) | **GET** /retrieve-top-news | Top News


<a id="extractNews"></a>
# **extractNews**
> ExtractNews200Response extractNews(url, analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = NewsApi()
val url : kotlin.String = https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/ // kotlin.String | The url of the news.
val analyze : kotlin.Boolean = true // kotlin.Boolean | Whether to analyze the news (extract entities etc.)
try {
    val result : ExtractNews200Response = apiInstance.extractNews(url, analyze)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#extractNews")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#extractNews")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **kotlin.String**| The url of the news. |
 **analyze** | **kotlin.Boolean**| Whether to analyze the news (extract entities etc.) |

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

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

<a id="searchNews"></a>
# **searchNews**
> SearchNews200Response searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number)

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = NewsApi()
val text : kotlin.String = tesla // kotlin.String | The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
val sourceCountries : kotlin.String = us,uk // kotlin.String | A comma-separated list of ISO 3166 country codes from which the news should originate.
val language : kotlin.String = en // kotlin.String | The ISO 6391 language code of the news.
val minSentiment : kotlin.Double = -0.8 // kotlin.Double | The minimal sentiment of the news in range [-1,1].
val maxSentiment : kotlin.Double = 0.8 // kotlin.Double | The maximal sentiment of the news in range [-1,1].
val earliestPublishDate : kotlin.String = 2022-04-22 16:12:35 // kotlin.String | The news must have been published after this date.
val latestPublishDate : kotlin.String = 2022-04-22 16:12:35 // kotlin.String | The news must have been published before this date.
val newsSources : kotlin.String = https://www.bbc.co.uk // kotlin.String | A comma-separated list of news sources from which the news should originate.
val authors : kotlin.String = John Doe // kotlin.String | A comma-separated list of author names. Only news from any of the given authors will be returned.
val entities : kotlin.String = ORG:Tesla // kotlin.String | Filter news by entities (ORG, PER, or LOC).
val locationFilter : kotlin.String = 51.050407, 13.737262, 100 // kotlin.String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
val sort : kotlin.String = publish-time // kotlin.String | The sorting criteria (publish-time or sentiment).
val sortDirection : kotlin.String = ASC // kotlin.String | Whether to sort ascending or descending (ASC or DESC).
val offset : kotlin.Int = 0 // kotlin.Int | The number of news to skip in range [0,10000]
val number : kotlin.Int = 10 // kotlin.Int | The number of news to return in range [1,100]
try {
    val result : SearchNews200Response = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#searchNews")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#searchNews")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional]
 **sourceCountries** | **kotlin.String**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional]
 **language** | **kotlin.String**| The ISO 6391 language code of the news. | [optional]
 **minSentiment** | **kotlin.Double**| The minimal sentiment of the news in range [-1,1]. | [optional]
 **maxSentiment** | **kotlin.Double**| The maximal sentiment of the news in range [-1,1]. | [optional]
 **earliestPublishDate** | **kotlin.String**| The news must have been published after this date. | [optional]
 **latestPublishDate** | **kotlin.String**| The news must have been published before this date. | [optional]
 **newsSources** | **kotlin.String**| A comma-separated list of news sources from which the news should originate. | [optional]
 **authors** | **kotlin.String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional]
 **entities** | **kotlin.String**| Filter news by entities (ORG, PER, or LOC). | [optional]
 **locationFilter** | **kotlin.String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional]
 **sort** | **kotlin.String**| The sorting criteria (publish-time or sentiment). | [optional]
 **sortDirection** | **kotlin.String**| Whether to sort ascending or descending (ASC or DESC). | [optional]
 **offset** | **kotlin.Int**| The number of news to skip in range [0,10000] | [optional]
 **number** | **kotlin.Int**| The number of news to return in range [1,100] | [optional]

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

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

<a id="topNews"></a>
# **topNews**
> TopNews200Response topNews(sourceCountry, language, date, headlinesOnly)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = NewsApi()
val sourceCountry : kotlin.String = us // kotlin.String | The ISO 3166 country code of the country for which top news should be retrieved.
val language : kotlin.String = en // kotlin.String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
val date : kotlin.String = 2024-05-30 // kotlin.String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
val headlinesOnly : kotlin.Boolean = false // kotlin.Boolean | Whether to only return basic information such as id, title, and url of the news.
try {
    val result : TopNews200Response = apiInstance.topNews(sourceCountry, language, date, headlinesOnly)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#topNews")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#topNews")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **kotlin.String**| The ISO 3166 country code of the country for which top news should be retrieved. |
 **language** | **kotlin.String**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. |
 **date** | **kotlin.String**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional]
 **headlinesOnly** | **kotlin.Boolean**| Whether to only return basic information such as id, title, and url of the news. | [optional]

### Return type

[**TopNews200Response**](TopNews200Response.md)

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

