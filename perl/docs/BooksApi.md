# WWW::OpenAPIClient::BooksApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BooksApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_similar_books**](BooksApi.md#find_similar_books) | **GET** /list-similar-books | Find Similar Books
[**search_books**](BooksApi.md#search_books) | **GET** /search-books | Search Books


# **find_similar_books**
> FindSimilarBooks200Response find_similar_books(id => $id, number => $number)

Find Similar Books

Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BooksApi;
my $api_instance = WWW::OpenAPIClient::BooksApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 8302059; # int | The id of the book to which similar books should be found.
my $number = 10; # int | The number of similar books to return in range [1,100]

eval {
    my $result = $api_instance->find_similar_books(id => $id, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BooksApi->find_similar_books: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the book to which similar books should be found. | 
 **number** | **int**| The number of similar books to return in range [1,100] | [optional] 

### Return type

[**FindSimilarBooks200Response**](FindSimilarBooks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_books**
> SearchBooks200Response search_books(query => $query, earliest_publish_year => $earliest_publish_year, latest_publish_year => $latest_publish_year, min_rating => $min_rating, max_rating => $max_rating, genres => $genres, authors => $authors, isbn => $isbn, oclc => $oclc, sort => $sort, sort_direction => $sort_direction, group_results => $group_results, offset => $offset, number => $number)

Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BooksApi;
my $api_instance = WWW::OpenAPIClient::BooksApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = books about wizards; # string | The search query.
my $earliest_publish_year = 2022; # int | The books must have been published after this year.
my $latest_publish_year = 2023; # int | The books must have been published before this year.
my $min_rating = 0.8; # double | The minimum rating the book must have gotten in the interval [0,1].
my $max_rating = 0.99; # double | The maximum rating the book must have gotten in the interval [0,1].
my $genres = nonfiction; # string | A comma-separated list of  genres. Only books from any of the given genres will be returned.
my $authors = J.K. Rowling; # string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
my $isbn = 9781781257654; # string | Only the book matching the ISBN-13 will be returned
my $oclc = 864418200; # string | Only the book matching the OCLC will be returned
my $sort = rating; # string | The sorting criteria (publish-date or rating).
my $sort_direction = DESC; # string | Whether to sort ascending or descending (ASC or DESC).
my $group_results = false; # boolean | Whether to group similar editions of the same book.
my $offset = 0; # int | The number of books to skip in range [0,1000]
my $number = 10; # int | The number of books to return in range [1,100]

eval {
    my $result = $api_instance->search_books(query => $query, earliest_publish_year => $earliest_publish_year, latest_publish_year => $latest_publish_year, min_rating => $min_rating, max_rating => $max_rating, genres => $genres, authors => $authors, isbn => $isbn, oclc => $oclc, sort => $sort, sort_direction => $sort_direction, group_results => $group_results, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BooksApi->search_books: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional] 
 **earliest_publish_year** | **int**| The books must have been published after this year. | [optional] 
 **latest_publish_year** | **int**| The books must have been published before this year. | [optional] 
 **min_rating** | **double**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **max_rating** | **double**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **string**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **string**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] 
 **isbn** | **string**| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **string**| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **string**| The sorting criteria (publish-date or rating). | [optional] 
 **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **group_results** | **boolean**| Whether to group similar editions of the same book. | [optional] 
 **offset** | **int**| The number of books to skip in range [0,1000] | [optional] 
 **number** | **int**| The number of books to return in range [1,100] | [optional] 

### Return type

[**SearchBooks200Response**](SearchBooks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

