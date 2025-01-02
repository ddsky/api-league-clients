# WebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractAuthorsAPI**](WebApi.md#extractAuthorsAPI) | **GET** /extract-authors | Extract Authors API
[**extractContentFromAWebPageAPI**](WebApi.md#extractContentFromAWebPageAPI) | **GET** /extract-content | Extract Content from a Web Page API
[**extractPublishDateAPI**](WebApi.md#extractPublishDateAPI) | **GET** /extract-publish-date | Extract Publish Date API
[**retrievePageRankAPI**](WebApi.md#retrievePageRankAPI) | **GET** /retrieve-page-rank | Retrieve Page Rank API
[**searchWebAPI**](WebApi.md#searchWebAPI) | **GET** /search-web | Search Web API
[**verifyEmailAddressAPI**](WebApi.md#verifyEmailAddressAPI) | **GET** /verify-email | Verify Email Address API



## extractAuthorsAPI

> ExtractAuthorsAPI200Response extractAuthorsAPI(url)

Extract Authors API

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; // String | The url with the article from which authors should be extracted.
try {
    ExtractAuthorsAPI200Response result = apiInstance.extractAuthorsAPI(url);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#extractAuthorsAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url with the article from which authors should be extracted. | [default to null]

### Return type

[**ExtractAuthorsAPI200Response**](ExtractAuthorsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extractContentFromAWebPageAPI

> ExtractContentFromAWebPageAPI200Response extractContentFromAWebPageAPI(url)

Extract Content from a Web Page API

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; // String | The url for which the content will be extracted.
try {
    ExtractContentFromAWebPageAPI200Response result = apiInstance.extractContentFromAWebPageAPI(url);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#extractContentFromAWebPageAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url for which the content will be extracted. | [default to null]

### Return type

[**ExtractContentFromAWebPageAPI200Response**](ExtractContentFromAWebPageAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extractPublishDateAPI

> ExtractPublishDateAPI200Response extractPublishDateAPI(url)

Extract Publish Date API

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; // String | The url for which the publish date should be extracted.
try {
    ExtractPublishDateAPI200Response result = apiInstance.extractPublishDateAPI(url);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#extractPublishDateAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url for which the publish date should be extracted. | [default to null]

### Return type

[**ExtractPublishDateAPI200Response**](ExtractPublishDateAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrievePageRankAPI

> RetrievePageRankAPI200Response retrievePageRankAPI(domain)

Retrieve Page Rank API

This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String domain = amazon.com; // String | The domain for which the page rank should be returned.
try {
    RetrievePageRankAPI200Response result = apiInstance.retrievePageRankAPI(domain);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#retrievePageRankAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| The domain for which the page rank should be returned. | [default to null]

### Return type

[**RetrievePageRankAPI200Response**](RetrievePageRankAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchWebAPI

> SearchWebAPI200Response searchWebAPI(query, number)

Search Web API

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String query = penguins; // String | The search query.
Integer number = 5; // Integer | The number of results to return in range [1,50]
try {
    SearchWebAPI200Response result = apiInstance.searchWebAPI(query, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#searchWebAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [default to null]
 **number** | **Integer**| The number of results to return in range [1,50] | [optional] [default to null]

### Return type

[**SearchWebAPI200Response**](SearchWebAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verifyEmailAddressAPI

> VerifyEmailAddressAPI200Response verifyEmailAddressAPI(email)

Verify Email Address API

This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.

### Example

```java
// Import classes:
//import com.apileague.WebApi;

WebApi apiInstance = new WebApi();
String email = maxtest@gmail.com; // String | The email address to verify.
try {
    VerifyEmailAddressAPI200Response result = apiInstance.verifyEmailAddressAPI(email);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WebApi#verifyEmailAddressAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| The email address to verify. | [default to null]

### Return type

[**VerifyEmailAddressAPI200Response**](VerifyEmailAddressAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

