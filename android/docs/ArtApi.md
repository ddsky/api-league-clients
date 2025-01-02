# ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageToAsciiArtByURLAPI**](ArtApi.md#imageToAsciiArtByURLAPI) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**randomPoemAPI**](ArtApi.md#randomPoemAPI) | **GET** /retrieve-random-poem | Random Poem API



## imageToAsciiArtByURLAPI

> String imageToAsciiArtByURLAPI(url, width, height)

Image to Ascii Art by URL API

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
    String result = apiInstance.imageToAsciiArtByURLAPI(url, width, height);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ArtApi#imageToAsciiArtByURLAPI");
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


## randomPoemAPI

> RandomPoemAPI200Response randomPoemAPI(minLines, maxLines)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).

### Example

```java
// Import classes:
//import com.apileague.ArtApi;

ArtApi apiInstance = new ArtApi();
Integer minLines = 5; // Integer | The minimum number of lines of the poem.
Integer maxLines = 20; // Integer | The maximum number of lines of the poem.
try {
    RandomPoemAPI200Response result = apiInstance.randomPoemAPI(minLines, maxLines);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ArtApi#randomPoemAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **Integer**| The minimum number of lines of the poem. | [optional] [default to null]
 **maxLines** | **Integer**| The maximum number of lines of the poem. | [optional] [default to null]

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

