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


#import "OAIScoreText200ResponseInterestingnessSubscores.h"
#import "OAIScoreText200ResponseSkimmabilityMainscores.h"
@protocol OAIScoreText200ResponseInterestingnessSubscores;
@class OAIScoreText200ResponseInterestingnessSubscores;
@protocol OAIScoreText200ResponseSkimmabilityMainscores;
@class OAIScoreText200ResponseSkimmabilityMainscores;



@protocol OAIScoreText200ResponseInterestingness
@end

@interface OAIScoreText200ResponseInterestingness : OAIObject


@property(nonatomic) OAIScoreText200ResponseSkimmabilityMainscores* mainscores;

@property(nonatomic) OAIScoreText200ResponseInterestingnessSubscores* subscores;

@end
