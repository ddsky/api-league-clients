# OAIWebApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractAuthors**](OAIWebApi.md#extractauthors) | **GET** /extract-authors | Extract Authors
[**extractContentFromAWebPage**](OAIWebApi.md#extractcontentfromawebpage) | **GET** /extract-content | Extract Content from a Web Page
[**extractPublishDate**](OAIWebApi.md#extractpublishdate) | **GET** /extract-publish-date | Extract Publish Date
[**retrievePageRank**](OAIWebApi.md#retrievepagerank) | **GET** /retrieve-page-rank | Retrieve Page Rank
[**searchWeb**](OAIWebApi.md#searchweb) | **GET** /search-web | Search Web
[**verifyEmailAddress**](OAIWebApi.md#verifyemailaddress) | **GET** /verify-email | Verify Email Address


# **extractAuthors**
```objc
-(NSURLSessionTask*) extractAuthorsWithUrl: (NSString*) url
        completionHandler: (void (^)(OAIExtractAuthors200Response* output, NSError* error)) handler;
```

Extract Authors

Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.

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


NSString* url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; // The url with the article from which authors should be extracted.

OAIWebApi*apiInstance = [[OAIWebApi alloc] init];

// Extract Authors
[apiInstance extractAuthorsWithUrl:url
          completionHandler: ^(OAIExtractAuthors200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebApi->extractAuthors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The url with the article from which authors should be extracted. | 

### Return type

[**OAIExtractAuthors200Response***](OAIExtractAuthors200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractContentFromAWebPage**
```objc
-(NSURLSessionTask*) extractContentFromAWebPageWithUrl: (NSString*) url
        completionHandler: (void (^)(OAIExtractContentFromAWebPage200Response* output, NSError* error)) handler;
```

Extract Content from a Web Page

Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.

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


NSString* url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; // The url for which the content will be extracted.

OAIWebApi*apiInstance = [[OAIWebApi alloc] init];

// Extract Content from a Web Page
[apiInstance extractContentFromAWebPageWithUrl:url
          completionHandler: ^(OAIExtractContentFromAWebPage200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebApi->extractContentFromAWebPage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The url for which the content will be extracted. | 

### Return type

[**OAIExtractContentFromAWebPage200Response***](OAIExtractContentFromAWebPage200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractPublishDate**
```objc
-(NSURLSessionTask*) extractPublishDateWithUrl: (NSString*) url
        completionHandler: (void (^)(OAIExtractPublishDate200Response* output, NSError* error)) handler;
```

Extract Publish Date

Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.

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


NSString* url = https://www.nytimes.com/2024/03/27/world/australia/economy-cost-of-living.html; // The url for which the publish date should be extracted.

OAIWebApi*apiInstance = [[OAIWebApi alloc] init];

// Extract Publish Date
[apiInstance extractPublishDateWithUrl:url
          completionHandler: ^(OAIExtractPublishDate200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebApi->extractPublishDate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The url for which the publish date should be extracted. | 

### Return type

[**OAIExtractPublishDate200Response***](OAIExtractPublishDate200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrievePageRank**
```objc
-(NSURLSessionTask*) retrievePageRankWithDomain: (NSString*) domain
        completionHandler: (void (^)(OAIRetrievePageRank200Response* output, NSError* error)) handler;
```

Retrieve Page Rank

This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.

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


NSString* domain = amazon.com; // The domain for which the page rank should be returned.

OAIWebApi*apiInstance = [[OAIWebApi alloc] init];

// Retrieve Page Rank
[apiInstance retrievePageRankWithDomain:domain
          completionHandler: ^(OAIRetrievePageRank200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebApi->retrievePageRank: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **NSString***| The domain for which the page rank should be returned. | 

### Return type

[**OAIRetrievePageRank200Response***](OAIRetrievePageRank200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchWeb**
```objc
-(NSURLSessionTask*) searchWebWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(OAISearchWeb200Response* output, NSError* error)) handler;
```

Search Web

Search the web for a given query. The API returns a list of results with the title, summary, and URL.

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


NSString* query = penguins; // The search query.
NSNumber* number = 5; // The number of results to return in range [1,50] (optional)

OAIWebApi*apiInstance = [[OAIWebApi alloc] init];

// Search Web
[apiInstance searchWebWithQuery:query
              number:number
          completionHandler: ^(OAISearchWeb200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebApi->searchWeb: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | 
 **number** | **NSNumber***| The number of results to return in range [1,50] | [optional] 

### Return type

[**OAISearchWeb200Response***](OAISearchWeb200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyEmailAddress**
```objc
-(NSURLSessionTask*) verifyEmailAddressWithEmail: (NSString*) email
        completionHandler: (void (^)(OAIVerifyEmailAddress200Response* output, NSError* error)) handler;
```

Verify Email Address

This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.

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


NSString* email = maxtest@gmail.com; // The email address to verify.

OAIWebApi*apiInstance = [[OAIWebApi alloc] init];

// Verify Email Address
[apiInstance verifyEmailAddressWithEmail:email
          completionHandler: ^(OAIVerifyEmailAddress200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebApi->verifyEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| The email address to verify. | 

### Return type

[**OAIVerifyEmailAddress200Response***](OAIVerifyEmailAddress200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

