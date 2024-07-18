# .FoodApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**computeNutrition**](FoodApi.md#computeNutrition) | **GET** /compute-nutrition | Compute Nutrition
[**retrieveRecipeInformation**](FoodApi.md#retrieveRecipeInformation) | **GET** /retrieve-recipe | Retrieve Recipe Information
[**searchDrinks**](FoodApi.md#searchDrinks) | **GET** /search-drinks | Search Drinks
[**searchRecipes**](FoodApi.md#searchRecipes) | **GET** /search-recipes | Search Recipes
[**searchRestaurants**](FoodApi.md#searchRestaurants) | **GET** /search-restaurants | Search Restaurants


# **computeNutrition**
> ComputeNutrition200Response computeNutrition()

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FoodApi(configuration);

let body:.FoodApiComputeNutritionRequest = {
  // string | A comma-separated list of the ingredients of the recipe.
  ingredients: "1 cup apples,3oz milk,35g butter",
  // number | The number of servings the ingredients make. Nutrition is computed per serving. (optional)
  servings: 1,
  // boolean | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. (optional)
  reduceOils: true,
};

apiInstance.computeNutrition(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | [**string**] | A comma-separated list of the ingredients of the recipe. | defaults to undefined
 **servings** | [**number**] | The number of servings the ingredients make. Nutrition is computed per serving. | (optional) defaults to undefined
 **reduceOils** | [**boolean**] | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | (optional) defaults to undefined


### Return type

**ComputeNutrition200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **retrieveRecipeInformation**
> RetrieveRecipeInformation200Response retrieveRecipeInformation()

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FoodApi(configuration);

let body:.FoodApiRetrieveRecipeInformationRequest = {
  // number | The id of the recipe to retrieve.
  id: 74987,
  // boolean | Whether to pair a wine to the recipe. (optional)
  addWinePairing: true,
};

apiInstance.retrieveRecipeInformation(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the recipe to retrieve. | defaults to undefined
 **addWinePairing** | [**boolean**] | Whether to pair a wine to the recipe. | (optional) defaults to undefined


### Return type

**RetrieveRecipeInformation200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchDrinks**
> SearchDrinks200Response searchDrinks()

Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FoodApi(configuration);

let body:.FoodApiSearchDrinksRequest = {
  // string | The search query. (optional)
  query: "vodka",
  // string | A comma-separated list (interpreted as OR) of glass types that the drink should be served in. (optional)
  glassTypes: "Highball Glass",
  // string | A comma-separated list (interpreted as AND) of dominant flavors in the drink. (optional)
  flavors: "sour,sweet",
  // string | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. (optional)
  diet: "paleo",
  // string | A comma-separated list of ingredients that should/must be used in the drinks. (optional)
  includeIngredients: "orange",
  // string | A comma-separated list of ingredients or ingredient types that the drinks must not contain. (optional)
  excludeIngredients: "vodka",
  // number | The minimum amount of calories the drink must have per serving. (optional)
  minCalories: 100,
  // number | The maximum amount of calories the drink can have per serving. (optional)
  maxCalories: 655,
  // number | The minimum amount of carbohydrates in grams the drink must have per serving. (optional)
  minCarbs: 10.1,
  // number | The maximum amount of carbohydrates in grams the drink can have per serving. (optional)
  maxCarbs: 25.5,
  // number | The minimum amount of protein in grams the drink must have per serving. (optional)
  minProtein: 10.1,
  // number | The maximum amount of protein in grams the drink can have per serving. (optional)
  maxProtein: 25.5,
  // number | The minimum amount of fat in grams the drink must have per serving. (optional)
  minFat: 10.1,
  // number | The maximum amount of fat in grams the drink can have per serving. (optional)
  maxFat: 25.5,
  // number | The minimum alcohol percentage the drink must have. (optional)
  minAlcoholPercent: 10,
  // number | The maximum alcohol percentage the drink can have. (optional)
  maxAlcoholPercent: 35,
  // number | The minimum amount of caffeine in milligrams the drink must have per serving. (optional)
  minCaffeine: 30.4,
  // number | The maximum amount of caffeine in milligrams the drink can have per serving. (optional)
  maxCaffeine: 80.9,
  // string | The attribute by which to sort the drinks. (optional)
  sort: "calories",
  // string | Whether to sort ascending or descending (ASC or DESC). (optional)
  sortDirection: "ASC",
  // number | The number of drinks to skip, between 0 and 90. (optional)
  offset: 0,
  // number | The number of drinks, between 1 and 10. (optional)
  number: 3,
};

apiInstance.searchDrinks(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **glassTypes** | [**string**] | A comma-separated list (interpreted as OR) of glass types that the drink should be served in. | (optional) defaults to undefined
 **flavors** | [**string**] | A comma-separated list (interpreted as AND) of dominant flavors in the drink. | (optional) defaults to undefined
 **diet** | [**string**] | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. | (optional) defaults to undefined
 **includeIngredients** | [**string**] | A comma-separated list of ingredients that should/must be used in the drinks. | (optional) defaults to undefined
 **excludeIngredients** | [**string**] | A comma-separated list of ingredients or ingredient types that the drinks must not contain. | (optional) defaults to undefined
 **minCalories** | [**number**] | The minimum amount of calories the drink must have per serving. | (optional) defaults to undefined
 **maxCalories** | [**number**] | The maximum amount of calories the drink can have per serving. | (optional) defaults to undefined
 **minCarbs** | [**number**] | The minimum amount of carbohydrates in grams the drink must have per serving. | (optional) defaults to undefined
 **maxCarbs** | [**number**] | The maximum amount of carbohydrates in grams the drink can have per serving. | (optional) defaults to undefined
 **minProtein** | [**number**] | The minimum amount of protein in grams the drink must have per serving. | (optional) defaults to undefined
 **maxProtein** | [**number**] | The maximum amount of protein in grams the drink can have per serving. | (optional) defaults to undefined
 **minFat** | [**number**] | The minimum amount of fat in grams the drink must have per serving. | (optional) defaults to undefined
 **maxFat** | [**number**] | The maximum amount of fat in grams the drink can have per serving. | (optional) defaults to undefined
 **minAlcoholPercent** | [**number**] | The minimum alcohol percentage the drink must have. | (optional) defaults to undefined
 **maxAlcoholPercent** | [**number**] | The maximum alcohol percentage the drink can have. | (optional) defaults to undefined
 **minCaffeine** | [**number**] | The minimum amount of caffeine in milligrams the drink must have per serving. | (optional) defaults to undefined
 **maxCaffeine** | [**number**] | The maximum amount of caffeine in milligrams the drink can have per serving. | (optional) defaults to undefined
 **sort** | [**string**] | The attribute by which to sort the drinks. | (optional) defaults to undefined
 **sortDirection** | [**string**] | Whether to sort ascending or descending (ASC or DESC). | (optional) defaults to undefined
 **offset** | [**number**] | The number of drinks to skip, between 0 and 90. | (optional) defaults to undefined
 **number** | [**number**] | The number of drinks, between 1 and 10. | (optional) defaults to undefined


### Return type

**SearchDrinks200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchRecipes**
> SearchRecipes200Response searchRecipes()

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FoodApi(configuration);

let body:.FoodApiSearchRecipesRequest = {
  // string | The search query. (optional)
  query: "pasta with mushrooms but without nuts",
  // string | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as \'OR\'). (optional)
  cuisines: "mexican",
  // string | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as \'AND\'). (optional)
  excludeCuisines: "indian,japanese",
  // string | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. (optional)
  mealType: "dessert",
  // string | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. (optional)
  diet: "paleo",
  // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. (optional)
  intolerances: "gluten,dairy,shellfish",
  // string | The equipment required. Multiple values will be interpreted as \'OR\'. (optional)
  equipment: "blender,frying pan,bowl",
  // string | A comma-separated list of ingredients that should/must be used in the recipes. (optional)
  includeIngredients: "tomato,cheese",
  // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
  excludeIngredients: "olives,capers",
  // boolean | Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
  fillIngredients: true,
  // boolean | If set to true, you get more information about the recipes returned. (optional)
  addRecipeInformation: true,
  // number | The maximum time in minutes it should take to prepare and cook the recipe. (optional)
  maxTime: 45,
  // number | The minimum amount of servings the recipe is for. (optional)
  minServings: 1,
  // number | The maximum amount of servings the recipe is for. (optional)
  maxServings: 8,
  // number | The minimum amount of calories the recipe must have per serving. (optional)
  minCalories: 100,
  // number | The maximum amount of calories the recipe can have per serving. (optional)
  maxCalories: 655,
  // number | The minimum amount of carbohydrates in grams the recipe must have per serving. (optional)
  minCarbs: 10.1,
  // number | The maximum amount of carbohydrates in grams the recipe can have per serving. (optional)
  maxCarbs: 25.5,
  // number | The minimum amount of protein in grams the recipe must have per serving. (optional)
  minProtein: 10.1,
  // number | The maximum amount of protein in grams the recipe can have per serving. (optional)
  maxProtein: 25.5,
  // number | The minimum amount of fat in grams the recipe must have per serving. (optional)
  minFat: 10.1,
  // number | The maximum amount of fat in grams the recipe can have per serving. (optional)
  maxFat: 25.5,
  // number | The minimum amount of sugar in grams the recipe must have per serving. (optional)
  minSugar: 10.1,
  // number | The maximum amount of sugar in grams the recipe can have per serving. (optional)
  maxSugar: 25.5,
  // number | The minimum amount of fiber in grams the recipe must have per serving. (optional)
  minFiber: 10.1,
  // number | The maximum amount of fiber in grams the recipe can have per serving. (optional)
  maxFiber: 25.5,
  // number | The minimum amount of folate in micrograms the recipe must have per serving. (optional)
  minFolate: 30.4,
  // number | The maximum amount of folate in micrograms the recipe can have per serving. (optional)
  maxFolate: 80.9,
  // number | The minimum amount of folic acid in micrograms the recipe must have per serving. (optional)
  minFolicAcid: 30.4,
  // number | The maximum amount of folic acid in micrograms the recipe can have per serving. (optional)
  maxFolicAcid: 80.9,
  // number | The minimum amount of iodine in micrograms the recipe must have per serving. (optional)
  minIodine: 30.4,
  // number | The maximum amount of iodine in micrograms the recipe can have per serving. (optional)
  maxIodine: 80.9,
  // number | The minimum amount of iron in milligrams the recipe must have per serving. (optional)
  minIron: 30.4,
  // number | The maximum amount of iron in milligrams the recipe can have per serving. (optional)
  maxIron: 80.9,
  // number | The minimum amount of zinc in milligrams the recipe must have per serving. (optional)
  minZinc: 30.4,
  // number | The maximum amount of zinc in milligrams the recipe can have per serving. (optional)
  maxZinc: 80.9,
  // number | The minimum amount of magnesium in milligrams the recipe must have per serving. (optional)
  minMagnesium: 30.4,
  // number | The maximum amount of magnesium in milligrams the recipe can have per serving. (optional)
  maxMagnesium: 80.9,
  // number | The minimum amount of manganese in milligrams the recipe must have per serving. (optional)
  minManganese: 30.4,
  // number | The maximum amount of manganese in milligrams the recipe can have per serving. (optional)
  maxManganese: 80.9,
  // number | The minimum amount of phosphorus in milligrams the recipe must have per serving. (optional)
  minPhosphorus: 30.4,
  // number | The maximum amount of phosphorus in milligrams the recipe can have per serving. (optional)
  maxPhosphorus: 80.9,
  // number | The minimum amount of potassium in milligrams the recipe must have per serving. (optional)
  minPotassium: 30.4,
  // number | The maximum amount of potassium in milligrams the recipe can have per serving. (optional)
  maxPotassium: 80.9,
  // number | The minimum amount of sodium in milligrams the recipe must have per serving. (optional)
  minSodium: 30.4,
  // number | The maximum amount of sodium in milligrams the recipe can have per serving. (optional)
  maxSodium: 80.9,
  // number | The minimum amount of selenium in micrograms the recipe must have per serving. (optional)
  minSelenium: 30.4,
  // number | The maximum amount of selenium in micrograms the recipe can have per serving. (optional)
  maxSelenium: 80.9,
  // number | The minimum amount of copper in milligrams the recipe must have per serving. (optional)
  minCopper: 30.4,
  // number | The maximum amount of copper in milligrams the recipe can have per serving. (optional)
  maxCopper: 80.9,
  // number | The minimum amount of calcium in milligrams the recipe must have per serving. (optional)
  minCalcium: 30.4,
  // number | The maximum amount of calcium in milligrams the recipe can have per serving. (optional)
  maxCalcium: 80.9,
  // number | The minimum amount of choline in milligrams the recipe must have per serving. (optional)
  minCholine: 30.4,
  // number | The maximum amount of choline in milligrams the recipe can have per serving. (optional)
  maxCholine: 80.9,
  // number | The minimum amount of cholesterol in milligrams the recipe must have per serving. (optional)
  minCholesterol: 30.4,
  // number | The maximum amount of cholesterol in milligrams the recipe can have per serving. (optional)
  maxCholesterol: 80.9,
  // number | The minimum amount of fluoride in milligrams the recipe must have per serving. (optional)
  minFluoride: 30.4,
  // number | The maximum amount of fluoride in milligrams the recipe can have per serving. (optional)
  maxFluoride: 80.9,
  // number | The minimum amount of alcohol in grams the recipe must have per serving. (optional)
  minAlcohol: 10.1,
  // number | The maximum amount of alcohol in grams the recipe can have per serving. (optional)
  maxAlcohol: 25.5,
  // number | The minimum amount of caffeine in milligrams the recipe must have per serving. (optional)
  minCaffeine: 30.4,
  // number | The maximum amount of caffeine in milligrams the recipe can have per serving. (optional)
  maxCaffeine: 80.9,
  // number | The minimum amount of saturated fat in grams the recipe must have per serving. (optional)
  minSaturatedFat: 30.4,
  // number | The maximum amount of saturated fat in grams the recipe can have per serving. (optional)
  maxSaturatedFat: 80.9,
  // number | The minimum amount of Vitamin A in IU the recipe must have per serving. (optional)
  minVitaminA: 30.4,
  // number | The maximum amount of Vitamin A in IU the recipe can have per serving. (optional)
  maxVitaminA: 80.9,
  // number | The minimum amount of Vitamin C in milligrams the recipe must have per serving. (optional)
  minVitaminC: 30.4,
  // number | The maximum amount of Vitamin C in milligrams the recipe can have per serving. (optional)
  maxVitaminC: 80.9,
  // number | The minimum amount of Vitamin D in micrograms the recipe must have per serving. (optional)
  minVitaminD: 30.4,
  // number | The maximum amount of Vitamin D in micrograms the recipe can have per serving. (optional)
  maxVitaminD: 80.9,
  // number | The minimum amount of Vitamin E in milligrams the recipe must have per serving. (optional)
  minVitaminE: 30.4,
  // number | The maximum amount of Vitamin E in milligrams the recipe can have per serving. (optional)
  maxVitaminE: 80.9,
  // number | The minimum amount of Vitamin K in micrograms the recipe must have per serving. (optional)
  minVitaminK: 30.4,
  // number | The maximum amount of Vitamin K in micrograms the recipe can have per serving. (optional)
  maxVitaminK: 80.9,
  // number | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. (optional)
  minVitaminB1: 30.4,
  // number | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. (optional)
  maxVitaminB1: 80.9,
  // number | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. (optional)
  minVitaminB2: 30.4,
  // number | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. (optional)
  maxVitaminB2: 80.9,
  // number | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. (optional)
  minVitaminB3: 30.4,
  // number | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. (optional)
  maxVitaminB3: 80.9,
  // number | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. (optional)
  minVitaminB5: 30.4,
  // number | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. (optional)
  maxVitaminB5: 80.9,
  // number | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. (optional)
  minVitaminB6: 30.4,
  // number | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. (optional)
  maxVitaminB6: 80.9,
  // number | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. (optional)
  minVitaminB12: 30.4,
  // number | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. (optional)
  maxVitaminB12: 80.9,
  // string | The strategy to sort recipes by. (optional)
  sort: "meta-score",
  // string | Whether to sort ascending or descending (ASC or DESC). (optional)
  sortDirection: "ASC",
  // number | The number of recipes to skip, between 0 and 900. (optional)
  offset: 0,
  // number | The number of recipes, between 1 and 100. (optional)
  number: 3,
};

apiInstance.searchRecipes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **cuisines** | [**string**] | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as \&#39;OR\&#39;). | (optional) defaults to undefined
 **excludeCuisines** | [**string**] | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as \&#39;AND\&#39;). | (optional) defaults to undefined
 **mealType** | [**string**] | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | (optional) defaults to undefined
 **diet** | [**string**] | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | (optional) defaults to undefined
 **intolerances** | [**string**] | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | (optional) defaults to undefined
 **equipment** | [**string**] | The equipment required. Multiple values will be interpreted as \&#39;OR\&#39;. | (optional) defaults to undefined
 **includeIngredients** | [**string**] | A comma-separated list of ingredients that should/must be used in the recipes. | (optional) defaults to undefined
 **excludeIngredients** | [**string**] | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | (optional) defaults to undefined
 **fillIngredients** | [**boolean**] | Add information about the ingredients and whether they are used or missing in relation to the query. | (optional) defaults to undefined
 **addRecipeInformation** | [**boolean**] | If set to true, you get more information about the recipes returned. | (optional) defaults to undefined
 **maxTime** | [**number**] | The maximum time in minutes it should take to prepare and cook the recipe. | (optional) defaults to undefined
 **minServings** | [**number**] | The minimum amount of servings the recipe is for. | (optional) defaults to undefined
 **maxServings** | [**number**] | The maximum amount of servings the recipe is for. | (optional) defaults to undefined
 **minCalories** | [**number**] | The minimum amount of calories the recipe must have per serving. | (optional) defaults to undefined
 **maxCalories** | [**number**] | The maximum amount of calories the recipe can have per serving. | (optional) defaults to undefined
 **minCarbs** | [**number**] | The minimum amount of carbohydrates in grams the recipe must have per serving. | (optional) defaults to undefined
 **maxCarbs** | [**number**] | The maximum amount of carbohydrates in grams the recipe can have per serving. | (optional) defaults to undefined
 **minProtein** | [**number**] | The minimum amount of protein in grams the recipe must have per serving. | (optional) defaults to undefined
 **maxProtein** | [**number**] | The maximum amount of protein in grams the recipe can have per serving. | (optional) defaults to undefined
 **minFat** | [**number**] | The minimum amount of fat in grams the recipe must have per serving. | (optional) defaults to undefined
 **maxFat** | [**number**] | The maximum amount of fat in grams the recipe can have per serving. | (optional) defaults to undefined
 **minSugar** | [**number**] | The minimum amount of sugar in grams the recipe must have per serving. | (optional) defaults to undefined
 **maxSugar** | [**number**] | The maximum amount of sugar in grams the recipe can have per serving. | (optional) defaults to undefined
 **minFiber** | [**number**] | The minimum amount of fiber in grams the recipe must have per serving. | (optional) defaults to undefined
 **maxFiber** | [**number**] | The maximum amount of fiber in grams the recipe can have per serving. | (optional) defaults to undefined
 **minFolate** | [**number**] | The minimum amount of folate in micrograms the recipe must have per serving. | (optional) defaults to undefined
 **maxFolate** | [**number**] | The maximum amount of folate in micrograms the recipe can have per serving. | (optional) defaults to undefined
 **minFolicAcid** | [**number**] | The minimum amount of folic acid in micrograms the recipe must have per serving. | (optional) defaults to undefined
 **maxFolicAcid** | [**number**] | The maximum amount of folic acid in micrograms the recipe can have per serving. | (optional) defaults to undefined
 **minIodine** | [**number**] | The minimum amount of iodine in micrograms the recipe must have per serving. | (optional) defaults to undefined
 **maxIodine** | [**number**] | The maximum amount of iodine in micrograms the recipe can have per serving. | (optional) defaults to undefined
 **minIron** | [**number**] | The minimum amount of iron in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxIron** | [**number**] | The maximum amount of iron in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minZinc** | [**number**] | The minimum amount of zinc in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxZinc** | [**number**] | The maximum amount of zinc in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minMagnesium** | [**number**] | The minimum amount of magnesium in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxMagnesium** | [**number**] | The maximum amount of magnesium in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minManganese** | [**number**] | The minimum amount of manganese in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxManganese** | [**number**] | The maximum amount of manganese in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minPhosphorus** | [**number**] | The minimum amount of phosphorus in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxPhosphorus** | [**number**] | The maximum amount of phosphorus in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minPotassium** | [**number**] | The minimum amount of potassium in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxPotassium** | [**number**] | The maximum amount of potassium in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minSodium** | [**number**] | The minimum amount of sodium in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxSodium** | [**number**] | The maximum amount of sodium in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minSelenium** | [**number**] | The minimum amount of selenium in micrograms the recipe must have per serving. | (optional) defaults to undefined
 **maxSelenium** | [**number**] | The maximum amount of selenium in micrograms the recipe can have per serving. | (optional) defaults to undefined
 **minCopper** | [**number**] | The minimum amount of copper in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxCopper** | [**number**] | The maximum amount of copper in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minCalcium** | [**number**] | The minimum amount of calcium in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxCalcium** | [**number**] | The maximum amount of calcium in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minCholine** | [**number**] | The minimum amount of choline in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxCholine** | [**number**] | The maximum amount of choline in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minCholesterol** | [**number**] | The minimum amount of cholesterol in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxCholesterol** | [**number**] | The maximum amount of cholesterol in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minFluoride** | [**number**] | The minimum amount of fluoride in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxFluoride** | [**number**] | The maximum amount of fluoride in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minAlcohol** | [**number**] | The minimum amount of alcohol in grams the recipe must have per serving. | (optional) defaults to undefined
 **maxAlcohol** | [**number**] | The maximum amount of alcohol in grams the recipe can have per serving. | (optional) defaults to undefined
 **minCaffeine** | [**number**] | The minimum amount of caffeine in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxCaffeine** | [**number**] | The maximum amount of caffeine in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minSaturatedFat** | [**number**] | The minimum amount of saturated fat in grams the recipe must have per serving. | (optional) defaults to undefined
 **maxSaturatedFat** | [**number**] | The maximum amount of saturated fat in grams the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminA** | [**number**] | The minimum amount of Vitamin A in IU the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminA** | [**number**] | The maximum amount of Vitamin A in IU the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminC** | [**number**] | The minimum amount of Vitamin C in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminC** | [**number**] | The maximum amount of Vitamin C in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminD** | [**number**] | The minimum amount of Vitamin D in micrograms the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminD** | [**number**] | The maximum amount of Vitamin D in micrograms the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminE** | [**number**] | The minimum amount of Vitamin E in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminE** | [**number**] | The maximum amount of Vitamin E in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminK** | [**number**] | The minimum amount of Vitamin K in micrograms the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminK** | [**number**] | The maximum amount of Vitamin K in micrograms the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminB1** | [**number**] | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminB1** | [**number**] | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminB2** | [**number**] | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminB2** | [**number**] | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminB3** | [**number**] | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminB3** | [**number**] | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminB5** | [**number**] | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminB5** | [**number**] | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminB6** | [**number**] | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminB6** | [**number**] | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **minVitaminB12** | [**number**] | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | (optional) defaults to undefined
 **maxVitaminB12** | [**number**] | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | (optional) defaults to undefined
 **sort** | [**string**] | The strategy to sort recipes by. | (optional) defaults to undefined
 **sortDirection** | [**string**] | Whether to sort ascending or descending (ASC or DESC). | (optional) defaults to undefined
 **offset** | [**number**] | The number of recipes to skip, between 0 and 900. | (optional) defaults to undefined
 **number** | [**number**] | The number of recipes, between 1 and 100. | (optional) defaults to undefined


### Return type

**SearchRecipes200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchRestaurants**
> SearchRestaurants200Response searchRestaurants()

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FoodApi(configuration);

let body:.FoodApiSearchRestaurantsRequest = {
  // number | The latitude to search around.
  lat: 32.715736,
  // number | The longitude to search around.
  lon: -117.161087,
  // string | The search query. (optional)
  query: "burger",
  // number | The maximum distance of the restaurant in miles around the given location. (optional)
  distance: 5,
  // number | The budget in USD for the meal. (optional)
  budget: 25,
  // number | The minimum rating of the restaurants in range [0,5]. (optional)
  minRating: 4.4,
  // string | The cuisine that the restaurants should support. (optional)
  cuisine: "Mexican",
  // boolean | Whether the restaurants have to be open now. (optional)
  isOpen: true,
  // number | The page of the results. (optional)
  page: 0,
  // string | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. (optional)
  sort: "rating",
};

apiInstance.searchRestaurants(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | [**number**] | The latitude to search around. | defaults to undefined
 **lon** | [**number**] | The longitude to search around. | defaults to undefined
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **distance** | [**number**] | The maximum distance of the restaurant in miles around the given location. | (optional) defaults to undefined
 **budget** | [**number**] | The budget in USD for the meal. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating of the restaurants in range [0,5]. | (optional) defaults to undefined
 **cuisine** | [**string**] | The cuisine that the restaurants should support. | (optional) defaults to undefined
 **isOpen** | [**boolean**] | Whether the restaurants have to be open now. | (optional) defaults to undefined
 **page** | [**number**] | The page of the results. | (optional) defaults to undefined
 **sort** | [**string**] | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | (optional) defaults to undefined


### Return type

**SearchRestaurants200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


