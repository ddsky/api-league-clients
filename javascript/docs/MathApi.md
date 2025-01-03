# ApileagueJs.MathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertUnitsAPI**](MathApi.md#convertUnitsAPI) | **GET** /convert-units | Convert Units API



## convertUnitsAPI

> ConvertUnitsAPI200Response convertUnitsAPI(sourceAmount, sourceUnit, targetUnit, opts)

Convert Units API

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
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

let apiInstance = new ApileagueJs.MathApi();
let sourceAmount = 100; // Number | The source amount.
let sourceUnit = "kg"; // String | The source unit.
let targetUnit = "lb"; // String | The unit to which should be converted.
let opts = {
  'foodName': "flour" // String | An optional food name. For converting foods the food is relevant as they have different densities.
};
apiInstance.convertUnitsAPI(sourceAmount, sourceUnit, targetUnit, opts, (error, data, response) => {
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
 **sourceAmount** | **Number**| The source amount. | 
 **sourceUnit** | **String**| The source unit. | 
 **targetUnit** | **String**| The unit to which should be converted. | 
 **foodName** | **String**| An optional food name. For converting foods the food is relevant as they have different densities. | [optional] 

### Return type

[**ConvertUnitsAPI200Response**](ConvertUnitsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

