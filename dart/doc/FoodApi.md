# openapi.api.FoodApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**computeNutrition**](FoodApi.md#computenutrition) | **GET** /compute-nutrition | Compute Nutrition
[**retrieveRecipeInformation**](FoodApi.md#retrieverecipeinformation) | **GET** /retrieve-recipe | Retrieve Recipe Information
[**searchRecipes**](FoodApi.md#searchrecipes) | **GET** /search-recipes | Search Recipes
[**searchRestaurants**](FoodApi.md#searchrestaurants) | **GET** /search-restaurants | Search Restaurants


# **computeNutrition**
> ComputeNutrition200Response computeNutrition(ingredients, servings, reduceOils)

Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = FoodApi();
final ingredients = 1 cup apples,3oz milk,35g butter; // String | A comma-separated list of the ingredients of the recipe.
final servings = 1; // int | The number of servings the ingredients make. Nutrition is computed per serving.
final reduceOils = true; // bool | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.

try {
    final result = api_instance.computeNutrition(ingredients, servings, reduceOils);
    print(result);
} catch (e) {
    print('Exception when calling FoodApi->computeNutrition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of the ingredients of the recipe. | 
 **servings** | **int**| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] 
 **reduceOils** | **bool**| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] 

### Return type

[**ComputeNutrition200Response**](ComputeNutrition200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRecipeInformation**
> RetrieveRecipeInformation200Response retrieveRecipeInformation(id, addWinePairing)

Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = FoodApi();
final id = 74987; // int | The id of the recipe to retrieve.
final addWinePairing = true; // bool | Whether to pair a wine to the recipe.

try {
    final result = api_instance.retrieveRecipeInformation(id, addWinePairing);
    print(result);
} catch (e) {
    print('Exception when calling FoodApi->retrieveRecipeInformation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the recipe to retrieve. | 
 **addWinePairing** | **bool**| Whether to pair a wine to the recipe. | [optional] 

### Return type

[**RetrieveRecipeInformation200Response**](RetrieveRecipeInformation200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipes**
> SearchRecipes200Response searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number)

Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = FoodApi();
final query = pasta with mushrooms but without nuts; // String | The search query.
final cuisines = mexican; // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR').
final excludeCuisines = indian,japanese; // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND').
final mealType = dessert; // String | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
final diet = paleo; // String | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
final intolerances = gluten,dairy,shellfish; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
final equipment = blender,frying pan,bowl; // String | The equipment required. Multiple values will be interpreted as 'OR'.
final includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that should/must be used in the recipes.
final excludeIngredients = olives,capers; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
final fillIngredients = true; // bool | Add information about the ingredients and whether they are used or missing in relation to the query.
final addRecipeInformation = true; // bool | If set to true, you get more information about the recipes returned.
final maxTime = 45; // int | The maximum time in minutes it should take to prepare and cook the recipe.
final minServings = 1; // int | The minimum amount of servings the recipe is for.
final maxServings = 8; // int | The maximum amount of servings the recipe is for.
final minCalories = 100; // double | The minimum amount of calories the recipe must have per serving.
final maxCalories = 655; // double | The maximum amount of calories the recipe can have per serving.
final minCarbs = 10.1; // double | The minimum amount of carbohydrates in grams the recipe must have per serving.
final maxCarbs = 25.5; // double | The maximum amount of carbohydrates in grams the recipe can have per serving.
final minProtein = 10.1; // double | The minimum amount of protein in grams the recipe must have per serving.
final maxProtein = 25.5; // double | The maximum amount of protein in grams the recipe can have per serving.
final minFat = 10.1; // double | The minimum amount of fat in grams the recipe must have per serving.
final maxFat = 25.5; // double | The maximum amount of fat in grams the recipe can have per serving.
final minSugar = 10.1; // double | The minimum amount of sugar in grams the recipe must have per serving.
final maxSugar = 25.5; // double | The maximum amount of sugar in grams the recipe can have per serving.
final minFiber = 10.1; // double | The minimum amount of fiber in grams the recipe must have per serving.
final maxFiber = 25.5; // double | The maximum amount of fiber in grams the recipe can have per serving.
final minFolate = 30.4; // double | The minimum amount of folate in micrograms the recipe must have per serving.
final maxFolate = 80.9; // double | The maximum amount of folate in micrograms the recipe can have per serving.
final minFolicAcid = 30.4; // double | The minimum amount of folic acid in micrograms the recipe must have per serving.
final maxFolicAcid = 80.9; // double | The maximum amount of folic acid in micrograms the recipe can have per serving.
final minIodine = 30.4; // double | The minimum amount of iodine in micrograms the recipe must have per serving.
final maxIodine = 80.9; // double | The maximum amount of iodine in micrograms the recipe can have per serving.
final minIron = 30.4; // double | The minimum amount of iron in milligrams the recipe must have per serving.
final maxIron = 80.9; // double | The maximum amount of iron in milligrams the recipe can have per serving.
final minZinc = 30.4; // double | The minimum amount of zinc in milligrams the recipe must have per serving.
final maxZinc = 80.9; // double | The maximum amount of zinc in milligrams the recipe can have per serving.
final minMagnesium = 30.4; // double | The minimum amount of magnesium in milligrams the recipe must have per serving.
final maxMagnesium = 80.9; // double | The maximum amount of magnesium in milligrams the recipe can have per serving.
final minManganese = 30.4; // double | The minimum amount of manganese in milligrams the recipe must have per serving.
final maxManganese = 80.9; // double | The maximum amount of manganese in milligrams the recipe can have per serving.
final minPhosphorus = 30.4; // double | The minimum amount of phosphorus in milligrams the recipe must have per serving.
final maxPhosphorus = 80.9; // double | The maximum amount of phosphorus in milligrams the recipe can have per serving.
final minPotassium = 30.4; // double | The minimum amount of potassium in milligrams the recipe must have per serving.
final maxPotassium = 80.9; // double | The maximum amount of potassium in milligrams the recipe can have per serving.
final minSodium = 30.4; // double | The minimum amount of sodium in milligrams the recipe must have per serving.
final maxSodium = 80.9; // double | The maximum amount of sodium in milligrams the recipe can have per serving.
final minSelenium = 30.4; // double | The minimum amount of selenium in micrograms the recipe must have per serving.
final maxSelenium = 80.9; // double | The maximum amount of selenium in micrograms the recipe can have per serving.
final minCopper = 30.4; // double | The minimum amount of copper in milligrams the recipe must have per serving.
final maxCopper = 80.9; // double | The maximum amount of copper in milligrams the recipe can have per serving.
final minCalcium = 30.4; // double | The minimum amount of calcium in milligrams the recipe must have per serving.
final maxCalcium = 80.9; // double | The maximum amount of calcium in milligrams the recipe can have per serving.
final minCholine = 30.4; // double | The minimum amount of choline in milligrams the recipe must have per serving.
final maxCholine = 80.9; // double | The maximum amount of choline in milligrams the recipe can have per serving.
final minCholesterol = 30.4; // double | The minimum amount of cholesterol in milligrams the recipe must have per serving.
final maxCholesterol = 80.9; // double | The maximum amount of cholesterol in milligrams the recipe can have per serving.
final minFluoride = 30.4; // double | The minimum amount of fluoride in milligrams the recipe must have per serving.
final maxFluoride = 80.9; // double | The maximum amount of fluoride in milligrams the recipe can have per serving.
final minAlcohol = 10.1; // double | The minimum amount of alcohol in grams the recipe must have per serving.
final maxAlcohol = 25.5; // double | The maximum amount of alcohol in grams the recipe can have per serving.
final minCaffeine = 30.4; // double | The minimum amount of caffeine in milligrams the recipe must have per serving.
final maxCaffeine = 80.9; // double | The maximum amount of caffeine in milligrams the recipe can have per serving.
final minSaturatedFat = 30.4; // double | The minimum amount of saturated fat in grams the recipe must have per serving.
final maxSaturatedFat = 80.9; // double | The maximum amount of saturated fat in grams the recipe can have per serving.
final minVitaminA = 30.4; // double | The minimum amount of Vitamin A in IU the recipe must have per serving.
final maxVitaminA = 80.9; // double | The maximum amount of Vitamin A in IU the recipe can have per serving.
final minVitaminC = 30.4; // double | The minimum amount of Vitamin C in milligrams the recipe must have per serving.
final maxVitaminC = 80.9; // double | The maximum amount of Vitamin C in milligrams the recipe can have per serving.
final minVitaminD = 30.4; // double | The minimum amount of Vitamin D in micrograms the recipe must have per serving.
final maxVitaminD = 80.9; // double | The maximum amount of Vitamin D in micrograms the recipe can have per serving.
final minVitaminE = 30.4; // double | The minimum amount of Vitamin E in milligrams the recipe must have per serving.
final maxVitaminE = 80.9; // double | The maximum amount of Vitamin E in milligrams the recipe can have per serving.
final minVitaminK = 30.4; // double | The minimum amount of Vitamin K in micrograms the recipe must have per serving.
final maxVitaminK = 80.9; // double | The maximum amount of Vitamin K in micrograms the recipe can have per serving.
final minVitaminB1 = 30.4; // double | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
final maxVitaminB1 = 80.9; // double | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
final minVitaminB2 = 30.4; // double | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
final maxVitaminB2 = 80.9; // double | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
final minVitaminB3 = 30.4; // double | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
final maxVitaminB3 = 80.9; // double | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
final minVitaminB5 = 30.4; // double | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
final maxVitaminB5 = 80.9; // double | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
final minVitaminB6 = 30.4; // double | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
final maxVitaminB6 = 80.9; // double | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
final minVitaminB12 = 30.4; // double | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
final maxVitaminB12 = 80.9; // double | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
final sort = meta-score; // String | The strategy to sort recipes by. See a full list of supported sorting options.
final sortDirection = ASC; // String | Whether to sort ascending or descending (ASC or DESC).
final offset = 0; // int | The number of recipes to skip, between 0 and 900.
final number = 3; // int | The number of recipes, between 1 and 100.

try {
    final result = api_instance.searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling FoodApi->searchRecipes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **cuisines** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). | [optional] 
 **excludeCuisines** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). | [optional] 
 **mealType** | **String**| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] 
 **diet** | **String**| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] 
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as 'OR'. | [optional] 
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **fillIngredients** | **bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **addRecipeInformation** | **bool**| If set to true, you get more information about the recipes returned. | [optional] 
 **maxTime** | **int**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **minServings** | **int**| The minimum amount of servings the recipe is for. | [optional] 
 **maxServings** | **int**| The maximum amount of servings the recipe is for. | [optional] 
 **minCalories** | **double**| The minimum amount of calories the recipe must have per serving. | [optional] 
 **maxCalories** | **double**| The maximum amount of calories the recipe can have per serving. | [optional] 
 **minCarbs** | **double**| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] 
 **maxCarbs** | **double**| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] 
 **minProtein** | **double**| The minimum amount of protein in grams the recipe must have per serving. | [optional] 
 **maxProtein** | **double**| The maximum amount of protein in grams the recipe can have per serving. | [optional] 
 **minFat** | **double**| The minimum amount of fat in grams the recipe must have per serving. | [optional] 
 **maxFat** | **double**| The maximum amount of fat in grams the recipe can have per serving. | [optional] 
 **minSugar** | **double**| The minimum amount of sugar in grams the recipe must have per serving. | [optional] 
 **maxSugar** | **double**| The maximum amount of sugar in grams the recipe can have per serving. | [optional] 
 **minFiber** | **double**| The minimum amount of fiber in grams the recipe must have per serving. | [optional] 
 **maxFiber** | **double**| The maximum amount of fiber in grams the recipe can have per serving. | [optional] 
 **minFolate** | **double**| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] 
 **maxFolate** | **double**| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] 
 **minFolicAcid** | **double**| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] 
 **maxFolicAcid** | **double**| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] 
 **minIodine** | **double**| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] 
 **maxIodine** | **double**| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] 
 **minIron** | **double**| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] 
 **maxIron** | **double**| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] 
 **minZinc** | **double**| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] 
 **maxZinc** | **double**| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] 
 **minMagnesium** | **double**| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] 
 **maxMagnesium** | **double**| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] 
 **minManganese** | **double**| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] 
 **maxManganese** | **double**| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] 
 **minPhosphorus** | **double**| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] 
 **maxPhosphorus** | **double**| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] 
 **minPotassium** | **double**| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] 
 **maxPotassium** | **double**| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] 
 **minSodium** | **double**| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] 
 **maxSodium** | **double**| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] 
 **minSelenium** | **double**| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] 
 **maxSelenium** | **double**| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] 
 **minCopper** | **double**| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] 
 **maxCopper** | **double**| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] 
 **minCalcium** | **double**| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] 
 **maxCalcium** | **double**| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] 
 **minCholine** | **double**| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] 
 **maxCholine** | **double**| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] 
 **minCholesterol** | **double**| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] 
 **maxCholesterol** | **double**| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] 
 **minFluoride** | **double**| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] 
 **maxFluoride** | **double**| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] 
 **minAlcohol** | **double**| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] 
 **maxAlcohol** | **double**| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] 
 **minCaffeine** | **double**| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] 
 **maxCaffeine** | **double**| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] 
 **minSaturatedFat** | **double**| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] 
 **maxSaturatedFat** | **double**| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] 
 **minVitaminA** | **double**| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] 
 **maxVitaminA** | **double**| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] 
 **minVitaminC** | **double**| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminC** | **double**| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] 
 **minVitaminD** | **double**| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] 
 **maxVitaminD** | **double**| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] 
 **minVitaminE** | **double**| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminE** | **double**| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] 
 **minVitaminK** | **double**| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] 
 **maxVitaminK** | **double**| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] 
 **minVitaminB1** | **double**| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB1** | **double**| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB2** | **double**| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB2** | **double**| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB3** | **double**| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB3** | **double**| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB5** | **double**| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB5** | **double**| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB6** | **double**| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB6** | **double**| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB12** | **double**| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB12** | **double**| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] 
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of recipes to skip, between 0 and 900. | [optional] 
 **number** | **int**| The number of recipes, between 1 and 100. | [optional] 

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRestaurants**
> SearchRestaurants200Response searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = FoodApi();
final lat = 32.715736; // double | The latitude to search around.
final lon = -117.161087; // double | The longitude to search around.
final query = burger; // String | The search query.
final distance = 5; // int | The maximum distance of the restaurant in miles around the given location.
final budget = 25; // double | The budget in USD for the meal.
final minRating = 4.4; // double | The minimum rating of the restaurants in range [0,5].
final cuisine = Mexican; // String | The cuisine that the restaurants should support.
final isOpen = true; // bool | Whether the restaurants have to be open now.
final page = 0; // int | The page of the results.
final sort = rating; // String | The sort parameter, one of: cheapest, fastest, rating, distance or relevance.

try {
    final result = api_instance.searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort);
    print(result);
} catch (e) {
    print('Exception when calling FoodApi->searchRestaurants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| The latitude to search around. | 
 **lon** | **double**| The longitude to search around. | 
 **query** | **String**| The search query. | [optional] 
 **distance** | **int**| The maximum distance of the restaurant in miles around the given location. | [optional] 
 **budget** | **double**| The budget in USD for the meal. | [optional] 
 **minRating** | **double**| The minimum rating of the restaurants in range [0,5]. | [optional] 
 **cuisine** | **String**| The cuisine that the restaurants should support. | [optional] 
 **isOpen** | **bool**| Whether the restaurants have to be open now. | [optional] 
 **page** | **int**| The page of the results. | [optional] 
 **sort** | **String**| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] 

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

