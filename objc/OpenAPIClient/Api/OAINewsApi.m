#import "OAINewsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIExtractNews200Response.h"
#import "OAISearchNews200Response.h"


@interface OAINewsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAINewsApi

NSString* kOAINewsApiErrorDomain = @"OAINewsApiErrorDomain";
NSInteger kOAINewsApiMissingParamErrorCode = 234513;

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
/// Extract News
/// Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
///  @param url The url of the news. 
///
///  @param analyze Whether to analyze the news (extract entities etc.) 
///
///  @returns OAIExtractNews200Response*
///
-(NSURLSessionTask*) extractNewsWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
    completionHandler: (void (^)(OAIExtractNews200Response* output, NSError* error)) handler {
    // verify the required parameter 'url' is set
    if (url == nil) {
        NSParameterAssert(url);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"url"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'analyze' is set
    if (analyze == nil) {
        NSParameterAssert(analyze);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"analyze"] };
            NSError* error = [NSError errorWithDomain:kOAINewsApiErrorDomain code:kOAINewsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/extract-news"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (analyze != nil) {
        queryParams[@"analyze"] = [analyze isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIExtractNews200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIExtractNews200Response*)data, error);
                                }
                            }];
}

///
/// Search News
/// Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
///  @param text The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford (optional)
///
///  @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate. (optional)
///
///  @param language The ISO 6391 language code of the news. (optional)
///
///  @param minSentiment The minimal sentiment of the news in range [-1,1]. (optional)
///
///  @param maxSentiment The maximal sentiment of the news in range [-1,1]. (optional)
///
///  @param earliestPublishDate The news must have been published after this date. (optional)
///
///  @param latestPublishDate The news must have been published before this date. (optional)
///
///  @param varNewsSources A comma-separated list of news sources from which the news should originate. (optional)
///
///  @param authors A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
///
///  @param entities Filter news by entities (see semantic types). (optional)
///
///  @param locationFilter Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" (optional)
///
///  @param sort The sorting criteria (publish-time or sentiment). (optional)
///
///  @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
///
///  @param offset The number of news to skip in range [0,10000] (optional)
///
///  @param number The number of news to return in range [1,100] (optional)
///
///  @returns OAISearchNews200Response*
///
-(NSURLSessionTask*) searchNewsWithText: (NSString*) text
    sourceCountries: (NSString*) sourceCountries
    language: (NSString*) language
    minSentiment: (NSNumber*) minSentiment
    maxSentiment: (NSNumber*) maxSentiment
    earliestPublishDate: (NSString*) earliestPublishDate
    latestPublishDate: (NSString*) latestPublishDate
    varNewsSources: (NSString*) varNewsSources
    authors: (NSString*) authors
    entities: (NSString*) entities
    locationFilter: (NSString*) locationFilter
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchNews200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search-news"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (text != nil) {
        queryParams[@"text"] = text;
    }
    if (sourceCountries != nil) {
        queryParams[@"source-countries"] = sourceCountries;
    }
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (minSentiment != nil) {
        queryParams[@"min-sentiment"] = minSentiment;
    }
    if (maxSentiment != nil) {
        queryParams[@"max-sentiment"] = maxSentiment;
    }
    if (earliestPublishDate != nil) {
        queryParams[@"earliest-publish-date"] = earliestPublishDate;
    }
    if (latestPublishDate != nil) {
        queryParams[@"latest-publish-date"] = latestPublishDate;
    }
    if (varNewsSources != nil) {
        queryParams[@"news-sources"] = varNewsSources;
    }
    if (authors != nil) {
        queryParams[@"authors"] = authors;
    }
    if (entities != nil) {
        queryParams[@"entities"] = entities;
    }
    if (locationFilter != nil) {
        queryParams[@"location-filter"] = locationFilter;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (sortDirection != nil) {
        queryParams[@"sort-direction"] = sortDirection;
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
                              responseType: @"OAISearchNews200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchNews200Response*)data, error);
                                }
                            }];
}



@end
