# WWW::OpenAPIClient::HumorApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::HumorApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word_api**](HumorApi.md#generate_nonsense_word_api) | **GET** /generate-nonsense-word | Generate Nonsense Word API
[**random_joke_api**](HumorApi.md#random_joke_api) | **GET** /retrieve-random-joke | Random Joke API
[**random_meme_api**](HumorApi.md#random_meme_api) | **GET** /retrieve-random-meme | Random Meme API
[**search_gifs_api**](HumorApi.md#search_gifs_api) | **GET** /search-gifs | Search Gifs API
[**search_jokes_api**](HumorApi.md#search_jokes_api) | **GET** /search-jokes | Search Jokes API
[**search_memes_api**](HumorApi.md#search_memes_api) | **GET** /search-memes | Search Memes API


# **generate_nonsense_word_api**
> GenerateNonsenseWordAPI200Response generate_nonsense_word_api()

Generate Nonsense Word API

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::HumorApi;
my $api_instance = WWW::OpenAPIClient::HumorApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->generate_nonsense_word_api();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HumorApi->generate_nonsense_word_api: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWordAPI200Response**](GenerateNonsenseWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_joke_api**
> SearchJokesAPI200ResponseJokesInner random_joke_api(include_tags => $include_tags, exclude_tags => $exclude_tags, min_rating => $min_rating, max_length => $max_length)

Random Joke API

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::HumorApi;
my $api_instance = WWW::OpenAPIClient::HumorApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $include_tags = animal; # string | A comma-separated list of tags the jokes should have.
my $exclude_tags = nsfw,dark; # string | A comma-separated list of tags the jokes must not have.
my $min_rating = 0; # double | The minimum rating in range [0.0,1.0] of the jokes.
my $max_length = 140; # int | The maximum length of the joke in letters.

eval {
    my $result = $api_instance->random_joke_api(include_tags => $include_tags, exclude_tags => $exclude_tags, min_rating => $min_rating, max_length => $max_length);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HumorApi->random_joke_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_tags** | **string**| A comma-separated list of tags the jokes should have. | [optional] 
 **exclude_tags** | **string**| A comma-separated list of tags the jokes must not have. | [optional] 
 **min_rating** | **double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **max_length** | **int**| The maximum length of the joke in letters. | [optional] 

### Return type

[**SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_meme_api**
> RandomMemeAPI200Response random_meme_api(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, min_rating => $min_rating, max_age_days => $max_age_days)

Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::HumorApi;
my $api_instance = WWW::OpenAPIClient::HumorApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $keywords = airplane; # string | A comma-separated list of words that must occur in the meme.
my $keywords_in_image = true; # boolean | Whether the keywords must occur in the image.
my $media_type = image; # string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
my $min_rating = 0; # double | The minimum rating in range [0.0,1.0] of the meme.
my $max_age_days = 30; # int | The maximum age of the meme in days.

eval {
    my $result = $api_instance->random_meme_api(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, min_rating => $min_rating, max_age_days => $max_age_days);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HumorApi->random_meme_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywords_in_image** | **boolean**| Whether the keywords must occur in the image. | [optional] 
 **media_type** | **string**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **min_rating** | **double**| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **max_age_days** | **int**| The maximum age of the meme in days. | [optional] 

### Return type

[**RandomMemeAPI200Response**](RandomMemeAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_gifs_api**
> SearchGifsAPI200Response search_gifs_api(query => $query, number => $number)

Search Gifs API

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::HumorApi;
my $api_instance = WWW::OpenAPIClient::HumorApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = dogs; # string | The search query.
my $number = 5; # int | The number of gifs to return in range [1,10]

eval {
    my $result = $api_instance->search_gifs_api(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HumorApi->search_gifs_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **number** | **int**| The number of gifs to return in range [1,10] | [optional] 

### Return type

[**SearchGifsAPI200Response**](SearchGifsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_jokes_api**
> SearchJokesAPI200Response search_jokes_api(keywords => $keywords, include_tags => $include_tags, exclude_tags => $exclude_tags, min_rating => $min_rating, max_length => $max_length, offset => $offset, number => $number)

Search Jokes API

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::HumorApi;
my $api_instance = WWW::OpenAPIClient::HumorApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $keywords = horse,man; # string | A comma-separated list of words that must occur in the joke.
my $include_tags = animal; # string | A comma-separated list of tags the jokes should have.
my $exclude_tags = nsfw,dark; # string | A comma-separated list of tags the jokes must not have.
my $min_rating = 0; # double | The minimum rating in range [0.0,1.0] of the jokes.
my $max_length = 140; # double | The maximum length of the joke in letters.
my $offset = 0; # int | The number of jokes to skip, between 0 and 1000.
my $number = 3; # int | The number of jokes, between 1 and 10.

eval {
    my $result = $api_instance->search_jokes_api(keywords => $keywords, include_tags => $include_tags, exclude_tags => $exclude_tags, min_rating => $min_rating, max_length => $max_length, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HumorApi->search_jokes_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the joke. | [optional] 
 **include_tags** | **string**| A comma-separated list of tags the jokes should have. | [optional] 
 **exclude_tags** | **string**| A comma-separated list of tags the jokes must not have. | [optional] 
 **min_rating** | **double**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **max_length** | **double**| The maximum length of the joke in letters. | [optional] 
 **offset** | **int**| The number of jokes to skip, between 0 and 1000. | [optional] 
 **number** | **int**| The number of jokes, between 1 and 10. | [optional] 

### Return type

[**SearchJokesAPI200Response**](SearchJokesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_memes_api**
> SearchMemesAPI200Response search_memes_api(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, min_rating => $min_rating, max_age_days => $max_age_days, offset => $offset, number => $number)

Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::HumorApi;
my $api_instance = WWW::OpenAPIClient::HumorApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $keywords = rocket; # string | A comma-separated list of words that must occur in the meme.
my $keywords_in_image = true; # boolean | Whether the keywords must occur in the image.
my $media_type = image; # string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
my $min_rating = 0; # double | The minimum rating in range [0.0,1.0] of the meme.
my $max_age_days = 30; # int | The maximum age of the meme in days.
my $offset = 0; # int | The number of memes to skip, between 0 and 1000.
my $number = 3; # int | The number of memes, between 1 and 10.

eval {
    my $result = $api_instance->search_memes_api(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, min_rating => $min_rating, max_age_days => $max_age_days, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HumorApi->search_memes_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywords_in_image** | **boolean**| Whether the keywords must occur in the image. | [optional] 
 **media_type** | **string**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **min_rating** | **double**| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **max_age_days** | **int**| The maximum age of the meme in days. | [optional] 
 **offset** | **int**| The number of memes to skip, between 0 and 1000. | [optional] 
 **number** | **int**| The number of memes, between 1 and 10. | [optional] 

### Return type

[**SearchMemesAPI200Response**](SearchMemesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

