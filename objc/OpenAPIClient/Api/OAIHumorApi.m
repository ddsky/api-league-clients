#import "OAIHumorApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIGenerateNonsenseWord200Response.h"
#import "OAIRandomMeme200Response.h"
#import "OAISearchGifs200Response.h"
#import "OAISearchJokes200Response.h"
#import "OAISearchJokes200ResponseJokesInner.h"
#import "OAISearchMemes200Response.h"


@interface OAIHumorApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIHumorApi

NSString* kOAIHumorApiErrorDomain = @"OAIHumorApiErrorDomain";
NSInteger kOAIHumorApiMissingParamErrorCode = 234513;

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
/// Generate Nonsense Word
/// Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
///  @returns OAIGenerateNonsenseWord200Response*
///
-(NSURLSessionTask*) generateNonsenseWordWithCompletionHandler: 
    (void (^)(OAIGenerateNonsenseWord200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/generate-nonsense-word"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIGenerateNonsenseWord200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateNonsenseWord200Response*)data, error);
                                }
                            }];
}

///
/// Random Joke
/// This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
///  @param includeTags A comma-separated list of tags the jokes should have. (optional)
///
///  @param excludeTags A comma-separated list of tags the jokes must not have. (optional)
///
///  @param minRating The minimum rating in range [0.0,1.0] of the jokes. (optional)
///
///  @param maxLength The maximum length of the joke in letters. (optional)
///
///  @returns OAISearchJokes200ResponseJokesInner*
///
-(NSURLSessionTask*) randomJokeWithIncludeTags: (NSString*) includeTags
    excludeTags: (NSString*) excludeTags
    minRating: (NSNumber*) minRating
    maxLength: (NSNumber*) maxLength
    completionHandler: (void (^)(OAISearchJokes200ResponseJokesInner* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retrieve-random-joke"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (includeTags != nil) {
        queryParams[@"include-tags"] = includeTags;
    }
    if (excludeTags != nil) {
        queryParams[@"exclude-tags"] = excludeTags;
    }
    if (minRating != nil) {
        queryParams[@"min-rating"] = minRating;
    }
    if (maxLength != nil) {
        queryParams[@"max-length"] = maxLength;
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
                              responseType: @"OAISearchJokes200ResponseJokesInner*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchJokes200ResponseJokesInner*)data, error);
                                }
                            }];
}

///
/// Random Meme
/// Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
///  @param keywords A comma-separated list of words that must occur in the meme. (optional)
///
///  @param keywordsInImage Whether the keywords must occur in the image. (optional)
///
///  @param mediaType The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
///
///  @param minRating The minimum rating in range [0.0,1.0] of the meme. (optional)
///
///  @param maxAgeDays The maximum age of the meme in days. (optional)
///
///  @returns OAIRandomMeme200Response*
///
-(NSURLSessionTask*) randomMemeWithKeywords: (NSString*) keywords
    keywordsInImage: (NSNumber*) keywordsInImage
    mediaType: (NSString*) mediaType
    minRating: (NSNumber*) minRating
    maxAgeDays: (NSNumber*) maxAgeDays
    completionHandler: (void (^)(OAIRandomMeme200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retrieve-random-meme"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (keywords != nil) {
        queryParams[@"keywords"] = keywords;
    }
    if (keywordsInImage != nil) {
        queryParams[@"keywords-in-image"] = [keywordsInImage isEqual:@(YES)] ? @"true" : @"false";
    }
    if (mediaType != nil) {
        queryParams[@"media-type"] = mediaType;
    }
    if (minRating != nil) {
        queryParams[@"min-rating"] = minRating;
    }
    if (maxAgeDays != nil) {
        queryParams[@"max-age-days"] = maxAgeDays;
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
                              responseType: @"OAIRandomMeme200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRandomMeme200Response*)data, error);
                                }
                            }];
}

///
/// Search Gifs
/// Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
///  @param query The search query. 
///
///  @param number The number of gifs to return in range [1,10] (optional)
///
///  @returns OAISearchGifs200Response*
///
-(NSURLSessionTask*) searchGifsWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchGifs200Response* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIHumorApiErrorDomain code:kOAIHumorApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search-gifs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
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
                              responseType: @"OAISearchGifs200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchGifs200Response*)data, error);
                                }
                            }];
}

///
/// Search Jokes
/// With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
///  @param keywords A comma-separated list of words that must occur in the joke. (optional)
///
///  @param includeTags A comma-separated list of tags the jokes should have. (optional)
///
///  @param excludeTags A comma-separated list of tags the jokes must not have. (optional)
///
///  @param minRating The minimum rating in range [0.0,1.0] of the jokes. (optional)
///
///  @param maxLength The maximum length of the joke in letters. (optional)
///
///  @param offset The number of jokes to skip, between 0 and 1000. (optional)
///
///  @param number The number of jokes, between 1 and 10. (optional)
///
///  @returns OAISearchJokes200Response*
///
-(NSURLSessionTask*) searchJokesWithKeywords: (NSString*) keywords
    includeTags: (NSString*) includeTags
    excludeTags: (NSString*) excludeTags
    minRating: (NSNumber*) minRating
    maxLength: (NSNumber*) maxLength
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchJokes200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search-jokes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (keywords != nil) {
        queryParams[@"keywords"] = keywords;
    }
    if (includeTags != nil) {
        queryParams[@"include-tags"] = includeTags;
    }
    if (excludeTags != nil) {
        queryParams[@"exclude-tags"] = excludeTags;
    }
    if (minRating != nil) {
        queryParams[@"min-rating"] = minRating;
    }
    if (maxLength != nil) {
        queryParams[@"max-length"] = maxLength;
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
                              responseType: @"OAISearchJokes200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchJokes200Response*)data, error);
                                }
                            }];
}

///
/// Search Memes
/// With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
///  @param keywords A comma-separated list of words that must occur in the meme. (optional)
///
///  @param keywordsInImage Whether the keywords must occur in the image. (optional)
///
///  @param mediaType The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
///
///  @param minRating The minimum rating in range [0.0,1.0] of the meme. (optional)
///
///  @param maxAgeDays The maximum age of the meme in days. (optional)
///
///  @param offset The number of memes to skip, between 0 and 1000. (optional)
///
///  @param number The number of memes, between 1 and 10. (optional)
///
///  @returns OAISearchMemes200Response*
///
-(NSURLSessionTask*) searchMemesWithKeywords: (NSString*) keywords
    keywordsInImage: (NSNumber*) keywordsInImage
    mediaType: (NSString*) mediaType
    minRating: (NSNumber*) minRating
    maxAgeDays: (NSNumber*) maxAgeDays
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchMemes200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search-memes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (keywords != nil) {
        queryParams[@"keywords"] = keywords;
    }
    if (keywordsInImage != nil) {
        queryParams[@"keywords-in-image"] = [keywordsInImage isEqual:@(YES)] ? @"true" : @"false";
    }
    if (mediaType != nil) {
        queryParams[@"media-type"] = mediaType;
    }
    if (minRating != nil) {
        queryParams[@"min-rating"] = minRating;
    }
    if (maxAgeDays != nil) {
        queryParams[@"max-age-days"] = maxAgeDays;
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
                              responseType: @"OAISearchMemes200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchMemes200Response*)data, error);
                                }
                            }];
}



@end
