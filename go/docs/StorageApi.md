# \StorageAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadKeyValueFromStore**](StorageAPI.md#ReadKeyValueFromStore) | **Get** /read-key-value | Read Key Value from Store
[**StoreKeyValueGET**](StorageAPI.md#StoreKeyValueGET) | **Get** /store-key-value | Store Key Value (GET)



## ReadKeyValueFromStore

> ReadKeyValueFromStore200Response ReadKeyValueFromStore(ctx).Key(key).Execute()

Read Key Value from Store



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
	resp, r, err := apiClient.StorageAPI.ReadKeyValueFromStore(context.Background()).Key(key).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StorageAPI.ReadKeyValueFromStore``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ReadKeyValueFromStore`: ReadKeyValueFromStore200Response
	fmt.Fprintf(os.Stdout, "Response from `StorageAPI.ReadKeyValueFromStore`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiReadKeyValueFromStoreRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** | The key for which the value is stored (max length 255 characters). | 

### Return type

[**ReadKeyValueFromStore200Response**](ReadKeyValueFromStore200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StoreKeyValueGET

> StoreKeyValueGET200Response StoreKeyValueGET(ctx).Key(key).Value(value).Execute()

Store Key Value (GET)



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
	resp, r, err := apiClient.StorageAPI.StoreKeyValueGET(context.Background()).Key(key).Value(value).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `StorageAPI.StoreKeyValueGET``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `StoreKeyValueGET`: StoreKeyValueGET200Response
	fmt.Fprintf(os.Stdout, "Response from `StorageAPI.StoreKeyValueGET`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStoreKeyValueGETRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** | The key for which the value is stored (max length 255 characters). | 
 **value** | **string** | The value that is supposed to be stored (max length 10,000 characters). | 

### Return type

[**StoreKeyValueGET200Response**](StoreKeyValueGET200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

