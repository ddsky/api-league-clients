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


#import "OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner.h"
@protocol OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner;
@class OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner;



@protocol OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
@end

@interface OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner : OAIObject


@property(nonatomic) NSNumber* number;

@property(nonatomic) NSArray<OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner>* ingredients;

@property(nonatomic) NSArray<OAIRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner>* equipment;

@property(nonatomic) NSString* step;

@end
