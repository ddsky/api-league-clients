# ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageToAsciiArtByURL**](ArtApi.md#imageToAsciiArtByURL) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
[**randomPoem**](ArtApi.md#randomPoem) | **GET** /retrieve-random-poem | Random Poem



## imageToAsciiArtByURL

> String imageToAsciiArtByURL(url, width, height)

Image to Ascii Art by URL

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example

```java
// Import classes:
//import com.apileague.ArtApi;

ArtApi apiInstance = new ArtApi();
String url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; // String | The URL to the image.
Integer width = 200; // Integer | The maximum width of the image (default 400, max. 500).
Integer height = 200; // Integer | The maximum height of the image (default 400, max. 500).
try {
    String result = apiInstance.imageToAsciiArtByURL(url, width, height);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ArtApi#imageToAsciiArtByURL");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL to the image. | [default to null]
 **width** | **Integer**| The maximum width of the image (default 400, max. 500). | [optional] [default to null]
 **height** | **Integer**| The maximum height of the image (default 400, max. 500). | [optional] [default to null]

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## randomPoem

> RandomPoem200Response randomPoem(minLines, maxLines)

Random Poem

Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).

### Example

```java
// Import classes:
//import com.apileague.ArtApi;

ArtApi apiInstance = new ArtApi();
Integer minLines = 5; // Integer | The minimum number of lines of the poem.
Integer maxLines = 20; // Integer | The maximum number of lines of the poem.
try {
    RandomPoem200Response result = apiInstance.randomPoem(minLines, maxLines);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ArtApi#randomPoem");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **Integer**| The minimum number of lines of the poem. | [optional] [default to null]
 **maxLines** | **Integer**| The maximum number of lines of the poem. | [optional] [default to null]

### Return type

[**RandomPoem200Response**](RandomPoem200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

