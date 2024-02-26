# com.apileague.HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateNonsenseWord**](HumorApi.md#generatenonsenseword) | **GET** /generate-nonsense-word | Generate Nonsense Word
[**RandomJoke**](HumorApi.md#randomjoke) | **GET** /retrieve-random-joke | Random Joke
[**RandomMeme**](HumorApi.md#randommeme) | **GET** /retrieve-random-meme | Random Meme
[**SearchGifs**](HumorApi.md#searchgifs) | **GET** /search-gifs | Search Gifs
[**SearchJokes**](HumorApi.md#searchjokes) | **GET** /search-jokes | Search Jokes
[**SearchMemes**](HumorApi.md#searchmemes) | **GET** /search-memes | Search Memes


<a name="generatenonsenseword"></a>
# **GenerateNonsenseWord**
> InlineResponse2008 GenerateNonsenseWord ()

Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class GenerateNonsenseWordExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new HumorApi();

            try
            {
                // Generate Nonsense Word
                InlineResponse2008 result = apiInstance.GenerateNonsenseWord();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling HumorApi.GenerateNonsenseWord: " + e.Message );
            }
        }
    }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="randomjoke"></a>
# **RandomJoke**
> InlineResponse2004Jokes RandomJoke (string includeTags, string excludeTags, double? minRating, int? maxLength)

Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class RandomJokeExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new HumorApi();
            var includeTags = animal;  // string | A comma-separated list of tags the jokes should have. (optional) 
            var excludeTags = nsfw,dark;  // string | A comma-separated list of tags the jokes must not have. (optional) 
            var minRating = 0;  // double? | The minimum rating in range [0.0,1.0] of the jokes. (optional) 
            var maxLength = 140;  // int? | The maximum length of the joke in letters. (optional) 

            try
            {
                // Random Joke
                InlineResponse2004Jokes result = apiInstance.RandomJoke(includeTags, excludeTags, minRating, maxLength);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling HumorApi.RandomJoke: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | **string**| A comma-separated list of tags the jokes should have. | [optional] 
 **excludeTags** | **string**| A comma-separated list of tags the jokes must not have. | [optional] 
 **minRating** | **double?**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **maxLength** | **int?**| The maximum length of the joke in letters. | [optional] 

### Return type

[**InlineResponse2004Jokes**](InlineResponse2004Jokes.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="randommeme"></a>
# **RandomMeme**
> InlineResponse2006 RandomMeme (string keywords, bool? keywordsInImage, string mediaType, double? minRating, int? maxAgeDays)

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class RandomMemeExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new HumorApi();
            var keywords = airplane;  // string | A comma-separated list of words that must occur in the meme. (optional) 
            var keywordsInImage = true;  // bool? | Whether the keywords must occur in the image. (optional) 
            var mediaType = image;  // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional) 
            var minRating = 0;  // double? | The minimum rating in range [0.0-1.0] of the meme. (optional) 
            var maxAgeDays = 30;  // int? | The maximum age of the meme in days. (optional) 

            try
            {
                // Random Meme
                InlineResponse2006 result = apiInstance.RandomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling HumorApi.RandomMeme: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywordsInImage** | **bool?**| Whether the keywords must occur in the image. | [optional] 
 **mediaType** | **string**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **minRating** | **double?**| The minimum rating in range [0.0-1.0] of the meme. | [optional] 
 **maxAgeDays** | **int?**| The maximum age of the meme in days. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchgifs"></a>
# **SearchGifs**
> InlineResponse2007 SearchGifs (string query, int? number)

Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class SearchGifsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new HumorApi();
            var query = dogs;  // string | The search query.
            var number = 5;  // int? | The number of gifs to return in range [1,10] (optional) 

            try
            {
                // Search Gifs
                InlineResponse2007 result = apiInstance.SearchGifs(query, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling HumorApi.SearchGifs: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **number** | **int?**| The number of gifs to return in range [1,10] | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchjokes"></a>
# **SearchJokes**
> InlineResponse2004 SearchJokes (string keywords, string includeTags, string excludeTags, double? minRating, double? maxLength, int? offset, int? number)

Search Jokes

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class SearchJokesExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new HumorApi();
            var keywords = horse,man;  // string | A comma-separated list of words that must occur in the joke. (optional) 
            var includeTags = animal;  // string | A comma-separated list of tags the jokes should have. (optional) 
            var excludeTags = nsfw,dark;  // string | A comma-separated list of tags the jokes must not have. (optional) 
            var minRating = 0;  // double? | The minimum rating (0-10) of the jokes. (optional) 
            var maxLength = 140;  // double? | The maximum length of the joke in letters. (optional) 
            var offset = 0;  // int? | The number of jokes to skip, between 0 and 1000. (optional) 
            var number = 3;  // int? | The number of jokes, between 1 and 10. (optional) 

            try
            {
                // Search Jokes
                InlineResponse2004 result = apiInstance.SearchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling HumorApi.SearchJokes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the joke. | [optional] 
 **includeTags** | **string**| A comma-separated list of tags the jokes should have. | [optional] 
 **excludeTags** | **string**| A comma-separated list of tags the jokes must not have. | [optional] 
 **minRating** | **double?**| The minimum rating (0-10) of the jokes. | [optional] 
 **maxLength** | **double?**| The maximum length of the joke in letters. | [optional] 
 **offset** | **int?**| The number of jokes to skip, between 0 and 1000. | [optional] 
 **number** | **int?**| The number of jokes, between 1 and 10. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchmemes"></a>
# **SearchMemes**
> InlineResponse2005 SearchMemes (string keywords, bool? keywordsInImage, string mediaType, double? minRating, int? maxAgeDays, int? offset, int? number)

Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class SearchMemesExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new HumorApi();
            var keywords = rocket;  // string | A comma-separated list of words that must occur in the meme. (optional) 
            var keywordsInImage = true;  // bool? | Whether the keywords must occur in the image. (optional) 
            var mediaType = image;  // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional) 
            var minRating = 0;  // double? | The minimum rating in range [0.0,1.0] of the meme. (optional) 
            var maxAgeDays = 30;  // int? | The maximum age of the meme in days. (optional) 
            var offset = 0;  // int? | The number of memes to skip, between 0 and 1000. (optional) 
            var number = 3;  // int? | The number of memes, between 0 and 10. (optional) 

            try
            {
                // Search Memes
                InlineResponse2005 result = apiInstance.SearchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling HumorApi.SearchMemes: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywordsInImage** | **bool?**| Whether the keywords must occur in the image. | [optional] 
 **mediaType** | **string**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **minRating** | **double?**| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **maxAgeDays** | **int?**| The maximum age of the meme in days. | [optional] 
 **offset** | **int?**| The number of memes to skip, between 0 and 1000. | [optional] 
 **number** | **int?**| The number of memes, between 0 and 10. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

