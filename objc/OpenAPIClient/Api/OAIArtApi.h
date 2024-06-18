#import <Foundation/Foundation.h>
#import "OAIRandomPoem200Response.h"
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



@interface OAIArtApi: NSObject <OAIApi>

extern NSString* kOAIArtApiErrorDomain;
extern NSInteger kOAIArtApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Image to Ascii Art by URL
/// Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
///
/// @param url The URL to the image.
/// @param width The maximum width of the image (default 400, max. 500). (optional)
/// @param height The maximum height of the image (default 400, max. 500). (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return NSString*
-(NSURLSessionTask*) imageToAsciiArtByURLWithUrl: (NSString*) url
    width: (NSNumber*) width
    height: (NSNumber*) height
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Random Poem
/// Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
///
/// @param minLines The minimum number of lines of the poem. (optional)
/// @param maxLines The maximum number of lines of the poem. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIRandomPoem200Response*
-(NSURLSessionTask*) randomPoemWithMinLines: (NSNumber*) minLines
    maxLines: (NSNumber*) maxLines
    completionHandler: (void (^)(OAIRandomPoem200Response* output, NSError* error)) handler;



@end
