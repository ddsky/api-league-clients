# NewsApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News
[**topNews**](NewsApi.md#topNews) | **GET** /retrieve-top-news | Top News



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

> SearchNews200Response searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example

```java
// Import classes:
//import com.apileague.NewsApi;

NewsApi apiInstance = new NewsApi();
String text = tesla; // String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
String sourceCountries = us,uk; // String | A comma-separated list of ISO 3166 country codes from which the news should originate.
String language = en; // String | The ISO 6391 language code of the news.
Double minSentiment = -0.8; // Double | The minimal sentiment of the news in range [-1,1].
Double maxSentiment = 0.8; // Double | The maximal sentiment of the news in range [-1,1].
String earliestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published after this date.
String latestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published before this date.
String newsSources = https://www.bbc.co.uk; // String | A comma-separated list of news sources from which the news should originate.
String authors = John Doe; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
String categories = politics,sports; // String | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
String entities = ORG:Tesla; // String | Filter news by entities (ORG, PER, or LOC).
String locationFilter = 51.050407, 13.737262, 100; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
String sort = publish-time; // String | The sorting criteria (publish-time).
String sortDirection = ASC; // String | Whether to sort ascending or descending (ASC or DESC).
Integer offset = 0; // Integer | The number of news to skip in range [0,10000]
Integer number = 10; // Integer | The number of news to return in range [1,100]
try {
    SearchNews200Response result = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#searchNews");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] [default to null]
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] [default to null]
 **language** | **String**| The ISO 6391 language code of the news. | [optional] [default to null]
 **minSentiment** | **Double**| The minimal sentiment of the news in range [-1,1]. | [optional] [default to null]
 **maxSentiment** | **Double**| The maximal sentiment of the news in range [-1,1]. | [optional] [default to null]
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] [default to null]
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] [default to null]
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] [default to null]
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] [default to null]
 **categories** | **String**| A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | [optional] [default to null]
 **entities** | **String**| Filter news by entities (ORG, PER, or LOC). | [optional] [default to null]
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | [optional] [default to null]
 **sort** | **String**| The sorting criteria (publish-time). | [optional] [default to null]
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


## topNews

> TopNews200Response topNews(sourceCountry, language, date, headlinesOnly)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example

```java
// Import classes:
//import com.apileague.NewsApi;

NewsApi apiInstance = new NewsApi();
String sourceCountry = us; // String | The ISO 3166 country code of the country for which top news should be retrieved.
String language = en; // String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
String date = 2024-05-30; // String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
Boolean headlinesOnly = false; // Boolean | Whether to only return basic information such as id, title, and url of the news.
try {
    TopNews200Response result = apiInstance.topNews(sourceCountry, language, date, headlinesOnly);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#topNews");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **String**| The ISO 3166 country code of the country for which top news should be retrieved. | [default to null]
 **language** | **String**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | [default to null]
 **date** | **String**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] [default to null]
 **headlinesOnly** | **Boolean**| Whether to only return basic information such as id, title, and url of the news. | [optional] [default to null]

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

