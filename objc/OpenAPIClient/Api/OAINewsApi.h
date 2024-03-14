#import <Foundation/Foundation.h>
#import "OAIExtractNews200Response.h"
#import "OAISearchNews200Response.h"
#import "OAIApi.h"

/**
* API League
* API League is a Hub for World Class APIs.
*
* The version of the OpenAPI document: 1.0
* Contact: mail@apileague.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAINewsApi: NSObject <OAIApi>

extern NSString* kOAINewsApiErrorDomain;
extern NSInteger kOAINewsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Extract News
/// Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
///
/// @param url The url of the news.
/// @param analyze Whether to analyze the news (extract entities etc.)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIExtractNews200Response*
-(NSURLSessionTask*) extractNewsWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
    completionHandler: (void (^)(OAIExtractNews200Response* output, NSError* error)) handler;


/// Search News
/// Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
///
/// @param text The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford (optional)
/// @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate. (optional)
/// @param language The ISO 6391 language code of the news. (optional)
/// @param minSentiment The minimal sentiment of the news in range [-1,1]. (optional)
/// @param maxSentiment The maximal sentiment of the news in range [-1,1]. (optional)
/// @param earliestPublishDate The news must have been published after this date. (optional)
/// @param latestPublishDate The news must have been published before this date. (optional)
/// @param varNewsSources A comma-separated list of news sources from which the news should originate. (optional)
/// @param authors A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
/// @param entities Filter news by entities (ORG, PER, or LOC). (optional)
/// @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; (optional)
/// @param sort The sorting criteria (publish-time or sentiment). (optional)
/// @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
/// @param offset The number of news to skip in range [0,10000] (optional)
/// @param number The number of news to return in range [1,100] (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAISearchNews200Response*
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
    completionHandler: (void (^)(OAISearchNews200Response* output, NSError* error)) handler;



@end
