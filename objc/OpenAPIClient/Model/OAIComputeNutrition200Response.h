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


#import "OAIComputeNutrition200ResponseIngredientBreakdownInner.h"
#import "OAIRetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.h"
#import "OAIRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.h"
#import "OAIRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.h"
#import "OAIRetrieveRecipeInformation200ResponseNutritionWeightPerServing.h"
#import "OAISearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.h"
@protocol OAIComputeNutrition200ResponseIngredientBreakdownInner;
@class OAIComputeNutrition200ResponseIngredientBreakdownInner;
@protocol OAIRetrieveRecipeInformation200ResponseNutritionCaloricBreakdown;
@class OAIRetrieveRecipeInformation200ResponseNutritionCaloricBreakdown;
@protocol OAIRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner;
@class OAIRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner;
@protocol OAIRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;
@class OAIRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;
@protocol OAIRetrieveRecipeInformation200ResponseNutritionWeightPerServing;
@class OAIRetrieveRecipeInformation200ResponseNutritionWeightPerServing;
@protocol OAISearchRecipes200ResponseRecipesInnerNutritionNutrientsInner;
@class OAISearchRecipes200ResponseRecipesInnerNutritionNutrientsInner;



@protocol OAIComputeNutrition200Response
@end

@interface OAIComputeNutrition200Response : OAIObject


@property(nonatomic) NSArray<OAIRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner>* nutrients;

@property(nonatomic) NSArray<OAIRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner>* properties;

@property(nonatomic) NSArray<OAISearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>* flavonoids;

@property(nonatomic) NSArray<OAIComputeNutrition200ResponseIngredientBreakdownInner>* ingredientBreakdown;

@property(nonatomic) OAIRetrieveRecipeInformation200ResponseNutritionCaloricBreakdown* caloricBreakdown;

@property(nonatomic) OAIRetrieveRecipeInformation200ResponseNutritionWeightPerServing* weightPerServing;

@end
