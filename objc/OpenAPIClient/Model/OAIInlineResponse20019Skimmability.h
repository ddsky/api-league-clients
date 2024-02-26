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


#import "OAIInlineResponse20019SkimmabilityMainscores.h"
#import "OAIInlineResponse20019SkimmabilitySubscores.h"
@protocol OAIInlineResponse20019SkimmabilityMainscores;
@class OAIInlineResponse20019SkimmabilityMainscores;
@protocol OAIInlineResponse20019SkimmabilitySubscores;
@class OAIInlineResponse20019SkimmabilitySubscores;



@protocol OAIInlineResponse20019Skimmability
@end

@interface OAIInlineResponse20019Skimmability : OAIObject


@property(nonatomic) OAIInlineResponse20019SkimmabilityMainscores* mainscores;

@property(nonatomic) OAIInlineResponse20019SkimmabilitySubscores* subscores;

@end
