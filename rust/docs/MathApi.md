# \MathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convert_units**](MathApi.md#convert_units) | **GET** /convert-units | Convert Units



## convert_units

> crate::models::ConvertUnits200Response convert_units(source_amount, source_unit, target_unit, food_name)
Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**source_amount** | **f64** | The source amount. | [required] |
**source_unit** | **String** | The source unit. | [required] |
**target_unit** | **String** | The unit to which should be converted. | [required] |
**food_name** | Option<**String**> | An optional food name. For converting foods the food is relevant as they have different densities. |  |

### Return type

[**crate::models::ConvertUnits200Response**](convertUnits_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

