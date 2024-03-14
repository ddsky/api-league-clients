# OAIBooksApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooks**](OAIBooksApi.md#findsimilarbooks) | **GET** /list-similar-books | Find Similar Books
[**searchBooks**](OAIBooksApi.md#searchbooks) | **GET** /search-books | Search Books


# **findSimilarBooks**
```objc
-(NSURLSessionTask*) findSimilarBooksWithId: (NSNumber*) _id
    number: (NSNumber*) number
        completionHandler: (void (^)(OAIFindSimilarBooks200Response* output, NSError* error)) handler;
```

Find Similar Books

Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

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


NSNumber* _id = 8302059; // The id of the book to which similar books should be found.
NSNumber* number = 10; // The number of similar books to return in range [1,100] (optional)

OAIBooksApi*apiInstance = [[OAIBooksApi alloc] init];

// Find Similar Books
[apiInstance findSimilarBooksWithId:_id
              number:number
          completionHandler: ^(OAIFindSimilarBooks200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBooksApi->findSimilarBooks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the book to which similar books should be found. | 
 **number** | **NSNumber***| The number of similar books to return in range [1,100] | [optional] 

### Return type

[**OAIFindSimilarBooks200Response***](OAIFindSimilarBooks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchBooks**
```objc
-(NSURLSessionTask*) searchBooksWithQuery: (NSString*) query
    earliestPublishYear: (NSNumber*) earliestPublishYear
    latestPublishYear: (NSNumber*) latestPublishYear
    minRating: (NSNumber*) minRating
    maxRating: (NSNumber*) maxRating
    genres: (NSString*) genres
    authors: (NSString*) authors
    isbn: (NSString*) isbn
    oclc: (NSString*) oclc
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    groupResults: (NSNumber*) groupResults
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAISearchBooks200Response* output, NSError* error)) handler;
```

Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

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


NSString* query = books about wizards; // The search query. (optional)
NSNumber* earliestPublishYear = 2022; // The books must have been published after this year. (optional)
NSNumber* latestPublishYear = 2023; // The books must have been published before this year. (optional)
NSNumber* minRating = 0.8; // The minimum rating the book must have gotten in the interval [0,1]. (optional)
NSNumber* maxRating = 0.99; // The maximum rating the book must have gotten in the interval [0,1]. (optional)
NSString* genres = nonfiction; // A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
NSString* authors = J.K. Rowling; // A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional)
NSString* isbn = 9781781257654; // Only the book matching the ISBN-13 will be returned (optional)
NSString* oclc = 864418200; // Only the book matching the OCLC will be returned (optional)
NSString* sort = rating; // The sorting criteria (publish-date or rating). (optional)
NSString* sortDirection = DESC; // Whether to sort ascending or descending (ASC or DESC). (optional)
NSNumber* groupResults = false; // Whether to group similar editions of the same book. (optional)
NSNumber* offset = 0; // The number of books to skip in range [0,1000] (optional)
NSNumber* number = 10; // The number of books to return in range [1,100] (optional)

OAIBooksApi*apiInstance = [[OAIBooksApi alloc] init];

// Search Books
[apiInstance searchBooksWithQuery:query
              earliestPublishYear:earliestPublishYear
              latestPublishYear:latestPublishYear
              minRating:minRating
              maxRating:maxRating
              genres:genres
              authors:authors
              isbn:isbn
              oclc:oclc
              sort:sort
              sortDirection:sortDirection
              groupResults:groupResults
              offset:offset
              number:number
          completionHandler: ^(OAISearchBooks200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBooksApi->searchBooks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | [optional] 
 **earliestPublishYear** | **NSNumber***| The books must have been published after this year. | [optional] 
 **latestPublishYear** | **NSNumber***| The books must have been published before this year. | [optional] 
 **minRating** | **NSNumber***| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **maxRating** | **NSNumber***| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **NSString***| A comma-separated list of genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **NSString***| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] 
 **isbn** | **NSString***| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **NSString***| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **NSString***| The sorting criteria (publish-date or rating). | [optional] 
 **sortDirection** | **NSString***| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **groupResults** | **NSNumber***| Whether to group similar editions of the same book. | [optional] 
 **offset** | **NSNumber***| The number of books to skip in range [0,1000] | [optional] 
 **number** | **NSNumber***| The number of books to return in range [1,100] | [optional] 

### Return type

[**OAISearchBooks200Response***](OAISearchBooks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

