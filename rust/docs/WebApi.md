# \WebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_authors**](WebApi.md#extract_authors) | **GET** /extract-authors | Extract Authors
[**extract_content_from_a_web_page**](WebApi.md#extract_content_from_a_web_page) | **GET** /extract-content | Extract Content from a Web Page
[**extract_publish_date**](WebApi.md#extract_publish_date) | **GET** /extract-publish-date | Extract Publish Date
[**search_web**](WebApi.md#search_web) | **GET** /search-web | Search Web



## extract_authors

> crate::models::ExtractAuthors200Response extract_authors(url)
Extract Authors

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url with the article from which authors should be extracted. | [required] |

### Return type

[**crate::models::ExtractAuthors200Response**](extractAuthors_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_content_from_a_web_page

> crate::models::ExtractContentFromAWebPage200Response extract_content_from_a_web_page(url)
Extract Content from a Web Page

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url for which the content will be extracted. | [required] |

### Return type

[**crate::models::ExtractContentFromAWebPage200Response**](extractContentFromAWebPage_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_publish_date

> crate::models::ExtractPublishDate200Response extract_publish_date(url)
Extract Publish Date

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url for which the publish date should be extracted. | [required] |

### Return type

[**crate::models::ExtractPublishDate200Response**](extractPublishDate_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_web

> crate::models::SearchWeb200Response search_web(query, number)
Search Web

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query. | [required] |
**number** | Option<**i32**> | The number of results to return in range [1,50] |  |

### Return type

[**crate::models::SearchWeb200Response**](searchWeb_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

