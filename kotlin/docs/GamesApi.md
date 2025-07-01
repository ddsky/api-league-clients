# GamesApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**findSimilarGamesAPI**](GamesApi.md#findSimilarGamesAPI) | **GET** /list-similar-games | Find Similar Games API |
| [**retrieveGameById**](GamesApi.md#retrieveGameById) | **GET** /retrieve-game | Retrieve Game by Id |
| [**searchGamesAPI**](GamesApi.md#searchGamesAPI) | **GET** /search-games | Search Games API |


<a id="findSimilarGamesAPI"></a>
# **findSimilarGamesAPI**
> FindSimilarGamesAPI200Response findSimilarGamesAPI(id, limit)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = GamesApi()
val id : kotlin.Int = 1273796 // kotlin.Int | The id of the game.
val limit : kotlin.Int = 10 // kotlin.Int | Number of results to return between 1 and 10.
try {
    val result : FindSimilarGamesAPI200Response = apiInstance.findSimilarGamesAPI(id, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GamesApi#findSimilarGamesAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GamesApi#findSimilarGamesAPI")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.Int**| The id of the game. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| Number of results to return between 1 and 10. | [optional] |

### Return type

[**FindSimilarGamesAPI200Response**](FindSimilarGamesAPI200Response.md)

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

<a id="retrieveGameById"></a>
# **retrieveGameById**
> RetrieveGameById200Response retrieveGameById(id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game&#39;s name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = GamesApi()
val id : kotlin.Int = 1273796 // kotlin.Int | The id of the game.
try {
    val result : RetrieveGameById200Response = apiInstance.retrieveGameById(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GamesApi#retrieveGameById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GamesApi#retrieveGameById")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.Int**| The id of the game. | |

### Return type

[**RetrieveGameById200Response**](RetrieveGameById200Response.md)

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

<a id="searchGamesAPI"></a>
# **searchGamesAPI**
> SearchGamesAPI200Response searchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = GamesApi()
val query : kotlin.String = strategy games // kotlin.String | The search query.
val offset : kotlin.Int = 0 // kotlin.Int | Pagination offset (start index) between 0 and 1000.
val limit : kotlin.Int = 10 // kotlin.Int | Number of results to return between 1 and 100.
val filters : kotlin.String = [] // kotlin.String | JSON array of filters
val sort : kotlin.String = rating // kotlin.String | Field to sort by
val sortOrder : kotlin.String = asc // kotlin.String | Sort order (asc or desc)
val generateFilterOptions : kotlin.Boolean = true // kotlin.Boolean | Whether to generate filter options
try {
    val result : SearchGamesAPI200Response = apiInstance.searchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GamesApi#searchGamesAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GamesApi#searchGamesAPI")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | [optional] |
| **offset** | **kotlin.Int**| Pagination offset (start index) between 0 and 1000. | [optional] |
| **limit** | **kotlin.Int**| Number of results to return between 1 and 100. | [optional] |
| **filters** | **kotlin.String**| JSON array of filters | [optional] |
| **sort** | **kotlin.String**| Field to sort by | [optional] |
| **sortOrder** | **kotlin.String**| Sort order (asc or desc) | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **generateFilterOptions** | **kotlin.Boolean**| Whether to generate filter options | [optional] |

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

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

