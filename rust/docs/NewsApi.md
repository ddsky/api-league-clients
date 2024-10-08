# \NewsApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News
[**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News
[**top_news**](NewsApi.md#top_news) | **GET** /retrieve-top-news | Top News



## extract_news

> models::ExtractNews200Response extract_news(url, analyze)
Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**url** | **String** | The url of the news. | [required] |
**analyze** | **bool** | Whether to analyze the news (extract entities etc.) | [required] |

### Return type

[**models::ExtractNews200Response**](extractNews_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_news

> models::SearchNews200Response search_news(text, source_countries, language, min_sentiment, max_sentiment, earliest_publish_date, latest_publish_date, news_sources, authors, categories, entities, location_filter, sort, sort_direction, offset, number)
Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | Option<**String**> | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford |  |
**source_countries** | Option<**String**> | A comma-separated list of ISO 3166 country codes from which the news should originate. |  |
**language** | Option<**String**> | The ISO 6391 language code of the news. |  |
**min_sentiment** | Option<**f64**> | The minimal sentiment of the news in range [-1,1]. |  |
**max_sentiment** | Option<**f64**> | The maximal sentiment of the news in range [-1,1]. |  |
**earliest_publish_date** | Option<**String**> | The news must have been published after this date. |  |
**latest_publish_date** | Option<**String**> | The news must have been published before this date. |  |
**news_sources** | Option<**String**> | A comma-separated list of news sources from which the news should originate. |  |
**authors** | Option<**String**> | A comma-separated list of author names. Only news from any of the given authors will be returned. |  |
**categories** | Option<**String**> | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. |  |
**entities** | Option<**String**> | Filter news by entities (ORG, PER, or LOC). |  |
**location_filter** | Option<**String**> | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" |  |
**sort** | Option<**String**> | The sorting criteria (publish-time). |  |
**sort_direction** | Option<**String**> | Whether to sort ascending or descending (ASC or DESC). |  |
**offset** | Option<**i32**> | The number of news to skip in range [0,10000] |  |
**number** | Option<**i32**> | The number of news to return in range [1,100] |  |

### Return type

[**models::SearchNews200Response**](searchNews_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## top_news

> models::TopNews200Response top_news(source_country, language, date, headlines_only)
Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**source_country** | **String** | The ISO 3166 country code of the country for which top news should be retrieved. | [required] |
**language** | **String** | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | [required] |
**date** | Option<**String**> | The date for which the top news should be retrieved. If no date is given, the current day is assumed. |  |
**headlines_only** | Option<**bool**> | Whether to only return basic information such as id, title, and url of the news. |  |

### Return type

[**models::TopNews200Response**](topNews_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

