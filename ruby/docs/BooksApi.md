# OpenapiClient::BooksApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_similar_books**](BooksApi.md#find_similar_books) | **GET** /list-similar-books | Find Similar Books |
| [**search_books**](BooksApi.md#search_books) | **GET** /search-books | Search Books |


## find_similar_books

> <FindSimilarBooks200Response> find_similar_books(id, opts)

Find Similar Books

Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

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

api_instance = OpenapiClient::BooksApi.new
id = 8302059 # Integer | The id of the book to which similar books should be found.
opts = {
  number: 10 # Integer | The number of similar books to return in range [1,100]
}

begin
  # Find Similar Books
  result = api_instance.find_similar_books(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BooksApi->find_similar_books: #{e}"
end
```

#### Using the find_similar_books_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindSimilarBooks200Response>, Integer, Hash)> find_similar_books_with_http_info(id, opts)

```ruby
begin
  # Find Similar Books
  data, status_code, headers = api_instance.find_similar_books_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindSimilarBooks200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BooksApi->find_similar_books_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the book to which similar books should be found. |  |
| **number** | **Integer** | The number of similar books to return in range [1,100] | [optional] |

### Return type

[**FindSimilarBooks200Response**](FindSimilarBooks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_books

> <SearchBooks200Response> search_books(opts)

Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.

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

api_instance = OpenapiClient::BooksApi.new
opts = {
  query: 'books about wizards', # String | The search query.
  earliest_publish_year: 2022, # Integer | The books must have been published after this year.
  latest_publish_year: 2023, # Integer | The books must have been published before this year.
  min_rating: 0.8, # Float | The minimum rating the book must have gotten in the interval [0,1].
  max_rating: 0.99, # Float | The maximum rating the book must have gotten in the interval [0,1].
  genres: 'nonfiction', # String | A comma-separated list of  genres. Only books from any of the given genres will be returned.
  authors: 'J.K. Rowling', # String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
  isbn: '9781781257654', # String | Only the book matching the ISBN-13 will be returned
  oclc: '864418200', # String | Only the book matching the OCLC will be returned
  sort: 'rating', # String | The sorting criteria (publish-date or rating).
  sort_direction: 'DESC', # String | Whether to sort ascending or descending (ASC or DESC).
  group_results: false, # Boolean | Whether to group similar editions of the same book.
  offset: 0, # Integer | The number of books to skip in range [0,1000]
  number: 10 # Integer | The number of books to return in range [1,100]
}

begin
  # Search Books
  result = api_instance.search_books(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BooksApi->search_books: #{e}"
end
```

#### Using the search_books_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchBooks200Response>, Integer, Hash)> search_books_with_http_info(opts)

```ruby
begin
  # Search Books
  data, status_code, headers = api_instance.search_books_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchBooks200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BooksApi->search_books_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. | [optional] |
| **earliest_publish_year** | **Integer** | The books must have been published after this year. | [optional] |
| **latest_publish_year** | **Integer** | The books must have been published before this year. | [optional] |
| **min_rating** | **Float** | The minimum rating the book must have gotten in the interval [0,1]. | [optional] |
| **max_rating** | **Float** | The maximum rating the book must have gotten in the interval [0,1]. | [optional] |
| **genres** | **String** | A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] |
| **authors** | **String** | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] |
| **isbn** | **String** | Only the book matching the ISBN-13 will be returned | [optional] |
| **oclc** | **String** | Only the book matching the OCLC will be returned | [optional] |
| **sort** | **String** | The sorting criteria (publish-date or rating). | [optional] |
| **sort_direction** | **String** | Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **group_results** | **Boolean** | Whether to group similar editions of the same book. | [optional] |
| **offset** | **Integer** | The number of books to skip in range [0,1000] | [optional] |
| **number** | **Integer** | The number of books to return in range [1,100] | [optional] |

### Return type

[**SearchBooks200Response**](SearchBooks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

