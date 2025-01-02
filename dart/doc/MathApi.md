# openapi.api.MathApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertUnitsAPI**](MathApi.md#convertunitsapi) | **GET** /convert-units | Convert Units API


# **convertUnitsAPI**
> ConvertUnitsAPI200Response convertUnitsAPI(sourceAmount, sourceUnit, targetUnit, foodName)

Convert Units API

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = MathApi();
final sourceAmount = 100; // double | The source amount.
final sourceUnit = kg; // String | The source unit.
final targetUnit = lb; // String | The unit to which should be converted.
final foodName = flour; // String | An optional food name. For converting foods the food is relevant as they have different densities.

try {
    final result = api_instance.convertUnitsAPI(sourceAmount, sourceUnit, targetUnit, foodName);
    print(result);
} catch (e) {
    print('Exception when calling MathApi->convertUnitsAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceAmount** | **double**| The source amount. | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

