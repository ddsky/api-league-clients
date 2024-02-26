# com.apileague.MathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertUnits**](MathApi.md#convertunits) | **GET** /convert-units | Convert Units


<a name="convertunits"></a>
# **ConvertUnits**
> InlineResponse20030 ConvertUnits (double? sourceAmount, string sourceUnit, string targetUnit, string foodName)

Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example
```csharp
using System;
using System.Diagnostics;
using com.apileague;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace Example
{
    public class ConvertUnitsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new MathApi();
            var sourceAmount = 100;  // double? | The source amount.
            var sourceUnit = kg;  // string | The source unit.
            var targetUnit = lb;  // string | The unit to which should be converted.
            var foodName = flour;  // string | An optional food name. For converting foods the food is relevant as they have different densities. (optional) 

            try
            {
                // Convert Units
                InlineResponse20030 result = apiInstance.ConvertUnits(sourceAmount, sourceUnit, targetUnit, foodName);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MathApi.ConvertUnits: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceAmount** | **double?**| The source amount. | 
 **sourceUnit** | **string**| The source unit. | 
 **targetUnit** | **string**| The unit to which should be converted. | 
 **foodName** | **string**| An optional food name. For converting foods the food is relevant as they have different densities. | [optional] 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

