# \MathAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertUnits**](MathAPI.md#ConvertUnits) | **Get** /convert-units | Convert Units



## ConvertUnits

> ConvertUnits200Response ConvertUnits(ctx).SourceAmount(sourceAmount).SourceUnit(sourceUnit).TargetUnit(targetUnit).FoodName(foodName).Execute()

Convert Units



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	sourceAmount := float64(100) // float64 | The source amount.
	sourceUnit := "kg" // string | The source unit.
	targetUnit := "lb" // string | The unit to which should be converted.
	foodName := "flour" // string | An optional food name. For converting foods the food is relevant as they have different densities. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.MathAPI.ConvertUnits(context.Background()).SourceAmount(sourceAmount).SourceUnit(sourceUnit).TargetUnit(targetUnit).FoodName(foodName).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `MathAPI.ConvertUnits``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ConvertUnits`: ConvertUnits200Response
	fmt.Fprintf(os.Stdout, "Response from `MathAPI.ConvertUnits`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiConvertUnitsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceAmount** | **float64** | The source amount. | 
 **sourceUnit** | **string** | The source unit. | 
 **targetUnit** | **string** | The unit to which should be converted. | 
 **foodName** | **string** | An optional food name. For converting foods the food is relevant as they have different densities. | 

### Return type

[**ConvertUnits200Response**](ConvertUnits200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

