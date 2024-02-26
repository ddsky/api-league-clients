# HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](HumorApi.md#generateNonsenseWord) | **GET** /generate-nonsense-word | Generate Nonsense Word
[**randomJoke**](HumorApi.md#randomJoke) | **GET** /retrieve-random-joke | Random Joke
[**randomMeme**](HumorApi.md#randomMeme) | **GET** /retrieve-random-meme | Random Meme
[**searchGifs**](HumorApi.md#searchGifs) | **GET** /search-gifs | Search Gifs
[**searchJokes**](HumorApi.md#searchJokes) | **GET** /search-jokes | Search Jokes
[**searchMemes**](HumorApi.md#searchMemes) | **GET** /search-memes | Search Memes


<a name="generateNonsenseWord"></a>
# **generateNonsenseWord**
> InlineResponse2008 generateNonsenseWord()

Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
try {
    val result : InlineResponse2008 = apiInstance.generateNonsenseWord()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#generateNonsenseWord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#generateNonsenseWord")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

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

<a name="randomJoke"></a>
# **randomJoke**
> InlineResponse2004Jokes randomJoke(includeTags, excludeTags, minRating, maxLength)

Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val includeTags : kotlin.String = animal // kotlin.String | A comma-separated list of tags the jokes should have.
val excludeTags : kotlin.String = nsfw,dark // kotlin.String | A comma-separated list of tags the jokes must not have.
val minRating : kotlin.Double = 0 // kotlin.Double | The minimum rating in range [0.0,1.0] of the jokes.
val maxLength : kotlin.Int = 140 // kotlin.Int | The maximum length of the joke in letters.
try {
    val result : InlineResponse2004Jokes = apiInstance.randomJoke(includeTags, excludeTags, minRating, maxLength)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#randomJoke")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#randomJoke")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | **kotlin.String**| A comma-separated list of tags the jokes should have. | [optional]
 **excludeTags** | **kotlin.String**| A comma-separated list of tags the jokes must not have. | [optional]
 **minRating** | **kotlin.Double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional]
 **maxLength** | **kotlin.Int**| The maximum length of the joke in letters. | [optional]

### Return type

[**InlineResponse2004Jokes**](InlineResponse2004Jokes.md)

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

<a name="randomMeme"></a>
# **randomMeme**
> InlineResponse2006 randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays)

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val keywords : kotlin.String = airplane // kotlin.String | A comma-separated list of words that must occur in the meme.
val keywordsInImage : kotlin.Boolean = true // kotlin.Boolean | Whether the keywords must occur in the image.
val mediaType : kotlin.String = image // kotlin.String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
val minRating : kotlin.Double = 0 // kotlin.Double | The minimum rating in range [0.0-1.0] of the meme.
val maxAgeDays : kotlin.Int = 30 // kotlin.Int | The maximum age of the meme in days.
try {
    val result : InlineResponse2006 = apiInstance.randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#randomMeme")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#randomMeme")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **kotlin.String**| A comma-separated list of words that must occur in the meme. | [optional]
 **keywordsInImage** | **kotlin.Boolean**| Whether the keywords must occur in the image. | [optional]
 **mediaType** | **kotlin.String**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional]
 **minRating** | **kotlin.Double**| The minimum rating in range [0.0-1.0] of the meme. | [optional]
 **maxAgeDays** | **kotlin.Int**| The maximum age of the meme in days. | [optional]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

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

<a name="searchGifs"></a>
# **searchGifs**
> InlineResponse2007 searchGifs(query, number)

Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val query : kotlin.String = dogs // kotlin.String | The search query.
val number : kotlin.Int = 5 // kotlin.Int | The number of gifs to return in range [1,10]
try {
    val result : InlineResponse2007 = apiInstance.searchGifs(query, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#searchGifs")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#searchGifs")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The search query. |
 **number** | **kotlin.Int**| The number of gifs to return in range [1,10] | [optional]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

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

<a name="searchJokes"></a>
# **searchJokes**
> InlineResponse2004 searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number)

Search Jokes

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val keywords : kotlin.String = horse,man // kotlin.String | A comma-separated list of words that must occur in the joke.
val includeTags : kotlin.String = animal // kotlin.String | A comma-separated list of tags the jokes should have.
val excludeTags : kotlin.String = nsfw,dark // kotlin.String | A comma-separated list of tags the jokes must not have.
val minRating : kotlin.Double = 0 // kotlin.Double | The minimum rating (0-10) of the jokes.
val maxLength : kotlin.Double = 140 // kotlin.Double | The maximum length of the joke in letters.
val offset : kotlin.Int = 0 // kotlin.Int | The number of jokes to skip, between 0 and 1000.
val number : kotlin.Int = 3 // kotlin.Int | The number of jokes, between 1 and 10.
try {
    val result : InlineResponse2004 = apiInstance.searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#searchJokes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#searchJokes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **kotlin.String**| A comma-separated list of words that must occur in the joke. | [optional]
 **includeTags** | **kotlin.String**| A comma-separated list of tags the jokes should have. | [optional]
 **excludeTags** | **kotlin.String**| A comma-separated list of tags the jokes must not have. | [optional]
 **minRating** | **kotlin.Double**| The minimum rating (0-10) of the jokes. | [optional]
 **maxLength** | **kotlin.Double**| The maximum length of the joke in letters. | [optional]
 **offset** | **kotlin.Int**| The number of jokes to skip, between 0 and 1000. | [optional]
 **number** | **kotlin.Int**| The number of jokes, between 1 and 10. | [optional]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

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

<a name="searchMemes"></a>
# **searchMemes**
> InlineResponse2005 searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number)

Search Memes

With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = HumorApi()
val keywords : kotlin.String = rocket // kotlin.String | A comma-separated list of words that must occur in the meme.
val keywordsInImage : kotlin.Boolean = true // kotlin.Boolean | Whether the keywords must occur in the image.
val mediaType : kotlin.String = image // kotlin.String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
val minRating : kotlin.Double = 0 // kotlin.Double | The minimum rating in range [0.0,1.0] of the meme.
val maxAgeDays : kotlin.Int = 30 // kotlin.Int | The maximum age of the meme in days.
val offset : kotlin.Int = 0 // kotlin.Int | The number of memes to skip, between 0 and 1000.
val number : kotlin.Int = 3 // kotlin.Int | The number of memes, between 0 and 10.
try {
    val result : InlineResponse2005 = apiInstance.searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HumorApi#searchMemes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HumorApi#searchMemes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **kotlin.String**| A comma-separated list of words that must occur in the meme. | [optional]
 **keywordsInImage** | **kotlin.Boolean**| Whether the keywords must occur in the image. | [optional]
 **mediaType** | **kotlin.String**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional]
 **minRating** | **kotlin.Double**| The minimum rating in range [0.0,1.0] of the meme. | [optional]
 **maxAgeDays** | **kotlin.Int**| The maximum age of the meme in days. | [optional]
 **offset** | **kotlin.Int**| The number of memes to skip, between 0 and 1000. | [optional]
 **number** | **kotlin.Int**| The number of memes, between 0 and 10. | [optional]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

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

