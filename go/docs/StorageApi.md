# com.apileague.client\StorageApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadKeyValueFromStore**](StorageApi.md#ReadKeyValueFromStore) | **Get** /read-key-value | Read Key Value from Store
[**StoreKeyValueGET**](StorageApi.md#StoreKeyValueGET) | **Get** /store-key-value | Store Key Value (GET)



## ReadKeyValueFromStore

> InlineResponse20031 ReadKeyValueFromStore(ctx).Key(key).Execute()

Read Key Value from Store



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    key := "visitors24h" // string | The key for which the value is stored (max length 255 characters).

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.StorageApi.ReadKeyValueFromStore(context.Background()).Key(key).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `StorageApi.ReadKeyValueFromStore``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ReadKeyValueFromStore`: InlineResponse20031
    fmt.Fprintf(os.Stdout, "Response from `StorageApi.ReadKeyValueFromStore`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiReadKeyValueFromStoreRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** | The key for which the value is stored (max length 255 characters). | 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StoreKeyValueGET

> InlineResponse20032 StoreKeyValueGET(ctx).Key(key).Value(value).Execute()

Store Key Value (GET)



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    key := "visitors24h" // string | The key for which the value is stored (max length 255 characters).
    value := "23578 visitors" // string | The value that is supposed to be stored (max length 10,000 characters).

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.StorageApi.StoreKeyValueGET(context.Background()).Key(key).Value(value).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `StorageApi.StoreKeyValueGET``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `StoreKeyValueGET`: InlineResponse20032
    fmt.Fprintf(os.Stdout, "Response from `StorageApi.StoreKeyValueGET`: %v\n", resp)
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

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

