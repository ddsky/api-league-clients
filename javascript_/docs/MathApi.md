# ApiLeague.MathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertUnits**](MathApi.md#convertUnits) | **GET** /convert-units | Convert Units



## convertUnits

> ConvertUnits200Response convertUnits(sourceAmount, sourceUnit, targetUnit, opts)

Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

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

let apiInstance = new ApiLeague.MathApi();
let sourceAmount = 100; // Number | The source amount.
let sourceUnit = "kg"; // String | The source unit.
let targetUnit = "lb"; // String | The unit to which should be converted.
let opts = {
  'foodName': "flour" // String | An optional food name. For converting foods the food is relevant as they have different densities.
};
apiInstance.convertUnits(sourceAmount, sourceUnit, targetUnit, opts, (error, data, response) => {
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

[**ConvertUnits200Response**](ConvertUnits200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

