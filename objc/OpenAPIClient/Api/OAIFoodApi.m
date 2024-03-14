#import "OAIFoodApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIComputeNutrition200Response.h"
#import "OAIRetrieveRecipeInformation200Response.h"
#import "OAISearchRecipes200Response.h"
#import "OAISearchRestaurants200Response.h"


@interface OAIFoodApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIFoodApi

NSString* kOAIFoodApiErrorDomain = @"OAIFoodApiErrorDomain";
NSInteger kOAIFoodApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Compute Nutrition
/// Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
///  @param ingredients A comma-separated list of the ingredients of the recipe. 
///
///  @param servings The number of servings the ingredients make. Nutrition is computed per serving. (optional)
///
///  @param reduceOils If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. (optional)
///
///  @returns OAIComputeNutrition200Response*
///
-(NSURLSessionTask*) computeNutritionWithIngredients: (NSString*) ingredients
    servings: (NSNumber*) servings
    reduceOils: (NSNumber*) reduceOils
    completionHandler: (void (^)(OAIComputeNutrition200Response* output, NSError* error)) handler {
    // verify the required parameter 'ingredients' is set
    if (ingredients == nil) {
        NSParameterAssert(ingredients);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredients"] };
            NSError* error = [NSError errorWithDomain:kOAIFoodApiErrorDomain code:kOAIFoodApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/compute-nutrition"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ingredients != nil) {
        queryParams[@"ingredients"] = ingredients;
    }
    if (servings != nil) {
        queryParams[@"servings"] = servings;
    }
    if (reduceOils != nil) {
        queryParams[@"reduce-oils"] = [reduceOils isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIComputeNutrition200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIComputeNutrition200Response*)data, error);
                                }
                            }];
}

///
/// Retrieve Recipe Information
/// Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
///  @param _id The id of the recipe to retrieve. 
///
///  @param addWinePairing Whether to pair a wine to the recipe. (optional)
///
///  @returns OAIRetrieveRecipeInformation200Response*
///
-(NSURLSessionTask*) retrieveRecipeInformationWithId: (NSNumber*) _id
    addWinePairing: (NSNumber*) addWinePairing
    completionHandler: (void (^)(OAIRetrieveRecipeInformation200Response* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIFoodApiErrorDomain code:kOAIFoodApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retrieve-recipe"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        queryParams[@"id"] = _id;
    }
    if (addWinePairing != nil) {
        queryParams[@"add-wine-pairing"] = [addWinePairing isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIRetrieveRecipeInformation200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetrieveRecipeInformation200Response*)data, error);
                                }
                            }];
}

///
/// Search Recipes
/// Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
///  @param query The search query. (optional)
///
///  @param cuisines The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). (optional)
///
///  @param excludeCuisines The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). (optional)
///
///  @param mealType The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. (optional)
///
///  @param diet The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. (optional)
///
///  @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. (optional)
///
///  @param equipment The equipment required. Multiple values will be interpreted as 'OR'. (optional)
///
///  @param includeIngredients A comma-separated list of ingredients that should/must be used in the recipes. (optional)
///
///  @param excludeIngredients A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
///
///  @param fillIngredients Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
///
///  @param addRecipeInformation If set to true, you get more information about the recipes returned. (optional)
///
///  @param maxTime The maximum time in minutes it should take to prepare and cook the recipe. (optional)
///
///  @param minCalories The minimum amount of calories the recipe must have per serving. (optional)
///
///  @param maxCalories The maximum amount of calories the recipe can have per serving. (optional)
///
///  @param minCarbs The minimum amount of carbohydrates in grams the recipe must have per serving. (optional)
///
///  @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have per serving. (optional)
///
///  @param minProtein The minimum amount of protein in grams the recipe must have per serving. (optional)
///
///  @param maxProtein The maximum amount of protein in grams the recipe can have per serving. (optional)
///
///  @param minFat The minimum amount of fat in grams the recipe must have per serving. (optional)
///
///  @param maxFat The maximum amount of fat in grams the recipe can have per serving. (optional)
///
///  @param minSugar The minimum amount of sugar in grams the recipe must have per serving. (optional)
///
///  @param maxSugar The maximum amount of sugar in grams the recipe can have per serving. (optional)
///
///  @param minFiber The minimum amount of fiber in grams the recipe must have per serving. (optional)
///
///  @param maxFiber The maximum amount of fiber in grams the recipe can have per serving. (optional)
///
///  @param minFolate The minimum amount of folate in micrograms the recipe must have per serving. (optional)
///
///  @param maxFolate The maximum amount of folate in micrograms the recipe can have per serving. (optional)
///
///  @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have per serving. (optional)
///
///  @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have per serving. (optional)
///
///  @param minIodine The minimum amount of iodine in micrograms the recipe must have per serving. (optional)
///
///  @param maxIodine The maximum amount of iodine in micrograms the recipe can have per serving. (optional)
///
///  @param minIron The minimum amount of iron in milligrams the recipe must have per serving. (optional)
///
///  @param maxIron The maximum amount of iron in milligrams the recipe can have per serving. (optional)
///
///  @param minZinc The minimum amount of zinc in milligrams the recipe must have per serving. (optional)
///
///  @param maxZinc The maximum amount of zinc in milligrams the recipe can have per serving. (optional)
///
///  @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have per serving. (optional)
///
///  @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have per serving. (optional)
///
///  @param minManganese The minimum amount of manganese in milligrams the recipe must have per serving. (optional)
///
///  @param maxManganese The maximum amount of manganese in milligrams the recipe can have per serving. (optional)
///
///  @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have per serving. (optional)
///
///  @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have per serving. (optional)
///
///  @param minPotassium The minimum amount of potassium in milligrams the recipe must have per serving. (optional)
///
///  @param maxPotassium The maximum amount of potassium in milligrams the recipe can have per serving. (optional)
///
///  @param minSodium The minimum amount of sodium in milligrams the recipe must have per serving. (optional)
///
///  @param maxSodium The maximum amount of sodium in milligrams the recipe can have per serving. (optional)
///
///  @param minSelenium The minimum amount of selenium in micrograms the recipe must have per serving. (optional)
///
///  @param maxSelenium The maximum amount of selenium in micrograms the recipe can have per serving. (optional)
///
///  @param minCopper The minimum amount of copper in milligrams the recipe must have per serving. (optional)
///
///  @param maxCopper The maximum amount of copper in milligrams the recipe can have per serving. (optional)
///
///  @param minCalcium The minimum amount of calcium in milligrams the recipe must have per serving. (optional)
///
///  @param maxCalcium The maximum amount of calcium in milligrams the recipe can have per serving. (optional)
///
///  @param minCholine The minimum amount of choline in milligrams the recipe must have per serving. (optional)
///
///  @param maxCholine The maximum amount of choline in milligrams the recipe can have per serving. (optional)
///
///  @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have per serving. (optional)
///
///  @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have per serving. (optional)
///
///  @param minFluoride The minimum amount of fluoride in milligrams the recipe must have per serving. (optional)
///
///  @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have per serving. (optional)
///
///  @param minAlcohol The minimum amount of alcohol in grams the recipe must have per serving. (optional)
///
///  @param maxAlcohol The maximum amount of alcohol in grams the recipe can have per serving. (optional)
///
///  @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have per serving. (optional)
///
///  @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have per serving. (optional)
///
///  @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have per serving. (optional)
///
///  @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have per serving. (optional)
///
///  @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have per serving. (optional)
///
///  @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have per serving. (optional)
///
///  @param minVitaminC The minimum amount of Vitamin C in milligrams the recipe must have per serving. (optional)
///
///  @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have per serving. (optional)
///
///  @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have per serving. (optional)
///
///  @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have per serving. (optional)
///
///  @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have per serving. (optional)
///
///  @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have per serving. (optional)
///
///  @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have per serving. (optional)
///
///  @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have per serving. (optional)
///
///  @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. (optional)
///
///  @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. (optional)
///
///  @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. (optional)
///
///  @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. (optional)
///
///  @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. (optional)
///
///  @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. (optional)
///
///  @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. (optional)
///
///  @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. (optional)
///
///  @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. (optional)
///
///  @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. (optional)
///
///  @param minVitaminB12 The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. (optional)
///
///  @param maxVitaminB12 The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. (optional)
///
///  @param sort The strategy to sort recipes by. See a full list of supported sorting options. (optional)
///
///  @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
///
///  @param offset The number of recipes to skip, between 0 and 900. (optional)
///
///  @param number The number of recipes, between 1 and 100. (optional)
///
///  @returns OAISearchRecipes200Response*
///
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
    completionHandler: (void (^)(OAISearchRecipes200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search-recipes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (cuisines != nil) {
        queryParams[@"cuisines"] = cuisines;
    }
    if (excludeCuisines != nil) {
        queryParams[@"exclude-cuisines"] = excludeCuisines;
    }
    if (mealType != nil) {
        queryParams[@"meal-type"] = mealType;
    }
    if (diet != nil) {
        queryParams[@"diet"] = diet;
    }
    if (intolerances != nil) {
        queryParams[@"intolerances"] = intolerances;
    }
    if (equipment != nil) {
        queryParams[@"equipment"] = equipment;
    }
    if (includeIngredients != nil) {
        queryParams[@"include-ingredients"] = includeIngredients;
    }
    if (excludeIngredients != nil) {
        queryParams[@"exclude-ingredients"] = excludeIngredients;
    }
    if (fillIngredients != nil) {
        queryParams[@"fill-ingredients"] = [fillIngredients isEqual:@(YES)] ? @"true" : @"false";
    }
    if (addRecipeInformation != nil) {
        queryParams[@"add-recipe-information"] = [addRecipeInformation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (maxTime != nil) {
        queryParams[@"max-time"] = maxTime;
    }
    if (minCalories != nil) {
        queryParams[@"min-calories"] = minCalories;
    }
    if (maxCalories != nil) {
        queryParams[@"max-calories"] = maxCalories;
    }
    if (minCarbs != nil) {
        queryParams[@"min-carbs"] = minCarbs;
    }
    if (maxCarbs != nil) {
        queryParams[@"max-carbs"] = maxCarbs;
    }
    if (minProtein != nil) {
        queryParams[@"min-protein"] = minProtein;
    }
    if (maxProtein != nil) {
        queryParams[@"max-protein"] = maxProtein;
    }
    if (minFat != nil) {
        queryParams[@"min-fat"] = minFat;
    }
    if (maxFat != nil) {
        queryParams[@"max-fat"] = maxFat;
    }
    if (minSugar != nil) {
        queryParams[@"min-sugar"] = minSugar;
    }
    if (maxSugar != nil) {
        queryParams[@"max-sugar"] = maxSugar;
    }
    if (minFiber != nil) {
        queryParams[@"min-fiber"] = minFiber;
    }
    if (maxFiber != nil) {
        queryParams[@"max-fiber"] = maxFiber;
    }
    if (minFolate != nil) {
        queryParams[@"min-folate"] = minFolate;
    }
    if (maxFolate != nil) {
        queryParams[@"max-folate"] = maxFolate;
    }
    if (minFolicAcid != nil) {
        queryParams[@"min-folic-acid"] = minFolicAcid;
    }
    if (maxFolicAcid != nil) {
        queryParams[@"max-folic-acid"] = maxFolicAcid;
    }
    if (minIodine != nil) {
        queryParams[@"min-iodine"] = minIodine;
    }
    if (maxIodine != nil) {
        queryParams[@"max-iodine"] = maxIodine;
    }
    if (minIron != nil) {
        queryParams[@"min-iron"] = minIron;
    }
    if (maxIron != nil) {
        queryParams[@"max-iron"] = maxIron;
    }
    if (minZinc != nil) {
        queryParams[@"min-zinc"] = minZinc;
    }
    if (maxZinc != nil) {
        queryParams[@"max-zinc"] = maxZinc;
    }
    if (minMagnesium != nil) {
        queryParams[@"min-magnesium"] = minMagnesium;
    }
    if (maxMagnesium != nil) {
        queryParams[@"max-magnesium"] = maxMagnesium;
    }
    if (minManganese != nil) {
        queryParams[@"min-manganese"] = minManganese;
    }
    if (maxManganese != nil) {
        queryParams[@"max-manganese"] = maxManganese;
    }
    if (minPhosphorus != nil) {
        queryParams[@"min-phosphorus"] = minPhosphorus;
    }
    if (maxPhosphorus != nil) {
        queryParams[@"max-phosphorus"] = maxPhosphorus;
    }
    if (minPotassium != nil) {
        queryParams[@"min-potassium"] = minPotassium;
    }
    if (maxPotassium != nil) {
        queryParams[@"max-potassium"] = maxPotassium;
    }
    if (minSodium != nil) {
        queryParams[@"min-sodium"] = minSodium;
    }
    if (maxSodium != nil) {
        queryParams[@"max-sodium"] = maxSodium;
    }
    if (minSelenium != nil) {
        queryParams[@"min-selenium"] = minSelenium;
    }
    if (maxSelenium != nil) {
        queryParams[@"max-selenium"] = maxSelenium;
    }
    if (minCopper != nil) {
        queryParams[@"min-copper"] = minCopper;
    }
    if (maxCopper != nil) {
        queryParams[@"max-copper"] = maxCopper;
    }
    if (minCalcium != nil) {
        queryParams[@"min-calcium"] = minCalcium;
    }
    if (maxCalcium != nil) {
        queryParams[@"max-calcium"] = maxCalcium;
    }
    if (minCholine != nil) {
        queryParams[@"min-choline"] = minCholine;
    }
    if (maxCholine != nil) {
        queryParams[@"max-choline"] = maxCholine;
    }
    if (minCholesterol != nil) {
        queryParams[@"min-cholesterol"] = minCholesterol;
    }
    if (maxCholesterol != nil) {
        queryParams[@"max-cholesterol"] = maxCholesterol;
    }
    if (minFluoride != nil) {
        queryParams[@"min-fluoride"] = minFluoride;
    }
    if (maxFluoride != nil) {
        queryParams[@"max-fluoride"] = maxFluoride;
    }
    if (minAlcohol != nil) {
        queryParams[@"min-alcohol"] = minAlcohol;
    }
    if (maxAlcohol != nil) {
        queryParams[@"max-alcohol"] = maxAlcohol;
    }
    if (minCaffeine != nil) {
        queryParams[@"min-caffeine"] = minCaffeine;
    }
    if (maxCaffeine != nil) {
        queryParams[@"max-caffeine"] = maxCaffeine;
    }
    if (minSaturatedFat != nil) {
        queryParams[@"min-saturated-fat"] = minSaturatedFat;
    }
    if (maxSaturatedFat != nil) {
        queryParams[@"max-saturated-fat"] = maxSaturatedFat;
    }
    if (minVitaminA != nil) {
        queryParams[@"min-vitamin-a"] = minVitaminA;
    }
    if (maxVitaminA != nil) {
        queryParams[@"max-vitamin-a"] = maxVitaminA;
    }
    if (minVitaminC != nil) {
        queryParams[@"min-vitamin-c"] = minVitaminC;
    }
    if (maxVitaminC != nil) {
        queryParams[@"max-vitamin-c"] = maxVitaminC;
    }
    if (minVitaminD != nil) {
        queryParams[@"min-vitamin-d"] = minVitaminD;
    }
    if (maxVitaminD != nil) {
        queryParams[@"max-vitamin-d"] = maxVitaminD;
    }
    if (minVitaminE != nil) {
        queryParams[@"min-vitamin-e"] = minVitaminE;
    }
    if (maxVitaminE != nil) {
        queryParams[@"max-vitamin-e"] = maxVitaminE;
    }
    if (minVitaminK != nil) {
        queryParams[@"min-vitamin-k"] = minVitaminK;
    }
    if (maxVitaminK != nil) {
        queryParams[@"max-vitamin-k"] = maxVitaminK;
    }
    if (minVitaminB1 != nil) {
        queryParams[@"min-vitamin-b1"] = minVitaminB1;
    }
    if (maxVitaminB1 != nil) {
        queryParams[@"max-vitamin-b1"] = maxVitaminB1;
    }
    if (minVitaminB2 != nil) {
        queryParams[@"min-vitamin-b2"] = minVitaminB2;
    }
    if (maxVitaminB2 != nil) {
        queryParams[@"max-vitamin-b2"] = maxVitaminB2;
    }
    if (minVitaminB3 != nil) {
        queryParams[@"min-vitamin-b3"] = minVitaminB3;
    }
    if (maxVitaminB3 != nil) {
        queryParams[@"max-vitamin-b3"] = maxVitaminB3;
    }
    if (minVitaminB5 != nil) {
        queryParams[@"min-vitamin-b5"] = minVitaminB5;
    }
    if (maxVitaminB5 != nil) {
        queryParams[@"max-vitamin-b5"] = maxVitaminB5;
    }
    if (minVitaminB6 != nil) {
        queryParams[@"min-vitamin-b6"] = minVitaminB6;
    }
    if (maxVitaminB6 != nil) {
        queryParams[@"max-vitamin-b6"] = maxVitaminB6;
    }
    if (minVitaminB12 != nil) {
        queryParams[@"min-vitamin-b12"] = minVitaminB12;
    }
    if (maxVitaminB12 != nil) {
        queryParams[@"max-vitamin-b12"] = maxVitaminB12;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (sortDirection != nil) {
        queryParams[@"sort-direction"] = sortDirection;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISearchRecipes200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchRecipes200Response*)data, error);
                                }
                            }];
}

///
/// Search Restaurants
/// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
///  @param lat The latitude to search around. 
///
///  @param lon The longitude to search around. 
///
///  @param query The search query. (optional)
///
///  @param distance The maximum distance of the restaurant in miles around the given location. (optional)
///
///  @param budget The budget in USD for the meal. (optional)
///
///  @param minRating The minimum rating of the restaurants in range [0,5]. (optional)
///
///  @param cuisine The cuisine that the restaurants should support. (optional)
///
///  @param isOpen Whether the restaurants have to be open now. (optional)
///
///  @param page The page of the results. (optional)
///
///  @param sort The sort parameter, one of: cheapest, fastest, rating, distance or relevance. (optional)
///
///  @returns OAISearchRestaurants200Response*
///
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
    completionHandler: (void (^)(OAISearchRestaurants200Response* output, NSError* error)) handler {
    // verify the required parameter 'lat' is set
    if (lat == nil) {
        NSParameterAssert(lat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lat"] };
            NSError* error = [NSError errorWithDomain:kOAIFoodApiErrorDomain code:kOAIFoodApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'lon' is set
    if (lon == nil) {
        NSParameterAssert(lon);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lon"] };
            NSError* error = [NSError errorWithDomain:kOAIFoodApiErrorDomain code:kOAIFoodApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/search-restaurants"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (lat != nil) {
        queryParams[@"lat"] = lat;
    }
    if (lon != nil) {
        queryParams[@"lon"] = lon;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (budget != nil) {
        queryParams[@"budget"] = budget;
    }
    if (minRating != nil) {
        queryParams[@"min-rating"] = minRating;
    }
    if (cuisine != nil) {
        queryParams[@"cuisine"] = cuisine;
    }
    if (isOpen != nil) {
        queryParams[@"is-open"] = [isOpen isEqual:@(YES)] ? @"true" : @"false";
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey", @"headerApiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISearchRestaurants200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchRestaurants200Response*)data, error);
                                }
                            }];
}



@end
