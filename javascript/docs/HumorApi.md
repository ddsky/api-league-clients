# ApileagueJs.HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWordAPI**](HumorApi.md#generateNonsenseWordAPI) | **GET** /generate-nonsense-word | Generate Nonsense Word API
[**randomJokeAPI**](HumorApi.md#randomJokeAPI) | **GET** /retrieve-random-joke | Random Joke API
[**randomMemeAPI**](HumorApi.md#randomMemeAPI) | **GET** /retrieve-random-meme | Random Meme API
[**searchGifsAPI**](HumorApi.md#searchGifsAPI) | **GET** /search-gifs | Search Gifs API
[**searchJokesAPI**](HumorApi.md#searchJokesAPI) | **GET** /search-jokes | Search Jokes API
[**searchMemesAPI**](HumorApi.md#searchMemesAPI) | **GET** /search-memes | Search Memes API



## generateNonsenseWordAPI

> GenerateNonsenseWordAPI200Response generateNonsenseWordAPI()

Generate Nonsense Word API

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.HumorApi();
apiInstance.generateNonsenseWordAPI((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## randomJokeAPI

> SearchJokesAPI200ResponseJokesInner randomJokeAPI(opts)

Random Joke API

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.HumorApi();
let opts = {
  'includeTags': "animal", // String | A comma-separated list of tags the jokes should have.
  'excludeTags': "nsfw,dark", // String | A comma-separated list of tags the jokes must not have.
  'minRating': 0, // Number | The minimum rating in range [0.0,1.0] of the jokes.
  'maxLength': 140 // Number | The maximum length of the joke in letters.
};
apiInstance.randomJokeAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | **String**| A comma-separated list of tags the jokes should have. | [optional] 
 **excludeTags** | **String**| A comma-separated list of tags the jokes must not have. | [optional] 
 **minRating** | **Number**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **maxLength** | **Number**| The maximum length of the joke in letters. | [optional] 

### Return type

[**SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## randomMemeAPI

> RandomMemeAPI200Response randomMemeAPI(opts)

Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.HumorApi();
let opts = {
  'keywords': "airplane", // String | A comma-separated list of words that must occur in the meme.
  'keywordsInImage': true, // Boolean | Whether the keywords must occur in the image.
  'mediaType': "image", // String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
  'minRating': 0, // Number | The minimum rating in range [0.0,1.0] of the meme.
  'maxAgeDays': 30 // Number | The maximum age of the meme in days.
};
apiInstance.randomMemeAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywordsInImage** | **Boolean**| Whether the keywords must occur in the image. | [optional] 
 **mediaType** | **String**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **minRating** | **Number**| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **maxAgeDays** | **Number**| The maximum age of the meme in days. | [optional] 

### Return type

[**RandomMemeAPI200Response**](RandomMemeAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGifsAPI

> SearchGifsAPI200Response searchGifsAPI(query, opts)

Search Gifs API

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.HumorApi();
let query = "dogs"; // String | The search query.
let opts = {
  'number': 5 // Number | The number of gifs to return in range [1,10]
};
apiInstance.searchGifsAPI(query, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | 
 **number** | **Number**| The number of gifs to return in range [1,10] | [optional] 

### Return type

[**SearchGifsAPI200Response**](SearchGifsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchJokesAPI

> SearchJokesAPI200Response searchJokesAPI(opts)

Search Jokes API

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.HumorApi();
let opts = {
  'keywords': "horse,man", // String | A comma-separated list of words that must occur in the joke.
  'includeTags': "animal", // String | A comma-separated list of tags the jokes should have.
  'excludeTags': "nsfw,dark", // String | A comma-separated list of tags the jokes must not have.
  'minRating': 0, // Number | The minimum rating in range [0.0,1.0] of the jokes.
  'maxLength': 140, // Number | The maximum length of the joke in letters.
  'offset': 0, // Number | The number of jokes to skip, between 0 and 1000.
  'number': 3 // Number | The number of jokes, between 1 and 10.
};
apiInstance.searchJokesAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the joke. | [optional] 
 **includeTags** | **String**| A comma-separated list of tags the jokes should have. | [optional] 
 **excludeTags** | **String**| A comma-separated list of tags the jokes must not have. | [optional] 
 **minRating** | **Number**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **maxLength** | **Number**| The maximum length of the joke in letters. | [optional] 
 **offset** | **Number**| The number of jokes to skip, between 0 and 1000. | [optional] 
 **number** | **Number**| The number of jokes, between 1 and 10. | [optional] 

### Return type

[**SearchJokesAPI200Response**](SearchJokesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchMemesAPI

> SearchMemesAPI200Response searchMemesAPI(opts)

Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You&#39;ll surely find something funny.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.HumorApi();
let opts = {
  'keywords': "rocket", // String | A comma-separated list of words that must occur in the meme.
  'keywordsInImage': true, // Boolean | Whether the keywords must occur in the image.
  'mediaType': "image", // String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
  'minRating': 0, // Number | The minimum rating in range [0.0,1.0] of the meme.
  'maxAgeDays': 30, // Number | The maximum age of the meme in days.
  'offset': 0, // Number | The number of memes to skip, between 0 and 1000.
  'number': 3 // Number | The number of memes, between 1 and 10.
};
apiInstance.searchMemesAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **String**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywordsInImage** | **Boolean**| Whether the keywords must occur in the image. | [optional] 
 **mediaType** | **String**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **minRating** | **Number**| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **maxAgeDays** | **Number**| The maximum age of the meme in days. | [optional] 
 **offset** | **Number**| The number of memes to skip, between 0 and 1000. | [optional] 
 **number** | **Number**| The number of memes, between 1 and 10. | [optional] 

### Return type

[**SearchMemesAPI200Response**](SearchMemesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

