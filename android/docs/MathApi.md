# MathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertUnits**](MathApi.md#convertUnits) | **GET** /convert-units | Convert Units



## convertUnits

> ConvertUnits200Response convertUnits(sourceAmount, sourceUnit, targetUnit, foodName)

Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example

```java
// Import classes:
//import com.apileague.MathApi;

MathApi apiInstance = new MathApi();
Double sourceAmount = 100; // Double | The source amount.
String sourceUnit = kg; // String | The source unit.
String targetUnit = lb; // String | The unit to which should be converted.
String foodName = flour; // String | An optional food name. For converting foods the food is relevant as they have different densities.
try {
    ConvertUnits200Response result = apiInstance.convertUnits(sourceAmount, sourceUnit, targetUnit, foodName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MathApi#convertUnits");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceAmount** | **Double**| The source amount. | [default to null]
 **sourceUnit** | **String**| The source unit. | [default to null]
 **targetUnit** | **String**| The unit to which should be converted. | [default to null]
 **foodName** | **String**| An optional food name. For converting foods the food is relevant as they have different densities. | [optional] [default to null]

### Return type

[**ConvertUnits200Response**](ConvertUnits200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

