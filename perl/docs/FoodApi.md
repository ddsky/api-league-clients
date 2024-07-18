# WWW::OpenAPIClient::FoodApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::FoodApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compute_nutrition**](FoodApi.md#compute_nutrition) | **GET** /compute-nutrition | Compute Nutrition
[**retrieve_recipe_information**](FoodApi.md#retrieve_recipe_information) | **GET** /retrieve-recipe | Retrieve Recipe Information
[**search_drinks**](FoodApi.md#search_drinks) | **GET** /search-drinks | Search Drinks
[**search_recipes**](FoodApi.md#search_recipes) | **GET** /search-recipes | Search Recipes
[**search_restaurants**](FoodApi.md#search_restaurants) | **GET** /search-restaurants | Search Restaurants


# **compute_nutrition**
> ComputeNutrition200Response compute_nutrition(ingredients => $ingredients, servings => $servings, reduce_oils => $reduce_oils)

Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FoodApi;
my $api_instance = WWW::OpenAPIClient::FoodApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $ingredients = 1 cup apples,3oz milk,35g butter; # string | A comma-separated list of the ingredients of the recipe.
my $servings = 1; # int | The number of servings the ingredients make. Nutrition is computed per serving.
my $reduce_oils = true; # boolean | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.

eval {
    my $result = $api_instance->compute_nutrition(ingredients => $ingredients, servings => $servings, reduce_oils => $reduce_oils);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FoodApi->compute_nutrition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **string**| A comma-separated list of the ingredients of the recipe. | 
 **servings** | **int**| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] 
 **reduce_oils** | **boolean**| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] 

### Return type

[**ComputeNutrition200Response**](ComputeNutrition200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_recipe_information**
> RetrieveRecipeInformation200Response retrieve_recipe_information(id => $id, add_wine_pairing => $add_wine_pairing)

Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FoodApi;
my $api_instance = WWW::OpenAPIClient::FoodApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 74987; # int | The id of the recipe to retrieve.
my $add_wine_pairing = true; # boolean | Whether to pair a wine to the recipe.

eval {
    my $result = $api_instance->retrieve_recipe_information(id => $id, add_wine_pairing => $add_wine_pairing);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FoodApi->retrieve_recipe_information: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the recipe to retrieve. | 
 **add_wine_pairing** | **boolean**| Whether to pair a wine to the recipe. | [optional] 

### Return type

[**RetrieveRecipeInformation200Response**](RetrieveRecipeInformation200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_drinks**
> SearchDrinks200Response search_drinks(query => $query, glass_types => $glass_types, flavors => $flavors, diet => $diet, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, min_alcohol_percent => $min_alcohol_percent, max_alcohol_percent => $max_alcohol_percent, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number)

Search Drinks

Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FoodApi;
my $api_instance = WWW::OpenAPIClient::FoodApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = vodka; # string | The search query.
my $glass_types = Highball Glass; # string | A comma-separated list (interpreted as OR) of glass types that the drink should be served in.
my $flavors = sour,sweet; # string | A comma-separated list (interpreted as AND) of dominant flavors in the drink.
my $diet = paleo; # string | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian.
my $include_ingredients = orange; # string | A comma-separated list of ingredients that should/must be used in the drinks.
my $exclude_ingredients = vodka; # string | A comma-separated list of ingredients or ingredient types that the drinks must not contain.
my $min_calories = 100; # double | The minimum amount of calories the drink must have per serving.
my $max_calories = 655; # double | The maximum amount of calories the drink can have per serving.
my $min_carbs = 10.1; # double | The minimum amount of carbohydrates in grams the drink must have per serving.
my $max_carbs = 25.5; # double | The maximum amount of carbohydrates in grams the drink can have per serving.
my $min_protein = 10.1; # double | The minimum amount of protein in grams the drink must have per serving.
my $max_protein = 25.5; # double | The maximum amount of protein in grams the drink can have per serving.
my $min_fat = 10.1; # double | The minimum amount of fat in grams the drink must have per serving.
my $max_fat = 25.5; # double | The maximum amount of fat in grams the drink can have per serving.
my $min_alcohol_percent = 10; # double | The minimum alcohol percentage the drink must have.
my $max_alcohol_percent = 35; # double | The maximum alcohol percentage the drink can have.
my $min_caffeine = 30.4; # double | The minimum amount of caffeine in milligrams the drink must have per serving.
my $max_caffeine = 80.9; # double | The maximum amount of caffeine in milligrams the drink can have per serving.
my $sort = calories; # string | The attribute by which to sort the drinks.
my $sort_direction = ASC; # string | Whether to sort ascending or descending (ASC or DESC).
my $offset = 0; # int | The number of drinks to skip, between 0 and 90.
my $number = 3; # int | The number of drinks, between 1 and 10.

eval {
    my $result = $api_instance->search_drinks(query => $query, glass_types => $glass_types, flavors => $flavors, diet => $diet, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, min_alcohol_percent => $min_alcohol_percent, max_alcohol_percent => $max_alcohol_percent, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FoodApi->search_drinks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional] 
 **glass_types** | **string**| A comma-separated list (interpreted as OR) of glass types that the drink should be served in. | [optional] 
 **flavors** | **string**| A comma-separated list (interpreted as AND) of dominant flavors in the drink. | [optional] 
 **diet** | **string**| The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. | [optional] 
 **include_ingredients** | **string**| A comma-separated list of ingredients that should/must be used in the drinks. | [optional] 
 **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the drinks must not contain. | [optional] 
 **min_calories** | **double**| The minimum amount of calories the drink must have per serving. | [optional] 
 **max_calories** | **double**| The maximum amount of calories the drink can have per serving. | [optional] 
 **min_carbs** | **double**| The minimum amount of carbohydrates in grams the drink must have per serving. | [optional] 
 **max_carbs** | **double**| The maximum amount of carbohydrates in grams the drink can have per serving. | [optional] 
 **min_protein** | **double**| The minimum amount of protein in grams the drink must have per serving. | [optional] 
 **max_protein** | **double**| The maximum amount of protein in grams the drink can have per serving. | [optional] 
 **min_fat** | **double**| The minimum amount of fat in grams the drink must have per serving. | [optional] 
 **max_fat** | **double**| The maximum amount of fat in grams the drink can have per serving. | [optional] 
 **min_alcohol_percent** | **double**| The minimum alcohol percentage the drink must have. | [optional] 
 **max_alcohol_percent** | **double**| The maximum alcohol percentage the drink can have. | [optional] 
 **min_caffeine** | **double**| The minimum amount of caffeine in milligrams the drink must have per serving. | [optional] 
 **max_caffeine** | **double**| The maximum amount of caffeine in milligrams the drink can have per serving. | [optional] 
 **sort** | **string**| The attribute by which to sort the drinks. | [optional] 
 **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of drinks to skip, between 0 and 90. | [optional] 
 **number** | **int**| The number of drinks, between 1 and 10. | [optional] 

### Return type

[**SearchDrinks200Response**](SearchDrinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes**
> SearchRecipes200Response search_recipes(query => $query, cuisines => $cuisines, exclude_cuisines => $exclude_cuisines, meal_type => $meal_type, diet => $diet, intolerances => $intolerances, equipment => $equipment, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, fill_ingredients => $fill_ingredients, add_recipe_information => $add_recipe_information, max_time => $max_time, min_servings => $min_servings, max_servings => $max_servings, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, min_sugar => $min_sugar, max_sugar => $max_sugar, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_zinc => $min_zinc, max_zinc => $max_zinc, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number)

Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FoodApi;
my $api_instance = WWW::OpenAPIClient::FoodApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = pasta with mushrooms but without nuts; # string | The search query.
my $cuisines = mexican; # string | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as 'OR').
my $exclude_cuisines = indian,japanese; # string | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as 'AND').
my $meal_type = dessert; # string | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
my $diet = paleo; # string | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
my $intolerances = gluten,dairy,shellfish; # string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
my $equipment = blender,frying pan,bowl; # string | The equipment required. Multiple values will be interpreted as 'OR'.
my $include_ingredients = tomato,cheese; # string | A comma-separated list of ingredients that should/must be used in the recipes.
my $exclude_ingredients = olives,capers; # string | A comma-separated list of ingredients or ingredient types that the recipes must not contain.
my $fill_ingredients = true; # boolean | Add information about the ingredients and whether they are used or missing in relation to the query.
my $add_recipe_information = true; # boolean | If set to true, you get more information about the recipes returned.
my $max_time = 45; # int | The maximum time in minutes it should take to prepare and cook the recipe.
my $min_servings = 1; # int | The minimum amount of servings the recipe is for.
my $max_servings = 8; # int | The maximum amount of servings the recipe is for.
my $min_calories = 100; # double | The minimum amount of calories the recipe must have per serving.
my $max_calories = 655; # double | The maximum amount of calories the recipe can have per serving.
my $min_carbs = 10.1; # double | The minimum amount of carbohydrates in grams the recipe must have per serving.
my $max_carbs = 25.5; # double | The maximum amount of carbohydrates in grams the recipe can have per serving.
my $min_protein = 10.1; # double | The minimum amount of protein in grams the recipe must have per serving.
my $max_protein = 25.5; # double | The maximum amount of protein in grams the recipe can have per serving.
my $min_fat = 10.1; # double | The minimum amount of fat in grams the recipe must have per serving.
my $max_fat = 25.5; # double | The maximum amount of fat in grams the recipe can have per serving.
my $min_sugar = 10.1; # double | The minimum amount of sugar in grams the recipe must have per serving.
my $max_sugar = 25.5; # double | The maximum amount of sugar in grams the recipe can have per serving.
my $min_fiber = 10.1; # double | The minimum amount of fiber in grams the recipe must have per serving.
my $max_fiber = 25.5; # double | The maximum amount of fiber in grams the recipe can have per serving.
my $min_folate = 30.4; # double | The minimum amount of folate in micrograms the recipe must have per serving.
my $max_folate = 80.9; # double | The maximum amount of folate in micrograms the recipe can have per serving.
my $min_folic_acid = 30.4; # double | The minimum amount of folic acid in micrograms the recipe must have per serving.
my $max_folic_acid = 80.9; # double | The maximum amount of folic acid in micrograms the recipe can have per serving.
my $min_iodine = 30.4; # double | The minimum amount of iodine in micrograms the recipe must have per serving.
my $max_iodine = 80.9; # double | The maximum amount of iodine in micrograms the recipe can have per serving.
my $min_iron = 30.4; # double | The minimum amount of iron in milligrams the recipe must have per serving.
my $max_iron = 80.9; # double | The maximum amount of iron in milligrams the recipe can have per serving.
my $min_zinc = 30.4; # double | The minimum amount of zinc in milligrams the recipe must have per serving.
my $max_zinc = 80.9; # double | The maximum amount of zinc in milligrams the recipe can have per serving.
my $min_magnesium = 30.4; # double | The minimum amount of magnesium in milligrams the recipe must have per serving.
my $max_magnesium = 80.9; # double | The maximum amount of magnesium in milligrams the recipe can have per serving.
my $min_manganese = 30.4; # double | The minimum amount of manganese in milligrams the recipe must have per serving.
my $max_manganese = 80.9; # double | The maximum amount of manganese in milligrams the recipe can have per serving.
my $min_phosphorus = 30.4; # double | The minimum amount of phosphorus in milligrams the recipe must have per serving.
my $max_phosphorus = 80.9; # double | The maximum amount of phosphorus in milligrams the recipe can have per serving.
my $min_potassium = 30.4; # double | The minimum amount of potassium in milligrams the recipe must have per serving.
my $max_potassium = 80.9; # double | The maximum amount of potassium in milligrams the recipe can have per serving.
my $min_sodium = 30.4; # double | The minimum amount of sodium in milligrams the recipe must have per serving.
my $max_sodium = 80.9; # double | The maximum amount of sodium in milligrams the recipe can have per serving.
my $min_selenium = 30.4; # double | The minimum amount of selenium in micrograms the recipe must have per serving.
my $max_selenium = 80.9; # double | The maximum amount of selenium in micrograms the recipe can have per serving.
my $min_copper = 30.4; # double | The minimum amount of copper in milligrams the recipe must have per serving.
my $max_copper = 80.9; # double | The maximum amount of copper in milligrams the recipe can have per serving.
my $min_calcium = 30.4; # double | The minimum amount of calcium in milligrams the recipe must have per serving.
my $max_calcium = 80.9; # double | The maximum amount of calcium in milligrams the recipe can have per serving.
my $min_choline = 30.4; # double | The minimum amount of choline in milligrams the recipe must have per serving.
my $max_choline = 80.9; # double | The maximum amount of choline in milligrams the recipe can have per serving.
my $min_cholesterol = 30.4; # double | The minimum amount of cholesterol in milligrams the recipe must have per serving.
my $max_cholesterol = 80.9; # double | The maximum amount of cholesterol in milligrams the recipe can have per serving.
my $min_fluoride = 30.4; # double | The minimum amount of fluoride in milligrams the recipe must have per serving.
my $max_fluoride = 80.9; # double | The maximum amount of fluoride in milligrams the recipe can have per serving.
my $min_alcohol = 10.1; # double | The minimum amount of alcohol in grams the recipe must have per serving.
my $max_alcohol = 25.5; # double | The maximum amount of alcohol in grams the recipe can have per serving.
my $min_caffeine = 30.4; # double | The minimum amount of caffeine in milligrams the recipe must have per serving.
my $max_caffeine = 80.9; # double | The maximum amount of caffeine in milligrams the recipe can have per serving.
my $min_saturated_fat = 30.4; # double | The minimum amount of saturated fat in grams the recipe must have per serving.
my $max_saturated_fat = 80.9; # double | The maximum amount of saturated fat in grams the recipe can have per serving.
my $min_vitamin_a = 30.4; # double | The minimum amount of Vitamin A in IU the recipe must have per serving.
my $max_vitamin_a = 80.9; # double | The maximum amount of Vitamin A in IU the recipe can have per serving.
my $min_vitamin_c = 30.4; # double | The minimum amount of Vitamin C in milligrams the recipe must have per serving.
my $max_vitamin_c = 80.9; # double | The maximum amount of Vitamin C in milligrams the recipe can have per serving.
my $min_vitamin_d = 30.4; # double | The minimum amount of Vitamin D in micrograms the recipe must have per serving.
my $max_vitamin_d = 80.9; # double | The maximum amount of Vitamin D in micrograms the recipe can have per serving.
my $min_vitamin_e = 30.4; # double | The minimum amount of Vitamin E in milligrams the recipe must have per serving.
my $max_vitamin_e = 80.9; # double | The maximum amount of Vitamin E in milligrams the recipe can have per serving.
my $min_vitamin_k = 30.4; # double | The minimum amount of Vitamin K in micrograms the recipe must have per serving.
my $max_vitamin_k = 80.9; # double | The maximum amount of Vitamin K in micrograms the recipe can have per serving.
my $min_vitamin_b1 = 30.4; # double | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
my $max_vitamin_b1 = 80.9; # double | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
my $min_vitamin_b2 = 30.4; # double | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
my $max_vitamin_b2 = 80.9; # double | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
my $min_vitamin_b3 = 30.4; # double | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
my $max_vitamin_b3 = 80.9; # double | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
my $min_vitamin_b5 = 30.4; # double | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
my $max_vitamin_b5 = 80.9; # double | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
my $min_vitamin_b6 = 30.4; # double | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
my $max_vitamin_b6 = 80.9; # double | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
my $min_vitamin_b12 = 30.4; # double | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
my $max_vitamin_b12 = 80.9; # double | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
my $sort = meta-score; # string | The strategy to sort recipes by.
my $sort_direction = ASC; # string | Whether to sort ascending or descending (ASC or DESC).
my $offset = 0; # int | The number of recipes to skip, between 0 and 900.
my $number = 3; # int | The number of recipes, between 1 and 100.

eval {
    my $result = $api_instance->search_recipes(query => $query, cuisines => $cuisines, exclude_cuisines => $exclude_cuisines, meal_type => $meal_type, diet => $diet, intolerances => $intolerances, equipment => $equipment, include_ingredients => $include_ingredients, exclude_ingredients => $exclude_ingredients, fill_ingredients => $fill_ingredients, add_recipe_information => $add_recipe_information, max_time => $max_time, min_servings => $min_servings, max_servings => $max_servings, min_calories => $min_calories, max_calories => $max_calories, min_carbs => $min_carbs, max_carbs => $max_carbs, min_protein => $min_protein, max_protein => $max_protein, min_fat => $min_fat, max_fat => $max_fat, min_sugar => $min_sugar, max_sugar => $max_sugar, min_fiber => $min_fiber, max_fiber => $max_fiber, min_folate => $min_folate, max_folate => $max_folate, min_folic_acid => $min_folic_acid, max_folic_acid => $max_folic_acid, min_iodine => $min_iodine, max_iodine => $max_iodine, min_iron => $min_iron, max_iron => $max_iron, min_zinc => $min_zinc, max_zinc => $max_zinc, min_magnesium => $min_magnesium, max_magnesium => $max_magnesium, min_manganese => $min_manganese, max_manganese => $max_manganese, min_phosphorus => $min_phosphorus, max_phosphorus => $max_phosphorus, min_potassium => $min_potassium, max_potassium => $max_potassium, min_sodium => $min_sodium, max_sodium => $max_sodium, min_selenium => $min_selenium, max_selenium => $max_selenium, min_copper => $min_copper, max_copper => $max_copper, min_calcium => $min_calcium, max_calcium => $max_calcium, min_choline => $min_choline, max_choline => $max_choline, min_cholesterol => $min_cholesterol, max_cholesterol => $max_cholesterol, min_fluoride => $min_fluoride, max_fluoride => $max_fluoride, min_alcohol => $min_alcohol, max_alcohol => $max_alcohol, min_caffeine => $min_caffeine, max_caffeine => $max_caffeine, min_saturated_fat => $min_saturated_fat, max_saturated_fat => $max_saturated_fat, min_vitamin_a => $min_vitamin_a, max_vitamin_a => $max_vitamin_a, min_vitamin_c => $min_vitamin_c, max_vitamin_c => $max_vitamin_c, min_vitamin_d => $min_vitamin_d, max_vitamin_d => $max_vitamin_d, min_vitamin_e => $min_vitamin_e, max_vitamin_e => $max_vitamin_e, min_vitamin_k => $min_vitamin_k, max_vitamin_k => $max_vitamin_k, min_vitamin_b1 => $min_vitamin_b1, max_vitamin_b1 => $max_vitamin_b1, min_vitamin_b2 => $min_vitamin_b2, max_vitamin_b2 => $max_vitamin_b2, min_vitamin_b3 => $min_vitamin_b3, max_vitamin_b3 => $max_vitamin_b3, min_vitamin_b5 => $min_vitamin_b5, max_vitamin_b5 => $max_vitamin_b5, min_vitamin_b6 => $min_vitamin_b6, max_vitamin_b6 => $max_vitamin_b6, min_vitamin_b12 => $min_vitamin_b12, max_vitamin_b12 => $max_vitamin_b12, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FoodApi->search_recipes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional] 
 **cuisines** | **string**| The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as &#39;OR&#39;). | [optional] 
 **exclude_cuisines** | **string**| The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as &#39;AND&#39;). | [optional] 
 **meal_type** | **string**| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] 
 **diet** | **string**| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] 
 **intolerances** | **string**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] 
 **equipment** | **string**| The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] 
 **include_ingredients** | **string**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **exclude_ingredients** | **string**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **fill_ingredients** | **boolean**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **add_recipe_information** | **boolean**| If set to true, you get more information about the recipes returned. | [optional] 
 **max_time** | **int**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **min_servings** | **int**| The minimum amount of servings the recipe is for. | [optional] 
 **max_servings** | **int**| The maximum amount of servings the recipe is for. | [optional] 
 **min_calories** | **double**| The minimum amount of calories the recipe must have per serving. | [optional] 
 **max_calories** | **double**| The maximum amount of calories the recipe can have per serving. | [optional] 
 **min_carbs** | **double**| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] 
 **max_carbs** | **double**| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] 
 **min_protein** | **double**| The minimum amount of protein in grams the recipe must have per serving. | [optional] 
 **max_protein** | **double**| The maximum amount of protein in grams the recipe can have per serving. | [optional] 
 **min_fat** | **double**| The minimum amount of fat in grams the recipe must have per serving. | [optional] 
 **max_fat** | **double**| The maximum amount of fat in grams the recipe can have per serving. | [optional] 
 **min_sugar** | **double**| The minimum amount of sugar in grams the recipe must have per serving. | [optional] 
 **max_sugar** | **double**| The maximum amount of sugar in grams the recipe can have per serving. | [optional] 
 **min_fiber** | **double**| The minimum amount of fiber in grams the recipe must have per serving. | [optional] 
 **max_fiber** | **double**| The maximum amount of fiber in grams the recipe can have per serving. | [optional] 
 **min_folate** | **double**| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] 
 **max_folate** | **double**| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] 
 **min_folic_acid** | **double**| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] 
 **max_folic_acid** | **double**| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] 
 **min_iodine** | **double**| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] 
 **max_iodine** | **double**| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] 
 **min_iron** | **double**| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] 
 **max_iron** | **double**| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] 
 **min_zinc** | **double**| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] 
 **max_zinc** | **double**| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] 
 **min_magnesium** | **double**| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] 
 **max_magnesium** | **double**| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] 
 **min_manganese** | **double**| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] 
 **max_manganese** | **double**| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] 
 **min_phosphorus** | **double**| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] 
 **max_phosphorus** | **double**| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] 
 **min_potassium** | **double**| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] 
 **max_potassium** | **double**| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] 
 **min_sodium** | **double**| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] 
 **max_sodium** | **double**| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] 
 **min_selenium** | **double**| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] 
 **max_selenium** | **double**| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] 
 **min_copper** | **double**| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] 
 **max_copper** | **double**| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] 
 **min_calcium** | **double**| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] 
 **max_calcium** | **double**| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] 
 **min_choline** | **double**| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] 
 **max_choline** | **double**| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] 
 **min_cholesterol** | **double**| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] 
 **max_cholesterol** | **double**| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] 
 **min_fluoride** | **double**| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] 
 **max_fluoride** | **double**| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] 
 **min_alcohol** | **double**| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] 
 **max_alcohol** | **double**| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] 
 **min_caffeine** | **double**| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] 
 **max_caffeine** | **double**| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] 
 **min_saturated_fat** | **double**| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] 
 **max_saturated_fat** | **double**| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] 
 **min_vitamin_a** | **double**| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] 
 **max_vitamin_a** | **double**| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] 
 **min_vitamin_c** | **double**| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_c** | **double**| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_d** | **double**| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] 
 **max_vitamin_d** | **double**| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] 
 **min_vitamin_e** | **double**| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_e** | **double**| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_k** | **double**| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] 
 **max_vitamin_k** | **double**| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] 
 **min_vitamin_b1** | **double**| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b1** | **double**| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b2** | **double**| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b2** | **double**| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b3** | **double**| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b3** | **double**| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b5** | **double**| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b5** | **double**| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b6** | **double**| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b6** | **double**| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b12** | **double**| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b12** | **double**| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] 
 **sort** | **string**| The strategy to sort recipes by. | [optional] 
 **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
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

# **search_restaurants**
> SearchRestaurants200Response search_restaurants(lat => $lat, lon => $lon, query => $query, distance => $distance, budget => $budget, min_rating => $min_rating, cuisine => $cuisine, is_open => $is_open, page => $page, sort => $sort)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FoodApi;
my $api_instance = WWW::OpenAPIClient::FoodApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $lat = 32.715736; # double | The latitude to search around.
my $lon = -117.161087; # double | The longitude to search around.
my $query = burger; # string | The search query.
my $distance = 5; # int | The maximum distance of the restaurant in miles around the given location.
my $budget = 25; # double | The budget in USD for the meal.
my $min_rating = 4.4; # double | The minimum rating of the restaurants in range [0,5].
my $cuisine = Mexican; # string | The cuisine that the restaurants should support.
my $is_open = true; # boolean | Whether the restaurants have to be open now.
my $page = 0; # int | The page of the results.
my $sort = rating; # string | The sort parameter, one of: cheapest, fastest, rating, distance or relevance.

eval {
    my $result = $api_instance->search_restaurants(lat => $lat, lon => $lon, query => $query, distance => $distance, budget => $budget, min_rating => $min_rating, cuisine => $cuisine, is_open => $is_open, page => $page, sort => $sort);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FoodApi->search_restaurants: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **double**| The latitude to search around. | 
 **lon** | **double**| The longitude to search around. | 
 **query** | **string**| The search query. | [optional] 
 **distance** | **int**| The maximum distance of the restaurant in miles around the given location. | [optional] 
 **budget** | **double**| The budget in USD for the meal. | [optional] 
 **min_rating** | **double**| The minimum rating of the restaurants in range [0,5]. | [optional] 
 **cuisine** | **string**| The cuisine that the restaurants should support. | [optional] 
 **is_open** | **boolean**| Whether the restaurants have to be open now. | [optional] 
 **page** | **int**| The page of the results. | [optional] 
 **sort** | **string**| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] 

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

