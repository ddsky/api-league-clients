#import "OAIBooksApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIFindSimilarBooks200Response.h"
#import "OAISearchBooks200Response.h"


@interface OAIBooksApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIBooksApi

NSString* kOAIBooksApiErrorDomain = @"OAIBooksApiErrorDomain";
NSInteger kOAIBooksApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Find Similar Books
/// Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
///  @param _id The id of the book to which similar books should be found. 
///
///  @param number The number of similar books to return in range [1,100] (optional)
///
///  @returns OAIFindSimilarBooks200Response*
///
-(NSURLSessionTask*) findSimilarBooksWithId: (NSNumber*) _id
    number: (NSNumber*) number
    completionHandler: (void (^)(OAIFindSimilarBooks200Response* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIBooksApiErrorDomain code:kOAIBooksApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/list-similar-books"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIFindSimilarBooks200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFindSimilarBooks200Response*)data, error);
                                }
                            }];
}

///
/// Search Books
/// Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
///  @param query The search query. (optional)
///
///  @param earliestPublishYear The books must have been published after this year. (optional)
///
///  @param latestPublishYear The books must have been published before this year. (optional)
///
///  @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
///
///  @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
///
///  @param genres A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
///
///  @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional)
///
///  @param isbn Only the book matching the ISBN-13 will be returned (optional)
///
///  @param oclc Only the book matching the OCLC will be returned (optional)
///
///  @param sort The sorting criteria (publish-date or rating). (optional)
///
///  @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
///
///  @param groupResults Whether to group similar editions of the same book. (optional)
///
///  @param offset The number of books to skip in range [0,1000] (optional)
///
///  @param number The number of books to return in range [1,100] (optional)
///
///  @returns OAISearchBooks200Response*
///
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
    completionHandler: (void (^)(OAISearchBooks200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search-books"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (earliestPublishYear != nil) {
        queryParams[@"earliest-publish-year"] = earliestPublishYear;
    }
    if (latestPublishYear != nil) {
        queryParams[@"latest-publish-year"] = latestPublishYear;
    }
    if (minRating != nil) {
        queryParams[@"min-rating"] = minRating;
    }
    if (maxRating != nil) {
        queryParams[@"max-rating"] = maxRating;
    }
    if (genres != nil) {
        queryParams[@"genres"] = genres;
    }
    if (authors != nil) {
        queryParams[@"authors"] = authors;
    }
    if (isbn != nil) {
        queryParams[@"isbn"] = isbn;
    }
    if (oclc != nil) {
        queryParams[@"oclc"] = oclc;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (sortDirection != nil) {
        queryParams[@"sort-direction"] = sortDirection;
    }
    if (groupResults != nil) {
        queryParams[@"group-results"] = [groupResults isEqual:@(YES)] ? @"true" : @"false";
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISearchBooks200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchBooks200Response*)data, error);
                                }
                            }];
}



@end
