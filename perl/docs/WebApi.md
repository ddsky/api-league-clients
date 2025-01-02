# WWW::OpenAPIClient::WebApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::WebApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_authors_api**](WebApi.md#extract_authors_api) | **GET** /extract-authors | Extract Authors API
[**extract_content_from_a_web_page_api**](WebApi.md#extract_content_from_a_web_page_api) | **GET** /extract-content | Extract Content from a Web Page API
[**extract_publish_date_api**](WebApi.md#extract_publish_date_api) | **GET** /extract-publish-date | Extract Publish Date API
[**retrieve_page_rank_api**](WebApi.md#retrieve_page_rank_api) | **GET** /retrieve-page-rank | Retrieve Page Rank API
[**search_web_api**](WebApi.md#search_web_api) | **GET** /search-web | Search Web API
[**verify_email_address_api**](WebApi.md#verify_email_address_api) | **GET** /verify-email | Verify Email Address API


# **extract_authors_api**
> ExtractAuthorsAPI200Response extract_authors_api(url => $url)

Extract Authors API

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

my $url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; # string | The url with the article from which authors should be extracted.

eval {
    my $result = $api_instance->extract_authors_api(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->extract_authors_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url with the article from which authors should be extracted. | 

### Return type

[**ExtractAuthorsAPI200Response**](ExtractAuthorsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_content_from_a_web_page_api**
> ExtractContentFromAWebPageAPI200Response extract_content_from_a_web_page_api(url => $url)

Extract Content from a Web Page API

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

my $url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; # string | The url for which the content will be extracted.

eval {
    my $result = $api_instance->extract_content_from_a_web_page_api(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->extract_content_from_a_web_page_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url for which the content will be extracted. | 

### Return type

[**ExtractContentFromAWebPageAPI200Response**](ExtractContentFromAWebPageAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_publish_date_api**
> ExtractPublishDateAPI200Response extract_publish_date_api(url => $url)

Extract Publish Date API

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

my $url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; # string | The url for which the publish date should be extracted.

eval {
    my $result = $api_instance->extract_publish_date_api(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->extract_publish_date_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url for which the publish date should be extracted. | 

### Return type

[**ExtractPublishDateAPI200Response**](ExtractPublishDateAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_page_rank_api**
> RetrievePageRankAPI200Response retrieve_page_rank_api(domain => $domain)

Retrieve Page Rank API

This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.

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

my $domain = amazon.com; # string | The domain for which the page rank should be returned.

eval {
    my $result = $api_instance->retrieve_page_rank_api(domain => $domain);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->retrieve_page_rank_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string**| The domain for which the page rank should be returned. | 

### Return type

[**RetrievePageRankAPI200Response**](RetrievePageRankAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_web_api**
> SearchWebAPI200Response search_web_api(query => $query, number => $number)

Search Web API

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
    my $result = $api_instance->search_web_api(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->search_web_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **number** | **int**| The number of results to return in range [1,50] | [optional] 

### Return type

[**SearchWebAPI200Response**](SearchWebAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_email_address_api**
> VerifyEmailAddressAPI200Response verify_email_address_api(email => $email)

Verify Email Address API

This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.

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

my $email = maxtest@gmail.com; # string | The email address to verify.

eval {
    my $result = $api_instance->verify_email_address_api(email => $email);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WebApi->verify_email_address_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **string**| The email address to verify. | 

### Return type

[**VerifyEmailAddressAPI200Response**](VerifyEmailAddressAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

