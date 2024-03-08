#import <Foundation/Foundation.h>
#import "OAIObject.h"

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





@protocol OAIScoreText200ResponseStyleSubscores
@end

@interface OAIScoreText200ResponseStyleSubscores : OAIObject


@property(nonatomic) NSArray<NSNumber*>* abbreviationScore;

@property(nonatomic) NSArray<NSNumber*>* styleScore;

@property(nonatomic) NSArray<NSNumber*>* spellingScore;

@end