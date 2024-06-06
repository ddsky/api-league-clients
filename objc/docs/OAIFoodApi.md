# OAIFoodApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**computeNutrition**](OAIFoodApi.md#computenutrition) | **GET** /compute-nutrition | Compute Nutrition
[**retrieveRecipeInformation**](OAIFoodApi.md#retrieverecipeinformation) | **GET** /retrieve-recipe | Retrieve Recipe Information
[**searchRecipes**](OAIFoodApi.md#searchrecipes) | **GET** /search-recipes | Search Recipes
[**searchRestaurants**](OAIFoodApi.md#searchrestaurants) | **GET** /search-restaurants | Search Restaurants


# **computeNutrition**
```objc
-(NSURLSessionTask*) computeNutritionWithIngredients: (NSString*) ingredients
    servings: (NSNumber*) servings
    reduceOils: (NSNumber*) reduceOils
        completionHandler: (void (^)(OAIComputeNutrition200Response* output, NSError* error)) handler;
```

Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* ingredients = 1 cup apples,3oz milk,35g butter; // A comma-separated list of the ingredients of the recipe.
NSNumber* servings = 1; // The number of servings the ingredients make. Nutrition is computed per serving. (optional)
NSNumber* reduceOils = true; // If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. (optional)

OAIFoodApi*apiInstance = [[OAIFoodApi alloc] init];

// Compute Nutrition
[apiInstance computeNutritionWithIngredients:ingredients
              servings:servings
              reduceOils:reduceOils
          completionHandler: ^(OAIComputeNutrition200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFoodApi->computeNutrition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **NSString***| A comma-separated list of the ingredients of the recipe. | 
 **servings** | **NSNumber***| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] 
 **reduceOils** | **NSNumber***| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] 

### Return type

[**OAIComputeNutrition200Response***](OAIComputeNutrition200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRecipeInformation**
```objc
-(NSURLSessionTask*) retrieveRecipeInformationWithId: (NSNumber*) _id
    addWinePairing: (NSNumber*) addWinePairing
        completionHandler: (void (^)(OAIRetrieveRecipeInformation200Response* output, NSError* error)) handler;
```

Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* _id = 74987; // The id of the recipe to retrieve.
NSNumber* addWinePairing = true; // Whether to pair a wine to the recipe. (optional)

OAIFoodApi*apiInstance = [[OAIFoodApi alloc] init];

// Retrieve Recipe Information
[apiInstance retrieveRecipeInformationWithId:_id
              addWinePairing:addWinePairing
          completionHandler: ^(OAIRetrieveRecipeInformation200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFoodApi->retrieveRecipeInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the recipe to retrieve. | 
 **addWinePairing** | **NSNumber***| Whether to pair a wine to the recipe. | [optional] 

### Return type

[**OAIRetrieveRecipeInformation200Response***](OAIRetrieveRecipeInformation200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipes**
```objc
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
    minServings: (NSNumber*) minServings
    maxServings: (NSNumber*) maxServings
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
```

Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* query = pasta with mushrooms but without nuts; // The search query. (optional)
NSString* cuisines = mexican; // The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). (optional)
NSString* excludeCuisines = indian,japanese; // The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). (optional)
NSString* mealType = dessert; // The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. (optional)
NSString* diet = paleo; // The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. (optional)
NSString* intolerances = gluten,dairy,shellfish; // A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. (optional)
NSString* equipment = blender,frying pan,bowl; // The equipment required. Multiple values will be interpreted as 'OR'. (optional)
NSString* includeIngredients = tomato,cheese; // A comma-separated list of ingredients that should/must be used in the recipes. (optional)
NSString* excludeIngredients = olives,capers; // A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
NSNumber* fillIngredients = true; // Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
NSNumber* addRecipeInformation = true; // If set to true, you get more information about the recipes returned. (optional)
NSNumber* maxTime = 45; // The maximum time in minutes it should take to prepare and cook the recipe. (optional)
NSNumber* minServings = 1; // The minimum amount of servings the recipe is for. (optional)
NSNumber* maxServings = 8; // The maximum amount of servings the recipe is for. (optional)
NSNumber* minCalories = 100; // The minimum amount of calories the recipe must have per serving. (optional)
NSNumber* maxCalories = 655; // The maximum amount of calories the recipe can have per serving. (optional)
NSNumber* minCarbs = 10.1; // The minimum amount of carbohydrates in grams the recipe must have per serving. (optional)
NSNumber* maxCarbs = 25.5; // The maximum amount of carbohydrates in grams the recipe can have per serving. (optional)
NSNumber* minProtein = 10.1; // The minimum amount of protein in grams the recipe must have per serving. (optional)
NSNumber* maxProtein = 25.5; // The maximum amount of protein in grams the recipe can have per serving. (optional)
NSNumber* minFat = 10.1; // The minimum amount of fat in grams the recipe must have per serving. (optional)
NSNumber* maxFat = 25.5; // The maximum amount of fat in grams the recipe can have per serving. (optional)
NSNumber* minSugar = 10.1; // The minimum amount of sugar in grams the recipe must have per serving. (optional)
NSNumber* maxSugar = 25.5; // The maximum amount of sugar in grams the recipe can have per serving. (optional)
NSNumber* minFiber = 10.1; // The minimum amount of fiber in grams the recipe must have per serving. (optional)
NSNumber* maxFiber = 25.5; // The maximum amount of fiber in grams the recipe can have per serving. (optional)
NSNumber* minFolate = 30.4; // The minimum amount of folate in micrograms the recipe must have per serving. (optional)
NSNumber* maxFolate = 80.9; // The maximum amount of folate in micrograms the recipe can have per serving. (optional)
NSNumber* minFolicAcid = 30.4; // The minimum amount of folic acid in micrograms the recipe must have per serving. (optional)
NSNumber* maxFolicAcid = 80.9; // The maximum amount of folic acid in micrograms the recipe can have per serving. (optional)
NSNumber* minIodine = 30.4; // The minimum amount of iodine in micrograms the recipe must have per serving. (optional)
NSNumber* maxIodine = 80.9; // The maximum amount of iodine in micrograms the recipe can have per serving. (optional)
NSNumber* minIron = 30.4; // The minimum amount of iron in milligrams the recipe must have per serving. (optional)
NSNumber* maxIron = 80.9; // The maximum amount of iron in milligrams the recipe can have per serving. (optional)
NSNumber* minZinc = 30.4; // The minimum amount of zinc in milligrams the recipe must have per serving. (optional)
NSNumber* maxZinc = 80.9; // The maximum amount of zinc in milligrams the recipe can have per serving. (optional)
NSNumber* minMagnesium = 30.4; // The minimum amount of magnesium in milligrams the recipe must have per serving. (optional)
NSNumber* maxMagnesium = 80.9; // The maximum amount of magnesium in milligrams the recipe can have per serving. (optional)
NSNumber* minManganese = 30.4; // The minimum amount of manganese in milligrams the recipe must have per serving. (optional)
NSNumber* maxManganese = 80.9; // The maximum amount of manganese in milligrams the recipe can have per serving. (optional)
NSNumber* minPhosphorus = 30.4; // The minimum amount of phosphorus in milligrams the recipe must have per serving. (optional)
NSNumber* maxPhosphorus = 80.9; // The maximum amount of phosphorus in milligrams the recipe can have per serving. (optional)
NSNumber* minPotassium = 30.4; // The minimum amount of potassium in milligrams the recipe must have per serving. (optional)
NSNumber* maxPotassium = 80.9; // The maximum amount of potassium in milligrams the recipe can have per serving. (optional)
NSNumber* minSodium = 30.4; // The minimum amount of sodium in milligrams the recipe must have per serving. (optional)
NSNumber* maxSodium = 80.9; // The maximum amount of sodium in milligrams the recipe can have per serving. (optional)
NSNumber* minSelenium = 30.4; // The minimum amount of selenium in micrograms the recipe must have per serving. (optional)
NSNumber* maxSelenium = 80.9; // The maximum amount of selenium in micrograms the recipe can have per serving. (optional)
NSNumber* minCopper = 30.4; // The minimum amount of copper in milligrams the recipe must have per serving. (optional)
NSNumber* maxCopper = 80.9; // The maximum amount of copper in milligrams the recipe can have per serving. (optional)
NSNumber* minCalcium = 30.4; // The minimum amount of calcium in milligrams the recipe must have per serving. (optional)
NSNumber* maxCalcium = 80.9; // The maximum amount of calcium in milligrams the recipe can have per serving. (optional)
NSNumber* minCholine = 30.4; // The minimum amount of choline in milligrams the recipe must have per serving. (optional)
NSNumber* maxCholine = 80.9; // The maximum amount of choline in milligrams the recipe can have per serving. (optional)
NSNumber* minCholesterol = 30.4; // The minimum amount of cholesterol in milligrams the recipe must have per serving. (optional)
NSNumber* maxCholesterol = 80.9; // The maximum amount of cholesterol in milligrams the recipe can have per serving. (optional)
NSNumber* minFluoride = 30.4; // The minimum amount of fluoride in milligrams the recipe must have per serving. (optional)
NSNumber* maxFluoride = 80.9; // The maximum amount of fluoride in milligrams the recipe can have per serving. (optional)
NSNumber* minAlcohol = 10.1; // The minimum amount of alcohol in grams the recipe must have per serving. (optional)
NSNumber* maxAlcohol = 25.5; // The maximum amount of alcohol in grams the recipe can have per serving. (optional)
NSNumber* minCaffeine = 30.4; // The minimum amount of caffeine in milligrams the recipe must have per serving. (optional)
NSNumber* maxCaffeine = 80.9; // The maximum amount of caffeine in milligrams the recipe can have per serving. (optional)
NSNumber* minSaturatedFat = 30.4; // The minimum amount of saturated fat in grams the recipe must have per serving. (optional)
NSNumber* maxSaturatedFat = 80.9; // The maximum amount of saturated fat in grams the recipe can have per serving. (optional)
NSNumber* minVitaminA = 30.4; // The minimum amount of Vitamin A in IU the recipe must have per serving. (optional)
NSNumber* maxVitaminA = 80.9; // The maximum amount of Vitamin A in IU the recipe can have per serving. (optional)
NSNumber* minVitaminC = 30.4; // The minimum amount of Vitamin C in milligrams the recipe must have per serving. (optional)
NSNumber* maxVitaminC = 80.9; // The maximum amount of Vitamin C in milligrams the recipe can have per serving. (optional)
NSNumber* minVitaminD = 30.4; // The minimum amount of Vitamin D in micrograms the recipe must have per serving. (optional)
NSNumber* maxVitaminD = 80.9; // The maximum amount of Vitamin D in micrograms the recipe can have per serving. (optional)
NSNumber* minVitaminE = 30.4; // The minimum amount of Vitamin E in milligrams the recipe must have per serving. (optional)
NSNumber* maxVitaminE = 80.9; // The maximum amount of Vitamin E in milligrams the recipe can have per serving. (optional)
NSNumber* minVitaminK = 30.4; // The minimum amount of Vitamin K in micrograms the recipe must have per serving. (optional)
NSNumber* maxVitaminK = 80.9; // The maximum amount of Vitamin K in micrograms the recipe can have per serving. (optional)
NSNumber* minVitaminB1 = 30.4; // The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. (optional)
NSNumber* maxVitaminB1 = 80.9; // The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. (optional)
NSNumber* minVitaminB2 = 30.4; // The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. (optional)
NSNumber* maxVitaminB2 = 80.9; // The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. (optional)
NSNumber* minVitaminB3 = 30.4; // The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. (optional)
NSNumber* maxVitaminB3 = 80.9; // The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. (optional)
NSNumber* minVitaminB5 = 30.4; // The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. (optional)
NSNumber* maxVitaminB5 = 80.9; // The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. (optional)
NSNumber* minVitaminB6 = 30.4; // The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. (optional)
NSNumber* maxVitaminB6 = 80.9; // The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. (optional)
NSNumber* minVitaminB12 = 30.4; // The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. (optional)
NSNumber* maxVitaminB12 = 80.9; // The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. (optional)
NSString* sort = meta-score; // The strategy to sort recipes by. See a full list of supported sorting options. (optional)
NSString* sortDirection = ASC; // Whether to sort ascending or descending (ASC or DESC). (optional)
NSNumber* offset = 0; // The number of recipes to skip, between 0 and 900. (optional)
NSNumber* number = 3; // The number of recipes, between 1 and 100. (optional)

OAIFoodApi*apiInstance = [[OAIFoodApi alloc] init];

// Search Recipes
[apiInstance searchRecipesWithQuery:query
              cuisines:cuisines
              excludeCuisines:excludeCuisines
              mealType:mealType
              diet:diet
              intolerances:intolerances
              equipment:equipment
              includeIngredients:includeIngredients
              excludeIngredients:excludeIngredients
              fillIngredients:fillIngredients
              addRecipeInformation:addRecipeInformation
              maxTime:maxTime
              minServings:minServings
              maxServings:maxServings
              minCalories:minCalories
              maxCalories:maxCalories
              minCarbs:minCarbs
              maxCarbs:maxCarbs
              minProtein:minProtein
              maxProtein:maxProtein
              minFat:minFat
              maxFat:maxFat
              minSugar:minSugar
              maxSugar:maxSugar
              minFiber:minFiber
              maxFiber:maxFiber
              minFolate:minFolate
              maxFolate:maxFolate
              minFolicAcid:minFolicAcid
              maxFolicAcid:maxFolicAcid
              minIodine:minIodine
              maxIodine:maxIodine
              minIron:minIron
              maxIron:maxIron
              minZinc:minZinc
              maxZinc:maxZinc
              minMagnesium:minMagnesium
              maxMagnesium:maxMagnesium
              minManganese:minManganese
              maxManganese:maxManganese
              minPhosphorus:minPhosphorus
              maxPhosphorus:maxPhosphorus
              minPotassium:minPotassium
              maxPotassium:maxPotassium
              minSodium:minSodium
              maxSodium:maxSodium
              minSelenium:minSelenium
              maxSelenium:maxSelenium
              minCopper:minCopper
              maxCopper:maxCopper
              minCalcium:minCalcium
              maxCalcium:maxCalcium
              minCholine:minCholine
              maxCholine:maxCholine
              minCholesterol:minCholesterol
              maxCholesterol:maxCholesterol
              minFluoride:minFluoride
              maxFluoride:maxFluoride
              minAlcohol:minAlcohol
              maxAlcohol:maxAlcohol
              minCaffeine:minCaffeine
              maxCaffeine:maxCaffeine
              minSaturatedFat:minSaturatedFat
              maxSaturatedFat:maxSaturatedFat
              minVitaminA:minVitaminA
              maxVitaminA:maxVitaminA
              minVitaminC:minVitaminC
              maxVitaminC:maxVitaminC
              minVitaminD:minVitaminD
              maxVitaminD:maxVitaminD
              minVitaminE:minVitaminE
              maxVitaminE:maxVitaminE
              minVitaminK:minVitaminK
              maxVitaminK:maxVitaminK
              minVitaminB1:minVitaminB1
              maxVitaminB1:maxVitaminB1
              minVitaminB2:minVitaminB2
              maxVitaminB2:maxVitaminB2
              minVitaminB3:minVitaminB3
              maxVitaminB3:maxVitaminB3
              minVitaminB5:minVitaminB5
              maxVitaminB5:maxVitaminB5
              minVitaminB6:minVitaminB6
              maxVitaminB6:maxVitaminB6
              minVitaminB12:minVitaminB12
              maxVitaminB12:maxVitaminB12
              sort:sort
              sortDirection:sortDirection
              offset:offset
              number:number
          completionHandler: ^(OAISearchRecipes200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFoodApi->searchRecipes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | [optional] 
 **cuisines** | **NSString***| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). | [optional] 
 **excludeCuisines** | **NSString***| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). | [optional] 
 **mealType** | **NSString***| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] 
 **diet** | **NSString***| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] 
 **intolerances** | **NSString***| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] 
 **equipment** | **NSString***| The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] 
 **includeIngredients** | **NSString***| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **excludeIngredients** | **NSString***| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **fillIngredients** | **NSNumber***| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **addRecipeInformation** | **NSNumber***| If set to true, you get more information about the recipes returned. | [optional] 
 **maxTime** | **NSNumber***| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **minServings** | **NSNumber***| The minimum amount of servings the recipe is for. | [optional] 
 **maxServings** | **NSNumber***| The maximum amount of servings the recipe is for. | [optional] 
 **minCalories** | **NSNumber***| The minimum amount of calories the recipe must have per serving. | [optional] 
 **maxCalories** | **NSNumber***| The maximum amount of calories the recipe can have per serving. | [optional] 
 **minCarbs** | **NSNumber***| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] 
 **maxCarbs** | **NSNumber***| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] 
 **minProtein** | **NSNumber***| The minimum amount of protein in grams the recipe must have per serving. | [optional] 
 **maxProtein** | **NSNumber***| The maximum amount of protein in grams the recipe can have per serving. | [optional] 
 **minFat** | **NSNumber***| The minimum amount of fat in grams the recipe must have per serving. | [optional] 
 **maxFat** | **NSNumber***| The maximum amount of fat in grams the recipe can have per serving. | [optional] 
 **minSugar** | **NSNumber***| The minimum amount of sugar in grams the recipe must have per serving. | [optional] 
 **maxSugar** | **NSNumber***| The maximum amount of sugar in grams the recipe can have per serving. | [optional] 
 **minFiber** | **NSNumber***| The minimum amount of fiber in grams the recipe must have per serving. | [optional] 
 **maxFiber** | **NSNumber***| The maximum amount of fiber in grams the recipe can have per serving. | [optional] 
 **minFolate** | **NSNumber***| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] 
 **maxFolate** | **NSNumber***| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] 
 **minFolicAcid** | **NSNumber***| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] 
 **maxFolicAcid** | **NSNumber***| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] 
 **minIodine** | **NSNumber***| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] 
 **maxIodine** | **NSNumber***| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] 
 **minIron** | **NSNumber***| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] 
 **maxIron** | **NSNumber***| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] 
 **minZinc** | **NSNumber***| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] 
 **maxZinc** | **NSNumber***| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] 
 **minMagnesium** | **NSNumber***| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] 
 **maxMagnesium** | **NSNumber***| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] 
 **minManganese** | **NSNumber***| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] 
 **maxManganese** | **NSNumber***| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] 
 **minPhosphorus** | **NSNumber***| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] 
 **maxPhosphorus** | **NSNumber***| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] 
 **minPotassium** | **NSNumber***| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] 
 **maxPotassium** | **NSNumber***| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] 
 **minSodium** | **NSNumber***| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] 
 **maxSodium** | **NSNumber***| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] 
 **minSelenium** | **NSNumber***| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] 
 **maxSelenium** | **NSNumber***| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] 
 **minCopper** | **NSNumber***| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] 
 **maxCopper** | **NSNumber***| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] 
 **minCalcium** | **NSNumber***| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] 
 **maxCalcium** | **NSNumber***| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] 
 **minCholine** | **NSNumber***| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] 
 **maxCholine** | **NSNumber***| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] 
 **minCholesterol** | **NSNumber***| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] 
 **maxCholesterol** | **NSNumber***| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] 
 **minFluoride** | **NSNumber***| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] 
 **maxFluoride** | **NSNumber***| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] 
 **minAlcohol** | **NSNumber***| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] 
 **maxAlcohol** | **NSNumber***| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] 
 **minCaffeine** | **NSNumber***| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] 
 **maxCaffeine** | **NSNumber***| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] 
 **minSaturatedFat** | **NSNumber***| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] 
 **maxSaturatedFat** | **NSNumber***| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] 
 **minVitaminA** | **NSNumber***| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] 
 **maxVitaminA** | **NSNumber***| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] 
 **minVitaminC** | **NSNumber***| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminC** | **NSNumber***| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] 
 **minVitaminD** | **NSNumber***| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] 
 **maxVitaminD** | **NSNumber***| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] 
 **minVitaminE** | **NSNumber***| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminE** | **NSNumber***| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] 
 **minVitaminK** | **NSNumber***| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] 
 **maxVitaminK** | **NSNumber***| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] 
 **minVitaminB1** | **NSNumber***| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB1** | **NSNumber***| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB2** | **NSNumber***| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB2** | **NSNumber***| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB3** | **NSNumber***| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB3** | **NSNumber***| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB5** | **NSNumber***| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB5** | **NSNumber***| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB6** | **NSNumber***| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB6** | **NSNumber***| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB12** | **NSNumber***| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB12** | **NSNumber***| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] 
 **sort** | **NSString***| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **NSString***| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **NSNumber***| The number of recipes to skip, between 0 and 900. | [optional] 
 **number** | **NSNumber***| The number of recipes, between 1 and 100. | [optional] 

### Return type

[**OAISearchRecipes200Response***](OAISearchRecipes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRestaurants**
```objc
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
```

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* lat = 32.715736; // The latitude to search around.
NSNumber* lon = -117.161087; // The longitude to search around.
NSString* query = burger; // The search query. (optional)
NSNumber* distance = 5; // The maximum distance of the restaurant in miles around the given location. (optional)
NSNumber* budget = 25; // The budget in USD for the meal. (optional)
NSNumber* minRating = 4.4; // The minimum rating of the restaurants in range [0,5]. (optional)
NSString* cuisine = Mexican; // The cuisine that the restaurants should support. (optional)
NSNumber* isOpen = true; // Whether the restaurants have to be open now. (optional)
NSNumber* page = 0; // The page of the results. (optional)
NSString* sort = rating; // The sort parameter, one of: cheapest, fastest, rating, distance or relevance. (optional)

OAIFoodApi*apiInstance = [[OAIFoodApi alloc] init];

// Search Restaurants
[apiInstance searchRestaurantsWithLat:lat
              lon:lon
              query:query
              distance:distance
              budget:budget
              minRating:minRating
              cuisine:cuisine
              isOpen:isOpen
              page:page
              sort:sort
          completionHandler: ^(OAISearchRestaurants200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFoodApi->searchRestaurants: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **NSNumber***| The latitude to search around. | 
 **lon** | **NSNumber***| The longitude to search around. | 
 **query** | **NSString***| The search query. | [optional] 
 **distance** | **NSNumber***| The maximum distance of the restaurant in miles around the given location. | [optional] 
 **budget** | **NSNumber***| The budget in USD for the meal. | [optional] 
 **minRating** | **NSNumber***| The minimum rating of the restaurants in range [0,5]. | [optional] 
 **cuisine** | **NSString***| The cuisine that the restaurants should support. | [optional] 
 **isOpen** | **NSNumber***| Whether the restaurants have to be open now. | [optional] 
 **page** | **NSNumber***| The page of the results. | [optional] 
 **sort** | **NSString***| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] 

### Return type

[**OAISearchRestaurants200Response***](OAISearchRestaurants200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

