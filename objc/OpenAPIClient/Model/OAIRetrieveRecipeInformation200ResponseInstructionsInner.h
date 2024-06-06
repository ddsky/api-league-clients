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


#import "OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.h"
@protocol OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner;
@class OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner;



@protocol OAIRetrieveRecipeInformation200ResponseInstructionsInner
@end

@interface OAIRetrieveRecipeInformation200ResponseInstructionsInner : OAIObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSArray<OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner>* steps;

@end
