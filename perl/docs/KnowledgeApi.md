# WWW::OpenAPIClient::KnowledgeApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::KnowledgeApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**random_quote**](KnowledgeApi.md#random_quote) | **GET** /retrieve-random-quote | Random Quote
[**random_riddle**](KnowledgeApi.md#random_riddle) | **GET** /retrieve-random-riddle | Random Riddle
[**random_trivia**](KnowledgeApi.md#random_trivia) | **GET** /retrieve-random-trivia | Random Trivia


# **random_quote**
> RandomQuote200Response random_quote(min_length => $min_length, max_length => $max_length)

Random Quote

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
    my $result = $api_instance->random_quote(min_length => $min_length, max_length => $max_length);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KnowledgeApi->random_quote: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_length** | **int**| The minimum length of the quote in letters. | [optional] 
 **max_length** | **int**| The maximum length of the quote in letters. | [optional] 

### Return type

[**RandomQuote200Response**](RandomQuote200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_riddle**
> RandomRiddle200Response random_riddle(difficulty => $difficulty)

Random Riddle

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
    my $result = $api_instance->random_riddle(difficulty => $difficulty);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KnowledgeApi->random_riddle: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **string**| The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional] 

### Return type

[**RandomRiddle200Response**](RandomRiddle200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_trivia**
> RandomTrivia200Response random_trivia(max_length => $max_length)

Random Trivia

This endpoint returns a random piece of trivia.

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
    my $result = $api_instance->random_trivia(max_length => $max_length);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling KnowledgeApi->random_trivia: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_length** | **int**| The maximum length of the trivia in letters. | [optional] 

### Return type

[**RandomTrivia200Response**](RandomTrivia200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

