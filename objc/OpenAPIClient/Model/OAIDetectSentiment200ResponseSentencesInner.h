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





@protocol OAIDetectSentiment200ResponseSentencesInner
@end

@interface OAIDetectSentiment200ResponseSentencesInner : OAIObject


@property(nonatomic) NSNumber* length;

@property(nonatomic) NSString* sentiment;

@property(nonatomic) NSNumber* offset;

@property(nonatomic) NSNumber* confidence;

@end
