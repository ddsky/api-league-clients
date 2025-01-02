# .HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWordAPI**](HumorApi.md#generateNonsenseWordAPI) | **GET** /generate-nonsense-word | Generate Nonsense Word API
[**randomJokeAPI**](HumorApi.md#randomJokeAPI) | **GET** /retrieve-random-joke | Random Joke API
[**randomMemeAPI**](HumorApi.md#randomMemeAPI) | **GET** /retrieve-random-meme | Random Meme API
[**searchGifsAPI**](HumorApi.md#searchGifsAPI) | **GET** /search-gifs | Search Gifs API
[**searchJokesAPI**](HumorApi.md#searchJokesAPI) | **GET** /search-jokes | Search Jokes API
[**searchMemesAPI**](HumorApi.md#searchMemesAPI) | **GET** /search-memes | Search Memes API


# **generateNonsenseWordAPI**
> GenerateNonsenseWordAPI200Response generateNonsenseWordAPI()

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:any = {};

apiInstance.generateNonsenseWordAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**GenerateNonsenseWordAPI200Response**

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

# **randomJokeAPI**
> SearchJokesAPI200ResponseJokesInner randomJokeAPI()

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiRandomJokeAPIRequest = {
  // string | A comma-separated list of tags the jokes should have. (optional)
  includeTags: "animal",
  // string | A comma-separated list of tags the jokes must not have. (optional)
  excludeTags: "nsfw,dark",
  // number | The minimum rating in range [0.0,1.0] of the jokes. (optional)
  minRating: 0,
  // number | The maximum length of the joke in letters. (optional)
  maxLength: 140,
};

apiInstance.randomJokeAPI(body).then((data:any) => {
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

**SearchJokesAPI200ResponseJokesInner**

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

# **randomMemeAPI**
> RandomMemeAPI200Response randomMemeAPI()

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiRandomMemeAPIRequest = {
  // string | A comma-separated list of words that must occur in the meme. (optional)
  keywords: "airplane",
  // boolean | Whether the keywords must occur in the image. (optional)
  keywordsInImage: true,
  // string | The media type (either \'image\', \'video\' or even specific format such as \'jpg\', \'png\', or \'gif\'). (optional)
  mediaType: "image",
  // number | The minimum rating in range [0.0,1.0] of the meme. (optional)
  minRating: 0,
  // number | The maximum age of the meme in days. (optional)
  maxAgeDays: 30,
};

apiInstance.randomMemeAPI(body).then((data:any) => {
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


### Return type

**RandomMemeAPI200Response**

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

# **searchGifsAPI**
> SearchGifsAPI200Response searchGifsAPI()

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiSearchGifsAPIRequest = {
  // string | The search query.
  query: "dogs",
  // number | The number of gifs to return in range [1,10] (optional)
  number: 5,
};

apiInstance.searchGifsAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | defaults to undefined
 **number** | [**number**] | The number of gifs to return in range [1,10] | (optional) defaults to undefined


### Return type

**SearchGifsAPI200Response**

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

# **searchJokesAPI**
> SearchJokesAPI200Response searchJokesAPI()

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiSearchJokesAPIRequest = {
  // string | A comma-separated list of words that must occur in the joke. (optional)
  keywords: "horse,man",
  // string | A comma-separated list of tags the jokes should have. (optional)
  includeTags: "animal",
  // string | A comma-separated list of tags the jokes must not have. (optional)
  excludeTags: "nsfw,dark",
  // number | The minimum rating in range [0.0,1.0] of the jokes. (optional)
  minRating: 0,
  // number | The maximum length of the joke in letters. (optional)
  maxLength: 140,
  // number | The number of jokes to skip, between 0 and 1000. (optional)
  offset: 0,
  // number | The number of jokes, between 1 and 10. (optional)
  number: 3,
};

apiInstance.searchJokesAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | [**string**] | A comma-separated list of words that must occur in the joke. | (optional) defaults to undefined
 **includeTags** | [**string**] | A comma-separated list of tags the jokes should have. | (optional) defaults to undefined
 **excludeTags** | [**string**] | A comma-separated list of tags the jokes must not have. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating in range [0.0,1.0] of the jokes. | (optional) defaults to undefined
 **maxLength** | [**number**] | The maximum length of the joke in letters. | (optional) defaults to undefined
 **offset** | [**number**] | The number of jokes to skip, between 0 and 1000. | (optional) defaults to undefined
 **number** | [**number**] | The number of jokes, between 1 and 10. | (optional) defaults to undefined


### Return type

**SearchJokesAPI200Response**

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

# **searchMemesAPI**
> SearchMemesAPI200Response searchMemesAPI()

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You\'ll surely find something funny.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .HumorApi(configuration);

let body:.HumorApiSearchMemesAPIRequest = {
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
  // number | The number of memes, between 1 and 10. (optional)
  number: 3,
};

apiInstance.searchMemesAPI(body).then((data:any) => {
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
 **number** | [**number**] | The number of memes, between 1 and 10. | (optional) defaults to undefined


### Return type

**SearchMemesAPI200Response**

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


