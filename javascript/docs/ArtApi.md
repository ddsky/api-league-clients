# ApiLeague.ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageToAsciiArtByURL**](ArtApi.md#imageToAsciiArtByURL) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
[**randomPoem**](ArtApi.md#randomPoem) | **GET** /retrieve-random-poem | Random Poem



## imageToAsciiArtByURL

> String imageToAsciiArtByURL(url, opts)

Image to Ascii Art by URL

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example

```javascript
import ApiLeague from 'api_league';
let defaultClient = ApiLeague.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApiLeague.ArtApi();
let url = "https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png"; // String | The URL to the image.
let opts = {
  'width': 200, // Number | The maximum width of the image (default 400, max. 500).
  'height': 200 // Number | The maximum height of the image (default 400, max. 500).
};
apiInstance.imageToAsciiArtByURL(url, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL to the image. | 
 **width** | **Number**| The maximum width of the image (default 400, max. 500). | [optional] 
 **height** | **Number**| The maximum height of the image (default 400, max. 500). | [optional] 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## randomPoem

> RandomPoem200Response randomPoem(opts)

Random Poem

Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).

### Example

```javascript
import ApiLeague from 'api_league';
let defaultClient = ApiLeague.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApiLeague.ArtApi();
let opts = {
  'minLines': 5, // Number | The minimum number of lines of the poem.
  'maxLines': 20 // Number | The maximum number of lines of the poem.
};
apiInstance.randomPoem(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **Number**| The minimum number of lines of the poem. | [optional] 
 **maxLines** | **Number**| The maximum number of lines of the poem. | [optional] 

### Return type

[**RandomPoem200Response**](RandomPoem200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

