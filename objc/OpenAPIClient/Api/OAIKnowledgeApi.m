#import "OAIKnowledgeApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIInlineResponse20010.h"
#import "OAIInlineResponse2009.h"


@interface OAIKnowledgeApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIKnowledgeApi

NSString* kOAIKnowledgeApiErrorDomain = @"OAIKnowledgeApiErrorDomain";
NSInteger kOAIKnowledgeApiMissingParamErrorCode = 234513;

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
/// Random Quote
/// This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
///  @param minLength The minimum length of the quote in letters. (optional)
///
///  @param maxLength The maximum length of the quote in letters. (optional)
///
///  @returns OAIInlineResponse20010*
///
-(NSURLSessionTask*) randomQuoteWithMinLength: (NSNumber*) minLength
    maxLength: (NSNumber*) maxLength
    completionHandler: (void (^)(OAIInlineResponse20010* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retrieve-random-quote"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (minLength != nil) {
        queryParams[@"min-length"] = minLength;
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
                              responseType: @"OAIInlineResponse20010*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20010*)data, error);
                                }
                            }];
}

///
/// Random Trivia
/// This endpoint returns a random piece of trivia.
///  @param maxLength The maximum length of the trivia in letters. (optional)
///
///  @returns OAIInlineResponse2009*
///
-(NSURLSessionTask*) randomTriviaWithMaxLength: (NSNumber*) maxLength
    completionHandler: (void (^)(OAIInlineResponse2009* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retrieve-random-trivia"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIInlineResponse2009*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse2009*)data, error);
                                }
                            }];
}



@end
