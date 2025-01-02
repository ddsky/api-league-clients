# WWW::OpenAPIClient::KnowledgeApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::KnowledgeApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**random_quote_api**](KnowledgeApi.md#random_quote_api) | **GET** /retrieve-random-quote | Random Quote API
[**random_riddle_api**](KnowledgeApi.md#random_riddle_api) | **GET** /retrieve-random-riddle | Random Riddle API
[**random_trivia_api**](KnowledgeApi.md#random_trivia_api) | **GET** /retrieve-random-trivia | Random Trivia API


# **random_quote_api**
> RandomQuoteAPI200Response random_quote_api(min_length => $min_length, max_length => $max_length)

Random Quote API

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::KnowledgeApi;
my $api_instance = WWW::OpenAPIClient::KnowledgeApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $min_length = 120; # int | The minimum length of the quote in letters.
my $max_length = 300; # int | The maximum length of the quote in letters.

eval {
    my $result = $api_instance->random_quote_api(min_length => $min_length, max_length => $max_length);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KnowledgeApi->random_quote_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_length** | **int**| The minimum length of the quote in letters. | [optional] 
 **max_length** | **int**| The maximum length of the quote in letters. | [optional] 

### Return type

[**RandomQuoteAPI200Response**](RandomQuoteAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_riddle_api**
> RandomRiddleAPI200Response random_riddle_api(difficulty => $difficulty)

Random Riddle API

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::KnowledgeApi;
my $api_instance = WWW::OpenAPIClient::KnowledgeApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $difficulty = easy; # string | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".

eval {
    my $result = $api_instance->random_riddle_api(difficulty => $difficulty);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KnowledgeApi->random_riddle_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **string**| The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional] 

### Return type

[**RandomRiddleAPI200Response**](RandomRiddleAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_trivia_api**
> RandomTriviaAPI200Response random_trivia_api(max_length => $max_length)

Random Trivia API

This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::KnowledgeApi;
my $api_instance = WWW::OpenAPIClient::KnowledgeApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $max_length = 300; # int | The maximum length of the trivia in letters.

eval {
    my $result = $api_instance->random_trivia_api(max_length => $max_length);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KnowledgeApi->random_trivia_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_length** | **int**| The maximum length of the trivia in letters. | [optional] 

### Return type

[**RandomTriviaAPI200Response**](RandomTriviaAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

