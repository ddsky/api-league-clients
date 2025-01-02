# OpenapiClient::NewsApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**extract_news_api**](NewsApi.md#extract_news_api) | **GET** /extract-news | Extract News API |
| [**search_news_api**](NewsApi.md#search_news_api) | **GET** /search-news | Search News API |
| [**top_news_api**](NewsApi.md#top_news_api) | **GET** /retrieve-top-news | Top News API |


## extract_news_api

> <ExtractNewsAPI200Response> extract_news_api(url, analyze)

Extract News API

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
url = 'https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/' # String | The url of the news.
analyze = true # Boolean | Whether to analyze the news (extract entities etc.)

begin
  # Extract News API
  result = api_instance.extract_news_api(url, analyze)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->extract_news_api: #{e}"
end
```

#### Using the extract_news_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractNewsAPI200Response>, Integer, Hash)> extract_news_api_with_http_info(url, analyze)

```ruby
begin
  # Extract News API
  data, status_code, headers = api_instance.extract_news_api_with_http_info(url, analyze)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractNewsAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->extract_news_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url of the news. |  |
| **analyze** | **Boolean** | Whether to analyze the news (extract entities etc.) |  |

### Return type

[**ExtractNewsAPI200Response**](ExtractNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_news_api

> <SearchNewsAPI200Response> search_news_api(opts)

Search News API

Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
opts = {
  text: 'tesla', # String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.
  source_countries: 'us,uk', # String | A comma-separated list of ISO 3166 country codes from which the news should originate.
  language: 'en', # String | The ISO 6391 language code of the news.
  min_sentiment: -0.8, # Float | The minimal sentiment of the news in range [-1,1].
  max_sentiment: 0.8, # Float | The maximal sentiment of the news in range [-1,1].
  earliest_publish_date: '2022-04-22 16:12:35', # String | The news must have been published after this date.
  latest_publish_date: '2022-04-22 16:12:35', # String | The news must have been published before this date.
  news_sources: 'https://www.bbc.co.uk', # String | A comma-separated list of news sources from which the news should originate.
  authors: 'John Doe', # String | A comma-separated list of author names. Only news from any of the given authors will be returned.
  categories: 'politics,sports', # String | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
  entities: 'ORG:Tesla', # String | Filter news by entities (ORG, PER, or LOC).
  location_filter: '51.050407, 13.737262, 100', # String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
  sort: 'publish-time', # String | The sorting criteria (publish-time).
  sort_direction: 'ASC', # String | Whether to sort ascending or descending (ASC or DESC).
  offset: 0, # Integer | The number of news to skip in range [0,10000]
  number: 10 # Integer | The number of news to return in range [1,100]
}

begin
  # Search News API
  result = api_instance.search_news_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->search_news_api: #{e}"
end
```

#### Using the search_news_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchNewsAPI200Response>, Integer, Hash)> search_news_api_with_http_info(opts)

```ruby
begin
  # Search News API
  data, status_code, headers = api_instance.search_news_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchNewsAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->search_news_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. | [optional] |
| **source_countries** | **String** | A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] |
| **language** | **String** | The ISO 6391 language code of the news. | [optional] |
| **min_sentiment** | **Float** | The minimal sentiment of the news in range [-1,1]. | [optional] |
| **max_sentiment** | **Float** | The maximal sentiment of the news in range [-1,1]. | [optional] |
| **earliest_publish_date** | **String** | The news must have been published after this date. | [optional] |
| **latest_publish_date** | **String** | The news must have been published before this date. | [optional] |
| **news_sources** | **String** | A comma-separated list of news sources from which the news should originate. | [optional] |
| **authors** | **String** | A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] |
| **categories** | **String** | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | [optional] |
| **entities** | **String** | Filter news by entities (ORG, PER, or LOC). | [optional] |
| **location_filter** | **String** | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional] |
| **sort** | **String** | The sorting criteria (publish-time). | [optional] |
| **sort_direction** | **String** | Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **Integer** | The number of news to skip in range [0,10000] | [optional] |
| **number** | **Integer** | The number of news to return in range [1,100] | [optional] |

### Return type

[**SearchNewsAPI200Response**](SearchNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## top_news_api

> <TopNewsAPI200Response> top_news_api(source_country, language, opts)

Top News API

Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
source_country = 'us' # String | The ISO 3166 country code of the country for which top news should be retrieved.
language = 'en' # String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
opts = {
  date: '2024-05-30', # String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
  headlines_only: false # Boolean | Whether to only return basic information such as id, title, and url of the news.
}

begin
  # Top News API
  result = api_instance.top_news_api(source_country, language, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->top_news_api: #{e}"
end
```

#### Using the top_news_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TopNewsAPI200Response>, Integer, Hash)> top_news_api_with_http_info(source_country, language, opts)

```ruby
begin
  # Top News API
  data, status_code, headers = api_instance.top_news_api_with_http_info(source_country, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TopNewsAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->top_news_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_country** | **String** | The ISO 3166 country code of the country for which top news should be retrieved. |  |
| **language** | **String** | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. |  |
| **date** | **String** | The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] |
| **headlines_only** | **Boolean** | Whether to only return basic information such as id, title, and url of the news. | [optional] |

### Return type

[**TopNewsAPI200Response**](TopNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

