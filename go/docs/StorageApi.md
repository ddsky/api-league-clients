# \StorageAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadKeyValueFromStoreAPI**](StorageAPI.md#ReadKeyValueFromStoreAPI) | **Get** /read-key-value | Read Key Value from Store API
[**StoreKeyValueGETAPI**](StorageAPI.md#StoreKeyValueGETAPI) | **Get** /store-key-value | Store Key Value (GET) API



## ReadKeyValueFromStoreAPI

> ReadKeyValueFromStoreAPI200Response ReadKeyValueFromStoreAPI(ctx).Key(key).Execute()

Read Key Value from Store API



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
	key := "visitors24h" // string | The key for which the value is stored (max length 255 characters).

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StorageAPI.ReadKeyValueFromStoreAPI(context.Background()).Key(key).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StorageAPI.ReadKeyValueFromStoreAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ReadKeyValueFromStoreAPI`: ReadKeyValueFromStoreAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `StorageAPI.ReadKeyValueFromStoreAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiReadKeyValueFromStoreAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** | The key for which the value is stored (max length 255 characters). | 

### Return type

[**ReadKeyValueFromStoreAPI200Response**](ReadKeyValueFromStoreAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StoreKeyValueGETAPI

> StoreKeyValueGETAPI200Response StoreKeyValueGETAPI(ctx).Key(key).Value(value).Execute()

Store Key Value (GET) API



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
	key := "visitors24h" // string | The key for which the value is stored (max length 255 characters).
	value := "23578 visitors" // string | The value that is supposed to be stored (max length 10,000 characters).

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.StorageAPI.StoreKeyValueGETAPI(context.Background()).Key(key).Value(value).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StorageAPI.StoreKeyValueGETAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `StoreKeyValueGETAPI`: StoreKeyValueGETAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `StorageAPI.StoreKeyValueGETAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStoreKeyValueGETAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** | The key for which the value is stored (max length 255 characters). | 
 **value** | **string** | The value that is supposed to be stored (max length 10,000 characters). | 

### Return type

[**StoreKeyValueGETAPI200Response**](StoreKeyValueGETAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

