# apileague.Api.MathApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ConvertUnits**](MathApi.md#convertunits) | **GET** /convert-units | Convert Units |

<a id="convertunits"></a>
# **ConvertUnits**
> ConvertUnits200Response ConvertUnits (double sourceAmount, string sourceUnit, string targetUnit, string? foodName = null)

Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class ConvertUnitsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new MathApi(config);
            var sourceAmount = 100;  // double | The source amount.
            var sourceUnit = kg;  // string | The source unit.
            var targetUnit = lb;  // string | The unit to which should be converted.
            var foodName = flour;  // string? | An optional food name. For converting foods the food is relevant as they have different densities. (optional) 

            try
            {
                // Convert Units
                ConvertUnits200Response result = apiInstance.ConvertUnits(sourceAmount, sourceUnit, targetUnit, foodName);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MathApi.ConvertUnits: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ConvertUnitsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Convert Units
    ApiResponse<ConvertUnits200Response> response = apiInstance.ConvertUnitsWithHttpInfo(sourceAmount, sourceUnit, targetUnit, foodName);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MathApi.ConvertUnitsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **sourceAmount** | **double** | The source amount. |  |
| **sourceUnit** | **string** | The source unit. |  |
| **targetUnit** | **string** | The unit to which should be converted. |  |
| **foodName** | **string?** | An optional food name. For converting foods the food is relevant as they have different densities. | [optional]  |

### Return type

[**ConvertUnits200Response**](ConvertUnits200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

