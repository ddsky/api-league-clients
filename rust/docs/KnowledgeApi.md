# \KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**random_quote**](KnowledgeApi.md#random_quote) | **GET** /retrieve-random-quote | Random Quote
[**random_trivia**](KnowledgeApi.md#random_trivia) | **GET** /retrieve-random-trivia | Random Trivia



## random_quote

> models::RandomQuote200Response random_quote(min_length, max_length)
Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**min_length** | Option<**i32**> | The minimum length of the quote in letters. |  |
**max_length** | Option<**i32**> | The maximum length of the quote in letters. |  |

### Return type

[**models::RandomQuote200Response**](randomQuote_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_trivia

> models::RandomTrivia200Response random_trivia(max_length)
Random Trivia

This endpoint returns a random piece of trivia.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**max_length** | Option<**i32**> | The maximum length of the trivia in letters. |  |

### Return type

[**models::RandomTrivia200Response**](randomTrivia_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

