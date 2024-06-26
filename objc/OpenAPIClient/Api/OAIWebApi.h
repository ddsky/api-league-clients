#import <Foundation/Foundation.h>
#import "OAIExtractAuthors200Response.h"
#import "OAIExtractContentFromAWebPage200Response.h"
#import "OAIExtractPublishDate200Response.h"
#import "OAIRetrievePageRank200Response.h"
#import "OAISearchWeb200Response.h"
#import "OAIVerifyEmailAddress200Response.h"
#import "OAIApi.h"

/**
* API League
* API League is a Hub for World Class APIs.
*
* The version of the OpenAPI document: 1.3.0
* Contact: mail@apileague.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIWebApi: NSObject <OAIApi>

extern NSString* kOAIWebApiErrorDomain;
extern NSInteger kOAIWebApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Extract Authors
/// Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
///
/// @param url The url with the article from which authors should be extracted.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIExtractAuthors200Response*
-(NSURLSessionTask*) extractAuthorsWithUrl: (NSString*) url
    completionHandler: (void (^)(OAIExtractAuthors200Response* output, NSError* error)) handler;


/// Extract Content from a Web Page
/// Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
///
/// @param url The url for which the content will be extracted.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIExtractContentFromAWebPage200Response*
-(NSURLSessionTask*) extractContentFromAWebPageWithUrl: (NSString*) url
    completionHandler: (void (^)(OAIExtractContentFromAWebPage200Response* output, NSError* error)) handler;


/// Extract Publish Date
/// Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
///
/// @param url The url for which the publish date should be extracted.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIExtractPublishDate200Response*
-(NSURLSessionTask*) extractPublishDateWithUrl: (NSString*) url
    completionHandler: (void (^)(OAIExtractPublishDate200Response* output, NSError* error)) handler;


/// Retrieve Page Rank
/// This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
///
/// @param domain The domain for which the page rank should be returned.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIRetrievePageRank200Response*
-(NSURLSessionTask*) retrievePageRankWithDomain: (NSString*) domain
    completionHandler: (void (^)(OAIRetrievePageRank200Response* output, NSError* error)) handler;


/// Search Web
/// Search the web for a given query. The API returns a list of results with the title, summary, and URL.
///
/// @param query The search query.
/// @param number The number of results to return in range [1,50] (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAISearchWeb200Response*
-(NSURLSessionTask*) searchWebWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchWeb200Response* output, NSError* error)) handler;


/// Verify Email Address
/// This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
///
/// @param email The email address to verify.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIVerifyEmailAddress200Response*
-(NSURLSessionTask*) verifyEmailAddressWithEmail: (NSString*) email
    completionHandler: (void (^)(OAIVerifyEmailAddress200Response* output, NSError* error)) handler;



@end
