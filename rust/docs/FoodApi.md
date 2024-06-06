# \FoodApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compute_nutrition**](FoodApi.md#compute_nutrition) | **GET** /compute-nutrition | Compute Nutrition
[**retrieve_recipe_information**](FoodApi.md#retrieve_recipe_information) | **GET** /retrieve-recipe | Retrieve Recipe Information
[**search_recipes**](FoodApi.md#search_recipes) | **GET** /search-recipes | Search Recipes
[**search_restaurants**](FoodApi.md#search_restaurants) | **GET** /search-restaurants | Search Restaurants



## compute_nutrition

> models::ComputeNutrition200Response compute_nutrition(ingredients, servings, reduce_oils)
Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ingredients** | **String** | A comma-separated list of the ingredients of the recipe. | [required] |
**servings** | Option<**i32**> | The number of servings the ingredients make. Nutrition is computed per serving. |  |
**reduce_oils** | Option<**bool**> | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. |  |

### Return type

[**models::ComputeNutrition200Response**](computeNutrition_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## retrieve_recipe_information

> models::RetrieveRecipeInformation200Response retrieve_recipe_information(id, add_wine_pairing)
Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the recipe to retrieve. | [required] |
**add_wine_pairing** | Option<**bool**> | Whether to pair a wine to the recipe. |  |

### Return type

[**models::RetrieveRecipeInformation200Response**](retrieveRecipeInformation_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_recipes

> models::SearchRecipes200Response search_recipes(query, cuisines, exclude_cuisines, meal_type, diet, intolerances, equipment, include_ingredients, exclude_ingredients, fill_ingredients, add_recipe_information, max_time, min_servings, max_servings, min_calories, max_calories, min_carbs, max_carbs, min_protein, max_protein, min_fat, max_fat, min_sugar, max_sugar, min_fiber, max_fiber, min_folate, max_folate, min_folic_acid, max_folic_acid, min_iodine, max_iodine, min_iron, max_iron, min_zinc, max_zinc, min_magnesium, max_magnesium, min_manganese, max_manganese, min_phosphorus, max_phosphorus, min_potassium, max_potassium, min_sodium, max_sodium, min_selenium, max_selenium, min_copper, max_copper, min_calcium, max_calcium, min_choline, max_choline, min_cholesterol, max_cholesterol, min_fluoride, max_fluoride, min_alcohol, max_alcohol, min_caffeine, max_caffeine, min_saturated_fat, max_saturated_fat, min_vitamin_a, max_vitamin_a, min_vitamin_c, max_vitamin_c, min_vitamin_d, max_vitamin_d, min_vitamin_e, max_vitamin_e, min_vitamin_k, max_vitamin_k, min_vitamin_b1, max_vitamin_b1, min_vitamin_b2, max_vitamin_b2, min_vitamin_b3, max_vitamin_b3, min_vitamin_b5, max_vitamin_b5, min_vitamin_b6, max_vitamin_b6, min_vitamin_b12, max_vitamin_b12, sort, sort_direction, offset, number)
Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The search query. |  |
**cuisines** | Option<**String**> | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). |  |
**exclude_cuisines** | Option<**String**> | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). |  |
**meal_type** | Option<**String**> | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. |  |
**diet** | Option<**String**> | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. |  |
**intolerances** | Option<**String**> | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. |  |
**equipment** | Option<**String**> | The equipment required. Multiple values will be interpreted as 'OR'. |  |
**include_ingredients** | Option<**String**> | A comma-separated list of ingredients that should/must be used in the recipes. |  |
**exclude_ingredients** | Option<**String**> | A comma-separated list of ingredients or ingredient types that the recipes must not contain. |  |
**fill_ingredients** | Option<**bool**> | Add information about the ingredients and whether they are used or missing in relation to the query. |  |
**add_recipe_information** | Option<**bool**> | If set to true, you get more information about the recipes returned. |  |
**max_time** | Option<**i32**> | The maximum time in minutes it should take to prepare and cook the recipe. |  |
**min_servings** | Option<**i32**> | The minimum amount of servings the recipe is for. |  |
**max_servings** | Option<**i32**> | The maximum amount of servings the recipe is for. |  |
**min_calories** | Option<**f64**> | The minimum amount of calories the recipe must have per serving. |  |
**max_calories** | Option<**f64**> | The maximum amount of calories the recipe can have per serving. |  |
**min_carbs** | Option<**f64**> | The minimum amount of carbohydrates in grams the recipe must have per serving. |  |
**max_carbs** | Option<**f64**> | The maximum amount of carbohydrates in grams the recipe can have per serving. |  |
**min_protein** | Option<**f64**> | The minimum amount of protein in grams the recipe must have per serving. |  |
**max_protein** | Option<**f64**> | The maximum amount of protein in grams the recipe can have per serving. |  |
**min_fat** | Option<**f64**> | The minimum amount of fat in grams the recipe must have per serving. |  |
**max_fat** | Option<**f64**> | The maximum amount of fat in grams the recipe can have per serving. |  |
**min_sugar** | Option<**f64**> | The minimum amount of sugar in grams the recipe must have per serving. |  |
**max_sugar** | Option<**f64**> | The maximum amount of sugar in grams the recipe can have per serving. |  |
**min_fiber** | Option<**f64**> | The minimum amount of fiber in grams the recipe must have per serving. |  |
**max_fiber** | Option<**f64**> | The maximum amount of fiber in grams the recipe can have per serving. |  |
**min_folate** | Option<**f64**> | The minimum amount of folate in micrograms the recipe must have per serving. |  |
**max_folate** | Option<**f64**> | The maximum amount of folate in micrograms the recipe can have per serving. |  |
**min_folic_acid** | Option<**f64**> | The minimum amount of folic acid in micrograms the recipe must have per serving. |  |
**max_folic_acid** | Option<**f64**> | The maximum amount of folic acid in micrograms the recipe can have per serving. |  |
**min_iodine** | Option<**f64**> | The minimum amount of iodine in micrograms the recipe must have per serving. |  |
**max_iodine** | Option<**f64**> | The maximum amount of iodine in micrograms the recipe can have per serving. |  |
**min_iron** | Option<**f64**> | The minimum amount of iron in milligrams the recipe must have per serving. |  |
**max_iron** | Option<**f64**> | The maximum amount of iron in milligrams the recipe can have per serving. |  |
**min_zinc** | Option<**f64**> | The minimum amount of zinc in milligrams the recipe must have per serving. |  |
**max_zinc** | Option<**f64**> | The maximum amount of zinc in milligrams the recipe can have per serving. |  |
**min_magnesium** | Option<**f64**> | The minimum amount of magnesium in milligrams the recipe must have per serving. |  |
**max_magnesium** | Option<**f64**> | The maximum amount of magnesium in milligrams the recipe can have per serving. |  |
**min_manganese** | Option<**f64**> | The minimum amount of manganese in milligrams the recipe must have per serving. |  |
**max_manganese** | Option<**f64**> | The maximum amount of manganese in milligrams the recipe can have per serving. |  |
**min_phosphorus** | Option<**f64**> | The minimum amount of phosphorus in milligrams the recipe must have per serving. |  |
**max_phosphorus** | Option<**f64**> | The maximum amount of phosphorus in milligrams the recipe can have per serving. |  |
**min_potassium** | Option<**f64**> | The minimum amount of potassium in milligrams the recipe must have per serving. |  |
**max_potassium** | Option<**f64**> | The maximum amount of potassium in milligrams the recipe can have per serving. |  |
**min_sodium** | Option<**f64**> | The minimum amount of sodium in milligrams the recipe must have per serving. |  |
**max_sodium** | Option<**f64**> | The maximum amount of sodium in milligrams the recipe can have per serving. |  |
**min_selenium** | Option<**f64**> | The minimum amount of selenium in micrograms the recipe must have per serving. |  |
**max_selenium** | Option<**f64**> | The maximum amount of selenium in micrograms the recipe can have per serving. |  |
**min_copper** | Option<**f64**> | The minimum amount of copper in milligrams the recipe must have per serving. |  |
**max_copper** | Option<**f64**> | The maximum amount of copper in milligrams the recipe can have per serving. |  |
**min_calcium** | Option<**f64**> | The minimum amount of calcium in milligrams the recipe must have per serving. |  |
**max_calcium** | Option<**f64**> | The maximum amount of calcium in milligrams the recipe can have per serving. |  |
**min_choline** | Option<**f64**> | The minimum amount of choline in milligrams the recipe must have per serving. |  |
**max_choline** | Option<**f64**> | The maximum amount of choline in milligrams the recipe can have per serving. |  |
**min_cholesterol** | Option<**f64**> | The minimum amount of cholesterol in milligrams the recipe must have per serving. |  |
**max_cholesterol** | Option<**f64**> | The maximum amount of cholesterol in milligrams the recipe can have per serving. |  |
**min_fluoride** | Option<**f64**> | The minimum amount of fluoride in milligrams the recipe must have per serving. |  |
**max_fluoride** | Option<**f64**> | The maximum amount of fluoride in milligrams the recipe can have per serving. |  |
**min_alcohol** | Option<**f64**> | The minimum amount of alcohol in grams the recipe must have per serving. |  |
**max_alcohol** | Option<**f64**> | The maximum amount of alcohol in grams the recipe can have per serving. |  |
**min_caffeine** | Option<**f64**> | The minimum amount of caffeine in milligrams the recipe must have per serving. |  |
**max_caffeine** | Option<**f64**> | The maximum amount of caffeine in milligrams the recipe can have per serving. |  |
**min_saturated_fat** | Option<**f64**> | The minimum amount of saturated fat in grams the recipe must have per serving. |  |
**max_saturated_fat** | Option<**f64**> | The maximum amount of saturated fat in grams the recipe can have per serving. |  |
**min_vitamin_a** | Option<**f64**> | The minimum amount of Vitamin A in IU the recipe must have per serving. |  |
**max_vitamin_a** | Option<**f64**> | The maximum amount of Vitamin A in IU the recipe can have per serving. |  |
**min_vitamin_c** | Option<**f64**> | The minimum amount of Vitamin C in milligrams the recipe must have per serving. |  |
**max_vitamin_c** | Option<**f64**> | The maximum amount of Vitamin C in milligrams the recipe can have per serving. |  |
**min_vitamin_d** | Option<**f64**> | The minimum amount of Vitamin D in micrograms the recipe must have per serving. |  |
**max_vitamin_d** | Option<**f64**> | The maximum amount of Vitamin D in micrograms the recipe can have per serving. |  |
**min_vitamin_e** | Option<**f64**> | The minimum amount of Vitamin E in milligrams the recipe must have per serving. |  |
**max_vitamin_e** | Option<**f64**> | The maximum amount of Vitamin E in milligrams the recipe can have per serving. |  |
**min_vitamin_k** | Option<**f64**> | The minimum amount of Vitamin K in micrograms the recipe must have per serving. |  |
**max_vitamin_k** | Option<**f64**> | The maximum amount of Vitamin K in micrograms the recipe can have per serving. |  |
**min_vitamin_b1** | Option<**f64**> | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. |  |
**max_vitamin_b1** | Option<**f64**> | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. |  |
**min_vitamin_b2** | Option<**f64**> | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. |  |
**max_vitamin_b2** | Option<**f64**> | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. |  |
**min_vitamin_b3** | Option<**f64**> | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. |  |
**max_vitamin_b3** | Option<**f64**> | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. |  |
**min_vitamin_b5** | Option<**f64**> | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. |  |
**max_vitamin_b5** | Option<**f64**> | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. |  |
**min_vitamin_b6** | Option<**f64**> | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. |  |
**max_vitamin_b6** | Option<**f64**> | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. |  |
**min_vitamin_b12** | Option<**f64**> | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. |  |
**max_vitamin_b12** | Option<**f64**> | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. |  |
**sort** | Option<**String**> | The strategy to sort recipes by. See a full list of supported sorting options. |  |
**sort_direction** | Option<**String**> | Whether to sort ascending or descending (ASC or DESC). |  |
**offset** | Option<**i32**> | The number of recipes to skip, between 0 and 900. |  |
**number** | Option<**i32**> | The number of recipes, between 1 and 100. |  |

### Return type

[**models::SearchRecipes200Response**](searchRecipes_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_restaurants

> models::SearchRestaurants200Response search_restaurants(lat, lon, query, distance, budget, min_rating, cuisine, is_open, page, sort)
Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**lat** | **f64** | The latitude to search around. | [required] |
**lon** | **f64** | The longitude to search around. | [required] |
**query** | Option<**String**> | The search query. |  |
**distance** | Option<**i32**> | The maximum distance of the restaurant in miles around the given location. |  |
**budget** | Option<**f64**> | The budget in USD for the meal. |  |
**min_rating** | Option<**f64**> | The minimum rating of the restaurants in range [0,5]. |  |
**cuisine** | Option<**String**> | The cuisine that the restaurants should support. |  |
**is_open** | Option<**bool**> | Whether the restaurants have to be open now. |  |
**page** | Option<**i32**> | The page of the results. |  |
**sort** | Option<**String**> | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. |  |

### Return type

[**models::SearchRestaurants200Response**](searchRestaurants_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

