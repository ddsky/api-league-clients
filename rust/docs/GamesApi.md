# \GamesApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_similar_games_api**](GamesApi.md#find_similar_games_api) | **GET** /list-similar-games | Find Similar Games API
[**retrieve_game_by_id**](GamesApi.md#retrieve_game_by_id) | **GET** /retrieve-game | Retrieve Game by Id
[**search_games_api**](GamesApi.md#search_games_api) | **GET** /search-games | Search Games API



## find_similar_games_api

> models::FindSimilarGamesApi200Response find_similar_games_api(id, limit)
Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the game. | [required] |
**limit** | Option<**i32**> | Number of results to return between 1 and 10. |  |

### Return type

[**models::FindSimilarGamesApi200Response**](findSimilarGamesAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## retrieve_game_by_id

> models::RetrieveGameById200Response retrieve_game_by_id(id)
Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the game. | [required] |

### Return type

[**models::RetrieveGameById200Response**](retrieveGameById_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_games_api

> models::SearchGamesApi200Response search_games_api(query, offset, limit, filters, sort, sort_order, generate_filter_options)
Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The search query. |  |
**offset** | Option<**i32**> | Pagination offset (start index) between 0 and 1000. |  |
**limit** | Option<**i32**> | Number of results to return between 1 and 100. |  |
**filters** | Option<**String**> | JSON array of filters |  |
**sort** | Option<**String**> | Field to sort by |  |
**sort_order** | Option<**String**> | Sort order (asc or desc) |  |
**generate_filter_options** | Option<**bool**> | Whether to generate filter options |  |

### Return type

[**models::SearchGamesApi200Response**](searchGamesAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

