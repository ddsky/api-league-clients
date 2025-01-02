# \ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**image_to_ascii_art_by_urlapi**](ArtApi.md#image_to_ascii_art_by_urlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**random_poem_api**](ArtApi.md#random_poem_api) | **GET** /retrieve-random-poem | Random Poem API



## image_to_ascii_art_by_urlapi

> String image_to_ascii_art_by_urlapi(url, width, height)
Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The URL to the image. | [required] |
**width** | Option<**i32**> | The maximum width of the image (default 400, max. 500). |  |
**height** | Option<**i32**> | The maximum height of the image (default 400, max. 500). |  |

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_poem_api

> models::RandomPoemApi200Response random_poem_api(min_lines, max_lines)
Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**min_lines** | Option<**i32**> | The minimum number of lines of the poem. |  |
**max_lines** | Option<**i32**> | The maximum number of lines of the poem. |  |

### Return type

[**models::RandomPoemApi200Response**](randomPoemAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

