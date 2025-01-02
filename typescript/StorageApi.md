# .StorageApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**readKeyValueFromStoreAPI**](StorageApi.md#readKeyValueFromStoreAPI) | **GET** /read-key-value | Read Key Value from Store API
[**storeKeyValueGETAPI**](StorageApi.md#storeKeyValueGETAPI) | **GET** /store-key-value | Store Key Value (GET) API


# **readKeyValueFromStoreAPI**
> ReadKeyValueFromStoreAPI200Response readKeyValueFromStoreAPI()

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .StorageApi(configuration);

let body:.StorageApiReadKeyValueFromStoreAPIRequest = {
  // string | The key for which the value is stored (max length 255 characters).
  key: "visitors24h",
};

apiInstance.readKeyValueFromStoreAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | [**string**] | The key for which the value is stored (max length 255 characters). | defaults to undefined


### Return type

**ReadKeyValueFromStoreAPI200Response**

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

# **storeKeyValueGETAPI**
> StoreKeyValueGETAPI200Response storeKeyValueGETAPI()

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .StorageApi(configuration);

let body:.StorageApiStoreKeyValueGETAPIRequest = {
  // string | The key for which the value is stored (max length 255 characters).
  key: "visitors24h",
  // string | The value that is supposed to be stored (max length 10,000 characters).
  value: "23578 visitors",
};

apiInstance.storeKeyValueGETAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | [**string**] | The key for which the value is stored (max length 255 characters). | defaults to undefined
 **value** | [**string**] | The value that is supposed to be stored (max length 10,000 characters). | defaults to undefined


### Return type

**StoreKeyValueGETAPI200Response**

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


