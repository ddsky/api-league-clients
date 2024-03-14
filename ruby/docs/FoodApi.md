# OpenapiClient::FoodApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**compute_nutrition**](FoodApi.md#compute_nutrition) | **GET** /compute-nutrition | Compute Nutrition |
| [**retrieve_recipe_information**](FoodApi.md#retrieve_recipe_information) | **GET** /retrieve-recipe | Retrieve Recipe Information |
| [**search_recipes**](FoodApi.md#search_recipes) | **GET** /search-recipes | Search Recipes |
| [**search_restaurants**](FoodApi.md#search_restaurants) | **GET** /search-restaurants | Search Restaurants |


## compute_nutrition

> <ComputeNutrition200Response> compute_nutrition(ingredients, opts)

Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::FoodApi.new
ingredients = '1 cup apples,3oz milk,35g butter' # String | A comma-separated list of the ingredients of the recipe.
opts = {
  servings: 1, # Integer | The number of servings the ingredients make. Nutrition is computed per serving.
  reduce_oils: true # Boolean | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
}

begin
  # Compute Nutrition
  result = api_instance.compute_nutrition(ingredients, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FoodApi->compute_nutrition: #{e}"
end
```

#### Using the compute_nutrition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ComputeNutrition200Response>, Integer, Hash)> compute_nutrition_with_http_info(ingredients, opts)

```ruby
begin
  # Compute Nutrition
  data, status_code, headers = api_instance.compute_nutrition_with_http_info(ingredients, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ComputeNutrition200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FoodApi->compute_nutrition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingredients** | **String** | A comma-separated list of the ingredients of the recipe. |  |
| **servings** | **Integer** | The number of servings the ingredients make. Nutrition is computed per serving. | [optional] |
| **reduce_oils** | **Boolean** | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] |

### Return type

[**ComputeNutrition200Response**](ComputeNutrition200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_recipe_information

> <RetrieveRecipeInformation200Response> retrieve_recipe_information(id, opts)

Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::FoodApi.new
id = 74987 # Integer | The id of the recipe to retrieve.
opts = {
  add_wine_pairing: true # Boolean | Whether to pair a wine to the recipe.
}

begin
  # Retrieve Recipe Information
  result = api_instance.retrieve_recipe_information(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FoodApi->retrieve_recipe_information: #{e}"
end
```

#### Using the retrieve_recipe_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveRecipeInformation200Response>, Integer, Hash)> retrieve_recipe_information_with_http_info(id, opts)

```ruby
begin
  # Retrieve Recipe Information
  data, status_code, headers = api_instance.retrieve_recipe_information_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveRecipeInformation200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FoodApi->retrieve_recipe_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the recipe to retrieve. |  |
| **add_wine_pairing** | **Boolean** | Whether to pair a wine to the recipe. | [optional] |

### Return type

[**RetrieveRecipeInformation200Response**](RetrieveRecipeInformation200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_recipes

> <SearchRecipes200Response> search_recipes(opts)

Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::FoodApi.new
opts = {
  query: 'pasta with mushrooms but without nuts', # String | The search query.
  cuisines: 'mexican', # String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR').
  exclude_cuisines: 'indian,japanese', # String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND').
  meal_type: 'dessert', # String | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
  diet: 'paleo', # String | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
  intolerances: 'gluten,dairy,shellfish', # String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
  equipment: 'blender,frying pan,bowl', # String | The equipment required. Multiple values will be interpreted as 'OR'.
  include_ingredients: 'tomato,cheese', # String | A comma-separated list of ingredients that should/must be used in the recipes.
  exclude_ingredients: 'olives,capers', # String | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  fill_ingredients: true, # Boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
  add_recipe_information: true, # Boolean | If set to true, you get more information about the recipes returned.
  max_time: 45, # Integer | The maximum time in minutes it should take to prepare and cook the recipe.
  min_calories: 100, # Float | The minimum amount of calories the recipe must have per serving.
  max_calories: 655, # Float | The maximum amount of calories the recipe can have per serving.
  min_carbs: 10.1, # Float | The minimum amount of carbohydrates in grams the recipe must have per serving.
  max_carbs: 25.5, # Float | The maximum amount of carbohydrates in grams the recipe can have per serving.
  min_protein: 10.1, # Float | The minimum amount of protein in grams the recipe must have per serving.
  max_protein: 25.5, # Float | The maximum amount of protein in grams the recipe can have per serving.
  min_fat: 10.1, # Float | The minimum amount of fat in grams the recipe must have per serving.
  max_fat: 25.5, # Float | The maximum amount of fat in grams the recipe can have per serving.
  min_sugar: 10.1, # Float | The minimum amount of sugar in grams the recipe must have per serving.
  max_sugar: 25.5, # Float | The maximum amount of sugar in grams the recipe can have per serving.
  min_fiber: 10.1, # Float | The minimum amount of fiber in grams the recipe must have per serving.
  max_fiber: 25.5, # Float | The maximum amount of fiber in grams the recipe can have per serving.
  min_folate: 30.4, # Float | The minimum amount of folate in micrograms the recipe must have per serving.
  max_folate: 80.9, # Float | The maximum amount of folate in micrograms the recipe can have per serving.
  min_folic_acid: 30.4, # Float | The minimum amount of folic acid in micrograms the recipe must have per serving.
  max_folic_acid: 80.9, # Float | The maximum amount of folic acid in micrograms the recipe can have per serving.
  min_iodine: 30.4, # Float | The minimum amount of iodine in micrograms the recipe must have per serving.
  max_iodine: 80.9, # Float | The maximum amount of iodine in micrograms the recipe can have per serving.
  min_iron: 30.4, # Float | The minimum amount of iron in milligrams the recipe must have per serving.
  max_iron: 80.9, # Float | The maximum amount of iron in milligrams the recipe can have per serving.
  min_zinc: 30.4, # Float | The minimum amount of zinc in milligrams the recipe must have per serving.
  max_zinc: 80.9, # Float | The maximum amount of zinc in milligrams the recipe can have per serving.
  min_magnesium: 30.4, # Float | The minimum amount of magnesium in milligrams the recipe must have per serving.
  max_magnesium: 80.9, # Float | The maximum amount of magnesium in milligrams the recipe can have per serving.
  min_manganese: 30.4, # Float | The minimum amount of manganese in milligrams the recipe must have per serving.
  max_manganese: 80.9, # Float | The maximum amount of manganese in milligrams the recipe can have per serving.
  min_phosphorus: 30.4, # Float | The minimum amount of phosphorus in milligrams the recipe must have per serving.
  max_phosphorus: 80.9, # Float | The maximum amount of phosphorus in milligrams the recipe can have per serving.
  min_potassium: 30.4, # Float | The minimum amount of potassium in milligrams the recipe must have per serving.
  max_potassium: 80.9, # Float | The maximum amount of potassium in milligrams the recipe can have per serving.
  min_sodium: 30.4, # Float | The minimum amount of sodium in milligrams the recipe must have per serving.
  max_sodium: 80.9, # Float | The maximum amount of sodium in milligrams the recipe can have per serving.
  min_selenium: 30.4, # Float | The minimum amount of selenium in micrograms the recipe must have per serving.
  max_selenium: 80.9, # Float | The maximum amount of selenium in micrograms the recipe can have per serving.
  min_copper: 30.4, # Float | The minimum amount of copper in milligrams the recipe must have per serving.
  max_copper: 80.9, # Float | The maximum amount of copper in milligrams the recipe can have per serving.
  min_calcium: 30.4, # Float | The minimum amount of calcium in milligrams the recipe must have per serving.
  max_calcium: 80.9, # Float | The maximum amount of calcium in milligrams the recipe can have per serving.
  min_choline: 30.4, # Float | The minimum amount of choline in milligrams the recipe must have per serving.
  max_choline: 80.9, # Float | The maximum amount of choline in milligrams the recipe can have per serving.
  min_cholesterol: 30.4, # Float | The minimum amount of cholesterol in milligrams the recipe must have per serving.
  max_cholesterol: 80.9, # Float | The maximum amount of cholesterol in milligrams the recipe can have per serving.
  min_fluoride: 30.4, # Float | The minimum amount of fluoride in milligrams the recipe must have per serving.
  max_fluoride: 80.9, # Float | The maximum amount of fluoride in milligrams the recipe can have per serving.
  min_alcohol: 10.1, # Float | The minimum amount of alcohol in grams the recipe must have per serving.
  max_alcohol: 25.5, # Float | The maximum amount of alcohol in grams the recipe can have per serving.
  min_caffeine: 30.4, # Float | The minimum amount of caffeine in milligrams the recipe must have per serving.
  max_caffeine: 80.9, # Float | The maximum amount of caffeine in milligrams the recipe can have per serving.
  min_saturated_fat: 30.4, # Float | The minimum amount of saturated fat in grams the recipe must have per serving.
  max_saturated_fat: 80.9, # Float | The maximum amount of saturated fat in grams the recipe can have per serving.
  min_vitamin_a: 30.4, # Float | The minimum amount of Vitamin A in IU the recipe must have per serving.
  max_vitamin_a: 80.9, # Float | The maximum amount of Vitamin A in IU the recipe can have per serving.
  min_vitamin_c: 30.4, # Float | The minimum amount of Vitamin C in milligrams the recipe must have per serving.
  max_vitamin_c: 80.9, # Float | The maximum amount of Vitamin C in milligrams the recipe can have per serving.
  min_vitamin_d: 30.4, # Float | The minimum amount of Vitamin D in micrograms the recipe must have per serving.
  max_vitamin_d: 80.9, # Float | The maximum amount of Vitamin D in micrograms the recipe can have per serving.
  min_vitamin_e: 30.4, # Float | The minimum amount of Vitamin E in milligrams the recipe must have per serving.
  max_vitamin_e: 80.9, # Float | The maximum amount of Vitamin E in milligrams the recipe can have per serving.
  min_vitamin_k: 30.4, # Float | The minimum amount of Vitamin K in micrograms the recipe must have per serving.
  max_vitamin_k: 80.9, # Float | The maximum amount of Vitamin K in micrograms the recipe can have per serving.
  min_vitamin_b1: 30.4, # Float | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
  max_vitamin_b1: 80.9, # Float | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
  min_vitamin_b2: 30.4, # Float | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
  max_vitamin_b2: 80.9, # Float | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
  min_vitamin_b3: 30.4, # Float | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
  max_vitamin_b3: 80.9, # Float | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
  min_vitamin_b5: 30.4, # Float | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
  max_vitamin_b5: 80.9, # Float | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
  min_vitamin_b6: 30.4, # Float | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
  max_vitamin_b6: 80.9, # Float | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
  min_vitamin_b12: 30.4, # Float | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
  max_vitamin_b12: 80.9, # Float | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
  sort: 'meta-score', # String | The strategy to sort recipes by. See a full list of supported sorting options.
  sort_direction: 'ASC', # String | Whether to sort ascending or descending (ASC or DESC).
  offset: 0, # Integer | The number of recipes to skip, between 0 and 900.
  number: 3 # Integer | The number of recipes, between 1 and 100.
}

begin
  # Search Recipes
  result = api_instance.search_recipes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FoodApi->search_recipes: #{e}"
end
```

#### Using the search_recipes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchRecipes200Response>, Integer, Hash)> search_recipes_with_http_info(opts)

```ruby
begin
  # Search Recipes
  data, status_code, headers = api_instance.search_recipes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchRecipes200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FoodApi->search_recipes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. | [optional] |
| **cuisines** | **String** | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). | [optional] |
| **exclude_cuisines** | **String** | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). | [optional] |
| **meal_type** | **String** | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] |
| **diet** | **String** | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] |
| **intolerances** | **String** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] |
| **equipment** | **String** | The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] |
| **include_ingredients** | **String** | A comma-separated list of ingredients that should/must be used in the recipes. | [optional] |
| **exclude_ingredients** | **String** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] |
| **fill_ingredients** | **Boolean** | Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] |
| **add_recipe_information** | **Boolean** | If set to true, you get more information about the recipes returned. | [optional] |
| **max_time** | **Integer** | The maximum time in minutes it should take to prepare and cook the recipe. | [optional] |
| **min_calories** | **Float** | The minimum amount of calories the recipe must have per serving. | [optional] |
| **max_calories** | **Float** | The maximum amount of calories the recipe can have per serving. | [optional] |
| **min_carbs** | **Float** | The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] |
| **max_carbs** | **Float** | The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] |
| **min_protein** | **Float** | The minimum amount of protein in grams the recipe must have per serving. | [optional] |
| **max_protein** | **Float** | The maximum amount of protein in grams the recipe can have per serving. | [optional] |
| **min_fat** | **Float** | The minimum amount of fat in grams the recipe must have per serving. | [optional] |
| **max_fat** | **Float** | The maximum amount of fat in grams the recipe can have per serving. | [optional] |
| **min_sugar** | **Float** | The minimum amount of sugar in grams the recipe must have per serving. | [optional] |
| **max_sugar** | **Float** | The maximum amount of sugar in grams the recipe can have per serving. | [optional] |
| **min_fiber** | **Float** | The minimum amount of fiber in grams the recipe must have per serving. | [optional] |
| **max_fiber** | **Float** | The maximum amount of fiber in grams the recipe can have per serving. | [optional] |
| **min_folate** | **Float** | The minimum amount of folate in micrograms the recipe must have per serving. | [optional] |
| **max_folate** | **Float** | The maximum amount of folate in micrograms the recipe can have per serving. | [optional] |
| **min_folic_acid** | **Float** | The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] |
| **max_folic_acid** | **Float** | The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] |
| **min_iodine** | **Float** | The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] |
| **max_iodine** | **Float** | The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] |
| **min_iron** | **Float** | The minimum amount of iron in milligrams the recipe must have per serving. | [optional] |
| **max_iron** | **Float** | The maximum amount of iron in milligrams the recipe can have per serving. | [optional] |
| **min_zinc** | **Float** | The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] |
| **max_zinc** | **Float** | The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] |
| **min_magnesium** | **Float** | The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] |
| **max_magnesium** | **Float** | The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] |
| **min_manganese** | **Float** | The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] |
| **max_manganese** | **Float** | The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] |
| **min_phosphorus** | **Float** | The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] |
| **max_phosphorus** | **Float** | The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] |
| **min_potassium** | **Float** | The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] |
| **max_potassium** | **Float** | The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] |
| **min_sodium** | **Float** | The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] |
| **max_sodium** | **Float** | The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] |
| **min_selenium** | **Float** | The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] |
| **max_selenium** | **Float** | The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] |
| **min_copper** | **Float** | The minimum amount of copper in milligrams the recipe must have per serving. | [optional] |
| **max_copper** | **Float** | The maximum amount of copper in milligrams the recipe can have per serving. | [optional] |
| **min_calcium** | **Float** | The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] |
| **max_calcium** | **Float** | The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] |
| **min_choline** | **Float** | The minimum amount of choline in milligrams the recipe must have per serving. | [optional] |
| **max_choline** | **Float** | The maximum amount of choline in milligrams the recipe can have per serving. | [optional] |
| **min_cholesterol** | **Float** | The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] |
| **max_cholesterol** | **Float** | The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] |
| **min_fluoride** | **Float** | The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] |
| **max_fluoride** | **Float** | The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] |
| **min_alcohol** | **Float** | The minimum amount of alcohol in grams the recipe must have per serving. | [optional] |
| **max_alcohol** | **Float** | The maximum amount of alcohol in grams the recipe can have per serving. | [optional] |
| **min_caffeine** | **Float** | The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] |
| **max_caffeine** | **Float** | The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] |
| **min_saturated_fat** | **Float** | The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] |
| **max_saturated_fat** | **Float** | The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] |
| **min_vitamin_a** | **Float** | The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] |
| **max_vitamin_a** | **Float** | The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] |
| **min_vitamin_c** | **Float** | The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_c** | **Float** | The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_d** | **Float** | The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] |
| **max_vitamin_d** | **Float** | The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] |
| **min_vitamin_e** | **Float** | The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_e** | **Float** | The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_k** | **Float** | The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] |
| **max_vitamin_k** | **Float** | The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] |
| **min_vitamin_b1** | **Float** | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b1** | **Float** | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b2** | **Float** | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b2** | **Float** | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b3** | **Float** | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b3** | **Float** | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b5** | **Float** | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b5** | **Float** | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b6** | **Float** | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b6** | **Float** | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] |
| **min_vitamin_b12** | **Float** | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] |
| **max_vitamin_b12** | **Float** | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] |
| **sort** | **String** | The strategy to sort recipes by. See a full list of supported sorting options. | [optional] |
| **sort_direction** | **String** | Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **Integer** | The number of recipes to skip, between 0 and 900. | [optional] |
| **number** | **Integer** | The number of recipes, between 1 and 100. | [optional] |

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_restaurants

> <SearchRestaurants200Response> search_restaurants(lat, lon, opts)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::FoodApi.new
lat = 32.715736 # Float | The latitude to search around.
lon = -117.161087 # Float | The longitude to search around.
opts = {
  query: 'burger', # String | The search query.
  distance: 5, # Integer | The maximum distance of the restaurant in miles around the given location.
  budget: 25, # Float | The budget in USD for the meal.
  min_rating: 4.4, # Float | The minimum rating of the restaurants in range [0,5].
  cuisine: 'Mexican', # String | The cuisine that the restaurants should support.
  is_open: true, # Boolean | Whether the restaurants have to be open now.
  page: 0, # Integer | The page of the results.
  sort: 'rating' # String | The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
}

begin
  # Search Restaurants
  result = api_instance.search_restaurants(lat, lon, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FoodApi->search_restaurants: #{e}"
end
```

#### Using the search_restaurants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchRestaurants200Response>, Integer, Hash)> search_restaurants_with_http_info(lat, lon, opts)

```ruby
begin
  # Search Restaurants
  data, status_code, headers = api_instance.search_restaurants_with_http_info(lat, lon, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchRestaurants200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FoodApi->search_restaurants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lat** | **Float** | The latitude to search around. |  |
| **lon** | **Float** | The longitude to search around. |  |
| **query** | **String** | The search query. | [optional] |
| **distance** | **Integer** | The maximum distance of the restaurant in miles around the given location. | [optional] |
| **budget** | **Float** | The budget in USD for the meal. | [optional] |
| **min_rating** | **Float** | The minimum rating of the restaurants in range [0,5]. | [optional] |
| **cuisine** | **String** | The cuisine that the restaurants should support. | [optional] |
| **is_open** | **Boolean** | Whether the restaurants have to be open now. | [optional] |
| **page** | **Integer** | The page of the results. | [optional] |
| **sort** | **String** | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] |

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

