# apileague.Api.HumorApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GenerateNonsenseWordAPI**](HumorApi.md#generatenonsensewordapi) | **GET** /generate-nonsense-word | Generate Nonsense Word API |
| [**RandomJokeAPI**](HumorApi.md#randomjokeapi) | **GET** /retrieve-random-joke | Random Joke API |
| [**RandomMemeAPI**](HumorApi.md#randommemeapi) | **GET** /retrieve-random-meme | Random Meme API |
| [**SearchGifsAPI**](HumorApi.md#searchgifsapi) | **GET** /search-gifs | Search Gifs API |
| [**SearchJokesAPI**](HumorApi.md#searchjokesapi) | **GET** /search-jokes | Search Jokes API |
| [**SearchMemesAPI**](HumorApi.md#searchmemesapi) | **GET** /search-memes | Search Memes API |

<a id="generatenonsensewordapi"></a>
# **GenerateNonsenseWordAPI**
> GenerateNonsenseWordAPI200Response GenerateNonsenseWordAPI ()

Generate Nonsense Word API

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
    public class GenerateNonsenseWordAPIExample
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
                // Generate Nonsense Word API
                GenerateNonsenseWordAPI200Response result = apiInstance.GenerateNonsenseWordAPI();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.GenerateNonsenseWordAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GenerateNonsenseWordAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Generate Nonsense Word API
    ApiResponse<GenerateNonsenseWordAPI200Response> response = apiInstance.GenerateNonsenseWordAPIWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.GenerateNonsenseWordAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**GenerateNonsenseWordAPI200Response**](GenerateNonsenseWordAPI200Response.md)

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

<a id="randomjokeapi"></a>
# **RandomJokeAPI**
> SearchJokesAPI200ResponseJokesInner RandomJokeAPI (string? includeTags = null, string? excludeTags = null, double? minRating = null, int? maxLength = null)

Random Joke API

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
    public class RandomJokeAPIExample
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
                // Random Joke API
                SearchJokesAPI200ResponseJokesInner result = apiInstance.RandomJokeAPI(includeTags, excludeTags, minRating, maxLength);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.RandomJokeAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RandomJokeAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Random Joke API
    ApiResponse<SearchJokesAPI200ResponseJokesInner> response = apiInstance.RandomJokeAPIWithHttpInfo(includeTags, excludeTags, minRating, maxLength);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.RandomJokeAPIWithHttpInfo: " + e.Message);
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

[**SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md)

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

<a id="randommemeapi"></a>
# **RandomMemeAPI**
> RandomMemeAPI200Response RandomMemeAPI (string? keywords = null, bool? keywordsInImage = null, string? mediaType = null, double? minRating = null, int? maxAgeDays = null)

Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RandomMemeAPIExample
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
                // Random Meme API
                RandomMemeAPI200Response result = apiInstance.RandomMemeAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.RandomMemeAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RandomMemeAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Random Meme API
    ApiResponse<RandomMemeAPI200Response> response = apiInstance.RandomMemeAPIWithHttpInfo(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.RandomMemeAPIWithHttpInfo: " + e.Message);
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

[**RandomMemeAPI200Response**](RandomMemeAPI200Response.md)

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

<a id="searchgifsapi"></a>
# **SearchGifsAPI**
> SearchGifsAPI200Response SearchGifsAPI (string query, int? number = null)

Search Gifs API

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
    public class SearchGifsAPIExample
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
                // Search Gifs API
                SearchGifsAPI200Response result = apiInstance.SearchGifsAPI(query, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.SearchGifsAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchGifsAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Gifs API
    ApiResponse<SearchGifsAPI200Response> response = apiInstance.SearchGifsAPIWithHttpInfo(query, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.SearchGifsAPIWithHttpInfo: " + e.Message);
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

[**SearchGifsAPI200Response**](SearchGifsAPI200Response.md)

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

<a id="searchjokesapi"></a>
# **SearchJokesAPI**
> SearchJokesAPI200Response SearchJokesAPI (string? keywords = null, string? includeTags = null, string? excludeTags = null, double? minRating = null, double? maxLength = null, int? offset = null, int? number = null)

Search Jokes API

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
    public class SearchJokesAPIExample
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
                // Search Jokes API
                SearchJokesAPI200Response result = apiInstance.SearchJokesAPI(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.SearchJokesAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchJokesAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Jokes API
    ApiResponse<SearchJokesAPI200Response> response = apiInstance.SearchJokesAPIWithHttpInfo(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.SearchJokesAPIWithHttpInfo: " + e.Message);
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

[**SearchJokesAPI200Response**](SearchJokesAPI200Response.md)

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

<a id="searchmemesapi"></a>
# **SearchMemesAPI**
> SearchMemesAPI200Response SearchMemesAPI (string? keywords = null, bool? keywordsInImage = null, string? mediaType = null, double? minRating = null, int? maxAgeDays = null, int? offset = null, int? number = null)

Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchMemesAPIExample
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
                // Search Memes API
                SearchMemesAPI200Response result = apiInstance.SearchMemesAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HumorApi.SearchMemesAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchMemesAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Memes API
    ApiResponse<SearchMemesAPI200Response> response = apiInstance.SearchMemesAPIWithHttpInfo(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling HumorApi.SearchMemesAPIWithHttpInfo: " + e.Message);
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

[**SearchMemesAPI200Response**](SearchMemesAPI200Response.md)

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

