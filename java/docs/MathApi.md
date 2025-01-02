# MathApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**convertUnitsAPI**](MathApi.md#convertUnitsAPI) | **GET** /convert-units | Convert Units API |


<a id="convertUnitsAPI"></a>
# **convertUnitsAPI**
> ConvertUnitsAPI200Response convertUnitsAPI(sourceAmount, sourceUnit, targetUnit, foodName)

Convert Units API

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.MathApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    MathApi apiInstance = new MathApi(defaultClient);
    Double sourceAmount = 100D; // Double | The source amount.
    String sourceUnit = "kg"; // String | The source unit.
    String targetUnit = "lb"; // String | The unit to which should be converted.
    String foodName = "flour"; // String | An optional food name. For converting foods the food is relevant as they have different densities.
    try {
      ConvertUnitsAPI200Response result = apiInstance.convertUnitsAPI(sourceAmount, sourceUnit, targetUnit, foodName);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MathApi#convertUnitsAPI");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **sourceAmount** | **Double**| The source amount. | |
| **sourceUnit** | **String**| The source unit. | |
| **targetUnit** | **String**| The unit to which should be converted. | |
| **foodName** | **String**| An optional food name. For converting foods the food is relevant as they have different densities. | [optional] |

### Return type

[**ConvertUnitsAPI200Response**](ConvertUnitsAPI200Response.md)

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

