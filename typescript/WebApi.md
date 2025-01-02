# .WebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractAuthorsAPI**](WebApi.md#extractAuthorsAPI) | **GET** /extract-authors | Extract Authors API
[**extractContentFromAWebPageAPI**](WebApi.md#extractContentFromAWebPageAPI) | **GET** /extract-content | Extract Content from a Web Page API
[**extractPublishDateAPI**](WebApi.md#extractPublishDateAPI) | **GET** /extract-publish-date | Extract Publish Date API
[**retrievePageRankAPI**](WebApi.md#retrievePageRankAPI) | **GET** /retrieve-page-rank | Retrieve Page Rank API
[**searchWebAPI**](WebApi.md#searchWebAPI) | **GET** /search-web | Search Web API
[**verifyEmailAddressAPI**](WebApi.md#verifyEmailAddressAPI) | **GET** /verify-email | Verify Email Address API


# **extractAuthorsAPI**
> ExtractAuthorsAPI200Response extractAuthorsAPI()

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WebApi(configuration);

let body:.WebApiExtractAuthorsAPIRequest = {
  // string | The url with the article from which authors should be extracted.
  url: "https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html",
};

apiInstance.extractAuthorsAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url with the article from which authors should be extracted. | defaults to undefined


### Return type

**ExtractAuthorsAPI200Response**

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

# **extractContentFromAWebPageAPI**
> ExtractContentFromAWebPageAPI200Response extractContentFromAWebPageAPI()

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WebApi(configuration);

let body:.WebApiExtractContentFromAWebPageAPIRequest = {
  // string | The url for which the content will be extracted.
  url: "https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html",
};

apiInstance.extractContentFromAWebPageAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url for which the content will be extracted. | defaults to undefined


### Return type

**ExtractContentFromAWebPageAPI200Response**

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

# **extractPublishDateAPI**
> ExtractPublishDateAPI200Response extractPublishDateAPI()

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WebApi(configuration);

let body:.WebApiExtractPublishDateAPIRequest = {
  // string | The url for which the publish date should be extracted.
  url: "https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html",
};

apiInstance.extractPublishDateAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**string**] | The url for which the publish date should be extracted. | defaults to undefined


### Return type

**ExtractPublishDateAPI200Response**

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

# **retrievePageRankAPI**
> RetrievePageRankAPI200Response retrievePageRankAPI()

This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WebApi(configuration);

let body:.WebApiRetrievePageRankAPIRequest = {
  // string | The domain for which the page rank should be returned.
  domain: "amazon.com",
};

apiInstance.retrievePageRankAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | [**string**] | The domain for which the page rank should be returned. | defaults to undefined


### Return type

**RetrievePageRankAPI200Response**

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

# **searchWebAPI**
> SearchWebAPI200Response searchWebAPI()

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WebApi(configuration);

let body:.WebApiSearchWebAPIRequest = {
  // string | The search query.
  query: "penguins",
  // number | The number of results to return in range [1,50] (optional)
  number: 5,
};

apiInstance.searchWebAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | defaults to undefined
 **number** | [**number**] | The number of results to return in range [1,50] | (optional) defaults to undefined


### Return type

**SearchWebAPI200Response**

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

# **verifyEmailAddressAPI**
> VerifyEmailAddressAPI200Response verifyEmailAddressAPI()

This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .WebApi(configuration);

let body:.WebApiVerifyEmailAddressAPIRequest = {
  // string | The email address to verify.
  email: "maxtest@gmail.com",
};

apiInstance.verifyEmailAddressAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**string**] | The email address to verify. | defaults to undefined


### Return type

**VerifyEmailAddressAPI200Response**

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


