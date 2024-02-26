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



## generateNonsenseWord

> InlineResponse2008 generateNonsenseWord()

Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example

```java
// Import classes:
//import com.apileague.HumorApi;

HumorApi apiInstance = new HumorApi();
try {
    InlineResponse2008 result = apiInstance.generateNonsenseWord();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HumorApi#generateNonsenseWord");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomJoke

> InlineResponse2004Jokes randomJoke(includeTags, excludeTags, minRating, maxLength)

Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.

### Example

```java
// Import classes:
//import com.apileague.HumorApi;

HumorApi apiInstance = new HumorApi();
String includeTags = animal; // String | A comma-separated list of tags the jokes should have.
String excludeTags = nsfw,dark; // String | A comma-separated list of tags the jokes must not have.
Double minRating = 0; // Double | The minimum rating in range [0.0,1.0] of the jokes.
Integer maxLength = 140; // Integer | The maximum length of the joke in letters.
try {
    InlineResponse2004Jokes result = apiInstance.randomJoke(includeTags, excludeTags, minRating, maxLength);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HumorApi#randomJoke");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | **String**| A comma-separated list of tags the jokes should have. | [optional] [default to null]
 **excludeTags** | **String**| A comma-separated list of tags the jokes must not have. | [optional] [default to null]
 **minRating** | **Double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] [default to null]
 **maxLength** | **Integer**| The maximum length of the joke in letters. | [optional] [default to null]

### Return type

[**InlineResponse2004Jokes**](InlineResponse2004Jokes.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomMeme

> InlineResponse2006 randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays)

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example

```java
// Import classes:
//import com.apileague.HumorApi;

HumorApi apiInstance = new HumorApi();
String keywords = airplane; // String | A comma-separated list of words that must occur in the meme.
Boolean keywordsInImage = true; // Boolean | Whether the keywords must occur in the image.
String mediaType = image; // String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
Double minRating = 0; // Double | The minimum rating in range [0.0-1.0] of the meme.
Integer maxAgeDays = 30; // Integer | The maximum age of the meme in days.
try {
    InlineResponse2006 result = apiInstance.randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HumorApi#randomMeme");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the meme. | [optional] [default to null]
 **keywordsInImage** | **Boolean**| Whether the keywords must occur in the image. | [optional] [default to null]
 **mediaType** | **String**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] [default to null]
 **minRating** | **Double**| The minimum rating in range [0.0-1.0] of the meme. | [optional] [default to null]
 **maxAgeDays** | **Integer**| The maximum age of the meme in days. | [optional] [default to null]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGifs

> InlineResponse2007 searchGifs(query, number)

Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example

```java
// Import classes:
//import com.apileague.HumorApi;

HumorApi apiInstance = new HumorApi();
String query = dogs; // String | The search query.
Integer number = 5; // Integer | The number of gifs to return in range [1,10]
try {
    InlineResponse2007 result = apiInstance.searchGifs(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HumorApi#searchGifs");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **number** | **Integer**| The number of gifs to return in range [1,10] | [optional] [default to null]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchJokes

> InlineResponse2004 searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number)

Search Jokes

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example

```java
// Import classes:
//import com.apileague.HumorApi;

HumorApi apiInstance = new HumorApi();
String keywords = horse,man; // String | A comma-separated list of words that must occur in the joke.
String includeTags = animal; // String | A comma-separated list of tags the jokes should have.
String excludeTags = nsfw,dark; // String | A comma-separated list of tags the jokes must not have.
Double minRating = 0; // Double | The minimum rating (0-10) of the jokes.
Double maxLength = 140; // Double | The maximum length of the joke in letters.
Integer offset = 0; // Integer | The number of jokes to skip, between 0 and 1000.
Integer number = 3; // Integer | The number of jokes, between 1 and 10.
try {
    InlineResponse2004 result = apiInstance.searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HumorApi#searchJokes");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the joke. | [optional] [default to null]
 **includeTags** | **String**| A comma-separated list of tags the jokes should have. | [optional] [default to null]
 **excludeTags** | **String**| A comma-separated list of tags the jokes must not have. | [optional] [default to null]
 **minRating** | **Double**| The minimum rating (0-10) of the jokes. | [optional] [default to null]
 **maxLength** | **Double**| The maximum length of the joke in letters. | [optional] [default to null]
 **offset** | **Integer**| The number of jokes to skip, between 0 and 1000. | [optional] [default to null]
 **number** | **Integer**| The number of jokes, between 1 and 10. | [optional] [default to null]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchMemes

> InlineResponse2005 searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number)

Search Memes

With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.

### Example

```java
// Import classes:
//import com.apileague.HumorApi;

HumorApi apiInstance = new HumorApi();
String keywords = rocket; // String | A comma-separated list of words that must occur in the meme.
Boolean keywordsInImage = true; // Boolean | Whether the keywords must occur in the image.
String mediaType = image; // String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
Double minRating = 0; // Double | The minimum rating in range [0.0,1.0] of the meme.
Integer maxAgeDays = 30; // Integer | The maximum age of the meme in days.
Integer offset = 0; // Integer | The number of memes to skip, between 0 and 1000.
Integer number = 3; // Integer | The number of memes, between 0 and 10.
try {
    InlineResponse2005 result = apiInstance.searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HumorApi#searchMemes");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the meme. | [optional] [default to null]
 **keywordsInImage** | **Boolean**| Whether the keywords must occur in the image. | [optional] [default to null]
 **mediaType** | **String**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] [default to null]
 **minRating** | **Double**| The minimum rating in range [0.0,1.0] of the meme. | [optional] [default to null]
 **maxAgeDays** | **Integer**| The maximum age of the meme in days. | [optional] [default to null]
 **offset** | **Integer**| The number of memes to skip, between 0 and 1000. | [optional] [default to null]
 **number** | **Integer**| The number of memes, between 0 and 10. | [optional] [default to null]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

