#import "OAIMathApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIInlineResponse20030.h"


@interface OAIMathApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMathApi

NSString* kOAIMathApiErrorDomain = @"OAIMathApiErrorDomain";
NSInteger kOAIMathApiMissingParamErrorCode = 234513;

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
/// Convert Units
/// Convert units from one to another. The API returns the amount and the unit of the target unit.
///  @param sourceAmount The source amount. 
///
///  @param sourceUnit The source unit. 
///
///  @param targetUnit The unit to which should be converted. 
///
///  @param foodName An optional food name. For converting foods the food is relevant as they have different densities. (optional)
///
///  @returns OAIInlineResponse20030*
///
-(NSURLSessionTask*) convertUnitsWithSourceAmount: (NSNumber*) sourceAmount
    sourceUnit: (NSString*) sourceUnit
    targetUnit: (NSString*) targetUnit
    foodName: (NSString*) foodName
    completionHandler: (void (^)(OAIInlineResponse20030* output, NSError* error)) handler {
    // verify the required parameter 'sourceAmount' is set
    if (sourceAmount == nil) {
        NSParameterAssert(sourceAmount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sourceAmount"] };
            NSError* error = [NSError errorWithDomain:kOAIMathApiErrorDomain code:kOAIMathApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sourceUnit' is set
    if (sourceUnit == nil) {
        NSParameterAssert(sourceUnit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sourceUnit"] };
            NSError* error = [NSError errorWithDomain:kOAIMathApiErrorDomain code:kOAIMathApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'targetUnit' is set
    if (targetUnit == nil) {
        NSParameterAssert(targetUnit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"targetUnit"] };
            NSError* error = [NSError errorWithDomain:kOAIMathApiErrorDomain code:kOAIMathApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert-units"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sourceAmount != nil) {
        queryParams[@"source-amount"] = sourceAmount;
    }
    if (sourceUnit != nil) {
        queryParams[@"source-unit"] = sourceUnit;
    }
    if (targetUnit != nil) {
        queryParams[@"target-unit"] = targetUnit;
    }
    if (foodName != nil) {
        queryParams[@"food-name"] = foodName;
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
                              responseType: @"OAIInlineResponse20030*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInlineResponse20030*)data, error);
                                }
                            }];
}



@end
