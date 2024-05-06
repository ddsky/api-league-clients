#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* API League
* API League is a Hub for World Class APIs.
*
* The version of the OpenAPI document: 1.0.0
* Contact: mail@apileague.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAISearchRecipes200ResponseRecipesInnerNutrition.h"
@protocol OAISearchRecipes200ResponseRecipesInnerNutrition;
@class OAISearchRecipes200ResponseRecipesInnerNutrition;



@protocol OAISearchRecipes200ResponseRecipesInner
@end

@interface OAISearchRecipes200ResponseRecipesInner : OAIObject


@property(nonatomic) NSArray<NSString*>* images;

@property(nonatomic) OAISearchRecipes200ResponseRecipesInnerNutrition* nutrition;

@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSString* title;

@end
