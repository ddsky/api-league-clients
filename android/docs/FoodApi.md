# FoodApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**computeNutrition**](FoodApi.md#computeNutrition) | **GET** /compute-nutrition | Compute Nutrition
[**retrieveRecipeInformation**](FoodApi.md#retrieveRecipeInformation) | **GET** /retrieve-recipe | Retrieve Recipe Information
[**searchRecipes**](FoodApi.md#searchRecipes) | **GET** /search-recipes | Search Recipes
[**searchRestaurants**](FoodApi.md#searchRestaurants) | **GET** /search-restaurants | Search Restaurants



## computeNutrition

> ComputeNutrition200Response computeNutrition(ingredients, servings, reduceOils)

Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example

```java
// Import classes:
//import com.apileague.FoodApi;

FoodApi apiInstance = new FoodApi();
String ingredients = 1 cup apples,3oz milk,35g butter; // String | A comma-separated list of the ingredients of the recipe.
Integer servings = 1; // Integer | The number of servings the ingredients make. Nutrition is computed per serving.
Boolean reduceOils = true; // Boolean | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
try {
    ComputeNutrition200Response result = apiInstance.computeNutrition(ingredients, servings, reduceOils);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FoodApi#computeNutrition");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **String**| A comma-separated list of the ingredients of the recipe. | [default to null]
 **servings** | **Integer**| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] [default to null]
 **reduceOils** | **Boolean**| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] [default to null]

### Return type

[**ComputeNutrition200Response**](ComputeNutrition200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieveRecipeInformation

> RetrieveRecipeInformation200Response retrieveRecipeInformation(id, addWinePairing)

Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example

```java
// Import classes:
//import com.apileague.FoodApi;

FoodApi apiInstance = new FoodApi();
Integer id = 74987; // Integer | The id of the recipe to retrieve.
Boolean addWinePairing = true; // Boolean | Whether to pair a wine to the recipe.
try {
    RetrieveRecipeInformation200Response result = apiInstance.retrieveRecipeInformation(id, addWinePairing);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FoodApi#retrieveRecipeInformation");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the recipe to retrieve. | [default to null]
 **addWinePairing** | **Boolean**| Whether to pair a wine to the recipe. | [optional] [default to null]

### Return type

[**RetrieveRecipeInformation200Response**](RetrieveRecipeInformation200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRecipes

> SearchRecipes200Response searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number)

Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example

```java
// Import classes:
//import com.apileague.FoodApi;

FoodApi apiInstance = new FoodApi();
String query = pasta with mushrooms but without nuts; // String | The search query.
String cuisines = mexican; // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR').
String excludeCuisines = indian,japanese; // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND').
String mealType = dessert; // String | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
String diet = paleo; // String | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
String intolerances = gluten,dairy,shellfish; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
String equipment = blender,frying pan,bowl; // String | The equipment required. Multiple values will be interpreted as 'OR'.
String includeIngredients = tomato,cheese; // String | A comma-separated list of ingredients that should/must be used in the recipes.
String excludeIngredients = olives,capers; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
Boolean fillIngredients = true; // Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
Boolean addRecipeInformation = true; // Boolean | If set to true, you get more information about the recipes returned.
Integer maxTime = 45; // Integer | The maximum time in minutes it should take to prepare and cook the recipe.
Double minCalories = 100; // Double | The minimum amount of calories the recipe must have per serving.
Double maxCalories = 655; // Double | The maximum amount of calories the recipe can have per serving.
Double minCarbs = 10.1; // Double | The minimum amount of carbohydrates in grams the recipe must have per serving.
Double maxCarbs = 25.5; // Double | The maximum amount of carbohydrates in grams the recipe can have per serving.
Double minProtein = 10.1; // Double | The minimum amount of protein in grams the recipe must have per serving.
Double maxProtein = 25.5; // Double | The maximum amount of protein in grams the recipe can have per serving.
Double minFat = 10.1; // Double | The minimum amount of fat in grams the recipe must have per serving.
Double maxFat = 25.5; // Double | The maximum amount of fat in grams the recipe can have per serving.
Double minSugar = 10.1; // Double | The minimum amount of sugar in grams the recipe must have per serving.
Double maxSugar = 25.5; // Double | The maximum amount of sugar in grams the recipe can have per serving.
Double minFiber = 10.1; // Double | The minimum amount of fiber in grams the recipe must have per serving.
Double maxFiber = 25.5; // Double | The maximum amount of fiber in grams the recipe can have per serving.
Double minFolate = 30.4; // Double | The minimum amount of folate in micrograms the recipe must have per serving.
Double maxFolate = 80.9; // Double | The maximum amount of folate in micrograms the recipe can have per serving.
Double minFolicAcid = 30.4; // Double | The minimum amount of folic acid in micrograms the recipe must have per serving.
Double maxFolicAcid = 80.9; // Double | The maximum amount of folic acid in micrograms the recipe can have per serving.
Double minIodine = 30.4; // Double | The minimum amount of iodine in micrograms the recipe must have per serving.
Double maxIodine = 80.9; // Double | The maximum amount of iodine in micrograms the recipe can have per serving.
Double minIron = 30.4; // Double | The minimum amount of iron in milligrams the recipe must have per serving.
Double maxIron = 80.9; // Double | The maximum amount of iron in milligrams the recipe can have per serving.
Double minZinc = 30.4; // Double | The minimum amount of zinc in milligrams the recipe must have per serving.
Double maxZinc = 80.9; // Double | The maximum amount of zinc in milligrams the recipe can have per serving.
Double minMagnesium = 30.4; // Double | The minimum amount of magnesium in milligrams the recipe must have per serving.
Double maxMagnesium = 80.9; // Double | The maximum amount of magnesium in milligrams the recipe can have per serving.
Double minManganese = 30.4; // Double | The minimum amount of manganese in milligrams the recipe must have per serving.
Double maxManganese = 80.9; // Double | The maximum amount of manganese in milligrams the recipe can have per serving.
Double minPhosphorus = 30.4; // Double | The minimum amount of phosphorus in milligrams the recipe must have per serving.
Double maxPhosphorus = 80.9; // Double | The maximum amount of phosphorus in milligrams the recipe can have per serving.
Double minPotassium = 30.4; // Double | The minimum amount of potassium in milligrams the recipe must have per serving.
Double maxPotassium = 80.9; // Double | The maximum amount of potassium in milligrams the recipe can have per serving.
Double minSodium = 30.4; // Double | The minimum amount of sodium in milligrams the recipe must have per serving.
Double maxSodium = 80.9; // Double | The maximum amount of sodium in milligrams the recipe can have per serving.
Double minSelenium = 30.4; // Double | The minimum amount of selenium in micrograms the recipe must have per serving.
Double maxSelenium = 80.9; // Double | The maximum amount of selenium in micrograms the recipe can have per serving.
Double minCopper = 30.4; // Double | The minimum amount of copper in milligrams the recipe must have per serving.
Double maxCopper = 80.9; // Double | The maximum amount of copper in milligrams the recipe can have per serving.
Double minCalcium = 30.4; // Double | The minimum amount of calcium in milligrams the recipe must have per serving.
Double maxCalcium = 80.9; // Double | The maximum amount of calcium in milligrams the recipe can have per serving.
Double minCholine = 30.4; // Double | The minimum amount of choline in milligrams the recipe must have per serving.
Double maxCholine = 80.9; // Double | The maximum amount of choline in milligrams the recipe can have per serving.
Double minCholesterol = 30.4; // Double | The minimum amount of cholesterol in milligrams the recipe must have per serving.
Double maxCholesterol = 80.9; // Double | The maximum amount of cholesterol in milligrams the recipe can have per serving.
Double minFluoride = 30.4; // Double | The minimum amount of fluoride in milligrams the recipe must have per serving.
Double maxFluoride = 80.9; // Double | The maximum amount of fluoride in milligrams the recipe can have per serving.
Double minAlcohol = 10.1; // Double | The minimum amount of alcohol in grams the recipe must have per serving.
Double maxAlcohol = 25.5; // Double | The maximum amount of alcohol in grams the recipe can have per serving.
Double minCaffeine = 30.4; // Double | The minimum amount of caffeine in milligrams the recipe must have per serving.
Double maxCaffeine = 80.9; // Double | The maximum amount of caffeine in milligrams the recipe can have per serving.
Double minSaturatedFat = 30.4; // Double | The minimum amount of saturated fat in grams the recipe must have per serving.
Double maxSaturatedFat = 80.9; // Double | The maximum amount of saturated fat in grams the recipe can have per serving.
Double minVitaminA = 30.4; // Double | The minimum amount of Vitamin A in IU the recipe must have per serving.
Double maxVitaminA = 80.9; // Double | The maximum amount of Vitamin A in IU the recipe can have per serving.
Double minVitaminC = 30.4; // Double | The minimum amount of Vitamin C in milligrams the recipe must have per serving.
Double maxVitaminC = 80.9; // Double | The maximum amount of Vitamin C in milligrams the recipe can have per serving.
Double minVitaminD = 30.4; // Double | The minimum amount of Vitamin D in micrograms the recipe must have per serving.
Double maxVitaminD = 80.9; // Double | The maximum amount of Vitamin D in micrograms the recipe can have per serving.
Double minVitaminE = 30.4; // Double | The minimum amount of Vitamin E in milligrams the recipe must have per serving.
Double maxVitaminE = 80.9; // Double | The maximum amount of Vitamin E in milligrams the recipe can have per serving.
Double minVitaminK = 30.4; // Double | The minimum amount of Vitamin K in micrograms the recipe must have per serving.
Double maxVitaminK = 80.9; // Double | The maximum amount of Vitamin K in micrograms the recipe can have per serving.
Double minVitaminB1 = 30.4; // Double | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
Double maxVitaminB1 = 80.9; // Double | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
Double minVitaminB2 = 30.4; // Double | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
Double maxVitaminB2 = 80.9; // Double | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
Double minVitaminB3 = 30.4; // Double | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
Double maxVitaminB3 = 80.9; // Double | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
Double minVitaminB5 = 30.4; // Double | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
Double maxVitaminB5 = 80.9; // Double | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
Double minVitaminB6 = 30.4; // Double | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
Double maxVitaminB6 = 80.9; // Double | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
Double minVitaminB12 = 30.4; // Double | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
Double maxVitaminB12 = 80.9; // Double | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
String sort = meta-score; // String | The strategy to sort recipes by. See a full list of supported sorting options.
String sortDirection = ASC; // String | Whether to sort ascending or descending (ASC or DESC).
Integer offset = 0; // Integer | The number of recipes to skip, between 0 and 900.
Integer number = 3; // Integer | The number of recipes, between 1 and 100.
try {
    SearchRecipes200Response result = apiInstance.searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FoodApi#searchRecipes");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] [default to null]
 **cuisines** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). | [optional] [default to null]
 **excludeCuisines** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). | [optional] [default to null]
 **mealType** | **String**| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] [default to null]
 **diet** | **String**| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] [default to null]
 **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] [default to null]
 **equipment** | **String**| The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] [default to null]
 **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] [default to null]
 **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] [default to null]
 **fillIngredients** | **Boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] [default to null]
 **addRecipeInformation** | **Boolean**| If set to true, you get more information about the recipes returned. | [optional] [default to null]
 **maxTime** | **Integer**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] [default to null]
 **minCalories** | **Double**| The minimum amount of calories the recipe must have per serving. | [optional] [default to null]
 **maxCalories** | **Double**| The maximum amount of calories the recipe can have per serving. | [optional] [default to null]
 **minCarbs** | **Double**| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] [default to null]
 **maxCarbs** | **Double**| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] [default to null]
 **minProtein** | **Double**| The minimum amount of protein in grams the recipe must have per serving. | [optional] [default to null]
 **maxProtein** | **Double**| The maximum amount of protein in grams the recipe can have per serving. | [optional] [default to null]
 **minFat** | **Double**| The minimum amount of fat in grams the recipe must have per serving. | [optional] [default to null]
 **maxFat** | **Double**| The maximum amount of fat in grams the recipe can have per serving. | [optional] [default to null]
 **minSugar** | **Double**| The minimum amount of sugar in grams the recipe must have per serving. | [optional] [default to null]
 **maxSugar** | **Double**| The maximum amount of sugar in grams the recipe can have per serving. | [optional] [default to null]
 **minFiber** | **Double**| The minimum amount of fiber in grams the recipe must have per serving. | [optional] [default to null]
 **maxFiber** | **Double**| The maximum amount of fiber in grams the recipe can have per serving. | [optional] [default to null]
 **minFolate** | **Double**| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] [default to null]
 **maxFolate** | **Double**| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] [default to null]
 **minFolicAcid** | **Double**| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] [default to null]
 **maxFolicAcid** | **Double**| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] [default to null]
 **minIodine** | **Double**| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] [default to null]
 **maxIodine** | **Double**| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] [default to null]
 **minIron** | **Double**| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxIron** | **Double**| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] [default to null]
 **minZinc** | **Double**| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxZinc** | **Double**| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] [default to null]
 **minMagnesium** | **Double**| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxMagnesium** | **Double**| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] [default to null]
 **minManganese** | **Double**| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxManganese** | **Double**| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] [default to null]
 **minPhosphorus** | **Double**| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxPhosphorus** | **Double**| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] [default to null]
 **minPotassium** | **Double**| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxPotassium** | **Double**| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] [default to null]
 **minSodium** | **Double**| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxSodium** | **Double**| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] [default to null]
 **minSelenium** | **Double**| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] [default to null]
 **maxSelenium** | **Double**| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] [default to null]
 **minCopper** | **Double**| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxCopper** | **Double**| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] [default to null]
 **minCalcium** | **Double**| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxCalcium** | **Double**| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] [default to null]
 **minCholine** | **Double**| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxCholine** | **Double**| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] [default to null]
 **minCholesterol** | **Double**| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxCholesterol** | **Double**| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] [default to null]
 **minFluoride** | **Double**| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxFluoride** | **Double**| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] [default to null]
 **minAlcohol** | **Double**| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] [default to null]
 **maxAlcohol** | **Double**| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] [default to null]
 **minCaffeine** | **Double**| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxCaffeine** | **Double**| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] [default to null]
 **minSaturatedFat** | **Double**| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] [default to null]
 **maxSaturatedFat** | **Double**| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] [default to null]
 **minVitaminA** | **Double**| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] [default to null]
 **maxVitaminA** | **Double**| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] [default to null]
 **minVitaminC** | **Double**| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxVitaminC** | **Double**| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] [default to null]
 **minVitaminD** | **Double**| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] [default to null]
 **maxVitaminD** | **Double**| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] [default to null]
 **minVitaminE** | **Double**| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxVitaminE** | **Double**| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] [default to null]
 **minVitaminK** | **Double**| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] [default to null]
 **maxVitaminK** | **Double**| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] [default to null]
 **minVitaminB1** | **Double**| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxVitaminB1** | **Double**| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] [default to null]
 **minVitaminB2** | **Double**| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxVitaminB2** | **Double**| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] [default to null]
 **minVitaminB3** | **Double**| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxVitaminB3** | **Double**| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] [default to null]
 **minVitaminB5** | **Double**| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxVitaminB5** | **Double**| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] [default to null]
 **minVitaminB6** | **Double**| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxVitaminB6** | **Double**| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] [default to null]
 **minVitaminB12** | **Double**| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] [default to null]
 **maxVitaminB12** | **Double**| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] [default to null]
 **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] [default to null]
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] [default to null]
 **offset** | **Integer**| The number of recipes to skip, between 0 and 900. | [optional] [default to null]
 **number** | **Integer**| The number of recipes, between 1 and 100. | [optional] [default to null]

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchRestaurants

> SearchRestaurants200Response searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example

```java
// Import classes:
//import com.apileague.FoodApi;

FoodApi apiInstance = new FoodApi();
Double lat = 32.715736; // Double | The latitude to search around.
Double lon = -117.161087; // Double | The longitude to search around.
String query = burger; // String | The search query.
Integer distance = 5; // Integer | The maximum distance of the restaurant in miles around the given location.
Double budget = 25; // Double | The budget in USD for the meal.
Double minRating = 4.4; // Double | The minimum rating of the restaurants in range [0,5].
String cuisine = Mexican; // String | The cuisine that the restaurants should support.
Boolean isOpen = true; // Boolean | Whether the restaurants have to be open now.
Integer page = 0; // Integer | The page of the results.
String sort = rating; // String | The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
try {
    SearchRestaurants200Response result = apiInstance.searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FoodApi#searchRestaurants");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Double**| The latitude to search around. | [default to null]
 **lon** | **Double**| The longitude to search around. | [default to null]
 **query** | **String**| The search query. | [optional] [default to null]
 **distance** | **Integer**| The maximum distance of the restaurant in miles around the given location. | [optional] [default to null]
 **budget** | **Double**| The budget in USD for the meal. | [optional] [default to null]
 **minRating** | **Double**| The minimum rating of the restaurants in range [0,5]. | [optional] [default to null]
 **cuisine** | **String**| The cuisine that the restaurants should support. | [optional] [default to null]
 **isOpen** | **Boolean**| Whether the restaurants have to be open now. | [optional] [default to null]
 **page** | **Integer**| The page of the results. | [optional] [default to null]
 **sort** | **String**| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] [default to null]

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

