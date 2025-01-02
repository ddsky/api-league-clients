# .MediaApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectMainImageColorAPI**](MediaApi.md#detectMainImageColorAPI) | **GET** /detect-color | Detect Main Image Color API
[**rescaleImageAPI**](MediaApi.md#rescaleImageAPI) | **GET** /rescale-image | Rescale Image API
[**searchIconsAPI**](MediaApi.md#searchIconsAPI) | **GET** /search-icons | Search Icons API
[**searchRoyaltyFreeImagesAPI**](MediaApi.md#searchRoyaltyFreeImagesAPI) | **GET** /search-images | Search Royalty Free Images API
[**vectorSearchAPI**](MediaApi.md#vectorSearchAPI) | **GET** /search-vectors | Vector Search API


# **detectMainImageColorAPI**
> Array<DetectMainImageColorAPI200ResponseInner> detectMainImageColorAPI()

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MediaApi(configuration);

let body:.MediaApiDetectMainImageColorAPIRequest = {
  // string | The url of the image for which the colors should be detected.
  url: "https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ",
};

apiInstance.detectMainImageColorAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url of the image for which the colors should be detected. | defaults to undefined


### Return type

**Array<DetectMainImageColorAPI200ResponseInner>**

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

# **rescaleImageAPI**
> HttpFile rescaleImageAPI()

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MediaApi(configuration);

let body:.MediaApiRescaleImageAPIRequest = {
  // string | The url of the image to be rescaled.
  url: "https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ",
  // number | The desired width of the rescaled image.
  width: 200,
  // number | The desired height of the rescaled image.
  height: 200,
  // boolean | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  crop: true,
};

apiInstance.rescaleImageAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url of the image to be rescaled. | defaults to undefined
 **width** | [**number**] | The desired width of the rescaled image. | defaults to undefined
 **height** | [**number**] | The desired height of the rescaled image. | defaults to undefined
 **crop** | [**boolean**] | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | defaults to undefined


### Return type

**HttpFile**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream


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

# **searchIconsAPI**
> SearchIconsAPI200Response searchIconsAPI()

Search through millions of icons to match any topic you want.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MediaApi(configuration);

let body:.MediaApiSearchIconsAPIRequest = {
  // string | The search query.
  query: "cars",
  // boolean | If true, only public domain icons will be returned. (optional)
  onlyPublicDomain: true,
  // number | The number of icons to return in range [1,100] (optional)
  number: 3,
};

apiInstance.searchIconsAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | defaults to undefined
 **onlyPublicDomain** | [**boolean**] | If true, only public domain icons will be returned. | (optional) defaults to undefined
 **number** | [**number**] | The number of icons to return in range [1,100] | (optional) defaults to undefined


### Return type

**SearchIconsAPI200Response**

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

# **searchRoyaltyFreeImagesAPI**
> SearchRoyaltyFreeImagesAPI200Response searchRoyaltyFreeImagesAPI()

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MediaApi(configuration);

let body:.MediaApiSearchRoyaltyFreeImagesAPIRequest = {
  // string | The search query.
  query: "dogs",
  // number | The number of images to return in range [1,100] (optional)
  number: 3,
};

apiInstance.searchRoyaltyFreeImagesAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | defaults to undefined
 **number** | [**number**] | The number of images to return in range [1,100] | (optional) defaults to undefined


### Return type

**SearchRoyaltyFreeImagesAPI200Response**

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

# **vectorSearchAPI**
> VectorSearchAPI200Response vectorSearchAPI()

Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MediaApi(configuration);

let body:.MediaApiVectorSearchAPIRequest = {
  // string | The search query.
  query: "airplanes",
  // number | The number of vectors to skip, between 0 and 1000 (optional)
  offset: 0,
  // number | The number of vectors to return in range [1,10] (optional)
  number: 3,
};

apiInstance.vectorSearchAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | defaults to undefined
 **offset** | [**number**] | The number of vectors to skip, between 0 and 1000 | (optional) defaults to undefined
 **number** | [**number**] | The number of vectors to return in range [1,10] | (optional) defaults to undefined


### Return type

**VectorSearchAPI200Response**

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


