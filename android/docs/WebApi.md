# WebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractAuthors**](WebApi.md#extractAuthors) | **GET** /extract-authors | Extract Authors
[**extractContentFromAWebPage**](WebApi.md#extractContentFromAWebPage) | **GET** /extract-content | Extract Content from a Web Page
[**extractPublishDate**](WebApi.md#extractPublishDate) | **GET** /extract-publish-date | Extract Publish Date
[**searchWeb**](WebApi.md#searchWeb) | **GET** /search-web | Search Web



## extractAuthors

> ExtractAuthors200Response extractAuthors(url)

Extract Authors

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String url = https://www.bbc.com/news/entertainment-arts-68270826; // String | The url with the article from which authors should be extracted.
try {
    ExtractAuthors200Response result = apiInstance.extractAuthors(url);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#extractAuthors");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url with the article from which authors should be extracted. | [default to null]

### Return type

[**ExtractAuthors200Response**](ExtractAuthors200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extractContentFromAWebPage

> ExtractContentFromAWebPage200Response extractContentFromAWebPage(url)

Extract Content from a Web Page

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String url = https://www.bbc.com/news/entertainment-arts-68270826; // String | The url for which the content will be extracted.
try {
    ExtractContentFromAWebPage200Response result = apiInstance.extractContentFromAWebPage(url);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#extractContentFromAWebPage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url for which the content will be extracted. | [default to null]

### Return type

[**ExtractContentFromAWebPage200Response**](ExtractContentFromAWebPage200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extractPublishDate

> ExtractPublishDate200Response extractPublishDate(url)

Extract Publish Date

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String url = https://www.bbc.com/news/entertainment-arts-68270826; // String | The url for which the publish date should be extracted.
try {
    ExtractPublishDate200Response result = apiInstance.extractPublishDate(url);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#extractPublishDate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url for which the publish date should be extracted. | [default to null]

### Return type

[**ExtractPublishDate200Response**](ExtractPublishDate200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchWeb

> SearchWeb200Response searchWeb(query, number)

Search Web

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String query = penguins; // String | The search query.
Integer number = 5; // Integer | The number of results to return in range [1,50]
try {
    SearchWeb200Response result = apiInstance.searchWeb(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#searchWeb");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **number** | **Integer**| The number of results to return in range [1,50] | [optional] [default to null]

### Return type

[**SearchWeb200Response**](SearchWeb200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

