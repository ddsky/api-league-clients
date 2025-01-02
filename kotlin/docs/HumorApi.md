# HumorApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**generateNonsenseWordAPI**](HumorApi.md#generateNonsenseWordAPI) | **GET** /generate-nonsense-word | Generate Nonsense Word API |
| [**randomJokeAPI**](HumorApi.md#randomJokeAPI) | **GET** /retrieve-random-joke | Random Joke API |
| [**randomMemeAPI**](HumorApi.md#randomMemeAPI) | **GET** /retrieve-random-meme | Random Meme API |
| [**searchGifsAPI**](HumorApi.md#searchGifsAPI) | **GET** /search-gifs | Search Gifs API |
| [**searchJokesAPI**](HumorApi.md#searchJokesAPI) | **GET** /search-jokes | Search Jokes API |
| [**searchMemesAPI**](HumorApi.md#searchMemesAPI) | **GET** /search-memes | Search Memes API |


<a id="generateNonsenseWordAPI"></a>
# **generateNonsenseWordAPI**
> GenerateNonsenseWordAPI200Response generateNonsenseWordAPI()

Generate Nonsense Word API

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
try {
    val result : GenerateNonsenseWordAPI200Response = apiInstance.generateNonsenseWordAPI()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#generateNonsenseWordAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#generateNonsenseWordAPI")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWordAPI200Response**](GenerateNonsenseWordAPI200Response.md)

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

<a id="randomJokeAPI"></a>
# **randomJokeAPI**
> SearchJokesAPI200ResponseJokesInner randomJokeAPI(includeTags, excludeTags, minRating, maxLength)

Random Joke API

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val includeTags : kotlin.String = animal // kotlin.String | A comma-separated list of tags the jokes should have.
val excludeTags : kotlin.String = nsfw,dark // kotlin.String | A comma-separated list of tags the jokes must not have.
val minRating : kotlin.Double = 0 // kotlin.Double | The minimum rating in range [0.0,1.0] of the jokes.
val maxLength : kotlin.Int = 140 // kotlin.Int | The maximum length of the joke in letters.
try {
    val result : SearchJokesAPI200ResponseJokesInner = apiInstance.randomJokeAPI(includeTags, excludeTags, minRating, maxLength)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#randomJokeAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#randomJokeAPI")
    e.printStackTrace()
}
```

### Parameters
| **includeTags** | **kotlin.String**| A comma-separated list of tags the jokes should have. | [optional] |
| **excludeTags** | **kotlin.String**| A comma-separated list of tags the jokes must not have. | [optional] |
| **minRating** | **kotlin.Double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **maxLength** | **kotlin.Int**| The maximum length of the joke in letters. | [optional] |

### Return type

[**SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md)

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

<a id="randomMemeAPI"></a>
# **randomMemeAPI**
> RandomMemeAPI200Response randomMemeAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays)

Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val keywords : kotlin.String = airplane // kotlin.String | A comma-separated list of words that must occur in the meme.
val keywordsInImage : kotlin.Boolean = true // kotlin.Boolean | Whether the keywords must occur in the image.
val mediaType : kotlin.String = image // kotlin.String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
val minRating : kotlin.Double = 0 // kotlin.Double | The minimum rating in range [0.0,1.0] of the meme.
val maxAgeDays : kotlin.Int = 30 // kotlin.Int | The maximum age of the meme in days.
try {
    val result : RandomMemeAPI200Response = apiInstance.randomMemeAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#randomMemeAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#randomMemeAPI")
    e.printStackTrace()
}
```

### Parameters
| **keywords** | **kotlin.String**| A comma-separated list of words that must occur in the meme. | [optional] |
| **keywordsInImage** | **kotlin.Boolean**| Whether the keywords must occur in the image. | [optional] |
| **mediaType** | **kotlin.String**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] |
| **minRating** | **kotlin.Double**| The minimum rating in range [0.0,1.0] of the meme. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **maxAgeDays** | **kotlin.Int**| The maximum age of the meme in days. | [optional] |

### Return type

[**RandomMemeAPI200Response**](RandomMemeAPI200Response.md)

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

<a id="searchGifsAPI"></a>
# **searchGifsAPI**
> SearchGifsAPI200Response searchGifsAPI(query, number)

Search Gifs API

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val query : kotlin.String = dogs // kotlin.String | The search query.
val number : kotlin.Int = 5 // kotlin.Int | The number of gifs to return in range [1,10]
try {
    val result : SearchGifsAPI200Response = apiInstance.searchGifsAPI(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#searchGifsAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#searchGifsAPI")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of gifs to return in range [1,10] | [optional] |

### Return type

[**SearchGifsAPI200Response**](SearchGifsAPI200Response.md)

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

<a id="searchJokesAPI"></a>
# **searchJokesAPI**
> SearchJokesAPI200Response searchJokesAPI(keywords, includeTags, excludeTags, minRating, maxLength, offset, number)

Search Jokes API

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val keywords : kotlin.String = horse,man // kotlin.String | A comma-separated list of words that must occur in the joke.
val includeTags : kotlin.String = animal // kotlin.String | A comma-separated list of tags the jokes should have.
val excludeTags : kotlin.String = nsfw,dark // kotlin.String | A comma-separated list of tags the jokes must not have.
val minRating : kotlin.Double = 0 // kotlin.Double | The minimum rating in range [0.0,1.0] of the jokes.
val maxLength : kotlin.Double = 140 // kotlin.Double | The maximum length of the joke in letters.
val offset : kotlin.Int = 0 // kotlin.Int | The number of jokes to skip, between 0 and 1000.
val number : kotlin.Int = 3 // kotlin.Int | The number of jokes, between 1 and 10.
try {
    val result : SearchJokesAPI200Response = apiInstance.searchJokesAPI(keywords, includeTags, excludeTags, minRating, maxLength, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#searchJokesAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#searchJokesAPI")
    e.printStackTrace()
}
```

### Parameters
| **keywords** | **kotlin.String**| A comma-separated list of words that must occur in the joke. | [optional] |
| **includeTags** | **kotlin.String**| A comma-separated list of tags the jokes should have. | [optional] |
| **excludeTags** | **kotlin.String**| A comma-separated list of tags the jokes must not have. | [optional] |
| **minRating** | **kotlin.Double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] |
| **maxLength** | **kotlin.Double**| The maximum length of the joke in letters. | [optional] |
| **offset** | **kotlin.Int**| The number of jokes to skip, between 0 and 1000. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of jokes, between 1 and 10. | [optional] |

### Return type

[**SearchJokesAPI200Response**](SearchJokesAPI200Response.md)

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

<a id="searchMemesAPI"></a>
# **searchMemesAPI**
> SearchMemesAPI200Response searchMemesAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number)

Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You&#39;ll surely find something funny.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val keywords : kotlin.String = rocket // kotlin.String | A comma-separated list of words that must occur in the meme.
val keywordsInImage : kotlin.Boolean = true // kotlin.Boolean | Whether the keywords must occur in the image.
val mediaType : kotlin.String = image // kotlin.String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
val minRating : kotlin.Double = 0 // kotlin.Double | The minimum rating in range [0.0,1.0] of the meme.
val maxAgeDays : kotlin.Int = 30 // kotlin.Int | The maximum age of the meme in days.
val offset : kotlin.Int = 0 // kotlin.Int | The number of memes to skip, between 0 and 1000.
val number : kotlin.Int = 3 // kotlin.Int | The number of memes, between 1 and 10.
try {
    val result : SearchMemesAPI200Response = apiInstance.searchMemesAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#searchMemesAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#searchMemesAPI")
    e.printStackTrace()
}
```

### Parameters
| **keywords** | **kotlin.String**| A comma-separated list of words that must occur in the meme. | [optional] |
| **keywordsInImage** | **kotlin.Boolean**| Whether the keywords must occur in the image. | [optional] |
| **mediaType** | **kotlin.String**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] |
| **minRating** | **kotlin.Double**| The minimum rating in range [0.0,1.0] of the meme. | [optional] |
| **maxAgeDays** | **kotlin.Int**| The maximum age of the meme in days. | [optional] |
| **offset** | **kotlin.Int**| The number of memes to skip, between 0 and 1000. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of memes, between 1 and 10. | [optional] |

### Return type

[**SearchMemesAPI200Response**](SearchMemesAPI200Response.md)

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

