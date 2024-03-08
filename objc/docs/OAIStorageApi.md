# OAIStorageApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**readKeyValueFromStore**](OAIStorageApi.md#readkeyvaluefromstore) | **GET** /read-key-value | Read Key Value from Store
[**storeKeyValueGET**](OAIStorageApi.md#storekeyvalueget) | **GET** /store-key-value | Store Key Value (GET)


# **readKeyValueFromStore**
```objc
-(NSURLSessionTask*) readKeyValueFromStoreWithKey: (NSString*) key
        completionHandler: (void (^)(OAIReadKeyValueFromStore200Response* output, NSError* error)) handler;
```

Read Key Value from Store

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* key = visitors24h; // The key for which the value is stored (max length 255 characters).

OAIStorageApi*apiInstance = [[OAIStorageApi alloc] init];

// Read Key Value from Store
[apiInstance readKeyValueFromStoreWithKey:key
          completionHandler: ^(OAIReadKeyValueFromStore200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStorageApi->readKeyValueFromStore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key for which the value is stored (max length 255 characters). | 

### Return type

[**OAIReadKeyValueFromStore200Response***](OAIReadKeyValueFromStore200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storeKeyValueGET**
```objc
-(NSURLSessionTask*) storeKeyValueGETWithKey: (NSString*) key
    value: (NSString*) value
        completionHandler: (void (^)(OAIStoreKeyValueGET200Response* output, NSError* error)) handler;
```

Store Key Value (GET)

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* key = visitors24h; // The key for which the value is stored (max length 255 characters).
NSString* value = 23578 visitors; // The value that is supposed to be stored (max length 10,000 characters).

OAIStorageApi*apiInstance = [[OAIStorageApi alloc] init];

// Store Key Value (GET)
[apiInstance storeKeyValueGETWithKey:key
              value:value
          completionHandler: ^(OAIStoreKeyValueGET200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStorageApi->storeKeyValueGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key for which the value is stored (max length 255 characters). | 
 **value** | **NSString***| The value that is supposed to be stored (max length 10,000 characters). | 

### Return type

[**OAIStoreKeyValueGET200Response***](OAIStoreKeyValueGET200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

