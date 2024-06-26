#import <Foundation/Foundation.h>
#import "OAIObject.h"

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


#import "OAITopNews200ResponseTopNewsInner.h"
@protocol OAITopNews200ResponseTopNewsInner;
@class OAITopNews200ResponseTopNewsInner;



@protocol OAITopNews200Response
@end

@interface OAITopNews200Response : OAIObject


@property(nonatomic) NSArray<OAITopNews200ResponseTopNewsInner>* topNews;

@property(nonatomic) NSString* language;

@property(nonatomic) NSString* country;

@end
