# OAIMediaApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectMainImageColor**](OAIMediaApi.md#detectmainimagecolor) | **GET** /detect-color | Detect Main Image Color
[**rescaleImage**](OAIMediaApi.md#rescaleimage) | **GET** /rescale-image | Rescale Image
[**searchRoyaltyFreeImages**](OAIMediaApi.md#searchroyaltyfreeimages) | **GET** /search-images | Search Royalty Free Images


# **detectMainImageColor**
```objc
-(NSURLSessionTask*) detectMainImageColorWithUrl: (NSString*) url
        completionHandler: (void (^)(NSArray<OAIDetectMainImageColor200ResponseInner>* output, NSError* error)) handler;
```

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

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


NSString* url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // The url of the image for which the colors should be detected.

OAIMediaApi*apiInstance = [[OAIMediaApi alloc] init];

// Detect Main Image Color
[apiInstance detectMainImageColorWithUrl:url
          completionHandler: ^(NSArray<OAIDetectMainImageColor200ResponseInner>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMediaApi->detectMainImageColor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The url of the image for which the colors should be detected. | 

### Return type

[**NSArray<OAIDetectMainImageColor200ResponseInner>***](OAIDetectMainImageColor200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rescaleImage**
```objc
-(NSURLSessionTask*) rescaleImageWithUrl: (NSString*) url
    width: (NSNumber*) width
    height: (NSNumber*) height
    crop: (NSNumber*) crop
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

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


NSString* url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; // The url of the image to be rescaled.
NSNumber* width = 200; // The desired width of the rescaled image.
NSNumber* height = 200; // The desired height of the rescaled image.
NSNumber* crop = true; // Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

OAIMediaApi*apiInstance = [[OAIMediaApi alloc] init];

// Rescale Image
[apiInstance rescaleImageWithUrl:url
              width:width
              height:height
              crop:crop
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMediaApi->rescaleImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The url of the image to be rescaled. | 
 **width** | **NSNumber***| The desired width of the rescaled image. | 
 **height** | **NSNumber***| The desired height of the rescaled image. | 
 **crop** | **NSNumber***| Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRoyaltyFreeImages**
```objc
-(NSURLSessionTask*) searchRoyaltyFreeImagesWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(OAISearchRoyaltyFreeImages200Response* output, NSError* error)) handler;
```

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

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


NSString* query = dogs; // The search query.
NSNumber* number = 3; // The number of images to return in range [1,10] (optional)

OAIMediaApi*apiInstance = [[OAIMediaApi alloc] init];

// Search Royalty Free Images
[apiInstance searchRoyaltyFreeImagesWithQuery:query
              number:number
          completionHandler: ^(OAISearchRoyaltyFreeImages200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMediaApi->searchRoyaltyFreeImages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | 
 **number** | **NSNumber***| The number of images to return in range [1,10] | [optional] 

### Return type

[**OAISearchRoyaltyFreeImages200Response***](OAISearchRoyaltyFreeImages200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

