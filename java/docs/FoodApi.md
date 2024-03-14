# FoodApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**computeNutrition**](FoodApi.md#computeNutrition) | **GET** /compute-nutrition | Compute Nutrition |
| [**retrieveRecipeInformation**](FoodApi.md#retrieveRecipeInformation) | **GET** /retrieve-recipe | Retrieve Recipe Information |
| [**searchRecipes**](FoodApi.md#searchRecipes) | **GET** /search-recipes | Search Recipes |
| [**searchRestaurants**](FoodApi.md#searchRestaurants) | **GET** /search-restaurants | Search Restaurants |


<a id="computeNutrition"></a>
# **computeNutrition**
> ComputeNutrition200Response computeNutrition(ingredients, servings, reduceOils)

Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.FoodApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    FoodApi apiInstance = new FoodApi(defaultClient);
    String ingredients = "1 cup apples,3oz milk,35g butter"; // String | A comma-separated list of the ingredients of the recipe.
    Integer servings = 1; // Integer | The number of servings the ingredients make. Nutrition is computed per serving.
    Boolean reduceOils = true; // Boolean | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
    try {
      ComputeNutrition200Response result = apiInstance.computeNutrition(ingredients, servings, reduceOils);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoodApi#computeNutrition");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ingredients** | **String**| A comma-separated list of the ingredients of the recipe. | |
| **servings** | **Integer**| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] |
| **reduceOils** | **Boolean**| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] |

### Return type

[**ComputeNutrition200Response**](ComputeNutrition200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="retrieveRecipeInformation"></a>
# **retrieveRecipeInformation**
> RetrieveRecipeInformation200Response retrieveRecipeInformation(id, addWinePairing)

Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.FoodApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    FoodApi apiInstance = new FoodApi(defaultClient);
    Integer id = 74987; // Integer | The id of the recipe to retrieve.
    Boolean addWinePairing = true; // Boolean | Whether to pair a wine to the recipe.
    try {
      RetrieveRecipeInformation200Response result = apiInstance.retrieveRecipeInformation(id, addWinePairing);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoodApi#retrieveRecipeInformation");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The id of the recipe to retrieve. | |
| **addWinePairing** | **Boolean**| Whether to pair a wine to the recipe. | [optional] |

### Return type

[**RetrieveRecipeInformation200Response**](RetrieveRecipeInformation200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="searchRecipes"></a>
# **searchRecipes**
> SearchRecipes200Response searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number)

Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.FoodApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    FoodApi apiInstance = new FoodApi(defaultClient);
    String query = "pasta with mushrooms but without nuts"; // String | The search query.
    String cuisines = "mexican"; // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR').
    String excludeCuisines = "indian,japanese"; // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND').
    String mealType = "dessert"; // String | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
    String diet = "paleo"; // String | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
    String intolerances = "gluten,dairy,shellfish"; // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
    String equipment = "blender,frying pan,bowl"; // String | The equipment required. Multiple values will be interpreted as 'OR'.
    String includeIngredients = "tomato,cheese"; // String | A comma-separated list of ingredients that should/must be used in the recipes.
    String excludeIngredients = "olives,capers"; // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
    Boolean fillIngredients = true; // Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
    Boolean addRecipeInformation = true; // Boolean | If set to true, you get more information about the recipes returned.
    Integer maxTime = 45; // Integer | The maximum time in minutes it should take to prepare and cook the recipe.
    Double minCalories = 100D; // Double | The minimum amount of calories the recipe must have per serving.
    Double maxCalories = 655D; // Double | The maximum amount of calories the recipe can have per serving.
    Double minCarbs = 10.1D; // Double | The minimum amount of carbohydrates in grams the recipe must have per serving.
    Double maxCarbs = 25.5D; // Double | The maximum amount of carbohydrates in grams the recipe can have per serving.
    Double minProtein = 10.1D; // Double | The minimum amount of protein in grams the recipe must have per serving.
    Double maxProtein = 25.5D; // Double | The maximum amount of protein in grams the recipe can have per serving.
    Double minFat = 10.1D; // Double | The minimum amount of fat in grams the recipe must have per serving.
    Double maxFat = 25.5D; // Double | The maximum amount of fat in grams the recipe can have per serving.
    Double minSugar = 10.1D; // Double | The minimum amount of sugar in grams the recipe must have per serving.
    Double maxSugar = 25.5D; // Double | The maximum amount of sugar in grams the recipe can have per serving.
    Double minFiber = 10.1D; // Double | The minimum amount of fiber in grams the recipe must have per serving.
    Double maxFiber = 25.5D; // Double | The maximum amount of fiber in grams the recipe can have per serving.
    Double minFolate = 30.4D; // Double | The minimum amount of folate in micrograms the recipe must have per serving.
    Double maxFolate = 80.9D; // Double | The maximum amount of folate in micrograms the recipe can have per serving.
    Double minFolicAcid = 30.4D; // Double | The minimum amount of folic acid in micrograms the recipe must have per serving.
    Double maxFolicAcid = 80.9D; // Double | The maximum amount of folic acid in micrograms the recipe can have per serving.
    Double minIodine = 30.4D; // Double | The minimum amount of iodine in micrograms the recipe must have per serving.
    Double maxIodine = 80.9D; // Double | The maximum amount of iodine in micrograms the recipe can have per serving.
    Double minIron = 30.4D; // Double | The minimum amount of iron in milligrams the recipe must have per serving.
    Double maxIron = 80.9D; // Double | The maximum amount of iron in milligrams the recipe can have per serving.
    Double minZinc = 30.4D; // Double | The minimum amount of zinc in milligrams the recipe must have per serving.
    Double maxZinc = 80.9D; // Double | The maximum amount of zinc in milligrams the recipe can have per serving.
    Double minMagnesium = 30.4D; // Double | The minimum amount of magnesium in milligrams the recipe must have per serving.
    Double maxMagnesium = 80.9D; // Double | The maximum amount of magnesium in milligrams the recipe can have per serving.
    Double minManganese = 30.4D; // Double | The minimum amount of manganese in milligrams the recipe must have per serving.
    Double maxManganese = 80.9D; // Double | The maximum amount of manganese in milligrams the recipe can have per serving.
    Double minPhosphorus = 30.4D; // Double | The minimum amount of phosphorus in milligrams the recipe must have per serving.
    Double maxPhosphorus = 80.9D; // Double | The maximum amount of phosphorus in milligrams the recipe can have per serving.
    Double minPotassium = 30.4D; // Double | The minimum amount of potassium in milligrams the recipe must have per serving.
    Double maxPotassium = 80.9D; // Double | The maximum amount of potassium in milligrams the recipe can have per serving.
    Double minSodium = 30.4D; // Double | The minimum amount of sodium in milligrams the recipe must have per serving.
    Double maxSodium = 80.9D; // Double | The maximum amount of sodium in milligrams the recipe can have per serving.
    Double minSelenium = 30.4D; // Double | The minimum amount of selenium in micrograms the recipe must have per serving.
    Double maxSelenium = 80.9D; // Double | The maximum amount of selenium in micrograms the recipe can have per serving.
    Double minCopper = 30.4D; // Double | The minimum amount of copper in milligrams the recipe must have per serving.
    Double maxCopper = 80.9D; // Double | The maximum amount of copper in milligrams the recipe can have per serving.
    Double minCalcium = 30.4D; // Double | The minimum amount of calcium in milligrams the recipe must have per serving.
    Double maxCalcium = 80.9D; // Double | The maximum amount of calcium in milligrams the recipe can have per serving.
    Double minCholine = 30.4D; // Double | The minimum amount of choline in milligrams the recipe must have per serving.
    Double maxCholine = 80.9D; // Double | The maximum amount of choline in milligrams the recipe can have per serving.
    Double minCholesterol = 30.4D; // Double | The minimum amount of cholesterol in milligrams the recipe must have per serving.
    Double maxCholesterol = 80.9D; // Double | The maximum amount of cholesterol in milligrams the recipe can have per serving.
    Double minFluoride = 30.4D; // Double | The minimum amount of fluoride in milligrams the recipe must have per serving.
    Double maxFluoride = 80.9D; // Double | The maximum amount of fluoride in milligrams the recipe can have per serving.
    Double minAlcohol = 10.1D; // Double | The minimum amount of alcohol in grams the recipe must have per serving.
    Double maxAlcohol = 25.5D; // Double | The maximum amount of alcohol in grams the recipe can have per serving.
    Double minCaffeine = 30.4D; // Double | The minimum amount of caffeine in milligrams the recipe must have per serving.
    Double maxCaffeine = 80.9D; // Double | The maximum amount of caffeine in milligrams the recipe can have per serving.
    Double minSaturatedFat = 30.4D; // Double | The minimum amount of saturated fat in grams the recipe must have per serving.
    Double maxSaturatedFat = 80.9D; // Double | The maximum amount of saturated fat in grams the recipe can have per serving.
    Double minVitaminA = 30.4D; // Double | The minimum amount of Vitamin A in IU the recipe must have per serving.
    Double maxVitaminA = 80.9D; // Double | The maximum amount of Vitamin A in IU the recipe can have per serving.
    Double minVitaminC = 30.4D; // Double | The minimum amount of Vitamin C in milligrams the recipe must have per serving.
    Double maxVitaminC = 80.9D; // Double | The maximum amount of Vitamin C in milligrams the recipe can have per serving.
    Double minVitaminD = 30.4D; // Double | The minimum amount of Vitamin D in micrograms the recipe must have per serving.
    Double maxVitaminD = 80.9D; // Double | The maximum amount of Vitamin D in micrograms the recipe can have per serving.
    Double minVitaminE = 30.4D; // Double | The minimum amount of Vitamin E in milligrams the recipe must have per serving.
    Double maxVitaminE = 80.9D; // Double | The maximum amount of Vitamin E in milligrams the recipe can have per serving.
    Double minVitaminK = 30.4D; // Double | The minimum amount of Vitamin K in micrograms the recipe must have per serving.
    Double maxVitaminK = 80.9D; // Double | The maximum amount of Vitamin K in micrograms the recipe can have per serving.
    Double minVitaminB1 = 30.4D; // Double | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
    Double maxVitaminB1 = 80.9D; // Double | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
    Double minVitaminB2 = 30.4D; // Double | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
    Double maxVitaminB2 = 80.9D; // Double | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
    Double minVitaminB3 = 30.4D; // Double | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
    Double maxVitaminB3 = 80.9D; // Double | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
    Double minVitaminB5 = 30.4D; // Double | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
    Double maxVitaminB5 = 80.9D; // Double | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
    Double minVitaminB6 = 30.4D; // Double | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
    Double maxVitaminB6 = 80.9D; // Double | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
    Double minVitaminB12 = 30.4D; // Double | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
    Double maxVitaminB12 = 80.9D; // Double | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
    String sort = "meta-score"; // String | The strategy to sort recipes by. See a full list of supported sorting options.
    String sortDirection = "ASC"; // String | Whether to sort ascending or descending (ASC or DESC).
    Integer offset = 0; // Integer | The number of recipes to skip, between 0 and 900.
    Integer number = 3; // Integer | The number of recipes, between 1 and 100.
    try {
      SearchRecipes200Response result = apiInstance.searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoodApi#searchRecipes");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **query** | **String**| The search query. | [optional] |
| **cuisines** | **String**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). | [optional] |
| **excludeCuisines** | **String**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). | [optional] |
| **mealType** | **String**| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] |
| **diet** | **String**| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] |
| **intolerances** | **String**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] |
| **equipment** | **String**| The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] |
| **includeIngredients** | **String**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] |
| **excludeIngredients** | **String**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] |
| **fillIngredients** | **Boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] |
| **addRecipeInformation** | **Boolean**| If set to true, you get more information about the recipes returned. | [optional] |
| **maxTime** | **Integer**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] |
| **minCalories** | **Double**| The minimum amount of calories the recipe must have per serving. | [optional] |
| **maxCalories** | **Double**| The maximum amount of calories the recipe can have per serving. | [optional] |
| **minCarbs** | **Double**| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] |
| **maxCarbs** | **Double**| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] |
| **minProtein** | **Double**| The minimum amount of protein in grams the recipe must have per serving. | [optional] |
| **maxProtein** | **Double**| The maximum amount of protein in grams the recipe can have per serving. | [optional] |
| **minFat** | **Double**| The minimum amount of fat in grams the recipe must have per serving. | [optional] |
| **maxFat** | **Double**| The maximum amount of fat in grams the recipe can have per serving. | [optional] |
| **minSugar** | **Double**| The minimum amount of sugar in grams the recipe must have per serving. | [optional] |
| **maxSugar** | **Double**| The maximum amount of sugar in grams the recipe can have per serving. | [optional] |
| **minFiber** | **Double**| The minimum amount of fiber in grams the recipe must have per serving. | [optional] |
| **maxFiber** | **Double**| The maximum amount of fiber in grams the recipe can have per serving. | [optional] |
| **minFolate** | **Double**| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] |
| **maxFolate** | **Double**| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] |
| **minFolicAcid** | **Double**| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] |
| **maxFolicAcid** | **Double**| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] |
| **minIodine** | **Double**| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] |
| **maxIodine** | **Double**| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] |
| **minIron** | **Double**| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] |
| **maxIron** | **Double**| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] |
| **minZinc** | **Double**| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] |
| **maxZinc** | **Double**| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] |
| **minMagnesium** | **Double**| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] |
| **maxMagnesium** | **Double**| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] |
| **minManganese** | **Double**| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] |
| **maxManganese** | **Double**| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] |
| **minPhosphorus** | **Double**| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] |
| **maxPhosphorus** | **Double**| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] |
| **minPotassium** | **Double**| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] |
| **maxPotassium** | **Double**| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] |
| **minSodium** | **Double**| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] |
| **maxSodium** | **Double**| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] |
| **minSelenium** | **Double**| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] |
| **maxSelenium** | **Double**| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] |
| **minCopper** | **Double**| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] |
| **maxCopper** | **Double**| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] |
| **minCalcium** | **Double**| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] |
| **maxCalcium** | **Double**| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] |
| **minCholine** | **Double**| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] |
| **maxCholine** | **Double**| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] |
| **minCholesterol** | **Double**| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] |
| **maxCholesterol** | **Double**| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] |
| **minFluoride** | **Double**| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] |
| **maxFluoride** | **Double**| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] |
| **minAlcohol** | **Double**| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] |
| **maxAlcohol** | **Double**| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] |
| **minCaffeine** | **Double**| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] |
| **maxCaffeine** | **Double**| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] |
| **minSaturatedFat** | **Double**| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] |
| **maxSaturatedFat** | **Double**| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] |
| **minVitaminA** | **Double**| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] |
| **maxVitaminA** | **Double**| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] |
| **minVitaminC** | **Double**| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminC** | **Double**| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] |
| **minVitaminD** | **Double**| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] |
| **maxVitaminD** | **Double**| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] |
| **minVitaminE** | **Double**| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminE** | **Double**| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] |
| **minVitaminK** | **Double**| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] |
| **maxVitaminK** | **Double**| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] |
| **minVitaminB1** | **Double**| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB1** | **Double**| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB2** | **Double**| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB2** | **Double**| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB3** | **Double**| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB3** | **Double**| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB5** | **Double**| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB5** | **Double**| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB6** | **Double**| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB6** | **Double**| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] |
| **minVitaminB12** | **Double**| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] |
| **maxVitaminB12** | **Double**| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] |
| **sort** | **String**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] |
| **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **Integer**| The number of recipes to skip, between 0 and 900. | [optional] |
| **number** | **Integer**| The number of recipes, between 1 and 100. | [optional] |

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="searchRestaurants"></a>
# **searchRestaurants**
> SearchRestaurants200Response searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.FoodApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    FoodApi apiInstance = new FoodApi(defaultClient);
    Double lat = 32.715736D; // Double | The latitude to search around.
    Double lon = -117.161087D; // Double | The longitude to search around.
    String query = "burger"; // String | The search query.
    Integer distance = 5; // Integer | The maximum distance of the restaurant in miles around the given location.
    Double budget = 25D; // Double | The budget in USD for the meal.
    Double minRating = 4.4D; // Double | The minimum rating of the restaurants in range [0,5].
    String cuisine = "Mexican"; // String | The cuisine that the restaurants should support.
    Boolean isOpen = true; // Boolean | Whether the restaurants have to be open now.
    Integer page = 0; // Integer | The page of the results.
    String sort = "rating"; // String | The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
    try {
      SearchRestaurants200Response result = apiInstance.searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoodApi#searchRestaurants");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **lat** | **Double**| The latitude to search around. | |
| **lon** | **Double**| The longitude to search around. | |
| **query** | **String**| The search query. | [optional] |
| **distance** | **Integer**| The maximum distance of the restaurant in miles around the given location. | [optional] |
| **budget** | **Double**| The budget in USD for the meal. | [optional] |
| **minRating** | **Double**| The minimum rating of the restaurants in range [0,5]. | [optional] |
| **cuisine** | **String**| The cuisine that the restaurants should support. | [optional] |
| **isOpen** | **Boolean**| Whether the restaurants have to be open now. | [optional] |
| **page** | **Integer**| The page of the results. | [optional] |
| **sort** | **String**| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] |

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

