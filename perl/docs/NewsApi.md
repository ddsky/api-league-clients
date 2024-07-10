# WWW::OpenAPIClient::NewsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::NewsApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News
[**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News
[**top_news**](NewsApi.md#top_news) | **GET** /retrieve-top-news | Top News


# **extract_news**
> ExtractNews200Response extract_news(url => $url, analyze => $analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/; # string | The url of the news.
my $analyze = true; # boolean | Whether to analyze the news (extract entities etc.)

eval {
    my $result = $api_instance->extract_news(url => $url, analyze => $analyze);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->extract_news: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the news. | 
 **analyze** | **boolean**| Whether to analyze the news (extract entities etc.) | 

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_news**
> SearchNews200Response search_news(text => $text, source_countries => $source_countries, language => $language, min_sentiment => $min_sentiment, max_sentiment => $max_sentiment, earliest_publish_date => $earliest_publish_date, latest_publish_date => $latest_publish_date, news_sources => $news_sources, authors => $authors, categories => $categories, entities => $entities, location_filter => $location_filter, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = tesla; # string | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
my $source_countries = us,uk; # string | A comma-separated list of ISO 3166 country codes from which the news should originate.
my $language = en; # string | The ISO 6391 language code of the news.
my $min_sentiment = -0.8; # double | The minimal sentiment of the news in range [-1,1].
my $max_sentiment = 0.8; # double | The maximal sentiment of the news in range [-1,1].
my $earliest_publish_date = 2022-04-22 16:12:35; # string | The news must have been published after this date.
my $latest_publish_date = 2022-04-22 16:12:35; # string | The news must have been published before this date.
my $news_sources = https://www.bbc.co.uk; # string | A comma-separated list of news sources from which the news should originate.
my $authors = John Doe; # string | A comma-separated list of author names. Only news from any of the given authors will be returned.
my $categories = politics,sports; # string | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
my $entities = ORG:Tesla; # string | Filter news by entities (ORG, PER, or LOC).
my $location_filter = 51.050407, 13.737262, 100; # string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
my $sort = publish-time; # string | The sorting criteria (publish-time).
my $sort_direction = ASC; # string | Whether to sort ascending or descending (ASC or DESC).
my $offset = 0; # int | The number of news to skip in range [0,10000]
my $number = 10; # int | The number of news to return in range [1,100]

eval {
    my $result = $api_instance->search_news(text => $text, source_countries => $source_countries, language => $language, min_sentiment => $min_sentiment, max_sentiment => $max_sentiment, earliest_publish_date => $earliest_publish_date, latest_publish_date => $latest_publish_date, news_sources => $news_sources, authors => $authors, categories => $categories, entities => $entities, location_filter => $location_filter, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->search_news: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] 
 **source_countries** | **string**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] 
 **language** | **string**| The ISO 6391 language code of the news. | [optional] 
 **min_sentiment** | **double**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **max_sentiment** | **double**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliest_publish_date** | **string**| The news must have been published after this date. | [optional] 
 **latest_publish_date** | **string**| The news must have been published before this date. | [optional] 
 **news_sources** | **string**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **string**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **categories** | **string**| A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | [optional] 
 **entities** | **string**| Filter news by entities (ORG, PER, or LOC). | [optional] 
 **location_filter** | **string**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional] 
 **sort** | **string**| The sorting criteria (publish-time). | [optional] 
 **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of news to skip in range [0,10000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **top_news**
> TopNews200Response top_news(source_country => $source_country, language => $language, date => $date, headlines_only => $headlines_only)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $source_country = us; # string | The ISO 3166 country code of the country for which top news should be retrieved.
my $language = en; # string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
my $date = 2024-05-30; # string | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
my $headlines_only = false; # boolean | Whether to only return basic information such as id, title, and url of the news.

eval {
    my $result = $api_instance->top_news(source_country => $source_country, language => $language, date => $date, headlines_only => $headlines_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->top_news: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_country** | **string**| The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **string**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **string**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] 
 **headlines_only** | **boolean**| Whether to only return basic information such as id, title, and url of the news. | [optional] 

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

