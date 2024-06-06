#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* API League
* API League is a Hub for World Class APIs.
*
* The version of the OpenAPI document: 1.2.0
* Contact: mail@apileague.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIScoreText200ResponseInterestingnessSubscores
@end

@interface OAIScoreText200ResponseInterestingnessSubscores : OAIObject


@property(nonatomic) NSArray<NSNumber*>* titleRatingScore;

@property(nonatomic) NSArray<NSNumber*>* quoteScore;

@property(nonatomic) NSArray<NSNumber*>* lengthScore;

@property(nonatomic) NSArray<NSNumber*>* linkScore;

@property(nonatomic) NSArray<NSNumber*>* googleHitsScore;

@end
