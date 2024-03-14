# apileague.Api.HumorApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GenerateNonsenseWord**](HumorApi.md#generatenonsenseword) | **GET** /generate-nonsense-word | Generate Nonsense Word |
| [**RandomJoke**](HumorApi.md#randomjoke) | **GET** /retrieve-random-joke | Random Joke |
| [**RandomMeme**](HumorApi.md#randommeme) | **GET** /retrieve-random-meme | Random Meme |
| [**SearchGifs**](HumorApi.md#searchgifs) | **GET** /search-gifs | Search Gifs |
| [**SearchJokes**](HumorApi.md#searchjokes) | **GET** /search-jokes | Search Jokes |
| [**SearchMemes**](HumorApi.md#searchmemes) | **GET** /search-memes | Search Memes |

<a id="generatenonsenseword"></a>
# **GenerateNonsenseWord**
> GenerateNonsenseWord200Response GenerateNonsenseWord ()

Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class GenerateNonsenseWordExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new HumorApi(config);

            try
            {
                // Generate Nonsense Word
                GenerateNonsenseWord200Response result = apiInstance.GenerateNonsenseWord();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.GenerateNonsenseWord: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GenerateNonsenseWordWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Generate Nonsense Word
    ApiResponse<GenerateNonsenseWord200Response> response = apiInstance.GenerateNonsenseWordWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.GenerateNonsenseWordWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**GenerateNonsenseWord200Response**](GenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="randomjoke"></a>
# **RandomJoke**
> SearchJokes200ResponseJokesInner RandomJoke (string? includeTags = null, string? excludeTags = null, double? minRating = null, int? maxLength = null)

Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RandomJokeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new HumorApi(config);
            var includeTags = animal;  // string? | A comma-separated list of tags the jokes should have. (optional) 
            var excludeTags = nsfw,dark;  // string? | A comma-separated list of tags the jokes must not have. (optional) 
            var minRating = 0;  // double? | The minimum rating in range [0.0,1.0] of the jokes. (optional) 
            var maxLength = 140;  // int? | The maximum length of the joke in letters. (optional) 

            try
            {
                // Random Joke
                SearchJokes200ResponseJokesInner result = apiInstance.RandomJoke(includeTags, excludeTags, minRating, maxLength);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.RandomJoke: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RandomJokeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Random Joke
    ApiResponse<SearchJokes200ResponseJokesInner> response = apiInstance.RandomJokeWithHttpInfo(includeTags, excludeTags, minRating, maxLength);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.RandomJokeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **includeTags** | **string?** | A comma-separated list of tags the jokes should have. | [optional]  |
| **excludeTags** | **string?** | A comma-separated list of tags the jokes must not have. | [optional]  |
| **minRating** | **double?** | The minimum rating in range [0.0,1.0] of the jokes. | [optional]  |
| **maxLength** | **int?** | The maximum length of the joke in letters. | [optional]  |

### Return type

[**SearchJokes200ResponseJokesInner**](SearchJokes200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="randommeme"></a>
# **RandomMeme**
> RandomMeme200Response RandomMeme (string? keywords = null, bool? keywordsInImage = null, string? mediaType = null, double? minRating = null, int? maxAgeDays = null)

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RandomMemeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new HumorApi(config);
            var keywords = airplane;  // string? | A comma-separated list of words that must occur in the meme. (optional) 
            var keywordsInImage = true;  // bool? | Whether the keywords must occur in the image. (optional) 
            var mediaType = image;  // string? | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional) 
            var minRating = 0;  // double? | The minimum rating in range [0.0,1.0] of the meme. (optional) 
            var maxAgeDays = 30;  // int? | The maximum age of the meme in days. (optional) 

            try
            {
                // Random Meme
                RandomMeme200Response result = apiInstance.RandomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.RandomMeme: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RandomMemeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Random Meme
    ApiResponse<RandomMeme200Response> response = apiInstance.RandomMemeWithHttpInfo(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.RandomMemeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **keywords** | **string?** | A comma-separated list of words that must occur in the meme. | [optional]  |
| **keywordsInImage** | **bool?** | Whether the keywords must occur in the image. | [optional]  |
| **mediaType** | **string?** | The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional]  |
| **minRating** | **double?** | The minimum rating in range [0.0,1.0] of the meme. | [optional]  |
| **maxAgeDays** | **int?** | The maximum age of the meme in days. | [optional]  |

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchgifs"></a>
# **SearchGifs**
> SearchGifs200Response SearchGifs (string query, int? number = null)

Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchGifsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new HumorApi(config);
            var query = dogs;  // string | The search query.
            var number = 5;  // int? | The number of gifs to return in range [1,10] (optional) 

            try
            {
                // Search Gifs
                SearchGifs200Response result = apiInstance.SearchGifs(query, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.SearchGifs: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchGifsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Gifs
    ApiResponse<SearchGifs200Response> response = apiInstance.SearchGifsWithHttpInfo(query, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.SearchGifsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** | The search query. |  |
| **number** | **int?** | The number of gifs to return in range [1,10] | [optional]  |

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchjokes"></a>
# **SearchJokes**
> SearchJokes200Response SearchJokes (string? keywords = null, string? includeTags = null, string? excludeTags = null, double? minRating = null, double? maxLength = null, int? offset = null, int? number = null)

Search Jokes

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchJokesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new HumorApi(config);
            var keywords = horse,man;  // string? | A comma-separated list of words that must occur in the joke. (optional) 
            var includeTags = animal;  // string? | A comma-separated list of tags the jokes should have. (optional) 
            var excludeTags = nsfw,dark;  // string? | A comma-separated list of tags the jokes must not have. (optional) 
            var minRating = 0;  // double? | The minimum rating in range [0.0,1.0] of the jokes. (optional) 
            var maxLength = 140;  // double? | The maximum length of the joke in letters. (optional) 
            var offset = 0;  // int? | The number of jokes to skip, between 0 and 1000. (optional) 
            var number = 3;  // int? | The number of jokes, between 1 and 10. (optional) 

            try
            {
                // Search Jokes
                SearchJokes200Response result = apiInstance.SearchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.SearchJokes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchJokesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Jokes
    ApiResponse<SearchJokes200Response> response = apiInstance.SearchJokesWithHttpInfo(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.SearchJokesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **keywords** | **string?** | A comma-separated list of words that must occur in the joke. | [optional]  |
| **includeTags** | **string?** | A comma-separated list of tags the jokes should have. | [optional]  |
| **excludeTags** | **string?** | A comma-separated list of tags the jokes must not have. | [optional]  |
| **minRating** | **double?** | The minimum rating in range [0.0,1.0] of the jokes. | [optional]  |
| **maxLength** | **double?** | The maximum length of the joke in letters. | [optional]  |
| **offset** | **int?** | The number of jokes to skip, between 0 and 1000. | [optional]  |
| **number** | **int?** | The number of jokes, between 1 and 10. | [optional]  |

### Return type

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchmemes"></a>
# **SearchMemes**
> SearchMemes200Response SearchMemes (string? keywords = null, bool? keywordsInImage = null, string? mediaType = null, double? minRating = null, int? maxAgeDays = null, int? offset = null, int? number = null)

Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchMemesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new HumorApi(config);
            var keywords = rocket;  // string? | A comma-separated list of words that must occur in the meme. (optional) 
            var keywordsInImage = true;  // bool? | Whether the keywords must occur in the image. (optional) 
            var mediaType = image;  // string? | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional) 
            var minRating = 0;  // double? | The minimum rating in range [0.0,1.0] of the meme. (optional) 
            var maxAgeDays = 30;  // int? | The maximum age of the meme in days. (optional) 
            var offset = 0;  // int? | The number of memes to skip, between 0 and 1000. (optional) 
            var number = 3;  // int? | The number of memes, between 1 and 10. (optional) 

            try
            {
                // Search Memes
                SearchMemes200Response result = apiInstance.SearchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.SearchMemes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchMemesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Memes
    ApiResponse<SearchMemes200Response> response = apiInstance.SearchMemesWithHttpInfo(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.SearchMemesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **keywords** | **string?** | A comma-separated list of words that must occur in the meme. | [optional]  |
| **keywordsInImage** | **bool?** | Whether the keywords must occur in the image. | [optional]  |
| **mediaType** | **string?** | The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional]  |
| **minRating** | **double?** | The minimum rating in range [0.0,1.0] of the meme. | [optional]  |
| **maxAgeDays** | **int?** | The maximum age of the meme in days. | [optional]  |
| **offset** | **int?** | The number of memes to skip, between 0 and 1000. | [optional]  |
| **number** | **int?** | The number of memes, between 1 and 10. | [optional]  |

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

