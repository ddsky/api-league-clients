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


#import "OAIScoreText200ResponseReadabilityMainscores.h"
#import "OAIScoreText200ResponseStyleSubscores.h"
@protocol OAIScoreText200ResponseReadabilityMainscores;
@class OAIScoreText200ResponseReadabilityMainscores;
@protocol OAIScoreText200ResponseStyleSubscores;
@class OAIScoreText200ResponseStyleSubscores;



@protocol OAIScoreText200ResponseStyle
@end

@interface OAIScoreText200ResponseStyle : OAIObject


@property(nonatomic) OAIScoreText200ResponseReadabilityMainscores* mainscores;

@property(nonatomic) OAIScoreText200ResponseStyleSubscores* subscores;

@end
