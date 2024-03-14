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


#import "OAIComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.h"
@protocol OAIComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner;
@class OAIComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner;



@protocol OAIComputeNutrition200ResponseIngredientBreakdownInner
@end

@interface OAIComputeNutrition200ResponseIngredientBreakdownInner : OAIObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSNumber* amount;

@property(nonatomic) NSString* unit;

@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSArray<OAIComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner>* nutrients;

@end