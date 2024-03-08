# NewsApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News



## extractNews

> ExtractNews200Response extractNews(url, analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Example

```java
// Import classes:
//import com.apileague.NewsApi;

NewsApi apiInstance = new NewsApi();
String url = https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/; // String | The url of the news.
Boolean analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
try {
    ExtractNews200Response result = apiInstance.extractNews(url, analyze);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#extractNews");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | [default to null]
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | [default to null]

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchNews

> SearchNews200Response searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number)

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example

```java
// Import classes:
//import com.apileague.NewsApi;

NewsApi apiInstance = new NewsApi();
String text = tesla; // String | The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
String sourceCountries = us,uk; // String | A comma-separated list of ISO 3166 country codes from which the news should originate.
String language = en; // String | The ISO 6391 language code of the news.
Double minSentiment = -0.8; // Double | The minimal sentiment of the news in range [-1,1].
Double maxSentiment = 0.8; // Double | The maximal sentiment of the news in range [-1,1].
String earliestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published after this date.
String latestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published before this date.
String newsSources = https://www.bbc.co.uk; // String | A comma-separated list of news sources from which the news should originate.
String authors = John Doe; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
String entities = ORG:Tesla; // String | Filter news by entities (see semantic types).
String locationFilter = 51.050407, 13.737262, 100; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
String sort = publish-time; // String | The sorting criteria (publish-time or sentiment).
String sortDirection = ASC; // String | Whether to sort ascending or descending (ASC or DESC).
Integer offset = 0; // Integer | The number of news to skip in range [0,10000]
Integer number = 10; // Integer | The number of news to return in range [1,100]
try {
    SearchNews200Response result = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#searchNews");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] [default to null]
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] [default to null]
 **language** | **String**| The ISO 6391 language code of the news. | [optional] [default to null]
 **minSentiment** | **Double**| The minimal sentiment of the news in range [-1,1]. | [optional] [default to null]
 **maxSentiment** | **Double**| The maximal sentiment of the news in range [-1,1]. | [optional] [default to null]
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] [default to null]
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] [default to null]
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] [default to null]
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] [default to null]
 **entities** | **String**| Filter news by entities (see semantic types). | [optional] [default to null]
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional] [default to null]
 **sort** | **String**| The sorting criteria (publish-time or sentiment). | [optional] [default to null]
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] [default to null]
 **offset** | **Integer**| The number of news to skip in range [0,10000] | [optional] [default to null]
 **number** | **Integer**| The number of news to return in range [1,100] | [optional] [default to null]

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

