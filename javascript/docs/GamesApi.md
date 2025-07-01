# ApileagueJs.GamesApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarGamesAPI**](GamesApi.md#findSimilarGamesAPI) | **GET** /list-similar-games | Find Similar Games API
[**retrieveGameById**](GamesApi.md#retrieveGameById) | **GET** /retrieve-game | Retrieve Game by Id
[**searchGamesAPI**](GamesApi.md#searchGamesAPI) | **GET** /search-games | Search Games API



## findSimilarGamesAPI

> FindSimilarGamesAPI200Response findSimilarGamesAPI(id, opts)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

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

let apiInstance = new ApileagueJs.GamesApi();
let id = 1273796; // Number | The id of the game.
let opts = {
  'limit': 10 // Number | Number of results to return between 1 and 10.
};
apiInstance.findSimilarGamesAPI(id, opts, (error, data, response) => {
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
 **id** | **Number**| The id of the game. | 
 **limit** | **Number**| Number of results to return between 1 and 10. | [optional] 

### Return type

[**FindSimilarGamesAPI200Response**](FindSimilarGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieveGameById

> RetrieveGameById200Response retrieveGameById(id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game&#39;s name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

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

let apiInstance = new ApileagueJs.GamesApi();
let id = 1273796; // Number | The id of the game.
apiInstance.retrieveGameById(id, (error, data, response) => {
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
 **id** | **Number**| The id of the game. | 

### Return type

[**RetrieveGameById200Response**](RetrieveGameById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGamesAPI

> SearchGamesAPI200Response searchGamesAPI(opts)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

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

let apiInstance = new ApileagueJs.GamesApi();
let opts = {
  'query': "strategy games", // String | The search query.
  'offset': 0, // Number | Pagination offset (start index) between 0 and 1000.
  'limit': 10, // Number | Number of results to return between 1 and 100.
  'filters': "[]", // String | JSON array of filters
  'sort': "rating", // String | Field to sort by
  'sortOrder': "asc", // String | Sort order (asc or desc)
  'generateFilterOptions': true // Boolean | Whether to generate filter options
};
apiInstance.searchGamesAPI(opts, (error, data, response) => {
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
 **query** | **String**| The search query. | [optional] 
 **offset** | **Number**| Pagination offset (start index) between 0 and 1000. | [optional] 
 **limit** | **Number**| Number of results to return between 1 and 100. | [optional] 
 **filters** | **String**| JSON array of filters | [optional] 
 **sort** | **String**| Field to sort by | [optional] 
 **sortOrder** | **String**| Sort order (asc or desc) | [optional] 
 **generateFilterOptions** | **Boolean**| Whether to generate filter options | [optional] 

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

