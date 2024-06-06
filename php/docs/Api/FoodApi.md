# OpenAPI\Client\FoodApi

All URIs are relative to https://api.apileague.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**computeNutrition()**](FoodApi.md#computeNutrition) | **GET** /compute-nutrition | Compute Nutrition |
| [**retrieveRecipeInformation()**](FoodApi.md#retrieveRecipeInformation) | **GET** /retrieve-recipe | Retrieve Recipe Information |
| [**searchRecipes()**](FoodApi.md#searchRecipes) | **GET** /search-recipes | Search Recipes |
| [**searchRestaurants()**](FoodApi.md#searchRestaurants) | **GET** /search-restaurants | Search Restaurants |


## `computeNutrition()`

```php
computeNutrition($ingredients, $servings, $reduce_oils): \OpenAPI\Client\Model\ComputeNutrition200Response
```

Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\FoodApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ingredients = 1 cup apples,3oz milk,35g butter; // string | A comma-separated list of the ingredients of the recipe.
$servings = 1; // int | The number of servings the ingredients make. Nutrition is computed per serving.
$reduce_oils = true; // bool | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.

try {
    $result = $apiInstance->computeNutrition($ingredients, $servings, $reduce_oils);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FoodApi->computeNutrition: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ingredients** | **string**| A comma-separated list of the ingredients of the recipe. | |
| **servings** | **int**| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] |
| **reduce_oils** | **bool**| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ComputeNutrition200Response**](../Model/ComputeNutrition200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `retrieveRecipeInformation()`

```php
retrieveRecipeInformation($id, $add_wine_pairing): \OpenAPI\Client\Model\RetrieveRecipeInformation200Response
```

Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\FoodApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 74987; // int | The id of the recipe to retrieve.
$add_wine_pairing = true; // bool | Whether to pair a wine to the recipe.

try {
    $result = $apiInstance->retrieveRecipeInformation($id, $add_wine_pairing);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FoodApi->retrieveRecipeInformation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**| The id of the recipe to retrieve. | |
| **add_wine_pairing** | **bool**| Whether to pair a wine to the recipe. | [optional] |

### Return type

[**\OpenAPI\Client\Model\RetrieveRecipeInformation200Response**](../Model/RetrieveRecipeInformation200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchRecipes()`

```php
searchRecipes($query, $cuisines, $exclude_cuisines, $meal_type, $diet, $intolerances, $equipment, $include_ingredients, $exclude_ingredients, $fill_ingredients, $add_recipe_information, $max_time, $min_servings, $max_servings, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $min_sugar, $max_sugar, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_zinc, $max_zinc, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_sodium, $max_sodium, $min_selenium, $max_selenium, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $sort, $sort_direction, $offset, $number): \OpenAPI\Client\Model\SearchRecipes200Response
```

Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\FoodApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = pasta with mushrooms but without nuts; // string | The search query.
$cuisines = mexican; // string | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR').
$exclude_cuisines = indian,japanese; // string | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND').
$meal_type = dessert; // string | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
$diet = paleo; // string | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
$intolerances = gluten,dairy,shellfish; // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
$equipment = blender,frying pan,bowl; // string | The equipment required. Multiple values will be interpreted as 'OR'.
$include_ingredients = tomato,cheese; // string | A comma-separated list of ingredients that should/must be used in the recipes.
$exclude_ingredients = olives,capers; // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
$fill_ingredients = true; // bool | Add information about the ingredients and whether they are used or missing in relation to the query.
$add_recipe_information = true; // bool | If set to true, you get more information about the recipes returned.
$max_time = 45; // int | The maximum time in minutes it should take to prepare and cook the recipe.
$min_servings = 1; // int | The minimum amount of servings the recipe is for.
$max_servings = 8; // int | The maximum amount of servings the recipe is for.
$min_calories = 100; // float | The minimum amount of calories the recipe must have per serving.
$max_calories = 655; // float | The maximum amount of calories the recipe can have per serving.
$min_carbs = 10.1; // float | The minimum amount of carbohydrates in grams the recipe must have per serving.
$max_carbs = 25.5; // float | The maximum amount of carbohydrates in grams the recipe can have per serving.
$min_protein = 10.1; // float | The minimum amount of protein in grams the recipe must have per serving.
$max_protein = 25.5; // float | The maximum amount of protein in grams the recipe can have per serving.
$min_fat = 10.1; // float | The minimum amount of fat in grams the recipe must have per serving.
$max_fat = 25.5; // float | The maximum amount of fat in grams the recipe can have per serving.
$min_sugar = 10.1; // float | The minimum amount of sugar in grams the recipe must have per serving.
$max_sugar = 25.5; // float | The maximum amount of sugar in grams the recipe can have per serving.
$min_fiber = 10.1; // float | The minimum amount of fiber in grams the recipe must have per serving.
$max_fiber = 25.5; // float | The maximum amount of fiber in grams the recipe can have per serving.
$min_folate = 30.4; // float | The minimum amount of folate in micrograms the recipe must have per serving.
$max_folate = 80.9; // float | The maximum amount of folate in micrograms the recipe can have per serving.
$min_folic_acid = 30.4; // float | The minimum amount of folic acid in micrograms the recipe must have per serving.
$max_folic_acid = 80.9; // float | The maximum amount of folic acid in micrograms the recipe can have per serving.
$min_iodine = 30.4; // float | The minimum amount of iodine in micrograms the recipe must have per serving.
$max_iodine = 80.9; // float | The maximum amount of iodine in micrograms the recipe can have per serving.
$min_iron = 30.4; // float | The minimum amount of iron in milligrams the recipe must have per serving.
$max_iron = 80.9; // float | The maximum amount of iron in milligrams the recipe can have per serving.
$min_zinc = 30.4; // float | The minimum amount of zinc in milligrams the recipe must have per serving.
$max_zinc = 80.9; // float | The maximum amount of zinc in milligrams the recipe can have per serving.
$min_magnesium = 30.4; // float | The minimum amount of magnesium in milligrams the recipe must have per serving.
$max_magnesium = 80.9; // float | The maximum amount of magnesium in milligrams the recipe can have per serving.
$min_manganese = 30.4; // float | The minimum amount of manganese in milligrams the recipe must have per serving.
$max_manganese = 80.9; // float | The maximum amount of manganese in milligrams the recipe can have per serving.
$min_phosphorus = 30.4; // float | The minimum amount of phosphorus in milligrams the recipe must have per serving.
$max_phosphorus = 80.9; // float | The maximum amount of phosphorus in milligrams the recipe can have per serving.
$min_potassium = 30.4; // float | The minimum amount of potassium in milligrams the recipe must have per serving.
$max_potassium = 80.9; // float | The maximum amount of potassium in milligrams the recipe can have per serving.
$min_sodium = 30.4; // float | The minimum amount of sodium in milligrams the recipe must have per serving.
$max_sodium = 80.9; // float | The maximum amount of sodium in milligrams the recipe can have per serving.
$min_selenium = 30.4; // float | The minimum amount of selenium in micrograms the recipe must have per serving.
$max_selenium = 80.9; // float | The maximum amount of selenium in micrograms the recipe can have per serving.
$min_copper = 30.4; // float | The minimum amount of copper in milligrams the recipe must have per serving.
$max_copper = 80.9; // float | The maximum amount of copper in milligrams the recipe can have per serving.
$min_calcium = 30.4; // float | The minimum amount of calcium in milligrams the recipe must have per serving.
$max_calcium = 80.9; // float | The maximum amount of calcium in milligrams the recipe can have per serving.
$min_choline = 30.4; // float | The minimum amount of choline in milligrams the recipe must have per serving.
$max_choline = 80.9; // float | The maximum amount of choline in milligrams the recipe can have per serving.
$min_cholesterol = 30.4; // float | The minimum amount of cholesterol in milligrams the recipe must have per serving.
$max_cholesterol = 80.9; // float | The maximum amount of cholesterol in milligrams the recipe can have per serving.
$min_fluoride = 30.4; // float | The minimum amount of fluoride in milligrams the recipe must have per serving.
$max_fluoride = 80.9; // float | The maximum amount of fluoride in milligrams the recipe can have per serving.
$min_alcohol = 10.1; // float | The minimum amount of alcohol in grams the recipe must have per serving.
$max_alcohol = 25.5; // float | The maximum amount of alcohol in grams the recipe can have per serving.
$min_caffeine = 30.4; // float | The minimum amount of caffeine in milligrams the recipe must have per serving.
$max_caffeine = 80.9; // float | The maximum amount of caffeine in milligrams the recipe can have per serving.
$min_saturated_fat = 30.4; // float | The minimum amount of saturated fat in grams the recipe must have per serving.
$max_saturated_fat = 80.9; // float | The maximum amount of saturated fat in grams the recipe can have per serving.
$min_vitamin_a = 30.4; // float | The minimum amount of Vitamin A in IU the recipe must have per serving.
$max_vitamin_a = 80.9; // float | The maximum amount of Vitamin A in IU the recipe can have per serving.
$min_vitamin_c = 30.4; // float | The minimum amount of Vitamin C in milligrams the recipe must have per serving.
$max_vitamin_c = 80.9; // float | The maximum amount of Vitamin C in milligrams the recipe can have per serving.
$min_vitamin_d = 30.4; // float | The minimum amount of Vitamin D in micrograms the recipe must have per serving.
$max_vitamin_d = 80.9; // float | The maximum amount of Vitamin D in micrograms the recipe can have per serving.
$min_vitamin_e = 30.4; // float | The minimum amount of Vitamin E in milligrams the recipe must have per serving.
$max_vitamin_e = 80.9; // float | The maximum amount of Vitamin E in milligrams the recipe can have per serving.
$min_vitamin_k = 30.4; // float | The minimum amount of Vitamin K in micrograms the recipe must have per serving.
$max_vitamin_k = 80.9; // float | The maximum amount of Vitamin K in micrograms the recipe can have per serving.
$min_vitamin_b1 = 30.4; // float | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
$max_vitamin_b1 = 80.9; // float | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
$min_vitamin_b2 = 30.4; // float | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
$max_vitamin_b2 = 80.9; // float | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
$min_vitamin_b3 = 30.4; // float | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
$max_vitamin_b3 = 80.9; // float | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
$min_vitamin_b5 = 30.4; // float | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
$max_vitamin_b5 = 80.9; // float | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
$min_vitamin_b6 = 30.4; // float | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
$max_vitamin_b6 = 80.9; // float | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
$min_vitamin_b12 = 30.4; // float | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
$max_vitamin_b12 = 80.9; // float | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
$sort = meta-score; // string | The strategy to sort recipes by. See a full list of supported sorting options.
$sort_direction = ASC; // string | Whether to sort ascending or descending (ASC or DESC).
$offset = 0; // int | The number of recipes to skip, between 0 and 900.
$number = 3; // int | The number of recipes, between 1 and 100.

try {
    $result = $apiInstance->searchRecipes($query, $cuisines, $exclude_cuisines, $meal_type, $diet, $intolerances, $equipment, $include_ingredients, $exclude_ingredients, $fill_ingredients, $add_recipe_information, $max_time, $min_servings, $max_servings, $min_calories, $max_calories, $min_carbs, $max_carbs, $min_protein, $max_protein, $min_fat, $max_fat, $min_sugar, $max_sugar, $min_fiber, $max_fiber, $min_folate, $max_folate, $min_folic_acid, $max_folic_acid, $min_iodine, $max_iodine, $min_iron, $max_iron, $min_zinc, $max_zinc, $min_magnesium, $max_magnesium, $min_manganese, $max_manganese, $min_phosphorus, $max_phosphorus, $min_potassium, $max_potassium, $min_sodium, $max_sodium, $min_selenium, $max_selenium, $min_copper, $max_copper, $min_calcium, $max_calcium, $min_choline, $max_choline, $min_cholesterol, $max_cholesterol, $min_fluoride, $max_fluoride, $min_alcohol, $max_alcohol, $min_caffeine, $max_caffeine, $min_saturated_fat, $max_saturated_fat, $min_vitamin_a, $max_vitamin_a, $min_vitamin_c, $max_vitamin_c, $min_vitamin_d, $max_vitamin_d, $min_vitamin_e, $max_vitamin_e, $min_vitamin_k, $max_vitamin_k, $min_vitamin_b1, $max_vitamin_b1, $min_vitamin_b2, $max_vitamin_b2, $min_vitamin_b3, $max_vitamin_b3, $min_vitamin_b5, $max_vitamin_b5, $min_vitamin_b6, $max_vitamin_b6, $min_vitamin_b12, $max_vitamin_b12, $sort, $sort_direction, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FoodApi->searchRecipes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | [optional] |
| **cuisines** | **string**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). | [optional] |
| **exclude_cuisines** | **string**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). | [optional] |
| **meal_type** | **string**| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] |
| **diet** | **string**| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] |
| **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] |
| **equipment** | **string**| The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] |
| **include_ingredients** | **string**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] |
| **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] |
| **fill_ingredients** | **bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] |
| **add_recipe_information** | **bool**| If set to true, you get more information about the recipes returned. | [optional] |
| **max_time** | **int**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] |
| **min_servings** | **int**| The minimum amount of servings the recipe is for. | [optional] |
| **max_servings** | **int**| The maximum amount of servings the recipe is for. | [optional] |
| **min_calories** | **float**| The minimum amount of calories the recipe must have per serving. | [optional] |
| **max_calories** | **float**| The maximum amount of calories the recipe can have per serving. | [optional] |
| **min_carbs** | **float**| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] |
| **max_carbs** | **float**| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] |
| **min_protein** | **float**| The minimum amount of protein in grams the recipe must have per serving. | [optional] |
| **max_protein** | **float**| The maximum amount of protein in grams the recipe can have per serving. | [optional] |
| **min_fat** | **float**| The minimum amount of fat in grams the recipe must have per serving. | [optional] |
| **max_fat** | **float**| The maximum amount of fat in grams the recipe can have per serving. | [optional] |
| **min_sugar** | **float**| The minimum amount of sugar in grams the recipe must have per serving. | [optional] |
| **max_sugar** | **float**| The maximum amount of sugar in grams the recipe can have per serving. | [optional] |
| **min_fiber** | **float**| The minimum amount of fiber in grams the recipe must have per serving. | [optional] |
| **max_fiber** | **float**| The maximum amount of fiber in grams the recipe can have per serving. | [optional] |
| **min_folate** | **float**| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] |
| **max_folate** | **float**| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] |
| **min_folic_acid** | **float**| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] |
| **max_folic_acid** | **float**| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] |
| **min_iodine** | **float**| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] |
| **max_iodine** | **float**| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] |
| **min_iron** | **float**| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] |
| **max_iron** | **float**| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] |
| **min_zinc** | **float**| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] |
| **max_zinc** | **float**| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] |
| **min_magnesium** | **float**| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] |
| **max_magnesium** | **float**| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] |
| **min_manganese** | **float**| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] |
| **max_manganese** | **float**| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] |
| **min_phosphorus** | **float**| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] |
| **max_phosphorus** | **float**| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] |
| **min_potassium** | **float**| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] |
| **max_potassium** | **float**| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] |
| **min_sodium** | **float**| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] |
| **max_sodium** | **float**| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] |
| **min_selenium** | **float**| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] |
| **max_selenium** | **float**| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] |
| **min_copper** | **float**| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] |
| **max_copper** | **float**| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] |
| **min_calcium** | **float**| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] |
| **max_calcium** | **float**| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] |
| **min_choline** | **float**| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] |
| **max_choline** | **float**| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] |
| **min_cholesterol** | **float**| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] |
| **max_cholesterol** | **float**| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] |
| **min_fluoride** | **float**| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] |
| **max_fluoride** | **float**| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] |
| **min_alcohol** | **float**| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] |
| **max_alcohol** | **float**| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] |
| **min_caffeine** | **float**| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] |
| **max_caffeine** | **float**| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] |
| **min_saturated_fat** | **float**| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] |
| **max_saturated_fat** | **float**| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] |
| **min_vitamin_a** | **float**| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] |
| **max_vitamin_a** | **float**| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] |
| **min_vitamin_c** | **float**| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_c** | **float**| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_d** | **float**| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] |
| **max_vitamin_d** | **float**| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] |
| **min_vitamin_e** | **float**| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_e** | **float**| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_k** | **float**| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] |
| **max_vitamin_k** | **float**| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] |
| **min_vitamin_b1** | **float**| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b1** | **float**| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b2** | **float**| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b2** | **float**| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b3** | **float**| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b3** | **float**| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b5** | **float**| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b5** | **float**| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b6** | **float**| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b6** | **float**| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b12** | **float**| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b12** | **float**| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] |
| **sort** | **string**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] |
| **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **int**| The number of recipes to skip, between 0 and 900. | [optional] |
| **number** | **int**| The number of recipes, between 1 and 100. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchRecipes200Response**](../Model/SearchRecipes200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchRestaurants()`

```php
searchRestaurants($lat, $lon, $query, $distance, $budget, $min_rating, $cuisine, $is_open, $page, $sort): \OpenAPI\Client\Model\SearchRestaurants200Response
```

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\FoodApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$lat = 32.715736; // float | The latitude to search around.
$lon = -117.161087; // float | The longitude to search around.
$query = burger; // string | The search query.
$distance = 5; // int | The maximum distance of the restaurant in miles around the given location.
$budget = 25; // float | The budget in USD for the meal.
$min_rating = 4.4; // float | The minimum rating of the restaurants in range [0,5].
$cuisine = Mexican; // string | The cuisine that the restaurants should support.
$is_open = true; // bool | Whether the restaurants have to be open now.
$page = 0; // int | The page of the results.
$sort = rating; // string | The sort parameter, one of: cheapest, fastest, rating, distance or relevance.

try {
    $result = $apiInstance->searchRestaurants($lat, $lon, $query, $distance, $budget, $min_rating, $cuisine, $is_open, $page, $sort);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FoodApi->searchRestaurants: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **lat** | **float**| The latitude to search around. | |
| **lon** | **float**| The longitude to search around. | |
| **query** | **string**| The search query. | [optional] |
| **distance** | **int**| The maximum distance of the restaurant in miles around the given location. | [optional] |
| **budget** | **float**| The budget in USD for the meal. | [optional] |
| **min_rating** | **float**| The minimum rating of the restaurants in range [0,5]. | [optional] |
| **cuisine** | **string**| The cuisine that the restaurants should support. | [optional] |
| **is_open** | **bool**| Whether the restaurants have to be open now. | [optional] |
| **page** | **int**| The page of the results. | [optional] |
| **sort** | **string**| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchRestaurants200Response**](../Model/SearchRestaurants200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
