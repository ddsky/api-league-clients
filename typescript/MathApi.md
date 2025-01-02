# .MathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertUnitsAPI**](MathApi.md#convertUnitsAPI) | **GET** /convert-units | Convert Units API


# **convertUnitsAPI**
> ConvertUnitsAPI200Response convertUnitsAPI()

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .MathApi(configuration);

let body:.MathApiConvertUnitsAPIRequest = {
  // number | The source amount.
  sourceAmount: 100,
  // string | The source unit.
  sourceUnit: "kg",
  // string | The unit to which should be converted.
  targetUnit: "lb",
  // string | An optional food name. For converting foods the food is relevant as they have different densities. (optional)
  foodName: "flour",
};

apiInstance.convertUnitsAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceAmount** | [**number**] | The source amount. | defaults to undefined
 **sourceUnit** | [**string**] | The source unit. | defaults to undefined
 **targetUnit** | [**string**] | The unit to which should be converted. | defaults to undefined
 **foodName** | [**string**] | An optional food name. For converting foods the food is relevant as they have different densities. | (optional) defaults to undefined


### Return type

**ConvertUnitsAPI200Response**

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


