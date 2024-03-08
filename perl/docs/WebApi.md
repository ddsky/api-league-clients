# WWW::OpenAPIClient::WebApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::WebApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_authors**](WebApi.md#extract_authors) | **GET** /extract-authors | Extract Authors
[**extract_content_from_a_web_page**](WebApi.md#extract_content_from_a_web_page) | **GET** /extract-content | Extract Content from a Web Page
[**extract_publish_date**](WebApi.md#extract_publish_date) | **GET** /extract-publish-date | Extract Publish Date
[**search_web**](WebApi.md#search_web) | **GET** /search-web | Search Web


# **extract_authors**
> ExtractAuthors200Response extract_authors(url => $url)

Extract Authors

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebApi;
my $api_instance = WWW::OpenAPIClient::WebApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://www.bbc.com/news/entertainment-arts-68270826; # string | The url with the article from which authors should be extracted.

eval {
    my $result = $api_instance->extract_authors(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->extract_authors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url with the article from which authors should be extracted. | 

### Return type

[**ExtractAuthors200Response**](ExtractAuthors200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_content_from_a_web_page**
> ExtractContentFromAWebPage200Response extract_content_from_a_web_page(url => $url)

Extract Content from a Web Page

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebApi;
my $api_instance = WWW::OpenAPIClient::WebApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://www.bbc.com/news/entertainment-arts-68270826; # string | The url for which the content will be extracted.

eval {
    my $result = $api_instance->extract_content_from_a_web_page(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->extract_content_from_a_web_page: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url for which the content will be extracted. | 

### Return type

[**ExtractContentFromAWebPage200Response**](ExtractContentFromAWebPage200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_publish_date**
> ExtractPublishDate200Response extract_publish_date(url => $url)

Extract Publish Date

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebApi;
my $api_instance = WWW::OpenAPIClient::WebApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://www.bbc.com/news/entertainment-arts-68270826; # string | The url for which the publish date should be extracted.

eval {
    my $result = $api_instance->extract_publish_date(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->extract_publish_date: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url for which the publish date should be extracted. | 

### Return type

[**ExtractPublishDate200Response**](ExtractPublishDate200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_web**
> SearchWeb200Response search_web(query => $query, number => $number)

Search Web

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WebApi;
my $api_instance = WWW::OpenAPIClient::WebApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = penguins; # string | The search query.
my $number = 5; # int | The number of results to return in range [1,50]

eval {
    my $result = $api_instance->search_web(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->search_web: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **number** | **int**| The number of results to return in range [1,50] | [optional] 

### Return type

[**SearchWeb200Response**](SearchWeb200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

