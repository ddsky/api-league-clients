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


#import "OAIScoreText200ResponseSkimmabilityMainscores.h"
#import "OAIScoreText200ResponseSkimmabilitySubscores.h"
@protocol OAIScoreText200ResponseSkimmabilityMainscores;
@class OAIScoreText200ResponseSkimmabilityMainscores;
@protocol OAIScoreText200ResponseSkimmabilitySubscores;
@class OAIScoreText200ResponseSkimmabilitySubscores;



@protocol OAIScoreText200ResponseSkimmability
@end

@interface OAIScoreText200ResponseSkimmability : OAIObject


@property(nonatomic) OAIScoreText200ResponseSkimmabilityMainscores* mainscores;

@property(nonatomic) OAIScoreText200ResponseSkimmabilitySubscores* subscores;

@end
