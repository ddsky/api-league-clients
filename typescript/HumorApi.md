# .HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](HumorApi.md#generateNonsenseWord) | **GET** /generate-nonsense-word | Generate Nonsense Word
[**randomJoke**](HumorApi.md#randomJoke) | **GET** /retrieve-random-joke | Random Joke
[**randomMeme**](HumorApi.md#randomMeme) | **GET** /retrieve-random-meme | Random Meme
[**searchGifs**](HumorApi.md#searchGifs) | **GET** /search-gifs | Search Gifs
[**searchJokes**](HumorApi.md#searchJokes) | **GET** /search-jokes | Search Jokes
[**searchMemes**](HumorApi.md#searchMemes) | **GET** /search-memes | Search Memes


# **generateNonsenseWord**
> GenerateNonsenseWord200Response generateNonsenseWord()

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:any = {};

apiInstance.generateNonsenseWord(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**GenerateNonsenseWord200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **randomJoke**
> SearchJokes200ResponseJokesInner randomJoke()

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiRandomJokeRequest = {
  // string | A comma-separated list of tags the jokes should have. (optional)
  includeTags: "animal",
  // string | A comma-separated list of tags the jokes must not have. (optional)
  excludeTags: "nsfw,dark",
  // number | The minimum rating in range [0.0,1.0] of the jokes. (optional)
  minRating: 0,
  // number | The maximum length of the joke in letters. (optional)
  maxLength: 140,
};

apiInstance.randomJoke(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | [**string**] | A comma-separated list of tags the jokes should have. | (optional) defaults to undefined
 **excludeTags** | [**string**] | A comma-separated list of tags the jokes must not have. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating in range [0.0,1.0] of the jokes. | (optional) defaults to undefined
 **maxLength** | [**number**] | The maximum length of the joke in letters. | (optional) defaults to undefined


### Return type

**SearchJokes200ResponseJokesInner**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **randomMeme**
> RandomMeme200Response randomMeme()

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiRandomMemeRequest = {
  // string | A comma-separated list of words that must occur in the meme. (optional)
  keywords: "airplane",
  // boolean | Whether the keywords must occur in the image. (optional)
  keywordsInImage: true,
  // string | The media type (either \'image\', \'video\' or even specific format such as \'jpg\', \'png\', or \'gif\'). (optional)
  mediaType: "image",
  // number | The minimum rating in range [0.0-1.0] of the meme. (optional)
  minRating: 0,
  // number | The maximum age of the meme in days. (optional)
  maxAgeDays: 30,
};

apiInstance.randomMeme(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**string**] | A comma-separated list of words that must occur in the meme. | (optional) defaults to undefined
 **keywordsInImage** | [**boolean**] | Whether the keywords must occur in the image. | (optional) defaults to undefined
 **mediaType** | [**string**] | The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;). | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating in range [0.0-1.0] of the meme. | (optional) defaults to undefined
 **maxAgeDays** | [**number**] | The maximum age of the meme in days. | (optional) defaults to undefined


### Return type

**RandomMeme200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchGifs**
> SearchGifs200Response searchGifs()

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiSearchGifsRequest = {
  // string | The search query.
  query: "dogs",
  // number | The number of gifs to return in range [1,10] (optional)
  number: 5,
};

apiInstance.searchGifs(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | defaults to undefined
 **number** | [**number**] | The number of gifs to return in range [1,10] | (optional) defaults to undefined


### Return type

**SearchGifs200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchJokes**
> SearchJokes200Response searchJokes()

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiSearchJokesRequest = {
  // string | A comma-separated list of words that must occur in the joke. (optional)
  keywords: "horse,man",
  // string | A comma-separated list of tags the jokes should have. (optional)
  includeTags: "animal",
  // string | A comma-separated list of tags the jokes must not have. (optional)
  excludeTags: "nsfw,dark",
  // number | The minimum rating (0-10) of the jokes. (optional)
  minRating: 0,
  // number | The maximum length of the joke in letters. (optional)
  maxLength: 140,
  // number | The number of jokes to skip, between 0 and 1000. (optional)
  offset: 0,
  // number | The number of jokes, between 1 and 10. (optional)
  number: 3,
};

apiInstance.searchJokes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**string**] | A comma-separated list of words that must occur in the joke. | (optional) defaults to undefined
 **includeTags** | [**string**] | A comma-separated list of tags the jokes should have. | (optional) defaults to undefined
 **excludeTags** | [**string**] | A comma-separated list of tags the jokes must not have. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating (0-10) of the jokes. | (optional) defaults to undefined
 **maxLength** | [**number**] | The maximum length of the joke in letters. | (optional) defaults to undefined
 **offset** | [**number**] | The number of jokes to skip, between 0 and 1000. | (optional) defaults to undefined
 **number** | [**number**] | The number of jokes, between 1 and 10. | (optional) defaults to undefined


### Return type

**SearchJokes200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchMemes**
> SearchMemes200Response searchMemes()

With over 200,000 memes, you\'ll surely find something funny. You can even search for text within memes and filter by user ratings.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiSearchMemesRequest = {
  // string | A comma-separated list of words that must occur in the meme. (optional)
  keywords: "rocket",
  // boolean | Whether the keywords must occur in the image. (optional)
  keywordsInImage: true,
  // string | The media type (either \'image\', \'video\' or even specific format such as \'jpg\', \'png\', or \'gif\'). (optional)
  mediaType: "image",
  // number | The minimum rating in range [0.0,1.0] of the meme. (optional)
  minRating: 0,
  // number | The maximum age of the meme in days. (optional)
  maxAgeDays: 30,
  // number | The number of memes to skip, between 0 and 1000. (optional)
  offset: 0,
  // number | The number of memes, between 0 and 10. (optional)
  number: 3,
};

apiInstance.searchMemes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**string**] | A comma-separated list of words that must occur in the meme. | (optional) defaults to undefined
 **keywordsInImage** | [**boolean**] | Whether the keywords must occur in the image. | (optional) defaults to undefined
 **mediaType** | [**string**] | The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;). | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating in range [0.0,1.0] of the meme. | (optional) defaults to undefined
 **maxAgeDays** | [**number**] | The maximum age of the meme in days. | (optional) defaults to undefined
 **offset** | [**number**] | The number of memes to skip, between 0 and 1000. | (optional) defaults to undefined
 **number** | [**number**] | The number of memes, between 0 and 10. | (optional) defaults to undefined


### Return type

**SearchMemes200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


