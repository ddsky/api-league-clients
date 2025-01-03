# apileague.Api.FoodApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ComputeNutritionAPI**](FoodApi.md#computenutritionapi) | **GET** /compute-nutrition | Compute Nutrition API |
| [**RetrieveRecipeInformationAPI**](FoodApi.md#retrieverecipeinformationapi) | **GET** /retrieve-recipe | Retrieve Recipe Information API |
| [**SearchDrinksAPI**](FoodApi.md#searchdrinksapi) | **GET** /search-drinks | Search Drinks API |
| [**SearchRecipesAPI**](FoodApi.md#searchrecipesapi) | **GET** /search-recipes | Search Recipes API |
| [**SearchRestaurantsAPI**](FoodApi.md#searchrestaurantsapi) | **GET** /search-restaurants | Search Restaurants API |

<a id="computenutritionapi"></a>
# **ComputeNutritionAPI**
> ComputeNutritionAPI200Response ComputeNutritionAPI (string ingredients, int? servings = null, bool? reduceOils = null)

Compute Nutrition API

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class ComputeNutritionAPIExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new FoodApi(config);
            var ingredients = 1 cup apples,3oz milk,35g butter;  // string | A comma-separated list of the ingredients of the recipe.
            var servings = 1;  // int? | The number of servings the ingredients make. Nutrition is computed per serving. (optional) 
            var reduceOils = true;  // bool? | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. (optional) 

            try
            {
                // Compute Nutrition API
                ComputeNutritionAPI200Response result = apiInstance.ComputeNutritionAPI(ingredients, servings, reduceOils);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling FoodApi.ComputeNutritionAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ComputeNutritionAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Compute Nutrition API
    ApiResponse<ComputeNutritionAPI200Response> response = apiInstance.ComputeNutritionAPIWithHttpInfo(ingredients, servings, reduceOils);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling FoodApi.ComputeNutritionAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **ingredients** | **string** | A comma-separated list of the ingredients of the recipe. |  |
| **servings** | **int?** | The number of servings the ingredients make. Nutrition is computed per serving. | [optional]  |
| **reduceOils** | **bool?** | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional]  |

### Return type

[**ComputeNutritionAPI200Response**](ComputeNutritionAPI200Response.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="retrieverecipeinformationapi"></a>
# **RetrieveRecipeInformationAPI**
> RetrieveRecipeInformationAPI200Response RetrieveRecipeInformationAPI (int id, bool? addWinePairing = null)

Retrieve Recipe Information API

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class RetrieveRecipeInformationAPIExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new FoodApi(config);
            var id = 74987;  // int | The id of the recipe to retrieve.
            var addWinePairing = true;  // bool? | Whether to pair a wine to the recipe. (optional) 

            try
            {
                // Retrieve Recipe Information API
                RetrieveRecipeInformationAPI200Response result = apiInstance.RetrieveRecipeInformationAPI(id, addWinePairing);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling FoodApi.RetrieveRecipeInformationAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RetrieveRecipeInformationAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve Recipe Information API
    ApiResponse<RetrieveRecipeInformationAPI200Response> response = apiInstance.RetrieveRecipeInformationAPIWithHttpInfo(id, addWinePairing);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling FoodApi.RetrieveRecipeInformationAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** | The id of the recipe to retrieve. |  |
| **addWinePairing** | **bool?** | Whether to pair a wine to the recipe. | [optional]  |

### Return type

[**RetrieveRecipeInformationAPI200Response**](RetrieveRecipeInformationAPI200Response.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchdrinksapi"></a>
# **SearchDrinksAPI**
> SearchDrinksAPI200Response SearchDrinksAPI (string? query = null, string? glassTypes = null, string? flavors = null, string? diet = null, string? includeIngredients = null, string? excludeIngredients = null, double? minCalories = null, double? maxCalories = null, double? minCarbs = null, double? maxCarbs = null, double? minProtein = null, double? maxProtein = null, double? minFat = null, double? maxFat = null, double? minAlcoholPercent = null, double? maxAlcoholPercent = null, double? minCaffeine = null, double? maxCaffeine = null, string? sort = null, string? sortDirection = null, int? offset = null, int? number = null)

Search Drinks API

Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchDrinksAPIExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new FoodApi(config);
            var query = vodka;  // string? | The search query. (optional) 
            var glassTypes = Highball Glass;  // string? | A comma-separated list (interpreted as OR) of glass types that the drink should be served in. (optional) 
            var flavors = sour,sweet;  // string? | A comma-separated list (interpreted as AND) of dominant flavors in the drink. (optional) 
            var diet = paleo;  // string? | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. (optional) 
            var includeIngredients = orange;  // string? | A comma-separated list of ingredients that should/must be used in the drinks. (optional) 
            var excludeIngredients = vodka;  // string? | A comma-separated list of ingredients or ingredient types that the drinks must not contain. (optional) 
            var minCalories = 100;  // double? | The minimum amount of calories the drink must have per serving. (optional) 
            var maxCalories = 655;  // double? | The maximum amount of calories the drink can have per serving. (optional) 
            var minCarbs = 10.1;  // double? | The minimum amount of carbohydrates in grams the drink must have per serving. (optional) 
            var maxCarbs = 25.5;  // double? | The maximum amount of carbohydrates in grams the drink can have per serving. (optional) 
            var minProtein = 10.1;  // double? | The minimum amount of protein in grams the drink must have per serving. (optional) 
            var maxProtein = 25.5;  // double? | The maximum amount of protein in grams the drink can have per serving. (optional) 
            var minFat = 10.1;  // double? | The minimum amount of fat in grams the drink must have per serving. (optional) 
            var maxFat = 25.5;  // double? | The maximum amount of fat in grams the drink can have per serving. (optional) 
            var minAlcoholPercent = 10;  // double? | The minimum alcohol percentage the drink must have. (optional) 
            var maxAlcoholPercent = 35;  // double? | The maximum alcohol percentage the drink can have. (optional) 
            var minCaffeine = 30.4;  // double? | The minimum amount of caffeine in milligrams the drink must have per serving. (optional) 
            var maxCaffeine = 80.9;  // double? | The maximum amount of caffeine in milligrams the drink can have per serving. (optional) 
            var sort = calories;  // string? | The attribute by which to sort the drinks. (optional) 
            var sortDirection = ASC;  // string? | Whether to sort ascending or descending (ASC or DESC). (optional) 
            var offset = 0;  // int? | The number of drinks to skip, between 0 and 90. (optional) 
            var number = 3;  // int? | The number of drinks, between 1 and 10. (optional) 

            try
            {
                // Search Drinks API
                SearchDrinksAPI200Response result = apiInstance.SearchDrinksAPI(query, glassTypes, flavors, diet, includeIngredients, excludeIngredients, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minAlcoholPercent, maxAlcoholPercent, minCaffeine, maxCaffeine, sort, sortDirection, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling FoodApi.SearchDrinksAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchDrinksAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Drinks API
    ApiResponse<SearchDrinksAPI200Response> response = apiInstance.SearchDrinksAPIWithHttpInfo(query, glassTypes, flavors, diet, includeIngredients, excludeIngredients, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minAlcoholPercent, maxAlcoholPercent, minCaffeine, maxCaffeine, sort, sortDirection, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling FoodApi.SearchDrinksAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The search query. | [optional]  |
| **glassTypes** | **string?** | A comma-separated list (interpreted as OR) of glass types that the drink should be served in. | [optional]  |
| **flavors** | **string?** | A comma-separated list (interpreted as AND) of dominant flavors in the drink. | [optional]  |
| **diet** | **string?** | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. | [optional]  |
| **includeIngredients** | **string?** | A comma-separated list of ingredients that should/must be used in the drinks. | [optional]  |
| **excludeIngredients** | **string?** | A comma-separated list of ingredients or ingredient types that the drinks must not contain. | [optional]  |
| **minCalories** | **double?** | The minimum amount of calories the drink must have per serving. | [optional]  |
| **maxCalories** | **double?** | The maximum amount of calories the drink can have per serving. | [optional]  |
| **minCarbs** | **double?** | The minimum amount of carbohydrates in grams the drink must have per serving. | [optional]  |
| **maxCarbs** | **double?** | The maximum amount of carbohydrates in grams the drink can have per serving. | [optional]  |
| **minProtein** | **double?** | The minimum amount of protein in grams the drink must have per serving. | [optional]  |
| **maxProtein** | **double?** | The maximum amount of protein in grams the drink can have per serving. | [optional]  |
| **minFat** | **double?** | The minimum amount of fat in grams the drink must have per serving. | [optional]  |
| **maxFat** | **double?** | The maximum amount of fat in grams the drink can have per serving. | [optional]  |
| **minAlcoholPercent** | **double?** | The minimum alcohol percentage the drink must have. | [optional]  |
| **maxAlcoholPercent** | **double?** | The maximum alcohol percentage the drink can have. | [optional]  |
| **minCaffeine** | **double?** | The minimum amount of caffeine in milligrams the drink must have per serving. | [optional]  |
| **maxCaffeine** | **double?** | The maximum amount of caffeine in milligrams the drink can have per serving. | [optional]  |
| **sort** | **string?** | The attribute by which to sort the drinks. | [optional]  |
| **sortDirection** | **string?** | Whether to sort ascending or descending (ASC or DESC). | [optional]  |
| **offset** | **int?** | The number of drinks to skip, between 0 and 90. | [optional]  |
| **number** | **int?** | The number of drinks, between 1 and 10. | [optional]  |

### Return type

[**SearchDrinksAPI200Response**](SearchDrinksAPI200Response.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchrecipesapi"></a>
# **SearchRecipesAPI**
> SearchRecipesAPI200Response SearchRecipesAPI (string? query = null, string? cuisines = null, string? excludeCuisines = null, string? mealType = null, string? diet = null, string? intolerances = null, string? equipment = null, string? includeIngredients = null, string? excludeIngredients = null, bool? fillIngredients = null, bool? addRecipeInformation = null, int? maxTime = null, int? minServings = null, int? maxServings = null, double? minCalories = null, double? maxCalories = null, double? minCarbs = null, double? maxCarbs = null, double? minProtein = null, double? maxProtein = null, double? minFat = null, double? maxFat = null, double? minSugar = null, double? maxSugar = null, double? minFiber = null, double? maxFiber = null, double? minFolate = null, double? maxFolate = null, double? minFolicAcid = null, double? maxFolicAcid = null, double? minIodine = null, double? maxIodine = null, double? minIron = null, double? maxIron = null, double? minZinc = null, double? maxZinc = null, double? minMagnesium = null, double? maxMagnesium = null, double? minManganese = null, double? maxManganese = null, double? minPhosphorus = null, double? maxPhosphorus = null, double? minPotassium = null, double? maxPotassium = null, double? minSodium = null, double? maxSodium = null, double? minSelenium = null, double? maxSelenium = null, double? minCopper = null, double? maxCopper = null, double? minCalcium = null, double? maxCalcium = null, double? minCholine = null, double? maxCholine = null, double? minCholesterol = null, double? maxCholesterol = null, double? minFluoride = null, double? maxFluoride = null, double? minAlcohol = null, double? maxAlcohol = null, double? minCaffeine = null, double? maxCaffeine = null, double? minSaturatedFat = null, double? maxSaturatedFat = null, double? minVitaminA = null, double? maxVitaminA = null, double? minVitaminC = null, double? maxVitaminC = null, double? minVitaminD = null, double? maxVitaminD = null, double? minVitaminE = null, double? maxVitaminE = null, double? minVitaminK = null, double? maxVitaminK = null, double? minVitaminB1 = null, double? maxVitaminB1 = null, double? minVitaminB2 = null, double? maxVitaminB2 = null, double? minVitaminB3 = null, double? maxVitaminB3 = null, double? minVitaminB5 = null, double? maxVitaminB5 = null, double? minVitaminB6 = null, double? maxVitaminB6 = null, double? minVitaminB12 = null, double? maxVitaminB12 = null, string? sort = null, string? sortDirection = null, int? offset = null, int? number = null)

Search Recipes API

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchRecipesAPIExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new FoodApi(config);
            var query = pasta with mushrooms but without nuts;  // string? | The search query. (optional) 
            var cuisines = mexican;  // string? | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as 'OR'). (optional) 
            var excludeCuisines = indian,japanese;  // string? | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as 'AND'). (optional) 
            var mealType = dessert;  // string? | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. (optional) 
            var diet = paleo;  // string? | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. (optional) 
            var intolerances = gluten,dairy,shellfish;  // string? | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. (optional) 
            var equipment = blender,frying pan,bowl;  // string? | The equipment required. Multiple values will be interpreted as 'OR'. (optional) 
            var includeIngredients = tomato,cheese;  // string? | A comma-separated list of ingredients that should/must be used in the recipes. (optional) 
            var excludeIngredients = olives,capers;  // string? | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional) 
            var fillIngredients = true;  // bool? | Add information about the ingredients and whether they are used or missing in relation to the query. (optional) 
            var addRecipeInformation = true;  // bool? | If set to true, you get more information about the recipes returned. (optional) 
            var maxTime = 45;  // int? | The maximum time in minutes it should take to prepare and cook the recipe. (optional) 
            var minServings = 1;  // int? | The minimum amount of servings the recipe is for. (optional) 
            var maxServings = 8;  // int? | The maximum amount of servings the recipe is for. (optional) 
            var minCalories = 100;  // double? | The minimum amount of calories the recipe must have per serving. (optional) 
            var maxCalories = 655;  // double? | The maximum amount of calories the recipe can have per serving. (optional) 
            var minCarbs = 10.1;  // double? | The minimum amount of carbohydrates in grams the recipe must have per serving. (optional) 
            var maxCarbs = 25.5;  // double? | The maximum amount of carbohydrates in grams the recipe can have per serving. (optional) 
            var minProtein = 10.1;  // double? | The minimum amount of protein in grams the recipe must have per serving. (optional) 
            var maxProtein = 25.5;  // double? | The maximum amount of protein in grams the recipe can have per serving. (optional) 
            var minFat = 10.1;  // double? | The minimum amount of fat in grams the recipe must have per serving. (optional) 
            var maxFat = 25.5;  // double? | The maximum amount of fat in grams the recipe can have per serving. (optional) 
            var minSugar = 10.1;  // double? | The minimum amount of sugar in grams the recipe must have per serving. (optional) 
            var maxSugar = 25.5;  // double? | The maximum amount of sugar in grams the recipe can have per serving. (optional) 
            var minFiber = 10.1;  // double? | The minimum amount of fiber in grams the recipe must have per serving. (optional) 
            var maxFiber = 25.5;  // double? | The maximum amount of fiber in grams the recipe can have per serving. (optional) 
            var minFolate = 30.4;  // double? | The minimum amount of folate in micrograms the recipe must have per serving. (optional) 
            var maxFolate = 80.9;  // double? | The maximum amount of folate in micrograms the recipe can have per serving. (optional) 
            var minFolicAcid = 30.4;  // double? | The minimum amount of folic acid in micrograms the recipe must have per serving. (optional) 
            var maxFolicAcid = 80.9;  // double? | The maximum amount of folic acid in micrograms the recipe can have per serving. (optional) 
            var minIodine = 30.4;  // double? | The minimum amount of iodine in micrograms the recipe must have per serving. (optional) 
            var maxIodine = 80.9;  // double? | The maximum amount of iodine in micrograms the recipe can have per serving. (optional) 
            var minIron = 30.4;  // double? | The minimum amount of iron in milligrams the recipe must have per serving. (optional) 
            var maxIron = 80.9;  // double? | The maximum amount of iron in milligrams the recipe can have per serving. (optional) 
            var minZinc = 30.4;  // double? | The minimum amount of zinc in milligrams the recipe must have per serving. (optional) 
            var maxZinc = 80.9;  // double? | The maximum amount of zinc in milligrams the recipe can have per serving. (optional) 
            var minMagnesium = 30.4;  // double? | The minimum amount of magnesium in milligrams the recipe must have per serving. (optional) 
            var maxMagnesium = 80.9;  // double? | The maximum amount of magnesium in milligrams the recipe can have per serving. (optional) 
            var minManganese = 30.4;  // double? | The minimum amount of manganese in milligrams the recipe must have per serving. (optional) 
            var maxManganese = 80.9;  // double? | The maximum amount of manganese in milligrams the recipe can have per serving. (optional) 
            var minPhosphorus = 30.4;  // double? | The minimum amount of phosphorus in milligrams the recipe must have per serving. (optional) 
            var maxPhosphorus = 80.9;  // double? | The maximum amount of phosphorus in milligrams the recipe can have per serving. (optional) 
            var minPotassium = 30.4;  // double? | The minimum amount of potassium in milligrams the recipe must have per serving. (optional) 
            var maxPotassium = 80.9;  // double? | The maximum amount of potassium in milligrams the recipe can have per serving. (optional) 
            var minSodium = 30.4;  // double? | The minimum amount of sodium in milligrams the recipe must have per serving. (optional) 
            var maxSodium = 80.9;  // double? | The maximum amount of sodium in milligrams the recipe can have per serving. (optional) 
            var minSelenium = 30.4;  // double? | The minimum amount of selenium in micrograms the recipe must have per serving. (optional) 
            var maxSelenium = 80.9;  // double? | The maximum amount of selenium in micrograms the recipe can have per serving. (optional) 
            var minCopper = 30.4;  // double? | The minimum amount of copper in milligrams the recipe must have per serving. (optional) 
            var maxCopper = 80.9;  // double? | The maximum amount of copper in milligrams the recipe can have per serving. (optional) 
            var minCalcium = 30.4;  // double? | The minimum amount of calcium in milligrams the recipe must have per serving. (optional) 
            var maxCalcium = 80.9;  // double? | The maximum amount of calcium in milligrams the recipe can have per serving. (optional) 
            var minCholine = 30.4;  // double? | The minimum amount of choline in milligrams the recipe must have per serving. (optional) 
            var maxCholine = 80.9;  // double? | The maximum amount of choline in milligrams the recipe can have per serving. (optional) 
            var minCholesterol = 30.4;  // double? | The minimum amount of cholesterol in milligrams the recipe must have per serving. (optional) 
            var maxCholesterol = 80.9;  // double? | The maximum amount of cholesterol in milligrams the recipe can have per serving. (optional) 
            var minFluoride = 30.4;  // double? | The minimum amount of fluoride in milligrams the recipe must have per serving. (optional) 
            var maxFluoride = 80.9;  // double? | The maximum amount of fluoride in milligrams the recipe can have per serving. (optional) 
            var minAlcohol = 10.1;  // double? | The minimum amount of alcohol in grams the recipe must have per serving. (optional) 
            var maxAlcohol = 25.5;  // double? | The maximum amount of alcohol in grams the recipe can have per serving. (optional) 
            var minCaffeine = 30.4;  // double? | The minimum amount of caffeine in milligrams the recipe must have per serving. (optional) 
            var maxCaffeine = 80.9;  // double? | The maximum amount of caffeine in milligrams the recipe can have per serving. (optional) 
            var minSaturatedFat = 30.4;  // double? | The minimum amount of saturated fat in grams the recipe must have per serving. (optional) 
            var maxSaturatedFat = 80.9;  // double? | The maximum amount of saturated fat in grams the recipe can have per serving. (optional) 
            var minVitaminA = 30.4;  // double? | The minimum amount of Vitamin A in IU the recipe must have per serving. (optional) 
            var maxVitaminA = 80.9;  // double? | The maximum amount of Vitamin A in IU the recipe can have per serving. (optional) 
            var minVitaminC = 30.4;  // double? | The minimum amount of Vitamin C in milligrams the recipe must have per serving. (optional) 
            var maxVitaminC = 80.9;  // double? | The maximum amount of Vitamin C in milligrams the recipe can have per serving. (optional) 
            var minVitaminD = 30.4;  // double? | The minimum amount of Vitamin D in micrograms the recipe must have per serving. (optional) 
            var maxVitaminD = 80.9;  // double? | The maximum amount of Vitamin D in micrograms the recipe can have per serving. (optional) 
            var minVitaminE = 30.4;  // double? | The minimum amount of Vitamin E in milligrams the recipe must have per serving. (optional) 
            var maxVitaminE = 80.9;  // double? | The maximum amount of Vitamin E in milligrams the recipe can have per serving. (optional) 
            var minVitaminK = 30.4;  // double? | The minimum amount of Vitamin K in micrograms the recipe must have per serving. (optional) 
            var maxVitaminK = 80.9;  // double? | The maximum amount of Vitamin K in micrograms the recipe can have per serving. (optional) 
            var minVitaminB1 = 30.4;  // double? | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. (optional) 
            var maxVitaminB1 = 80.9;  // double? | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. (optional) 
            var minVitaminB2 = 30.4;  // double? | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. (optional) 
            var maxVitaminB2 = 80.9;  // double? | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. (optional) 
            var minVitaminB3 = 30.4;  // double? | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. (optional) 
            var maxVitaminB3 = 80.9;  // double? | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. (optional) 
            var minVitaminB5 = 30.4;  // double? | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. (optional) 
            var maxVitaminB5 = 80.9;  // double? | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. (optional) 
            var minVitaminB6 = 30.4;  // double? | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. (optional) 
            var maxVitaminB6 = 80.9;  // double? | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. (optional) 
            var minVitaminB12 = 30.4;  // double? | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. (optional) 
            var maxVitaminB12 = 80.9;  // double? | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. (optional) 
            var sort = meta-score;  // string? | The strategy to sort recipes by. (optional) 
            var sortDirection = ASC;  // string? | Whether to sort ascending or descending (ASC or DESC). (optional) 
            var offset = 0;  // int? | The number of recipes to skip, between 0 and 900. (optional) 
            var number = 3;  // int? | The number of recipes, between 1 and 100. (optional) 

            try
            {
                // Search Recipes API
                SearchRecipesAPI200Response result = apiInstance.SearchRecipesAPI(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling FoodApi.SearchRecipesAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchRecipesAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Recipes API
    ApiResponse<SearchRecipesAPI200Response> response = apiInstance.SearchRecipesAPIWithHttpInfo(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling FoodApi.SearchRecipesAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string?** | The search query. | [optional]  |
| **cuisines** | **string?** | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as &#39;OR&#39;). | [optional]  |
| **excludeCuisines** | **string?** | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as &#39;AND&#39;). | [optional]  |
| **mealType** | **string?** | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional]  |
| **diet** | **string?** | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional]  |
| **intolerances** | **string?** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional]  |
| **equipment** | **string?** | The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional]  |
| **includeIngredients** | **string?** | A comma-separated list of ingredients that should/must be used in the recipes. | [optional]  |
| **excludeIngredients** | **string?** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional]  |
| **fillIngredients** | **bool?** | Add information about the ingredients and whether they are used or missing in relation to the query. | [optional]  |
| **addRecipeInformation** | **bool?** | If set to true, you get more information about the recipes returned. | [optional]  |
| **maxTime** | **int?** | The maximum time in minutes it should take to prepare and cook the recipe. | [optional]  |
| **minServings** | **int?** | The minimum amount of servings the recipe is for. | [optional]  |
| **maxServings** | **int?** | The maximum amount of servings the recipe is for. | [optional]  |
| **minCalories** | **double?** | The minimum amount of calories the recipe must have per serving. | [optional]  |
| **maxCalories** | **double?** | The maximum amount of calories the recipe can have per serving. | [optional]  |
| **minCarbs** | **double?** | The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional]  |
| **maxCarbs** | **double?** | The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional]  |
| **minProtein** | **double?** | The minimum amount of protein in grams the recipe must have per serving. | [optional]  |
| **maxProtein** | **double?** | The maximum amount of protein in grams the recipe can have per serving. | [optional]  |
| **minFat** | **double?** | The minimum amount of fat in grams the recipe must have per serving. | [optional]  |
| **maxFat** | **double?** | The maximum amount of fat in grams the recipe can have per serving. | [optional]  |
| **minSugar** | **double?** | The minimum amount of sugar in grams the recipe must have per serving. | [optional]  |
| **maxSugar** | **double?** | The maximum amount of sugar in grams the recipe can have per serving. | [optional]  |
| **minFiber** | **double?** | The minimum amount of fiber in grams the recipe must have per serving. | [optional]  |
| **maxFiber** | **double?** | The maximum amount of fiber in grams the recipe can have per serving. | [optional]  |
| **minFolate** | **double?** | The minimum amount of folate in micrograms the recipe must have per serving. | [optional]  |
| **maxFolate** | **double?** | The maximum amount of folate in micrograms the recipe can have per serving. | [optional]  |
| **minFolicAcid** | **double?** | The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional]  |
| **maxFolicAcid** | **double?** | The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional]  |
| **minIodine** | **double?** | The minimum amount of iodine in micrograms the recipe must have per serving. | [optional]  |
| **maxIodine** | **double?** | The maximum amount of iodine in micrograms the recipe can have per serving. | [optional]  |
| **minIron** | **double?** | The minimum amount of iron in milligrams the recipe must have per serving. | [optional]  |
| **maxIron** | **double?** | The maximum amount of iron in milligrams the recipe can have per serving. | [optional]  |
| **minZinc** | **double?** | The minimum amount of zinc in milligrams the recipe must have per serving. | [optional]  |
| **maxZinc** | **double?** | The maximum amount of zinc in milligrams the recipe can have per serving. | [optional]  |
| **minMagnesium** | **double?** | The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional]  |
| **maxMagnesium** | **double?** | The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional]  |
| **minManganese** | **double?** | The minimum amount of manganese in milligrams the recipe must have per serving. | [optional]  |
| **maxManganese** | **double?** | The maximum amount of manganese in milligrams the recipe can have per serving. | [optional]  |
| **minPhosphorus** | **double?** | The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional]  |
| **maxPhosphorus** | **double?** | The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional]  |
| **minPotassium** | **double?** | The minimum amount of potassium in milligrams the recipe must have per serving. | [optional]  |
| **maxPotassium** | **double?** | The maximum amount of potassium in milligrams the recipe can have per serving. | [optional]  |
| **minSodium** | **double?** | The minimum amount of sodium in milligrams the recipe must have per serving. | [optional]  |
| **maxSodium** | **double?** | The maximum amount of sodium in milligrams the recipe can have per serving. | [optional]  |
| **minSelenium** | **double?** | The minimum amount of selenium in micrograms the recipe must have per serving. | [optional]  |
| **maxSelenium** | **double?** | The maximum amount of selenium in micrograms the recipe can have per serving. | [optional]  |
| **minCopper** | **double?** | The minimum amount of copper in milligrams the recipe must have per serving. | [optional]  |
| **maxCopper** | **double?** | The maximum amount of copper in milligrams the recipe can have per serving. | [optional]  |
| **minCalcium** | **double?** | The minimum amount of calcium in milligrams the recipe must have per serving. | [optional]  |
| **maxCalcium** | **double?** | The maximum amount of calcium in milligrams the recipe can have per serving. | [optional]  |
| **minCholine** | **double?** | The minimum amount of choline in milligrams the recipe must have per serving. | [optional]  |
| **maxCholine** | **double?** | The maximum amount of choline in milligrams the recipe can have per serving. | [optional]  |
| **minCholesterol** | **double?** | The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional]  |
| **maxCholesterol** | **double?** | The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional]  |
| **minFluoride** | **double?** | The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional]  |
| **maxFluoride** | **double?** | The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional]  |
| **minAlcohol** | **double?** | The minimum amount of alcohol in grams the recipe must have per serving. | [optional]  |
| **maxAlcohol** | **double?** | The maximum amount of alcohol in grams the recipe can have per serving. | [optional]  |
| **minCaffeine** | **double?** | The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional]  |
| **maxCaffeine** | **double?** | The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional]  |
| **minSaturatedFat** | **double?** | The minimum amount of saturated fat in grams the recipe must have per serving. | [optional]  |
| **maxSaturatedFat** | **double?** | The maximum amount of saturated fat in grams the recipe can have per serving. | [optional]  |
| **minVitaminA** | **double?** | The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional]  |
| **maxVitaminA** | **double?** | The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional]  |
| **minVitaminC** | **double?** | The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional]  |
| **maxVitaminC** | **double?** | The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional]  |
| **minVitaminD** | **double?** | The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional]  |
| **maxVitaminD** | **double?** | The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional]  |
| **minVitaminE** | **double?** | The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional]  |
| **maxVitaminE** | **double?** | The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional]  |
| **minVitaminK** | **double?** | The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional]  |
| **maxVitaminK** | **double?** | The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional]  |
| **minVitaminB1** | **double?** | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional]  |
| **maxVitaminB1** | **double?** | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional]  |
| **minVitaminB2** | **double?** | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional]  |
| **maxVitaminB2** | **double?** | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional]  |
| **minVitaminB3** | **double?** | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional]  |
| **maxVitaminB3** | **double?** | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional]  |
| **minVitaminB5** | **double?** | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional]  |
| **maxVitaminB5** | **double?** | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional]  |
| **minVitaminB6** | **double?** | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional]  |
| **maxVitaminB6** | **double?** | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional]  |
| **minVitaminB12** | **double?** | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional]  |
| **maxVitaminB12** | **double?** | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional]  |
| **sort** | **string?** | The strategy to sort recipes by. | [optional]  |
| **sortDirection** | **string?** | Whether to sort ascending or descending (ASC or DESC). | [optional]  |
| **offset** | **int?** | The number of recipes to skip, between 0 and 900. | [optional]  |
| **number** | **int?** | The number of recipes, between 1 and 100. | [optional]  |

### Return type

[**SearchRecipesAPI200Response**](SearchRecipesAPI200Response.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="searchrestaurantsapi"></a>
# **SearchRestaurantsAPI**
> SearchRestaurantsAPI200Response SearchRestaurantsAPI (double lat, double lon, string? query = null, int? distance = null, double? budget = null, double? minRating = null, string? cuisine = null, bool? isOpen = null, int? page = null, string? sort = null)

Search Restaurants API

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class SearchRestaurantsAPIExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new FoodApi(config);
            var lat = 32.715736;  // double | The latitude to search around.
            var lon = -117.161087;  // double | The longitude to search around.
            var query = burger;  // string? | The search query. (optional) 
            var distance = 5;  // int? | The maximum distance of the restaurant in miles around the given location. (optional) 
            var budget = 25;  // double? | The budget in USD for the meal. (optional) 
            var minRating = 4.4;  // double? | The minimum rating of the restaurants in range [0,5]. (optional) 
            var cuisine = Mexican;  // string? | The cuisine that the restaurants should support. (optional) 
            var isOpen = true;  // bool? | Whether the restaurants have to be open now. (optional) 
            var page = 0;  // int? | The page of the results. (optional) 
            var sort = rating;  // string? | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. (optional) 

            try
            {
                // Search Restaurants API
                SearchRestaurantsAPI200Response result = apiInstance.SearchRestaurantsAPI(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling FoodApi.SearchRestaurantsAPI: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchRestaurantsAPIWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search Restaurants API
    ApiResponse<SearchRestaurantsAPI200Response> response = apiInstance.SearchRestaurantsAPIWithHttpInfo(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling FoodApi.SearchRestaurantsAPIWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **lat** | **double** | The latitude to search around. |  |
| **lon** | **double** | The longitude to search around. |  |
| **query** | **string?** | The search query. | [optional]  |
| **distance** | **int?** | The maximum distance of the restaurant in miles around the given location. | [optional]  |
| **budget** | **double?** | The budget in USD for the meal. | [optional]  |
| **minRating** | **double?** | The minimum rating of the restaurants in range [0,5]. | [optional]  |
| **cuisine** | **string?** | The cuisine that the restaurants should support. | [optional]  |
| **isOpen** | **bool?** | Whether the restaurants have to be open now. | [optional]  |
| **page** | **int?** | The page of the results. | [optional]  |
| **sort** | **string?** | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional]  |

### Return type

[**SearchRestaurantsAPI200Response**](SearchRestaurantsAPI200Response.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

