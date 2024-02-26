# OAIMathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertUnits**](OAIMathApi.md#convertunits) | **GET** /convert-units | Convert Units


# **convertUnits**
```objc
-(NSURLSessionTask*) convertUnitsWithSourceAmount: (NSNumber*) sourceAmount
    sourceUnit: (NSString*) sourceUnit
    targetUnit: (NSString*) targetUnit
    foodName: (NSString*) foodName
        completionHandler: (void (^)(OAIInlineResponse20030* output, NSError* error)) handler;
```

Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

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


NSNumber* sourceAmount = 100; // The source amount.
NSString* sourceUnit = kg; // The source unit.
NSString* targetUnit = lb; // The unit to which should be converted.
NSString* foodName = flour; // An optional food name. For converting foods the food is relevant as they have different densities. (optional)

OAIMathApi*apiInstance = [[OAIMathApi alloc] init];

// Convert Units
[apiInstance convertUnitsWithSourceAmount:sourceAmount
              sourceUnit:sourceUnit
              targetUnit:targetUnit
              foodName:foodName
          completionHandler: ^(OAIInlineResponse20030* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMathApi->convertUnits: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceAmount** | **NSNumber***| The source amount. | 
 **sourceUnit** | **NSString***| The source unit. | 
 **targetUnit** | **NSString***| The unit to which should be converted. | 
 **foodName** | **NSString***| An optional food name. For converting foods the food is relevant as they have different densities. | [optional] 

### Return type

[**OAIInlineResponse20030***](OAIInlineResponse20030.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

