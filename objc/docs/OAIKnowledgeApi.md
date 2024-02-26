# OAIKnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomQuote**](OAIKnowledgeApi.md#randomquote) | **GET** /retrieve-random-quote | Random Quote
[**randomTrivia**](OAIKnowledgeApi.md#randomtrivia) | **GET** /retrieve-random-trivia | Random Trivia


# **randomQuote**
```objc
-(NSURLSessionTask*) randomQuoteWithMinLength: (NSNumber*) minLength
    maxLength: (NSNumber*) maxLength
        completionHandler: (void (^)(OAIInlineResponse20010* output, NSError* error)) handler;
```

Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

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


NSNumber* minLength = 120; // The minimum length of the quote in letters. (optional)
NSNumber* maxLength = 300; // The maximum length of the quote in letters. (optional)

OAIKnowledgeApi*apiInstance = [[OAIKnowledgeApi alloc] init];

// Random Quote
[apiInstance randomQuoteWithMinLength:minLength
              maxLength:maxLength
          completionHandler: ^(OAIInlineResponse20010* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKnowledgeApi->randomQuote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | **NSNumber***| The minimum length of the quote in letters. | [optional] 
 **maxLength** | **NSNumber***| The maximum length of the quote in letters. | [optional] 

### Return type

[**OAIInlineResponse20010***](OAIInlineResponse20010.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomTrivia**
```objc
-(NSURLSessionTask*) randomTriviaWithMaxLength: (NSNumber*) maxLength
        completionHandler: (void (^)(OAIInlineResponse2009* output, NSError* error)) handler;
```

Random Trivia

This endpoint returns a random piece of trivia.

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


NSNumber* maxLength = 300; // The maximum length of the trivia in letters. (optional)

OAIKnowledgeApi*apiInstance = [[OAIKnowledgeApi alloc] init];

// Random Trivia
[apiInstance randomTriviaWithMaxLength:maxLength
          completionHandler: ^(OAIInlineResponse2009* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKnowledgeApi->randomTrivia: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | **NSNumber***| The maximum length of the trivia in letters. | [optional] 

### Return type

[**OAIInlineResponse2009***](OAIInlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

