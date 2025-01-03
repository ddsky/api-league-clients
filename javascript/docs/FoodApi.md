# ApileagueJs.FoodApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**computeNutritionAPI**](FoodApi.md#computeNutritionAPI) | **GET** /compute-nutrition | Compute Nutrition API
[**retrieveRecipeInformationAPI**](FoodApi.md#retrieveRecipeInformationAPI) | **GET** /retrieve-recipe | Retrieve Recipe Information API
[**searchDrinksAPI**](FoodApi.md#searchDrinksAPI) | **GET** /search-drinks | Search Drinks API
[**searchRecipesAPI**](FoodApi.md#searchRecipesAPI) | **GET** /search-recipes | Search Recipes API
[**searchRestaurantsAPI**](FoodApi.md#searchRestaurantsAPI) | **GET** /search-restaurants | Search Restaurants API



## computeNutritionAPI

> ComputeNutritionAPI200Response computeNutritionAPI(ingredients, opts)

Compute Nutrition API

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.FoodApi();
let ingredients = "1 cup apples,3oz milk,35g butter"; // String | A comma-separated list of the ingredients of the recipe.
let opts = {
  'servings': 1, // Number | The number of servings the ingredients make. Nutrition is computed per serving.
  'reduceOils': true // Boolean | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
};
apiInstance.computeNutritionAPI(ingredients, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of the ingredients of the recipe. | 
 **servings** | **Number**| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] 
 **reduceOils** | **Boolean**| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] 

### Return type

[**ComputeNutritionAPI200Response**](ComputeNutritionAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieveRecipeInformationAPI

> RetrieveRecipeInformationAPI200Response retrieveRecipeInformationAPI(id, opts)

Retrieve Recipe Information API

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.FoodApi();
let id = 74987; // Number | The id of the recipe to retrieve.
let opts = {
  'addWinePairing': true // Boolean | Whether to pair a wine to the recipe.
};
apiInstance.retrieveRecipeInformationAPI(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the recipe to retrieve. | 
 **addWinePairing** | **Boolean**| Whether to pair a wine to the recipe. | [optional] 

### Return type

[**RetrieveRecipeInformationAPI200Response**](RetrieveRecipeInformationAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchDrinksAPI

> SearchDrinksAPI200Response searchDrinksAPI(opts)

Search Drinks API

Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.FoodApi();
let opts = {
  'query': "vodka", // String | The search query.
  'glassTypes': "Highball Glass", // String | A comma-separated list (interpreted as OR) of glass types that the drink should be served in.
  'flavors': "sour,sweet", // String | A comma-separated list (interpreted as AND) of dominant flavors in the drink.
  'diet': "paleo", // String | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian.
  'includeIngredients': "orange", // String | A comma-separated list of ingredients that should/must be used in the drinks.
  'excludeIngredients': "vodka", // String | A comma-separated list of ingredients or ingredient types that the drinks must not contain.
  'minCalories': 100, // Number | The minimum amount of calories the drink must have per serving.
  'maxCalories': 655, // Number | The maximum amount of calories the drink can have per serving.
  'minCarbs': 10.1, // Number | The minimum amount of carbohydrates in grams the drink must have per serving.
  'maxCarbs': 25.5, // Number | The maximum amount of carbohydrates in grams the drink can have per serving.
  'minProtein': 10.1, // Number | The minimum amount of protein in grams the drink must have per serving.
  'maxProtein': 25.5, // Number | The maximum amount of protein in grams the drink can have per serving.
  'minFat': 10.1, // Number | The minimum amount of fat in grams the drink must have per serving.
  'maxFat': 25.5, // Number | The maximum amount of fat in grams the drink can have per serving.
  'minAlcoholPercent': 10, // Number | The minimum alcohol percentage the drink must have.
  'maxAlcoholPercent': 35, // Number | The maximum alcohol percentage the drink can have.
  'minCaffeine': 30.4, // Number | The minimum amount of caffeine in milligrams the drink must have per serving.
  'maxCaffeine': 80.9, // Number | The maximum amount of caffeine in milligrams the drink can have per serving.
  'sort': "calories", // String | The attribute by which to sort the drinks.
  'sortDirection': "ASC", // String | Whether to sort ascending or descending (ASC or DESC).
  'offset': 0, // Number | The number of drinks to skip, between 0 and 90.
  'number': 3 // Number | The number of drinks, between 1 and 10.
};
apiInstance.searchDrinksAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **glassTypes** | **String**| A comma-separated list (interpreted as OR) of glass types that the drink should be served in. | [optional] 
 **flavors** | **String**| A comma-separated list (interpreted as AND) of dominant flavors in the drink. | [optional] 
 **diet** | **String**| The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. | [optional] 
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the drinks. | [optional] 
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the drinks must not contain. | [optional] 
 **minCalories** | **Number**| The minimum amount of calories the drink must have per serving. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the drink can have per serving. | [optional] 
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the drink must have per serving. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the drink can have per serving. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the drink must have per serving. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the drink can have per serving. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the drink must have per serving. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the drink can have per serving. | [optional] 
 **minAlcoholPercent** | **Number**| The minimum alcohol percentage the drink must have. | [optional] 
 **maxAlcoholPercent** | **Number**| The maximum alcohol percentage the drink can have. | [optional] 
 **minCaffeine** | **Number**| The minimum amount of caffeine in milligrams the drink must have per serving. | [optional] 
 **maxCaffeine** | **Number**| The maximum amount of caffeine in milligrams the drink can have per serving. | [optional] 
 **sort** | **String**| The attribute by which to sort the drinks. | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **Number**| The number of drinks to skip, between 0 and 90. | [optional] 
 **number** | **Number**| The number of drinks, between 1 and 10. | [optional] 

### Return type

[**SearchDrinksAPI200Response**](SearchDrinksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRecipesAPI

> SearchRecipesAPI200Response searchRecipesAPI(opts)

Search Recipes API

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.FoodApi();
let opts = {
  'query': "pasta with mushrooms but without nuts", // String | The search query.
  'cuisines': "mexican", // String | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as 'OR').
  'excludeCuisines': "indian,japanese", // String | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as 'AND').
  'mealType': "dessert", // String | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
  'diet': "paleo", // String | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
  'intolerances': "gluten,dairy,shellfish", // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
  'equipment': "blender,frying pan,bowl", // String | The equipment required. Multiple values will be interpreted as 'OR'.
  'includeIngredients': "tomato,cheese", // String | A comma-separated list of ingredients that should/must be used in the recipes.
  'excludeIngredients': "olives,capers", // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  'fillIngredients': true, // Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
  'addRecipeInformation': true, // Boolean | If set to true, you get more information about the recipes returned.
  'maxTime': 45, // Number | The maximum time in minutes it should take to prepare and cook the recipe.
  'minServings': 1, // Number | The minimum amount of servings the recipe is for.
  'maxServings': 8, // Number | The maximum amount of servings the recipe is for.
  'minCalories': 100, // Number | The minimum amount of calories the recipe must have per serving.
  'maxCalories': 655, // Number | The maximum amount of calories the recipe can have per serving.
  'minCarbs': 10.1, // Number | The minimum amount of carbohydrates in grams the recipe must have per serving.
  'maxCarbs': 25.5, // Number | The maximum amount of carbohydrates in grams the recipe can have per serving.
  'minProtein': 10.1, // Number | The minimum amount of protein in grams the recipe must have per serving.
  'maxProtein': 25.5, // Number | The maximum amount of protein in grams the recipe can have per serving.
  'minFat': 10.1, // Number | The minimum amount of fat in grams the recipe must have per serving.
  'maxFat': 25.5, // Number | The maximum amount of fat in grams the recipe can have per serving.
  'minSugar': 10.1, // Number | The minimum amount of sugar in grams the recipe must have per serving.
  'maxSugar': 25.5, // Number | The maximum amount of sugar in grams the recipe can have per serving.
  'minFiber': 10.1, // Number | The minimum amount of fiber in grams the recipe must have per serving.
  'maxFiber': 25.5, // Number | The maximum amount of fiber in grams the recipe can have per serving.
  'minFolate': 30.4, // Number | The minimum amount of folate in micrograms the recipe must have per serving.
  'maxFolate': 80.9, // Number | The maximum amount of folate in micrograms the recipe can have per serving.
  'minFolicAcid': 30.4, // Number | The minimum amount of folic acid in micrograms the recipe must have per serving.
  'maxFolicAcid': 80.9, // Number | The maximum amount of folic acid in micrograms the recipe can have per serving.
  'minIodine': 30.4, // Number | The minimum amount of iodine in micrograms the recipe must have per serving.
  'maxIodine': 80.9, // Number | The maximum amount of iodine in micrograms the recipe can have per serving.
  'minIron': 30.4, // Number | The minimum amount of iron in milligrams the recipe must have per serving.
  'maxIron': 80.9, // Number | The maximum amount of iron in milligrams the recipe can have per serving.
  'minZinc': 30.4, // Number | The minimum amount of zinc in milligrams the recipe must have per serving.
  'maxZinc': 80.9, // Number | The maximum amount of zinc in milligrams the recipe can have per serving.
  'minMagnesium': 30.4, // Number | The minimum amount of magnesium in milligrams the recipe must have per serving.
  'maxMagnesium': 80.9, // Number | The maximum amount of magnesium in milligrams the recipe can have per serving.
  'minManganese': 30.4, // Number | The minimum amount of manganese in milligrams the recipe must have per serving.
  'maxManganese': 80.9, // Number | The maximum amount of manganese in milligrams the recipe can have per serving.
  'minPhosphorus': 30.4, // Number | The minimum amount of phosphorus in milligrams the recipe must have per serving.
  'maxPhosphorus': 80.9, // Number | The maximum amount of phosphorus in milligrams the recipe can have per serving.
  'minPotassium': 30.4, // Number | The minimum amount of potassium in milligrams the recipe must have per serving.
  'maxPotassium': 80.9, // Number | The maximum amount of potassium in milligrams the recipe can have per serving.
  'minSodium': 30.4, // Number | The minimum amount of sodium in milligrams the recipe must have per serving.
  'maxSodium': 80.9, // Number | The maximum amount of sodium in milligrams the recipe can have per serving.
  'minSelenium': 30.4, // Number | The minimum amount of selenium in micrograms the recipe must have per serving.
  'maxSelenium': 80.9, // Number | The maximum amount of selenium in micrograms the recipe can have per serving.
  'minCopper': 30.4, // Number | The minimum amount of copper in milligrams the recipe must have per serving.
  'maxCopper': 80.9, // Number | The maximum amount of copper in milligrams the recipe can have per serving.
  'minCalcium': 30.4, // Number | The minimum amount of calcium in milligrams the recipe must have per serving.
  'maxCalcium': 80.9, // Number | The maximum amount of calcium in milligrams the recipe can have per serving.
  'minCholine': 30.4, // Number | The minimum amount of choline in milligrams the recipe must have per serving.
  'maxCholine': 80.9, // Number | The maximum amount of choline in milligrams the recipe can have per serving.
  'minCholesterol': 30.4, // Number | The minimum amount of cholesterol in milligrams the recipe must have per serving.
  'maxCholesterol': 80.9, // Number | The maximum amount of cholesterol in milligrams the recipe can have per serving.
  'minFluoride': 30.4, // Number | The minimum amount of fluoride in milligrams the recipe must have per serving.
  'maxFluoride': 80.9, // Number | The maximum amount of fluoride in milligrams the recipe can have per serving.
  'minAlcohol': 10.1, // Number | The minimum amount of alcohol in grams the recipe must have per serving.
  'maxAlcohol': 25.5, // Number | The maximum amount of alcohol in grams the recipe can have per serving.
  'minCaffeine': 30.4, // Number | The minimum amount of caffeine in milligrams the recipe must have per serving.
  'maxCaffeine': 80.9, // Number | The maximum amount of caffeine in milligrams the recipe can have per serving.
  'minSaturatedFat': 30.4, // Number | The minimum amount of saturated fat in grams the recipe must have per serving.
  'maxSaturatedFat': 80.9, // Number | The maximum amount of saturated fat in grams the recipe can have per serving.
  'minVitaminA': 30.4, // Number | The minimum amount of Vitamin A in IU the recipe must have per serving.
  'maxVitaminA': 80.9, // Number | The maximum amount of Vitamin A in IU the recipe can have per serving.
  'minVitaminC': 30.4, // Number | The minimum amount of Vitamin C in milligrams the recipe must have per serving.
  'maxVitaminC': 80.9, // Number | The maximum amount of Vitamin C in milligrams the recipe can have per serving.
  'minVitaminD': 30.4, // Number | The minimum amount of Vitamin D in micrograms the recipe must have per serving.
  'maxVitaminD': 80.9, // Number | The maximum amount of Vitamin D in micrograms the recipe can have per serving.
  'minVitaminE': 30.4, // Number | The minimum amount of Vitamin E in milligrams the recipe must have per serving.
  'maxVitaminE': 80.9, // Number | The maximum amount of Vitamin E in milligrams the recipe can have per serving.
  'minVitaminK': 30.4, // Number | The minimum amount of Vitamin K in micrograms the recipe must have per serving.
  'maxVitaminK': 80.9, // Number | The maximum amount of Vitamin K in micrograms the recipe can have per serving.
  'minVitaminB1': 30.4, // Number | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
  'maxVitaminB1': 80.9, // Number | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
  'minVitaminB2': 30.4, // Number | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
  'maxVitaminB2': 80.9, // Number | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
  'minVitaminB3': 30.4, // Number | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
  'maxVitaminB3': 80.9, // Number | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
  'minVitaminB5': 30.4, // Number | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
  'maxVitaminB5': 80.9, // Number | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
  'minVitaminB6': 30.4, // Number | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
  'maxVitaminB6': 80.9, // Number | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
  'minVitaminB12': 30.4, // Number | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
  'maxVitaminB12': 80.9, // Number | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
  'sort': "meta-score", // String | The strategy to sort recipes by.
  'sortDirection': "ASC", // String | Whether to sort ascending or descending (ASC or DESC).
  'offset': 0, // Number | The number of recipes to skip, between 0 and 900.
  'number': 3 // Number | The number of recipes, between 1 and 100.
};
apiInstance.searchRecipesAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **cuisines** | **String**| The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as &#39;OR&#39;). | [optional] 
 **excludeCuisines** | **String**| The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as &#39;AND&#39;). | [optional] 
 **mealType** | **String**| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] 
 **diet** | **String**| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] 
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] 
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] 
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **fillIngredients** | **Boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **addRecipeInformation** | **Boolean**| If set to true, you get more information about the recipes returned. | [optional] 
 **maxTime** | **Number**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **minServings** | **Number**| The minimum amount of servings the recipe is for. | [optional] 
 **maxServings** | **Number**| The maximum amount of servings the recipe is for. | [optional] 
 **minCalories** | **Number**| The minimum amount of calories the recipe must have per serving. | [optional] 
 **maxCalories** | **Number**| The maximum amount of calories the recipe can have per serving. | [optional] 
 **minCarbs** | **Number**| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] 
 **maxCarbs** | **Number**| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] 
 **minProtein** | **Number**| The minimum amount of protein in grams the recipe must have per serving. | [optional] 
 **maxProtein** | **Number**| The maximum amount of protein in grams the recipe can have per serving. | [optional] 
 **minFat** | **Number**| The minimum amount of fat in grams the recipe must have per serving. | [optional] 
 **maxFat** | **Number**| The maximum amount of fat in grams the recipe can have per serving. | [optional] 
 **minSugar** | **Number**| The minimum amount of sugar in grams the recipe must have per serving. | [optional] 
 **maxSugar** | **Number**| The maximum amount of sugar in grams the recipe can have per serving. | [optional] 
 **minFiber** | **Number**| The minimum amount of fiber in grams the recipe must have per serving. | [optional] 
 **maxFiber** | **Number**| The maximum amount of fiber in grams the recipe can have per serving. | [optional] 
 **minFolate** | **Number**| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] 
 **maxFolate** | **Number**| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] 
 **minFolicAcid** | **Number**| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] 
 **maxFolicAcid** | **Number**| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] 
 **minIodine** | **Number**| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] 
 **maxIodine** | **Number**| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] 
 **minIron** | **Number**| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] 
 **maxIron** | **Number**| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] 
 **minZinc** | **Number**| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] 
 **maxZinc** | **Number**| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] 
 **minMagnesium** | **Number**| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] 
 **maxMagnesium** | **Number**| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] 
 **minManganese** | **Number**| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] 
 **maxManganese** | **Number**| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] 
 **minPhosphorus** | **Number**| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] 
 **maxPhosphorus** | **Number**| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] 
 **minPotassium** | **Number**| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] 
 **maxPotassium** | **Number**| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] 
 **minSodium** | **Number**| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] 
 **maxSodium** | **Number**| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] 
 **minSelenium** | **Number**| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] 
 **maxSelenium** | **Number**| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] 
 **minCopper** | **Number**| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] 
 **maxCopper** | **Number**| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] 
 **minCalcium** | **Number**| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] 
 **maxCalcium** | **Number**| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] 
 **minCholine** | **Number**| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] 
 **maxCholine** | **Number**| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] 
 **minCholesterol** | **Number**| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] 
 **maxCholesterol** | **Number**| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] 
 **minFluoride** | **Number**| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] 
 **maxFluoride** | **Number**| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] 
 **minAlcohol** | **Number**| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] 
 **maxAlcohol** | **Number**| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] 
 **minCaffeine** | **Number**| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] 
 **maxCaffeine** | **Number**| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] 
 **minSaturatedFat** | **Number**| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] 
 **maxSaturatedFat** | **Number**| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] 
 **minVitaminA** | **Number**| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] 
 **maxVitaminA** | **Number**| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] 
 **minVitaminC** | **Number**| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminC** | **Number**| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] 
 **minVitaminD** | **Number**| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] 
 **maxVitaminD** | **Number**| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] 
 **minVitaminE** | **Number**| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminE** | **Number**| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] 
 **minVitaminK** | **Number**| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] 
 **maxVitaminK** | **Number**| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] 
 **minVitaminB1** | **Number**| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB1** | **Number**| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB2** | **Number**| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB2** | **Number**| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB3** | **Number**| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB3** | **Number**| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB5** | **Number**| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB5** | **Number**| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB6** | **Number**| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB6** | **Number**| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] 
 **minVitaminB12** | **Number**| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] 
 **maxVitaminB12** | **Number**| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] 
 **sort** | **String**| The strategy to sort recipes by. | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **Number**| The number of recipes to skip, between 0 and 900. | [optional] 
 **number** | **Number**| The number of recipes, between 1 and 100. | [optional] 

### Return type

[**SearchRecipesAPI200Response**](SearchRecipesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRestaurantsAPI

> SearchRestaurantsAPI200Response searchRestaurantsAPI(lat, lon, opts)

Search Restaurants API

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.FoodApi();
let lat = 32.715736; // Number | The latitude to search around.
let lon = -117.161087; // Number | The longitude to search around.
let opts = {
  'query': "burger", // String | The search query.
  'distance': 5, // Number | The maximum distance of the restaurant in miles around the given location.
  'budget': 25, // Number | The budget in USD for the meal.
  'minRating': 4.4, // Number | The minimum rating of the restaurants in range [0,5].
  'cuisine': "Mexican", // String | The cuisine that the restaurants should support.
  'isOpen': true, // Boolean | Whether the restaurants have to be open now.
  'page': 0, // Number | The page of the results.
  'sort': "rating" // String | The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
};
apiInstance.searchRestaurantsAPI(lat, lon, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Number**| The latitude to search around. | 
 **lon** | **Number**| The longitude to search around. | 
 **query** | **String**| The search query. | [optional] 
 **distance** | **Number**| The maximum distance of the restaurant in miles around the given location. | [optional] 
 **budget** | **Number**| The budget in USD for the meal. | [optional] 
 **minRating** | **Number**| The minimum rating of the restaurants in range [0,5]. | [optional] 
 **cuisine** | **String**| The cuisine that the restaurants should support. | [optional] 
 **isOpen** | **Boolean**| Whether the restaurants have to be open now. | [optional] 
 **page** | **Number**| The page of the results. | [optional] 
 **sort** | **String**| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] 

### Return type

[**SearchRestaurantsAPI200Response**](SearchRestaurantsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

