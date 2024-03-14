#import <Foundation/Foundation.h>
#import "OAIComputeNutrition200Response.h"
#import "OAIRetrieveRecipeInformation200Response.h"
#import "OAISearchRecipes200Response.h"
#import "OAISearchRestaurants200Response.h"
#import "OAIApi.h"

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



@interface OAIFoodApi: NSObject <OAIApi>

extern NSString* kOAIFoodApiErrorDomain;
extern NSInteger kOAIFoodApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Compute Nutrition
/// Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
///
/// @param ingredients A comma-separated list of the ingredients of the recipe.
/// @param servings The number of servings the ingredients make. Nutrition is computed per serving. (optional)
/// @param reduceOils If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIComputeNutrition200Response*
-(NSURLSessionTask*) computeNutritionWithIngredients: (NSString*) ingredients
    servings: (NSNumber*) servings
    reduceOils: (NSNumber*) reduceOils
    completionHandler: (void (^)(OAIComputeNutrition200Response* output, NSError* error)) handler;


/// Retrieve Recipe Information
/// Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
///
/// @param _id The id of the recipe to retrieve.
/// @param addWinePairing Whether to pair a wine to the recipe. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIRetrieveRecipeInformation200Response*
-(NSURLSessionTask*) retrieveRecipeInformationWithId: (NSNumber*) _id
    addWinePairing: (NSNumber*) addWinePairing
    completionHandler: (void (^)(OAIRetrieveRecipeInformation200Response* output, NSError* error)) handler;


/// Search Recipes
/// Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
///
/// @param query The search query. (optional)
/// @param cuisines The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). (optional)
/// @param excludeCuisines The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). (optional)
/// @param mealType The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. (optional)
/// @param diet The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. (optional)
/// @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. (optional)
/// @param equipment The equipment required. Multiple values will be interpreted as &#39;OR&#39;. (optional)
/// @param includeIngredients A comma-separated list of ingredients that should/must be used in the recipes. (optional)
/// @param excludeIngredients A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
/// @param fillIngredients Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
/// @param addRecipeInformation If set to true, you get more information about the recipes returned. (optional)
/// @param maxTime The maximum time in minutes it should take to prepare and cook the recipe. (optional)
/// @param minCalories The minimum amount of calories the recipe must have per serving. (optional)
/// @param maxCalories The maximum amount of calories the recipe can have per serving. (optional)
/// @param minCarbs The minimum amount of carbohydrates in grams the recipe must have per serving. (optional)
/// @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have per serving. (optional)
/// @param minProtein The minimum amount of protein in grams the recipe must have per serving. (optional)
/// @param maxProtein The maximum amount of protein in grams the recipe can have per serving. (optional)
/// @param minFat The minimum amount of fat in grams the recipe must have per serving. (optional)
/// @param maxFat The maximum amount of fat in grams the recipe can have per serving. (optional)
/// @param minSugar The minimum amount of sugar in grams the recipe must have per serving. (optional)
/// @param maxSugar The maximum amount of sugar in grams the recipe can have per serving. (optional)
/// @param minFiber The minimum amount of fiber in grams the recipe must have per serving. (optional)
/// @param maxFiber The maximum amount of fiber in grams the recipe can have per serving. (optional)
/// @param minFolate The minimum amount of folate in micrograms the recipe must have per serving. (optional)
/// @param maxFolate The maximum amount of folate in micrograms the recipe can have per serving. (optional)
/// @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have per serving. (optional)
/// @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have per serving. (optional)
/// @param minIodine The minimum amount of iodine in micrograms the recipe must have per serving. (optional)
/// @param maxIodine The maximum amount of iodine in micrograms the recipe can have per serving. (optional)
/// @param minIron The minimum amount of iron in milligrams the recipe must have per serving. (optional)
/// @param maxIron The maximum amount of iron in milligrams the recipe can have per serving. (optional)
/// @param minZinc The minimum amount of zinc in milligrams the recipe must have per serving. (optional)
/// @param maxZinc The maximum amount of zinc in milligrams the recipe can have per serving. (optional)
/// @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have per serving. (optional)
/// @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have per serving. (optional)
/// @param minManganese The minimum amount of manganese in milligrams the recipe must have per serving. (optional)
/// @param maxManganese The maximum amount of manganese in milligrams the recipe can have per serving. (optional)
/// @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have per serving. (optional)
/// @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have per serving. (optional)
/// @param minPotassium The minimum amount of potassium in milligrams the recipe must have per serving. (optional)
/// @param maxPotassium The maximum amount of potassium in milligrams the recipe can have per serving. (optional)
/// @param minSodium The minimum amount of sodium in milligrams the recipe must have per serving. (optional)
/// @param maxSodium The maximum amount of sodium in milligrams the recipe can have per serving. (optional)
/// @param minSelenium The minimum amount of selenium in micrograms the recipe must have per serving. (optional)
/// @param maxSelenium The maximum amount of selenium in micrograms the recipe can have per serving. (optional)
/// @param minCopper The minimum amount of copper in milligrams the recipe must have per serving. (optional)
/// @param maxCopper The maximum amount of copper in milligrams the recipe can have per serving. (optional)
/// @param minCalcium The minimum amount of calcium in milligrams the recipe must have per serving. (optional)
/// @param maxCalcium The maximum amount of calcium in milligrams the recipe can have per serving. (optional)
/// @param minCholine The minimum amount of choline in milligrams the recipe must have per serving. (optional)
/// @param maxCholine The maximum amount of choline in milligrams the recipe can have per serving. (optional)
/// @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have per serving. (optional)
/// @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have per serving. (optional)
/// @param minFluoride The minimum amount of fluoride in milligrams the recipe must have per serving. (optional)
/// @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have per serving. (optional)
/// @param minAlcohol The minimum amount of alcohol in grams the recipe must have per serving. (optional)
/// @param maxAlcohol The maximum amount of alcohol in grams the recipe can have per serving. (optional)
/// @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have per serving. (optional)
/// @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have per serving. (optional)
/// @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have per serving. (optional)
/// @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have per serving. (optional)
/// @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have per serving. (optional)
/// @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have per serving. (optional)
/// @param minVitaminC The minimum amount of Vitamin C in milligrams the recipe must have per serving. (optional)
/// @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have per serving. (optional)
/// @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have per serving. (optional)
/// @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have per serving. (optional)
/// @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have per serving. (optional)
/// @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have per serving. (optional)
/// @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have per serving. (optional)
/// @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have per serving. (optional)
/// @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. (optional)
/// @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. (optional)
/// @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. (optional)
/// @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. (optional)
/// @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. (optional)
/// @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. (optional)
/// @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. (optional)
/// @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. (optional)
/// @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. (optional)
/// @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. (optional)
/// @param minVitaminB12 The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. (optional)
/// @param maxVitaminB12 The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. (optional)
/// @param sort The strategy to sort recipes by. See a full list of supported sorting options. (optional)
/// @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
/// @param offset The number of recipes to skip, between 0 and 900. (optional)
/// @param number The number of recipes, between 1 and 100. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAISearchRecipes200Response*
-(NSURLSessionTask*) searchRecipesWithQuery: (NSString*) query
    cuisines: (NSString*) cuisines
    excludeCuisines: (NSString*) excludeCuisines
    mealType: (NSString*) mealType
    diet: (NSString*) diet
    intolerances: (NSString*) intolerances
    equipment: (NSString*) equipment
    includeIngredients: (NSString*) includeIngredients
    excludeIngredients: (NSString*) excludeIngredients
    fillIngredients: (NSNumber*) fillIngredients
    addRecipeInformation: (NSNumber*) addRecipeInformation
    maxTime: (NSNumber*) maxTime
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    minSugar: (NSNumber*) minSugar
    maxSugar: (NSNumber*) maxSugar
    minFiber: (NSNumber*) minFiber
    maxFiber: (NSNumber*) maxFiber
    minFolate: (NSNumber*) minFolate
    maxFolate: (NSNumber*) maxFolate
    minFolicAcid: (NSNumber*) minFolicAcid
    maxFolicAcid: (NSNumber*) maxFolicAcid
    minIodine: (NSNumber*) minIodine
    maxIodine: (NSNumber*) maxIodine
    minIron: (NSNumber*) minIron
    maxIron: (NSNumber*) maxIron
    minZinc: (NSNumber*) minZinc
    maxZinc: (NSNumber*) maxZinc
    minMagnesium: (NSNumber*) minMagnesium
    maxMagnesium: (NSNumber*) maxMagnesium
    minManganese: (NSNumber*) minManganese
    maxManganese: (NSNumber*) maxManganese
    minPhosphorus: (NSNumber*) minPhosphorus
    maxPhosphorus: (NSNumber*) maxPhosphorus
    minPotassium: (NSNumber*) minPotassium
    maxPotassium: (NSNumber*) maxPotassium
    minSodium: (NSNumber*) minSodium
    maxSodium: (NSNumber*) maxSodium
    minSelenium: (NSNumber*) minSelenium
    maxSelenium: (NSNumber*) maxSelenium
    minCopper: (NSNumber*) minCopper
    maxCopper: (NSNumber*) maxCopper
    minCalcium: (NSNumber*) minCalcium
    maxCalcium: (NSNumber*) maxCalcium
    minCholine: (NSNumber*) minCholine
    maxCholine: (NSNumber*) maxCholine
    minCholesterol: (NSNumber*) minCholesterol
    maxCholesterol: (NSNumber*) maxCholesterol
    minFluoride: (NSNumber*) minFluoride
    maxFluoride: (NSNumber*) maxFluoride
    minAlcohol: (NSNumber*) minAlcohol
    maxAlcohol: (NSNumber*) maxAlcohol
    minCaffeine: (NSNumber*) minCaffeine
    maxCaffeine: (NSNumber*) maxCaffeine
    minSaturatedFat: (NSNumber*) minSaturatedFat
    maxSaturatedFat: (NSNumber*) maxSaturatedFat
    minVitaminA: (NSNumber*) minVitaminA
    maxVitaminA: (NSNumber*) maxVitaminA
    minVitaminC: (NSNumber*) minVitaminC
    maxVitaminC: (NSNumber*) maxVitaminC
    minVitaminD: (NSNumber*) minVitaminD
    maxVitaminD: (NSNumber*) maxVitaminD
    minVitaminE: (NSNumber*) minVitaminE
    maxVitaminE: (NSNumber*) maxVitaminE
    minVitaminK: (NSNumber*) minVitaminK
    maxVitaminK: (NSNumber*) maxVitaminK
    minVitaminB1: (NSNumber*) minVitaminB1
    maxVitaminB1: (NSNumber*) maxVitaminB1
    minVitaminB2: (NSNumber*) minVitaminB2
    maxVitaminB2: (NSNumber*) maxVitaminB2
    minVitaminB3: (NSNumber*) minVitaminB3
    maxVitaminB3: (NSNumber*) maxVitaminB3
    minVitaminB5: (NSNumber*) minVitaminB5
    maxVitaminB5: (NSNumber*) maxVitaminB5
    minVitaminB6: (NSNumber*) minVitaminB6
    maxVitaminB6: (NSNumber*) maxVitaminB6
    minVitaminB12: (NSNumber*) minVitaminB12
    maxVitaminB12: (NSNumber*) maxVitaminB12
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchRecipes200Response* output, NSError* error)) handler;


/// Search Restaurants
/// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
///
/// @param lat The latitude to search around.
/// @param lon The longitude to search around.
/// @param query The search query. (optional)
/// @param distance The maximum distance of the restaurant in miles around the given location. (optional)
/// @param budget The budget in USD for the meal. (optional)
/// @param minRating The minimum rating of the restaurants in range [0,5]. (optional)
/// @param cuisine The cuisine that the restaurants should support. (optional)
/// @param isOpen Whether the restaurants have to be open now. (optional)
/// @param page The page of the results. (optional)
/// @param sort The sort parameter, one of: cheapest, fastest, rating, distance or relevance. (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAISearchRestaurants200Response*
-(NSURLSessionTask*) searchRestaurantsWithLat: (NSNumber*) lat
    lon: (NSNumber*) lon
    query: (NSString*) query
    distance: (NSNumber*) distance
    budget: (NSNumber*) budget
    minRating: (NSNumber*) minRating
    cuisine: (NSString*) cuisine
    isOpen: (NSNumber*) isOpen
    page: (NSNumber*) page
    sort: (NSString*) sort
    completionHandler: (void (^)(OAISearchRestaurants200Response* output, NSError* error)) handler;



@end
