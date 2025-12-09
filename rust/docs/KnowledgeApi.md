# \KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**random_affirmation_api**](KnowledgeApi.md#random_affirmation_api) | **GET** /retrieve-random-affirmation | Random Affirmation API
[**random_life_hack_api**](KnowledgeApi.md#random_life_hack_api) | **GET** /retrieve-random-life-hack | Random Life Hack API
[**random_quote_api**](KnowledgeApi.md#random_quote_api) | **GET** /retrieve-random-quote | Random Quote API
[**random_riddle_api**](KnowledgeApi.md#random_riddle_api) | **GET** /retrieve-random-riddle | Random Riddle API
[**random_trivia_api**](KnowledgeApi.md#random_trivia_api) | **GET** /retrieve-random-trivia | Random Trivia API



## random_affirmation_api

> models::RandomAffirmationApi200Response random_affirmation_api()
Random Affirmation API

This endpoint returns a random affirmation to boost your confidence and motivation. Affirmations are positive statements that can help you overcome negative thoughts and improve your mindset and well-being.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::RandomAffirmationApi200Response**](randomAffirmationAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_life_hack_api

> models::RandomLifeHackApi200Response random_life_hack_api(max_length)
Random Life Hack API

This endpoint returns a random life hack to make your life easier. Life hacks are simple and clever tips or tricks that can help you save time, money, or effort in your daily life.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**max_length** | Option<**i32**> | The maximum length of the hack in letters. |  |

### Return type

[**models::RandomLifeHackApi200Response**](randomLifeHackAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_quote_api

> models::RandomQuoteApi200Response random_quote_api(min_length, max_length)
Random Quote API

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**min_length** | Option<**i32**> | The minimum length of the quote in letters. |  |
**max_length** | Option<**i32**> | The maximum length of the quote in letters. |  |

### Return type

[**models::RandomQuoteApi200Response**](randomQuoteAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_riddle_api

> models::RandomRiddleApi200Response random_riddle_api(difficulty)
Random Riddle API

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**difficulty** | Option<**String**> | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\". |  |

### Return type

[**models::RandomRiddleApi200Response**](randomRiddleAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_trivia_api

> models::RandomTriviaApi200Response random_trivia_api(max_length)
Random Trivia API

This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**max_length** | Option<**i32**> | The maximum length of the trivia in letters. |  |

### Return type

[**models::RandomTriviaApi200Response**](randomTriviaAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

