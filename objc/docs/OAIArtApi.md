# OAIArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imageToAsciiArtByURL**](OAIArtApi.md#imagetoasciiartbyurl) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
[**randomPoem**](OAIArtApi.md#randompoem) | **GET** /retrieve-random-poem | Random Poem


# **imageToAsciiArtByURL**
```objc
-(NSURLSessionTask*) imageToAsciiArtByURLWithUrl: (NSString*) url
    width: (NSNumber*) width
    height: (NSNumber*) height
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Image to Ascii Art by URL

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

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


NSString* url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; // The URL to the image.
NSNumber* width = 200; // The maximum width of the image (default 400, max. 500). (optional)
NSNumber* height = 200; // The maximum height of the image (default 400, max. 500). (optional)

OAIArtApi*apiInstance = [[OAIArtApi alloc] init];

// Image to Ascii Art by URL
[apiInstance imageToAsciiArtByURLWithUrl:url
              width:width
              height:height
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIArtApi->imageToAsciiArtByURL: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The URL to the image. | 
 **width** | **NSNumber***| The maximum width of the image (default 400, max. 500). | [optional] 
 **height** | **NSNumber***| The maximum height of the image (default 400, max. 500). | [optional] 

### Return type

**NSString***

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomPoem**
```objc
-(NSURLSessionTask*) randomPoemWithMinLines: (NSNumber*) minLines
    maxLines: (NSNumber*) maxLines
        completionHandler: (void (^)(OAIInlineResponse20011* output, NSError* error)) handler;
```

Random Poem

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

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


NSNumber* minLines = 5; // The minimum number of lines of the poem. (optional)
NSNumber* maxLines = 20; // The maximum number of lines of the poem. (optional)

OAIArtApi*apiInstance = [[OAIArtApi alloc] init];

// Random Poem
[apiInstance randomPoemWithMinLines:minLines
              maxLines:maxLines
          completionHandler: ^(OAIInlineResponse20011* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIArtApi->randomPoem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **NSNumber***| The minimum number of lines of the poem. | [optional] 
 **maxLines** | **NSNumber***| The maximum number of lines of the poem. | [optional] 

### Return type

[**OAIInlineResponse20011***](OAIInlineResponse20011.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

