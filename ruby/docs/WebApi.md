# OpenapiClient::WebApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**extract_authors**](WebApi.md#extract_authors) | **GET** /extract-authors | Extract Authors |
| [**extract_content_from_a_web_page**](WebApi.md#extract_content_from_a_web_page) | **GET** /extract-content | Extract Content from a Web Page |
| [**extract_publish_date**](WebApi.md#extract_publish_date) | **GET** /extract-publish-date | Extract Publish Date |
| [**search_web**](WebApi.md#search_web) | **GET** /search-web | Search Web |


## extract_authors

> <ExtractAuthors200Response> extract_authors(url)

Extract Authors

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

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

api_instance = OpenapiClient::WebApi.new
url = 'https://www.bbc.com/news/entertainment-arts-68270826' # String | The url with the article from which authors should be extracted.

begin
  # Extract Authors
  result = api_instance.extract_authors(url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_authors: #{e}"
end
```

#### Using the extract_authors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractAuthors200Response>, Integer, Hash)> extract_authors_with_http_info(url)

```ruby
begin
  # Extract Authors
  data, status_code, headers = api_instance.extract_authors_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractAuthors200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_authors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url with the article from which authors should be extracted. |  |

### Return type

[**ExtractAuthors200Response**](ExtractAuthors200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_content_from_a_web_page

> <ExtractContentFromAWebPage200Response> extract_content_from_a_web_page(url)

Extract Content from a Web Page

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

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

api_instance = OpenapiClient::WebApi.new
url = 'https://www.bbc.com/news/entertainment-arts-68270826' # String | The url for which the content will be extracted.

begin
  # Extract Content from a Web Page
  result = api_instance.extract_content_from_a_web_page(url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_content_from_a_web_page: #{e}"
end
```

#### Using the extract_content_from_a_web_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractContentFromAWebPage200Response>, Integer, Hash)> extract_content_from_a_web_page_with_http_info(url)

```ruby
begin
  # Extract Content from a Web Page
  data, status_code, headers = api_instance.extract_content_from_a_web_page_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractContentFromAWebPage200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_content_from_a_web_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url for which the content will be extracted. |  |

### Return type

[**ExtractContentFromAWebPage200Response**](ExtractContentFromAWebPage200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_publish_date

> <ExtractPublishDate200Response> extract_publish_date(url)

Extract Publish Date

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

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

api_instance = OpenapiClient::WebApi.new
url = 'https://www.bbc.com/news/entertainment-arts-68270826' # String | The url for which the publish date should be extracted.

begin
  # Extract Publish Date
  result = api_instance.extract_publish_date(url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_publish_date: #{e}"
end
```

#### Using the extract_publish_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractPublishDate200Response>, Integer, Hash)> extract_publish_date_with_http_info(url)

```ruby
begin
  # Extract Publish Date
  data, status_code, headers = api_instance.extract_publish_date_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractPublishDate200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_publish_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url for which the publish date should be extracted. |  |

### Return type

[**ExtractPublishDate200Response**](ExtractPublishDate200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_web

> <SearchWeb200Response> search_web(query, opts)

Search Web

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

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

api_instance = OpenapiClient::WebApi.new
query = 'penguins' # String | The search query.
opts = {
  number: 5 # Integer | The number of results to return in range [1,50]
}

begin
  # Search Web
  result = api_instance.search_web(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->search_web: #{e}"
end
```

#### Using the search_web_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchWeb200Response>, Integer, Hash)> search_web_with_http_info(query, opts)

```ruby
begin
  # Search Web
  data, status_code, headers = api_instance.search_web_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchWeb200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->search_web_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **number** | **Integer** | The number of results to return in range [1,50] | [optional] |

### Return type

[**SearchWeb200Response**](SearchWeb200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

