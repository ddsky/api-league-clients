# \WebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_authors_api**](WebApi.md#extract_authors_api) | **GET** /extract-authors | Extract Authors API
[**extract_content_from_a_web_page_api**](WebApi.md#extract_content_from_a_web_page_api) | **GET** /extract-content | Extract Content from a Web Page API
[**extract_publish_date_api**](WebApi.md#extract_publish_date_api) | **GET** /extract-publish-date | Extract Publish Date API
[**retrieve_page_rank_api**](WebApi.md#retrieve_page_rank_api) | **GET** /retrieve-page-rank | Retrieve Page Rank API
[**search_web_api**](WebApi.md#search_web_api) | **GET** /search-web | Search Web API
[**verify_email_address_api**](WebApi.md#verify_email_address_api) | **GET** /verify-email | Verify Email Address API



## extract_authors_api

> models::ExtractAuthorsApi200Response extract_authors_api(url)
Extract Authors API

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url with the article from which authors should be extracted. | [required] |

### Return type

[**models::ExtractAuthorsApi200Response**](extractAuthorsAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_content_from_a_web_page_api

> models::ExtractContentFromAWebPageApi200Response extract_content_from_a_web_page_api(url)
Extract Content from a Web Page API

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url for which the content will be extracted. | [required] |

### Return type

[**models::ExtractContentFromAWebPageApi200Response**](extractContentFromAWebPageAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_publish_date_api

> models::ExtractPublishDateApi200Response extract_publish_date_api(url)
Extract Publish Date API

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url for which the publish date should be extracted. | [required] |

### Return type

[**models::ExtractPublishDateApi200Response**](extractPublishDateAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## retrieve_page_rank_api

> models::RetrievePageRankApi200Response retrieve_page_rank_api(domain)
Retrieve Page Rank API

This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**domain** | **String** | The domain for which the page rank should be returned. | [required] |

### Return type

[**models::RetrievePageRankApi200Response**](retrievePageRankAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_web_api

> models::SearchWebApi200Response search_web_api(query, number)
Search Web API

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query. | [required] |
**number** | Option<**i32**> | The number of results to return in range [1,50] |  |

### Return type

[**models::SearchWebApi200Response**](searchWebAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## verify_email_address_api

> models::VerifyEmailAddressApi200Response verify_email_address_api(email)
Verify Email Address API

This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**email** | **String** | The email address to verify. | [required] |

### Return type

[**models::VerifyEmailAddressApi200Response**](verifyEmailAddressAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

