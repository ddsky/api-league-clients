# apileague.NewsApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News
[**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News


# **extract_news**
> ExtractNews200Response extract_news(url, analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.extract_news200_response import ExtractNews200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.NewsApi(api_client)
    url = 'https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/' # str | The url of the news.
    analyze = true # bool | Whether to analyze the news (extract entities etc.)

    try:
        # Extract News
        api_response = api_instance.extract_news(url, analyze)
        print("The response of NewsApi->extract_news:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->extract_news: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The url of the news. | 
 **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | 

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_news**
> SearchNews200Response search_news(text=text, source_countries=source_countries, language=language, min_sentiment=min_sentiment, max_sentiment=max_sentiment, earliest_publish_date=earliest_publish_date, latest_publish_date=latest_publish_date, news_sources=news_sources, authors=authors, entities=entities, location_filter=location_filter, sort=sort, sort_direction=sort_direction, offset=offset, number=number)

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.search_news200_response import SearchNews200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.NewsApi(api_client)
    text = 'tesla' # str | The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford (optional)
    source_countries = 'us,uk' # str | A comma-separated list of ISO 3166 country codes from which the news should originate. (optional)
    language = 'en' # str | The ISO 6391 language code of the news. (optional)
    min_sentiment = -0.8 # float | The minimal sentiment of the news in range [-1,1]. (optional)
    max_sentiment = 0.8 # float | The maximal sentiment of the news in range [-1,1]. (optional)
    earliest_publish_date = '2022-04-22 16:12:35' # str | The news must have been published after this date. (optional)
    latest_publish_date = '2022-04-22 16:12:35' # str | The news must have been published before this date. (optional)
    news_sources = 'https://www.bbc.co.uk' # str | A comma-separated list of news sources from which the news should originate. (optional)
    authors = 'John Doe' # str | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
    entities = 'ORG:Tesla' # str | Filter news by entities (see semantic types). (optional)
    location_filter = '51.050407, 13.737262, 100' # str | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" (optional)
    sort = 'publish-time' # str | The sorting criteria (publish-time or sentiment). (optional)
    sort_direction = 'ASC' # str | Whether to sort ascending or descending (ASC or DESC). (optional)
    offset = 0 # int | The number of news to skip in range [0,10000] (optional)
    number = 10 # int | The number of news to return in range [1,100] (optional)

    try:
        # Search News
        api_response = api_instance.search_news(text=text, source_countries=source_countries, language=language, min_sentiment=min_sentiment, max_sentiment=max_sentiment, earliest_publish_date=earliest_publish_date, latest_publish_date=latest_publish_date, news_sources=news_sources, authors=authors, entities=entities, location_filter=location_filter, sort=sort, sort_direction=sort_direction, offset=offset, number=number)
        print("The response of NewsApi->search_news:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->search_news: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] 
 **source_countries** | **str**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] 
 **language** | **str**| The ISO 6391 language code of the news. | [optional] 
 **min_sentiment** | **float**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **max_sentiment** | **float**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliest_publish_date** | **str**| The news must have been published after this date. | [optional] 
 **latest_publish_date** | **str**| The news must have been published before this date. | [optional] 
 **news_sources** | **str**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **str**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **str**| Filter news by entities (see semantic types). | [optional] 
 **location_filter** | **str**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional] 
 **sort** | **str**| The sorting criteria (publish-time or sentiment). | [optional] 
 **sort_direction** | **str**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of news to skip in range [0,10000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

