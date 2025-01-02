# FoodApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**computeNutritionAPI**](FoodApi.md#computeNutritionAPI) | **GET** /compute-nutrition | Compute Nutrition API |
| [**retrieveRecipeInformationAPI**](FoodApi.md#retrieveRecipeInformationAPI) | **GET** /retrieve-recipe | Retrieve Recipe Information API |
| [**searchDrinksAPI**](FoodApi.md#searchDrinksAPI) | **GET** /search-drinks | Search Drinks API |
| [**searchRecipesAPI**](FoodApi.md#searchRecipesAPI) | **GET** /search-recipes | Search Recipes API |
| [**searchRestaurantsAPI**](FoodApi.md#searchRestaurantsAPI) | **GET** /search-restaurants | Search Restaurants API |


<a id="computeNutritionAPI"></a>
# **computeNutritionAPI**
> ComputeNutritionAPI200Response computeNutritionAPI(ingredients, servings, reduceOils)

Compute Nutrition API

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = FoodApi()
val ingredients : kotlin.String = 1 cup apples,3oz milk,35g butter // kotlin.String | A comma-separated list of the ingredients of the recipe.
val servings : kotlin.Int = 1 // kotlin.Int | The number of servings the ingredients make. Nutrition is computed per serving.
val reduceOils : kotlin.Boolean = true // kotlin.Boolean | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
try {
    val result : ComputeNutritionAPI200Response = apiInstance.computeNutritionAPI(ingredients, servings, reduceOils)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FoodApi#computeNutritionAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FoodApi#computeNutritionAPI")
    e.printStackTrace()
}
```

### Parameters
| **ingredients** | **kotlin.String**| A comma-separated list of the ingredients of the recipe. | |
| **servings** | **kotlin.Int**| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **reduceOils** | **kotlin.Boolean**| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] |

### Return type

[**ComputeNutritionAPI200Response**](ComputeNutritionAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="retrieveRecipeInformationAPI"></a>
# **retrieveRecipeInformationAPI**
> RetrieveRecipeInformationAPI200Response retrieveRecipeInformationAPI(id, addWinePairing)

Retrieve Recipe Information API

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = FoodApi()
val id : kotlin.Int = 74987 // kotlin.Int | The id of the recipe to retrieve.
val addWinePairing : kotlin.Boolean = true // kotlin.Boolean | Whether to pair a wine to the recipe.
try {
    val result : RetrieveRecipeInformationAPI200Response = apiInstance.retrieveRecipeInformationAPI(id, addWinePairing)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FoodApi#retrieveRecipeInformationAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FoodApi#retrieveRecipeInformationAPI")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.Int**| The id of the recipe to retrieve. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **addWinePairing** | **kotlin.Boolean**| Whether to pair a wine to the recipe. | [optional] |

### Return type

[**RetrieveRecipeInformationAPI200Response**](RetrieveRecipeInformationAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchDrinksAPI"></a>
# **searchDrinksAPI**
> SearchDrinksAPI200Response searchDrinksAPI(query, glassTypes, flavors, diet, includeIngredients, excludeIngredients, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minAlcoholPercent, maxAlcoholPercent, minCaffeine, maxCaffeine, sort, sortDirection, offset, number)

Search Drinks API

Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = FoodApi()
val query : kotlin.String = vodka // kotlin.String | The search query.
val glassTypes : kotlin.String = Highball Glass // kotlin.String | A comma-separated list (interpreted as OR) of glass types that the drink should be served in.
val flavors : kotlin.String = sour,sweet // kotlin.String | A comma-separated list (interpreted as AND) of dominant flavors in the drink.
val diet : kotlin.String = paleo // kotlin.String | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian.
val includeIngredients : kotlin.String = orange // kotlin.String | A comma-separated list of ingredients that should/must be used in the drinks.
val excludeIngredients : kotlin.String = vodka // kotlin.String | A comma-separated list of ingredients or ingredient types that the drinks must not contain.
val minCalories : kotlin.Double = 100 // kotlin.Double | The minimum amount of calories the drink must have per serving.
val maxCalories : kotlin.Double = 655 // kotlin.Double | The maximum amount of calories the drink can have per serving.
val minCarbs : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of carbohydrates in grams the drink must have per serving.
val maxCarbs : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of carbohydrates in grams the drink can have per serving.
val minProtein : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of protein in grams the drink must have per serving.
val maxProtein : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of protein in grams the drink can have per serving.
val minFat : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of fat in grams the drink must have per serving.
val maxFat : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of fat in grams the drink can have per serving.
val minAlcoholPercent : kotlin.Double = 10 // kotlin.Double | The minimum alcohol percentage the drink must have.
val maxAlcoholPercent : kotlin.Double = 35 // kotlin.Double | The maximum alcohol percentage the drink can have.
val minCaffeine : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of caffeine in milligrams the drink must have per serving.
val maxCaffeine : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of caffeine in milligrams the drink can have per serving.
val sort : kotlin.String = calories // kotlin.String | The attribute by which to sort the drinks.
val sortDirection : kotlin.String = ASC // kotlin.String | Whether to sort ascending or descending (ASC or DESC).
val offset : kotlin.Int = 0 // kotlin.Int | The number of drinks to skip, between 0 and 90.
val number : kotlin.Int = 3 // kotlin.Int | The number of drinks, between 1 and 10.
try {
    val result : SearchDrinksAPI200Response = apiInstance.searchDrinksAPI(query, glassTypes, flavors, diet, includeIngredients, excludeIngredients, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minAlcoholPercent, maxAlcoholPercent, minCaffeine, maxCaffeine, sort, sortDirection, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FoodApi#searchDrinksAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FoodApi#searchDrinksAPI")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | [optional] |
| **glassTypes** | **kotlin.String**| A comma-separated list (interpreted as OR) of glass types that the drink should be served in. | [optional] |
| **flavors** | **kotlin.String**| A comma-separated list (interpreted as AND) of dominant flavors in the drink. | [optional] |
| **diet** | **kotlin.String**| The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. | [optional] |
| **includeIngredients** | **kotlin.String**| A comma-separated list of ingredients that should/must be used in the drinks. | [optional] |
| **excludeIngredients** | **kotlin.String**| A comma-separated list of ingredients or ingredient types that the drinks must not contain. | [optional] |
| **minCalories** | **kotlin.Double**| The minimum amount of calories the drink must have per serving. | [optional] |
| **maxCalories** | **kotlin.Double**| The maximum amount of calories the drink can have per serving. | [optional] |
| **minCarbs** | **kotlin.Double**| The minimum amount of carbohydrates in grams the drink must have per serving. | [optional] |
| **maxCarbs** | **kotlin.Double**| The maximum amount of carbohydrates in grams the drink can have per serving. | [optional] |
| **minProtein** | **kotlin.Double**| The minimum amount of protein in grams the drink must have per serving. | [optional] |
| **maxProtein** | **kotlin.Double**| The maximum amount of protein in grams the drink can have per serving. | [optional] |
| **minFat** | **kotlin.Double**| The minimum amount of fat in grams the drink must have per serving. | [optional] |
| **maxFat** | **kotlin.Double**| The maximum amount of fat in grams the drink can have per serving. | [optional] |
| **minAlcoholPercent** | **kotlin.Double**| The minimum alcohol percentage the drink must have. | [optional] |
| **maxAlcoholPercent** | **kotlin.Double**| The maximum alcohol percentage the drink can have. | [optional] |
| **minCaffeine** | **kotlin.Double**| The minimum amount of caffeine in milligrams the drink must have per serving. | [optional] |
| **maxCaffeine** | **kotlin.Double**| The maximum amount of caffeine in milligrams the drink can have per serving. | [optional] |
| **sort** | **kotlin.String**| The attribute by which to sort the drinks. | [optional] |
| **sortDirection** | **kotlin.String**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **kotlin.Int**| The number of drinks to skip, between 0 and 90. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of drinks, between 1 and 10. | [optional] |

### Return type

[**SearchDrinksAPI200Response**](SearchDrinksAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchRecipesAPI"></a>
# **searchRecipesAPI**
> SearchRecipesAPI200Response searchRecipesAPI(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number)

Search Recipes API

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = FoodApi()
val query : kotlin.String = pasta with mushrooms but without nuts // kotlin.String | The search query.
val cuisines : kotlin.String = mexican // kotlin.String | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as 'OR').
val excludeCuisines : kotlin.String = indian,japanese // kotlin.String | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as 'AND').
val mealType : kotlin.String = dessert // kotlin.String | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
val diet : kotlin.String = paleo // kotlin.String | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
val intolerances : kotlin.String = gluten,dairy,shellfish // kotlin.String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
val equipment : kotlin.String = blender,frying pan,bowl // kotlin.String | The equipment required. Multiple values will be interpreted as 'OR'.
val includeIngredients : kotlin.String = tomato,cheese // kotlin.String | A comma-separated list of ingredients that should/must be used in the recipes.
val excludeIngredients : kotlin.String = olives,capers // kotlin.String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
val fillIngredients : kotlin.Boolean = true // kotlin.Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
val addRecipeInformation : kotlin.Boolean = true // kotlin.Boolean | If set to true, you get more information about the recipes returned.
val maxTime : kotlin.Int = 45 // kotlin.Int | The maximum time in minutes it should take to prepare and cook the recipe.
val minServings : kotlin.Int = 1 // kotlin.Int | The minimum amount of servings the recipe is for.
val maxServings : kotlin.Int = 8 // kotlin.Int | The maximum amount of servings the recipe is for.
val minCalories : kotlin.Double = 100 // kotlin.Double | The minimum amount of calories the recipe must have per serving.
val maxCalories : kotlin.Double = 655 // kotlin.Double | The maximum amount of calories the recipe can have per serving.
val minCarbs : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of carbohydrates in grams the recipe must have per serving.
val maxCarbs : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of carbohydrates in grams the recipe can have per serving.
val minProtein : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of protein in grams the recipe must have per serving.
val maxProtein : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of protein in grams the recipe can have per serving.
val minFat : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of fat in grams the recipe must have per serving.
val maxFat : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of fat in grams the recipe can have per serving.
val minSugar : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of sugar in grams the recipe must have per serving.
val maxSugar : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of sugar in grams the recipe can have per serving.
val minFiber : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of fiber in grams the recipe must have per serving.
val maxFiber : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of fiber in grams the recipe can have per serving.
val minFolate : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of folate in micrograms the recipe must have per serving.
val maxFolate : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of folate in micrograms the recipe can have per serving.
val minFolicAcid : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of folic acid in micrograms the recipe must have per serving.
val maxFolicAcid : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of folic acid in micrograms the recipe can have per serving.
val minIodine : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of iodine in micrograms the recipe must have per serving.
val maxIodine : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of iodine in micrograms the recipe can have per serving.
val minIron : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of iron in milligrams the recipe must have per serving.
val maxIron : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of iron in milligrams the recipe can have per serving.
val minZinc : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of zinc in milligrams the recipe must have per serving.
val maxZinc : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of zinc in milligrams the recipe can have per serving.
val minMagnesium : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of magnesium in milligrams the recipe must have per serving.
val maxMagnesium : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of magnesium in milligrams the recipe can have per serving.
val minManganese : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of manganese in milligrams the recipe must have per serving.
val maxManganese : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of manganese in milligrams the recipe can have per serving.
val minPhosphorus : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of phosphorus in milligrams the recipe must have per serving.
val maxPhosphorus : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of phosphorus in milligrams the recipe can have per serving.
val minPotassium : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of potassium in milligrams the recipe must have per serving.
val maxPotassium : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of potassium in milligrams the recipe can have per serving.
val minSodium : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of sodium in milligrams the recipe must have per serving.
val maxSodium : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of sodium in milligrams the recipe can have per serving.
val minSelenium : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of selenium in micrograms the recipe must have per serving.
val maxSelenium : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of selenium in micrograms the recipe can have per serving.
val minCopper : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of copper in milligrams the recipe must have per serving.
val maxCopper : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of copper in milligrams the recipe can have per serving.
val minCalcium : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of calcium in milligrams the recipe must have per serving.
val maxCalcium : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of calcium in milligrams the recipe can have per serving.
val minCholine : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of choline in milligrams the recipe must have per serving.
val maxCholine : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of choline in milligrams the recipe can have per serving.
val minCholesterol : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of cholesterol in milligrams the recipe must have per serving.
val maxCholesterol : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of cholesterol in milligrams the recipe can have per serving.
val minFluoride : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of fluoride in milligrams the recipe must have per serving.
val maxFluoride : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of fluoride in milligrams the recipe can have per serving.
val minAlcohol : kotlin.Double = 10.1 // kotlin.Double | The minimum amount of alcohol in grams the recipe must have per serving.
val maxAlcohol : kotlin.Double = 25.5 // kotlin.Double | The maximum amount of alcohol in grams the recipe can have per serving.
val minCaffeine : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of caffeine in milligrams the recipe must have per serving.
val maxCaffeine : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of caffeine in milligrams the recipe can have per serving.
val minSaturatedFat : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of saturated fat in grams the recipe must have per serving.
val maxSaturatedFat : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of saturated fat in grams the recipe can have per serving.
val minVitaminA : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin A in IU the recipe must have per serving.
val maxVitaminA : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin A in IU the recipe can have per serving.
val minVitaminC : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin C in milligrams the recipe must have per serving.
val maxVitaminC : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin C in milligrams the recipe can have per serving.
val minVitaminD : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin D in micrograms the recipe must have per serving.
val maxVitaminD : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin D in micrograms the recipe can have per serving.
val minVitaminE : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin E in milligrams the recipe must have per serving.
val maxVitaminE : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin E in milligrams the recipe can have per serving.
val minVitaminK : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin K in micrograms the recipe must have per serving.
val maxVitaminK : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin K in micrograms the recipe can have per serving.
val minVitaminB1 : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
val maxVitaminB1 : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
val minVitaminB2 : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
val maxVitaminB2 : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
val minVitaminB3 : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
val maxVitaminB3 : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
val minVitaminB5 : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
val maxVitaminB5 : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
val minVitaminB6 : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
val maxVitaminB6 : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
val minVitaminB12 : kotlin.Double = 30.4 // kotlin.Double | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
val maxVitaminB12 : kotlin.Double = 80.9 // kotlin.Double | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
val sort : kotlin.String = meta-score // kotlin.String | The strategy to sort recipes by.
val sortDirection : kotlin.String = ASC // kotlin.String | Whether to sort ascending or descending (ASC or DESC).
val offset : kotlin.Int = 0 // kotlin.Int | The number of recipes to skip, between 0 and 900.
val number : kotlin.Int = 3 // kotlin.Int | The number of recipes, between 1 and 100.
try {
    val result : SearchRecipesAPI200Response = apiInstance.searchRecipesAPI(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FoodApi#searchRecipesAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FoodApi#searchRecipesAPI")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | [optional] |
| **cuisines** | **kotlin.String**| The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as &#39;OR&#39;). | [optional] |
| **excludeCuisines** | **kotlin.String**| The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as &#39;AND&#39;). | [optional] |
| **mealType** | **kotlin.String**| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] |
| **diet** | **kotlin.String**| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] |
| **intolerances** | **kotlin.String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] |
| **equipment** | **kotlin.String**| The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] |
| **includeIngredients** | **kotlin.String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] |
| **excludeIngredients** | **kotlin.String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] |
| **fillIngredients** | **kotlin.Boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] |
| **addRecipeInformation** | **kotlin.Boolean**| If set to true, you get more information about the recipes returned. | [optional] |
| **maxTime** | **kotlin.Int**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] |
| **minServings** | **kotlin.Int**| The minimum amount of servings the recipe is for. | [optional] |
| **maxServings** | **kotlin.Int**| The maximum amount of servings the recipe is for. | [optional] |
| **minCalories** | **kotlin.Double**| The minimum amount of calories the recipe must have per serving. | [optional] |
| **maxCalories** | **kotlin.Double**| The maximum amount of calories the recipe can have per serving. | [optional] |
| **minCarbs** | **kotlin.Double**| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] |
| **maxCarbs** | **kotlin.Double**| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] |
| **minProtein** | **kotlin.Double**| The minimum amount of protein in grams the recipe must have per serving. | [optional] |
| **maxProtein** | **kotlin.Double**| The maximum amount of protein in grams the recipe can have per serving. | [optional] |
| **minFat** | **kotlin.Double**| The minimum amount of fat in grams the recipe must have per serving. | [optional] |
| **maxFat** | **kotlin.Double**| The maximum amount of fat in grams the recipe can have per serving. | [optional] |
| **minSugar** | **kotlin.Double**| The minimum amount of sugar in grams the recipe must have per serving. | [optional] |
| **maxSugar** | **kotlin.Double**| The maximum amount of sugar in grams the recipe can have per serving. | [optional] |
| **minFiber** | **kotlin.Double**| The minimum amount of fiber in grams the recipe must have per serving. | [optional] |
| **maxFiber** | **kotlin.Double**| The maximum amount of fiber in grams the recipe can have per serving. | [optional] |
| **minFolate** | **kotlin.Double**| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] |
| **maxFolate** | **kotlin.Double**| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] |
| **minFolicAcid** | **kotlin.Double**| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] |
| **maxFolicAcid** | **kotlin.Double**| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] |
| **minIodine** | **kotlin.Double**| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] |
| **maxIodine** | **kotlin.Double**| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] |
| **minIron** | **kotlin.Double**| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] |
| **maxIron** | **kotlin.Double**| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] |
| **minZinc** | **kotlin.Double**| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] |
| **maxZinc** | **kotlin.Double**| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] |
| **minMagnesium** | **kotlin.Double**| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] |
| **maxMagnesium** | **kotlin.Double**| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] |
| **minManganese** | **kotlin.Double**| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] |
| **maxManganese** | **kotlin.Double**| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] |
| **minPhosphorus** | **kotlin.Double**| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] |
| **maxPhosphorus** | **kotlin.Double**| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] |
| **minPotassium** | **kotlin.Double**| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] |
| **maxPotassium** | **kotlin.Double**| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] |
| **minSodium** | **kotlin.Double**| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] |
| **maxSodium** | **kotlin.Double**| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] |
| **minSelenium** | **kotlin.Double**| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] |
| **maxSelenium** | **kotlin.Double**| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] |
| **minCopper** | **kotlin.Double**| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] |
| **maxCopper** | **kotlin.Double**| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] |
| **minCalcium** | **kotlin.Double**| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] |
| **maxCalcium** | **kotlin.Double**| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] |
| **minCholine** | **kotlin.Double**| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] |
| **maxCholine** | **kotlin.Double**| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] |
| **minCholesterol** | **kotlin.Double**| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] |
| **maxCholesterol** | **kotlin.Double**| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] |
| **minFluoride** | **kotlin.Double**| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] |
| **maxFluoride** | **kotlin.Double**| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] |
| **minAlcohol** | **kotlin.Double**| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] |
| **maxAlcohol** | **kotlin.Double**| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] |
| **minCaffeine** | **kotlin.Double**| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] |
| **maxCaffeine** | **kotlin.Double**| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] |
| **minSaturatedFat** | **kotlin.Double**| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] |
| **maxSaturatedFat** | **kotlin.Double**| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] |
| **minVitaminA** | **kotlin.Double**| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] |
| **maxVitaminA** | **kotlin.Double**| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] |
| **minVitaminC** | **kotlin.Double**| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminC** | **kotlin.Double**| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] |
| **minVitaminD** | **kotlin.Double**| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] |
| **maxVitaminD** | **kotlin.Double**| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] |
| **minVitaminE** | **kotlin.Double**| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminE** | **kotlin.Double**| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] |
| **minVitaminK** | **kotlin.Double**| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] |
| **maxVitaminK** | **kotlin.Double**| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] |
| **minVitaminB1** | **kotlin.Double**| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB1** | **kotlin.Double**| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB2** | **kotlin.Double**| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB2** | **kotlin.Double**| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB3** | **kotlin.Double**| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB3** | **kotlin.Double**| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB5** | **kotlin.Double**| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB5** | **kotlin.Double**| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB6** | **kotlin.Double**| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB6** | **kotlin.Double**| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB12** | **kotlin.Double**| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB12** | **kotlin.Double**| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] |
| **sort** | **kotlin.String**| The strategy to sort recipes by. | [optional] |
| **sortDirection** | **kotlin.String**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **kotlin.Int**| The number of recipes to skip, between 0 and 900. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of recipes, between 1 and 100. | [optional] |

### Return type

[**SearchRecipesAPI200Response**](SearchRecipesAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchRestaurantsAPI"></a>
# **searchRestaurantsAPI**
> SearchRestaurantsAPI200Response searchRestaurantsAPI(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort)

Search Restaurants API

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = FoodApi()
val lat : kotlin.Double = 32.715736 // kotlin.Double | The latitude to search around.
val lon : kotlin.Double = -117.161087 // kotlin.Double | The longitude to search around.
val query : kotlin.String = burger // kotlin.String | The search query.
val distance : kotlin.Int = 5 // kotlin.Int | The maximum distance of the restaurant in miles around the given location.
val budget : kotlin.Double = 25 // kotlin.Double | The budget in USD for the meal.
val minRating : kotlin.Double = 4.4 // kotlin.Double | The minimum rating of the restaurants in range [0,5].
val cuisine : kotlin.String = Mexican // kotlin.String | The cuisine that the restaurants should support.
val isOpen : kotlin.Boolean = true // kotlin.Boolean | Whether the restaurants have to be open now.
val page : kotlin.Int = 0 // kotlin.Int | The page of the results.
val sort : kotlin.String = rating // kotlin.String | The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
try {
    val result : SearchRestaurantsAPI200Response = apiInstance.searchRestaurantsAPI(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FoodApi#searchRestaurantsAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FoodApi#searchRestaurantsAPI")
    e.printStackTrace()
}
```

### Parameters
| **lat** | **kotlin.Double**| The latitude to search around. | |
| **lon** | **kotlin.Double**| The longitude to search around. | |
| **query** | **kotlin.String**| The search query. | [optional] |
| **distance** | **kotlin.Int**| The maximum distance of the restaurant in miles around the given location. | [optional] |
| **budget** | **kotlin.Double**| The budget in USD for the meal. | [optional] |
| **minRating** | **kotlin.Double**| The minimum rating of the restaurants in range [0,5]. | [optional] |
| **cuisine** | **kotlin.String**| The cuisine that the restaurants should support. | [optional] |
| **isOpen** | **kotlin.Boolean**| Whether the restaurants have to be open now. | [optional] |
| **page** | **kotlin.Int**| The page of the results. | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **sort** | **kotlin.String**| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] |

### Return type

[**SearchRestaurantsAPI200Response**](SearchRestaurantsAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

