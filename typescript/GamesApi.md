# .GamesApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarGamesAPI**](GamesApi.md#findSimilarGamesAPI) | **GET** /list-similar-games | Find Similar Games API
[**retrieveGameById**](GamesApi.md#retrieveGameById) | **GET** /retrieve-game | Retrieve Game by Id
[**searchGamesAPI**](GamesApi.md#searchGamesAPI) | **GET** /search-games | Search Games API


# **findSimilarGamesAPI**
> FindSimilarGamesAPI200Response findSimilarGamesAPI()

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .GamesApi(configuration);

let body:.GamesApiFindSimilarGamesAPIRequest = {
  // number | The id of the game.
  id: 1273796,
  // number | Number of results to return between 1 and 10. (optional)
  limit: 10,
};

apiInstance.findSimilarGamesAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the game. | defaults to undefined
 **limit** | [**number**] | Number of results to return between 1 and 10. | (optional) defaults to undefined


### Return type

**FindSimilarGamesAPI200Response**

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

# **retrieveGameById**
> RetrieveGameById200Response retrieveGameById()

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game\'s name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .GamesApi(configuration);

let body:.GamesApiRetrieveGameByIdRequest = {
  // number | The id of the game.
  id: 1273796,
};

apiInstance.retrieveGameById(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the game. | defaults to undefined


### Return type

**RetrieveGameById200Response**

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

# **searchGamesAPI**
> SearchGamesAPI200Response searchGamesAPI()

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .GamesApi(configuration);

let body:.GamesApiSearchGamesAPIRequest = {
  // string | The search query. (optional)
  query: "strategy games",
  // number | Pagination offset (start index) between 0 and 1000. (optional)
  offset: 0,
  // number | Number of results to return between 1 and 100. (optional)
  limit: 10,
  // string | JSON array of filters (optional)
  filters: "[]",
  // string | Field to sort by (optional)
  sort: "rating",
  // string | Sort order (asc or desc) (optional)
  sortOrder: "asc",
  // boolean | Whether to generate filter options (optional)
  generateFilterOptions: true,
};

apiInstance.searchGamesAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **offset** | [**number**] | Pagination offset (start index) between 0 and 1000. | (optional) defaults to undefined
 **limit** | [**number**] | Number of results to return between 1 and 100. | (optional) defaults to undefined
 **filters** | [**string**] | JSON array of filters | (optional) defaults to undefined
 **sort** | [**string**] | Field to sort by | (optional) defaults to undefined
 **sortOrder** | [**string**] | Sort order (asc or desc) | (optional) defaults to undefined
 **generateFilterOptions** | [**boolean**] | Whether to generate filter options | (optional) defaults to undefined


### Return type

**SearchGamesAPI200Response**

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


