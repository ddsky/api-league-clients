# OpenapiClient::WebApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**extract_authors_api**](WebApi.md#extract_authors_api) | **GET** /extract-authors | Extract Authors API |
| [**extract_content_from_a_web_page_api**](WebApi.md#extract_content_from_a_web_page_api) | **GET** /extract-content | Extract Content from a Web Page API |
| [**extract_publish_date_api**](WebApi.md#extract_publish_date_api) | **GET** /extract-publish-date | Extract Publish Date API |
| [**retrieve_page_rank_api**](WebApi.md#retrieve_page_rank_api) | **GET** /retrieve-page-rank | Retrieve Page Rank API |
| [**search_web_api**](WebApi.md#search_web_api) | **GET** /search-web | Search Web API |
| [**verify_email_address_api**](WebApi.md#verify_email_address_api) | **GET** /verify-email | Verify Email Address API |


## extract_authors_api

> <ExtractAuthorsAPI200Response> extract_authors_api(url)

Extract Authors API

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
url = 'https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html' # String | The url with the article from which authors should be extracted.

begin
  # Extract Authors API
  result = api_instance.extract_authors_api(url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_authors_api: #{e}"
end
```

#### Using the extract_authors_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractAuthorsAPI200Response>, Integer, Hash)> extract_authors_api_with_http_info(url)

```ruby
begin
  # Extract Authors API
  data, status_code, headers = api_instance.extract_authors_api_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractAuthorsAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_authors_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url with the article from which authors should be extracted. |  |

### Return type

[**ExtractAuthorsAPI200Response**](ExtractAuthorsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_content_from_a_web_page_api

> <ExtractContentFromAWebPageAPI200Response> extract_content_from_a_web_page_api(url)

Extract Content from a Web Page API

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
url = 'https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html' # String | The url for which the content will be extracted.

begin
  # Extract Content from a Web Page API
  result = api_instance.extract_content_from_a_web_page_api(url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_content_from_a_web_page_api: #{e}"
end
```

#### Using the extract_content_from_a_web_page_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractContentFromAWebPageAPI200Response>, Integer, Hash)> extract_content_from_a_web_page_api_with_http_info(url)

```ruby
begin
  # Extract Content from a Web Page API
  data, status_code, headers = api_instance.extract_content_from_a_web_page_api_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractContentFromAWebPageAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_content_from_a_web_page_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url for which the content will be extracted. |  |

### Return type

[**ExtractContentFromAWebPageAPI200Response**](ExtractContentFromAWebPageAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_publish_date_api

> <ExtractPublishDateAPI200Response> extract_publish_date_api(url)

Extract Publish Date API

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
url = 'https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html' # String | The url for which the publish date should be extracted.

begin
  # Extract Publish Date API
  result = api_instance.extract_publish_date_api(url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_publish_date_api: #{e}"
end
```

#### Using the extract_publish_date_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractPublishDateAPI200Response>, Integer, Hash)> extract_publish_date_api_with_http_info(url)

```ruby
begin
  # Extract Publish Date API
  data, status_code, headers = api_instance.extract_publish_date_api_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractPublishDateAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->extract_publish_date_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url for which the publish date should be extracted. |  |

### Return type

[**ExtractPublishDateAPI200Response**](ExtractPublishDateAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_page_rank_api

> <RetrievePageRankAPI200Response> retrieve_page_rank_api(domain)

Retrieve Page Rank API

This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.

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
domain = 'amazon.com' # String | The domain for which the page rank should be returned.

begin
  # Retrieve Page Rank API
  result = api_instance.retrieve_page_rank_api(domain)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->retrieve_page_rank_api: #{e}"
end
```

#### Using the retrieve_page_rank_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrievePageRankAPI200Response>, Integer, Hash)> retrieve_page_rank_api_with_http_info(domain)

```ruby
begin
  # Retrieve Page Rank API
  data, status_code, headers = api_instance.retrieve_page_rank_api_with_http_info(domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrievePageRankAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->retrieve_page_rank_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | The domain for which the page rank should be returned. |  |

### Return type

[**RetrievePageRankAPI200Response**](RetrievePageRankAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_web_api

> <SearchWebAPI200Response> search_web_api(query, opts)

Search Web API

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
  # Search Web API
  result = api_instance.search_web_api(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->search_web_api: #{e}"
end
```

#### Using the search_web_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchWebAPI200Response>, Integer, Hash)> search_web_api_with_http_info(query, opts)

```ruby
begin
  # Search Web API
  data, status_code, headers = api_instance.search_web_api_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchWebAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->search_web_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **number** | **Integer** | The number of results to return in range [1,50] | [optional] |

### Return type

[**SearchWebAPI200Response**](SearchWebAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_email_address_api

> <VerifyEmailAddressAPI200Response> verify_email_address_api(email)

Verify Email Address API

This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.

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
email = 'maxtest@gmail.com' # String | The email address to verify.

begin
  # Verify Email Address API
  result = api_instance.verify_email_address_api(email)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->verify_email_address_api: #{e}"
end
```

#### Using the verify_email_address_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyEmailAddressAPI200Response>, Integer, Hash)> verify_email_address_api_with_http_info(email)

```ruby
begin
  # Verify Email Address API
  data, status_code, headers = api_instance.verify_email_address_api_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyEmailAddressAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebApi->verify_email_address_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address to verify. |  |

### Return type

[**VerifyEmailAddressAPI200Response**](VerifyEmailAddressAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

