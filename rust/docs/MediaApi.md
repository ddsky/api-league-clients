# \MediaApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detect_main_image_color_api**](MediaApi.md#detect_main_image_color_api) | **GET** /detect-color | Detect Main Image Color API
[**rescale_image_api**](MediaApi.md#rescale_image_api) | **GET** /rescale-image | Rescale Image API
[**search_icons_api**](MediaApi.md#search_icons_api) | **GET** /search-icons | Search Icons API
[**search_royalty_free_images_api**](MediaApi.md#search_royalty_free_images_api) | **GET** /search-images | Search Royalty Free Images API
[**vector_search_api**](MediaApi.md#vector_search_api) | **GET** /search-vectors | Vector Search API



## detect_main_image_color_api

> Vec<models::DetectMainImageColorApi200ResponseInner> detect_main_image_color_api(url)
Detect Main Image Color API

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url of the image for which the colors should be detected. | [required] |

### Return type

[**Vec<models::DetectMainImageColorApi200ResponseInner>**](detectMainImageColorAPI_200_response_inner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rescale_image_api

> std::path::PathBuf rescale_image_api(url, width, height, crop)
Rescale Image API

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url of the image to be rescaled. | [required] |
**width** | **i32** | The desired width of the rescaled image. | [required] |
**height** | **i32** | The desired height of the rescaled image. | [required] |
**crop** | **bool** | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | [required] |

### Return type

[**std::path::PathBuf**](std::path::PathBuf.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_icons_api

> models::SearchIconsApi200Response search_icons_api(query, only_public_domain, number)
Search Icons API

Search through millions of icons to match any topic you want.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query. | [required] |
**only_public_domain** | Option<**bool**> | If true, only public domain icons will be returned. |  |
**number** | Option<**i32**> | The number of icons to return in range [1,100] |  |

### Return type

[**models::SearchIconsApi200Response**](searchIconsAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_royalty_free_images_api

> models::SearchRoyaltyFreeImagesApi200Response search_royalty_free_images_api(query, number)
Search Royalty Free Images API

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query. | [required] |
**number** | Option<**i32**> | The number of images to return in range [1,100] |  |

### Return type

[**models::SearchRoyaltyFreeImagesApi200Response**](searchRoyaltyFreeImagesAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## vector_search_api

> models::VectorSearchApi200Response vector_search_api(query, offset, number)
Vector Search API

Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query. | [required] |
**offset** | Option<**i32**> | The number of vectors to skip, between 0 and 1000 |  |
**number** | Option<**i32**> | The number of vectors to return in range [1,10] |  |

### Return type

[**models::VectorSearchApi200Response**](vectorSearchAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

