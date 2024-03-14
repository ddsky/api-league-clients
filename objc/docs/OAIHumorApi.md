# OAIHumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateNonsenseWord**](OAIHumorApi.md#generatenonsenseword) | **GET** /generate-nonsense-word | Generate Nonsense Word
[**randomJoke**](OAIHumorApi.md#randomjoke) | **GET** /retrieve-random-joke | Random Joke
[**randomMeme**](OAIHumorApi.md#randommeme) | **GET** /retrieve-random-meme | Random Meme
[**searchGifs**](OAIHumorApi.md#searchgifs) | **GET** /search-gifs | Search Gifs
[**searchJokes**](OAIHumorApi.md#searchjokes) | **GET** /search-jokes | Search Jokes
[**searchMemes**](OAIHumorApi.md#searchmemes) | **GET** /search-memes | Search Memes


# **generateNonsenseWord**
```objc
-(NSURLSessionTask*) generateNonsenseWordWithCompletionHandler: 
        (void (^)(OAIGenerateNonsenseWord200Response* output, NSError* error)) handler;
```

Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

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



OAIHumorApi*apiInstance = [[OAIHumorApi alloc] init];

// Generate Nonsense Word
[apiInstance generateNonsenseWordWithCompletionHandler: 
          ^(OAIGenerateNonsenseWord200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIHumorApi->generateNonsenseWord: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIGenerateNonsenseWord200Response***](OAIGenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomJoke**
```objc
-(NSURLSessionTask*) randomJokeWithIncludeTags: (NSString*) includeTags
    excludeTags: (NSString*) excludeTags
    minRating: (NSNumber*) minRating
    maxLength: (NSNumber*) maxLength
        completionHandler: (void (^)(OAISearchJokes200ResponseJokesInner* output, NSError* error)) handler;
```

Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

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


NSString* includeTags = animal; // A comma-separated list of tags the jokes should have. (optional)
NSString* excludeTags = nsfw,dark; // A comma-separated list of tags the jokes must not have. (optional)
NSNumber* minRating = 0; // The minimum rating in range [0.0,1.0] of the jokes. (optional)
NSNumber* maxLength = 140; // The maximum length of the joke in letters. (optional)

OAIHumorApi*apiInstance = [[OAIHumorApi alloc] init];

// Random Joke
[apiInstance randomJokeWithIncludeTags:includeTags
              excludeTags:excludeTags
              minRating:minRating
              maxLength:maxLength
          completionHandler: ^(OAISearchJokes200ResponseJokesInner* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIHumorApi->randomJoke: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | **NSString***| A comma-separated list of tags the jokes should have. | [optional] 
 **excludeTags** | **NSString***| A comma-separated list of tags the jokes must not have. | [optional] 
 **minRating** | **NSNumber***| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **maxLength** | **NSNumber***| The maximum length of the joke in letters. | [optional] 

### Return type

[**OAISearchJokes200ResponseJokesInner***](OAISearchJokes200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **randomMeme**
```objc
-(NSURLSessionTask*) randomMemeWithKeywords: (NSString*) keywords
    keywordsInImage: (NSNumber*) keywordsInImage
    mediaType: (NSString*) mediaType
    minRating: (NSNumber*) minRating
    maxAgeDays: (NSNumber*) maxAgeDays
        completionHandler: (void (^)(OAIRandomMeme200Response* output, NSError* error)) handler;
```

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

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


NSString* keywords = airplane; // A comma-separated list of words that must occur in the meme. (optional)
NSNumber* keywordsInImage = true; // Whether the keywords must occur in the image. (optional)
NSString* mediaType = image; // The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
NSNumber* minRating = 0; // The minimum rating in range [0.0,1.0] of the meme. (optional)
NSNumber* maxAgeDays = 30; // The maximum age of the meme in days. (optional)

OAIHumorApi*apiInstance = [[OAIHumorApi alloc] init];

// Random Meme
[apiInstance randomMemeWithKeywords:keywords
              keywordsInImage:keywordsInImage
              mediaType:mediaType
              minRating:minRating
              maxAgeDays:maxAgeDays
          completionHandler: ^(OAIRandomMeme200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIHumorApi->randomMeme: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **NSString***| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywordsInImage** | **NSNumber***| Whether the keywords must occur in the image. | [optional] 
 **mediaType** | **NSString***| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **minRating** | **NSNumber***| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **maxAgeDays** | **NSNumber***| The maximum age of the meme in days. | [optional] 

### Return type

[**OAIRandomMeme200Response***](OAIRandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGifs**
```objc
-(NSURLSessionTask*) searchGifsWithQuery: (NSString*) query
    number: (NSNumber*) number
        completionHandler: (void (^)(OAISearchGifs200Response* output, NSError* error)) handler;
```

Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

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
NSNumber* number = 5; // The number of gifs to return in range [1,10] (optional)

OAIHumorApi*apiInstance = [[OAIHumorApi alloc] init];

// Search Gifs
[apiInstance searchGifsWithQuery:query
              number:number
          completionHandler: ^(OAISearchGifs200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIHumorApi->searchGifs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | 
 **number** | **NSNumber***| The number of gifs to return in range [1,10] | [optional] 

### Return type

[**OAISearchGifs200Response***](OAISearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchJokes**
```objc
-(NSURLSessionTask*) searchJokesWithKeywords: (NSString*) keywords
    includeTags: (NSString*) includeTags
    excludeTags: (NSString*) excludeTags
    minRating: (NSNumber*) minRating
    maxLength: (NSNumber*) maxLength
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAISearchJokes200Response* output, NSError* error)) handler;
```

Search Jokes

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

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


NSString* keywords = horse,man; // A comma-separated list of words that must occur in the joke. (optional)
NSString* includeTags = animal; // A comma-separated list of tags the jokes should have. (optional)
NSString* excludeTags = nsfw,dark; // A comma-separated list of tags the jokes must not have. (optional)
NSNumber* minRating = 0; // The minimum rating in range [0.0,1.0] of the jokes. (optional)
NSNumber* maxLength = 140; // The maximum length of the joke in letters. (optional)
NSNumber* offset = 0; // The number of jokes to skip, between 0 and 1000. (optional)
NSNumber* number = 3; // The number of jokes, between 1 and 10. (optional)

OAIHumorApi*apiInstance = [[OAIHumorApi alloc] init];

// Search Jokes
[apiInstance searchJokesWithKeywords:keywords
              includeTags:includeTags
              excludeTags:excludeTags
              minRating:minRating
              maxLength:maxLength
              offset:offset
              number:number
          completionHandler: ^(OAISearchJokes200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIHumorApi->searchJokes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **NSString***| A comma-separated list of words that must occur in the joke. | [optional] 
 **includeTags** | **NSString***| A comma-separated list of tags the jokes should have. | [optional] 
 **excludeTags** | **NSString***| A comma-separated list of tags the jokes must not have. | [optional] 
 **minRating** | **NSNumber***| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **maxLength** | **NSNumber***| The maximum length of the joke in letters. | [optional] 
 **offset** | **NSNumber***| The number of jokes to skip, between 0 and 1000. | [optional] 
 **number** | **NSNumber***| The number of jokes, between 1 and 10. | [optional] 

### Return type

[**OAISearchJokes200Response***](OAISearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMemes**
```objc
-(NSURLSessionTask*) searchMemesWithKeywords: (NSString*) keywords
    keywordsInImage: (NSNumber*) keywordsInImage
    mediaType: (NSString*) mediaType
    minRating: (NSNumber*) minRating
    maxAgeDays: (NSNumber*) maxAgeDays
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAISearchMemes200Response* output, NSError* error)) handler;
```

Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

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


NSString* keywords = rocket; // A comma-separated list of words that must occur in the meme. (optional)
NSNumber* keywordsInImage = true; // Whether the keywords must occur in the image. (optional)
NSString* mediaType = image; // The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
NSNumber* minRating = 0; // The minimum rating in range [0.0,1.0] of the meme. (optional)
NSNumber* maxAgeDays = 30; // The maximum age of the meme in days. (optional)
NSNumber* offset = 0; // The number of memes to skip, between 0 and 1000. (optional)
NSNumber* number = 3; // The number of memes, between 1 and 10. (optional)

OAIHumorApi*apiInstance = [[OAIHumorApi alloc] init];

// Search Memes
[apiInstance searchMemesWithKeywords:keywords
              keywordsInImage:keywordsInImage
              mediaType:mediaType
              minRating:minRating
              maxAgeDays:maxAgeDays
              offset:offset
              number:number
          completionHandler: ^(OAISearchMemes200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIHumorApi->searchMemes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **NSString***| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywordsInImage** | **NSNumber***| Whether the keywords must occur in the image. | [optional] 
 **mediaType** | **NSString***| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **minRating** | **NSNumber***| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **maxAgeDays** | **NSNumber***| The maximum age of the meme in days. | [optional] 
 **offset** | **NSNumber***| The number of memes to skip, between 0 and 1000. | [optional] 
 **number** | **NSNumber***| The number of memes, between 1 and 10. | [optional] 

### Return type

[**OAISearchMemes200Response***](OAISearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

