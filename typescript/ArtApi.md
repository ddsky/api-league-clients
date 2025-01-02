# .ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageToAsciiArtByURLAPI**](ArtApi.md#imageToAsciiArtByURLAPI) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**randomPoemAPI**](ArtApi.md#randomPoemAPI) | **GET** /retrieve-random-poem | Random Poem API


# **imageToAsciiArtByURLAPI**
> string imageToAsciiArtByURLAPI()

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:.ArtApiImageToAsciiArtByURLAPIRequest = {
  // string | The URL to the image.
  url: "https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png",
  // number | The maximum width of the image (default 400, max. 500). (optional)
  width: 200,
  // number | The maximum height of the image (default 400, max. 500). (optional)
  height: 200,
};

apiInstance.imageToAsciiArtByURLAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The URL to the image. | defaults to undefined
 **width** | [**number**] | The maximum width of the image (default 400, max. 500). | (optional) defaults to undefined
 **height** | [**number**] | The maximum height of the image (default 400, max. 500). | (optional) defaults to undefined


### Return type

**string**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **randomPoemAPI**
> RandomPoemAPI200Response randomPoemAPI()

Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:.ArtApiRandomPoemAPIRequest = {
  // number | The minimum number of lines of the poem. (optional)
  minLines: 5,
  // number | The maximum number of lines of the poem. (optional)
  maxLines: 20,
};

apiInstance.randomPoemAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | [**number**] | The minimum number of lines of the poem. | (optional) defaults to undefined
 **maxLines** | [**number**] | The maximum number of lines of the poem. | (optional) defaults to undefined


### Return type

**RandomPoemAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


