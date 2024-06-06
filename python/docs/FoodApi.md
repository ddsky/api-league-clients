# apileague.FoodApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compute_nutrition**](FoodApi.md#compute_nutrition) | **GET** /compute-nutrition | Compute Nutrition
[**retrieve_recipe_information**](FoodApi.md#retrieve_recipe_information) | **GET** /retrieve-recipe | Retrieve Recipe Information
[**search_recipes**](FoodApi.md#search_recipes) | **GET** /search-recipes | Search Recipes
[**search_restaurants**](FoodApi.md#search_restaurants) | **GET** /search-restaurants | Search Restaurants


# **compute_nutrition**
> ComputeNutrition200Response compute_nutrition(ingredients, servings=servings, reduce_oils=reduce_oils)

Compute Nutrition

Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.compute_nutrition200_response import ComputeNutrition200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.FoodApi(api_client)
    ingredients = '1 cup apples,3oz milk,35g butter' # str | A comma-separated list of the ingredients of the recipe.
    servings = 1 # int | The number of servings the ingredients make. Nutrition is computed per serving. (optional)
    reduce_oils = true # bool | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. (optional)

    try:
        # Compute Nutrition
        api_response = api_instance.compute_nutrition(ingredients, servings=servings, reduce_oils=reduce_oils)
        print("The response of FoodApi->compute_nutrition:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FoodApi->compute_nutrition: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **str**| A comma-separated list of the ingredients of the recipe. | 
 **servings** | **int**| The number of servings the ingredients make. Nutrition is computed per serving. | [optional] 
 **reduce_oils** | **bool**| If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | [optional] 

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
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_recipe_information**
> RetrieveRecipeInformation200Response retrieve_recipe_information(id, add_wine_pairing=add_wine_pairing)

Retrieve Recipe Information

Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.retrieve_recipe_information200_response import RetrieveRecipeInformation200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.FoodApi(api_client)
    id = 74987 # int | The id of the recipe to retrieve.
    add_wine_pairing = true # bool | Whether to pair a wine to the recipe. (optional)

    try:
        # Retrieve Recipe Information
        api_response = api_instance.retrieve_recipe_information(id, add_wine_pairing=add_wine_pairing)
        print("The response of FoodApi->retrieve_recipe_information:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FoodApi->retrieve_recipe_information: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the recipe to retrieve. | 
 **add_wine_pairing** | **bool**| Whether to pair a wine to the recipe. | [optional] 

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
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_recipes**
> SearchRecipes200Response search_recipes(query=query, cuisines=cuisines, exclude_cuisines=exclude_cuisines, meal_type=meal_type, diet=diet, intolerances=intolerances, equipment=equipment, include_ingredients=include_ingredients, exclude_ingredients=exclude_ingredients, fill_ingredients=fill_ingredients, add_recipe_information=add_recipe_information, max_time=max_time, min_servings=min_servings, max_servings=max_servings, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, min_sugar=min_sugar, max_sugar=max_sugar, min_fiber=min_fiber, max_fiber=max_fiber, min_folate=min_folate, max_folate=max_folate, min_folic_acid=min_folic_acid, max_folic_acid=max_folic_acid, min_iodine=min_iodine, max_iodine=max_iodine, min_iron=min_iron, max_iron=max_iron, min_zinc=min_zinc, max_zinc=max_zinc, min_magnesium=min_magnesium, max_magnesium=max_magnesium, min_manganese=min_manganese, max_manganese=max_manganese, min_phosphorus=min_phosphorus, max_phosphorus=max_phosphorus, min_potassium=min_potassium, max_potassium=max_potassium, min_sodium=min_sodium, max_sodium=max_sodium, min_selenium=min_selenium, max_selenium=max_selenium, min_copper=min_copper, max_copper=max_copper, min_calcium=min_calcium, max_calcium=max_calcium, min_choline=min_choline, max_choline=max_choline, min_cholesterol=min_cholesterol, max_cholesterol=max_cholesterol, min_fluoride=min_fluoride, max_fluoride=max_fluoride, min_alcohol=min_alcohol, max_alcohol=max_alcohol, min_caffeine=min_caffeine, max_caffeine=max_caffeine, min_saturated_fat=min_saturated_fat, max_saturated_fat=max_saturated_fat, min_vitamin_a=min_vitamin_a, max_vitamin_a=max_vitamin_a, min_vitamin_c=min_vitamin_c, max_vitamin_c=max_vitamin_c, min_vitamin_d=min_vitamin_d, max_vitamin_d=max_vitamin_d, min_vitamin_e=min_vitamin_e, max_vitamin_e=max_vitamin_e, min_vitamin_k=min_vitamin_k, max_vitamin_k=max_vitamin_k, min_vitamin_b1=min_vitamin_b1, max_vitamin_b1=max_vitamin_b1, min_vitamin_b2=min_vitamin_b2, max_vitamin_b2=max_vitamin_b2, min_vitamin_b3=min_vitamin_b3, max_vitamin_b3=max_vitamin_b3, min_vitamin_b5=min_vitamin_b5, max_vitamin_b5=max_vitamin_b5, min_vitamin_b6=min_vitamin_b6, max_vitamin_b6=max_vitamin_b6, min_vitamin_b12=min_vitamin_b12, max_vitamin_b12=max_vitamin_b12, sort=sort, sort_direction=sort_direction, offset=offset, number=number)

Search Recipes

Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.search_recipes200_response import SearchRecipes200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.FoodApi(api_client)
    query = 'pasta with mushrooms but without nuts' # str | The search query. (optional)
    cuisines = 'mexican' # str | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). (optional)
    exclude_cuisines = 'indian,japanese' # str | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). (optional)
    meal_type = 'dessert' # str | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. (optional)
    diet = 'paleo' # str | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. (optional)
    intolerances = 'gluten,dairy,shellfish' # str | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. (optional)
    equipment = 'blender,frying pan,bowl' # str | The equipment required. Multiple values will be interpreted as 'OR'. (optional)
    include_ingredients = 'tomato,cheese' # str | A comma-separated list of ingredients that should/must be used in the recipes. (optional)
    exclude_ingredients = 'olives,capers' # str | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
    fill_ingredients = true # bool | Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
    add_recipe_information = true # bool | If set to true, you get more information about the recipes returned. (optional)
    max_time = 45 # int | The maximum time in minutes it should take to prepare and cook the recipe. (optional)
    min_servings = 1 # int | The minimum amount of servings the recipe is for. (optional)
    max_servings = 8 # int | The maximum amount of servings the recipe is for. (optional)
    min_calories = 100 # float | The minimum amount of calories the recipe must have per serving. (optional)
    max_calories = 655 # float | The maximum amount of calories the recipe can have per serving. (optional)
    min_carbs = 10.1 # float | The minimum amount of carbohydrates in grams the recipe must have per serving. (optional)
    max_carbs = 25.5 # float | The maximum amount of carbohydrates in grams the recipe can have per serving. (optional)
    min_protein = 10.1 # float | The minimum amount of protein in grams the recipe must have per serving. (optional)
    max_protein = 25.5 # float | The maximum amount of protein in grams the recipe can have per serving. (optional)
    min_fat = 10.1 # float | The minimum amount of fat in grams the recipe must have per serving. (optional)
    max_fat = 25.5 # float | The maximum amount of fat in grams the recipe can have per serving. (optional)
    min_sugar = 10.1 # float | The minimum amount of sugar in grams the recipe must have per serving. (optional)
    max_sugar = 25.5 # float | The maximum amount of sugar in grams the recipe can have per serving. (optional)
    min_fiber = 10.1 # float | The minimum amount of fiber in grams the recipe must have per serving. (optional)
    max_fiber = 25.5 # float | The maximum amount of fiber in grams the recipe can have per serving. (optional)
    min_folate = 30.4 # float | The minimum amount of folate in micrograms the recipe must have per serving. (optional)
    max_folate = 80.9 # float | The maximum amount of folate in micrograms the recipe can have per serving. (optional)
    min_folic_acid = 30.4 # float | The minimum amount of folic acid in micrograms the recipe must have per serving. (optional)
    max_folic_acid = 80.9 # float | The maximum amount of folic acid in micrograms the recipe can have per serving. (optional)
    min_iodine = 30.4 # float | The minimum amount of iodine in micrograms the recipe must have per serving. (optional)
    max_iodine = 80.9 # float | The maximum amount of iodine in micrograms the recipe can have per serving. (optional)
    min_iron = 30.4 # float | The minimum amount of iron in milligrams the recipe must have per serving. (optional)
    max_iron = 80.9 # float | The maximum amount of iron in milligrams the recipe can have per serving. (optional)
    min_zinc = 30.4 # float | The minimum amount of zinc in milligrams the recipe must have per serving. (optional)
    max_zinc = 80.9 # float | The maximum amount of zinc in milligrams the recipe can have per serving. (optional)
    min_magnesium = 30.4 # float | The minimum amount of magnesium in milligrams the recipe must have per serving. (optional)
    max_magnesium = 80.9 # float | The maximum amount of magnesium in milligrams the recipe can have per serving. (optional)
    min_manganese = 30.4 # float | The minimum amount of manganese in milligrams the recipe must have per serving. (optional)
    max_manganese = 80.9 # float | The maximum amount of manganese in milligrams the recipe can have per serving. (optional)
    min_phosphorus = 30.4 # float | The minimum amount of phosphorus in milligrams the recipe must have per serving. (optional)
    max_phosphorus = 80.9 # float | The maximum amount of phosphorus in milligrams the recipe can have per serving. (optional)
    min_potassium = 30.4 # float | The minimum amount of potassium in milligrams the recipe must have per serving. (optional)
    max_potassium = 80.9 # float | The maximum amount of potassium in milligrams the recipe can have per serving. (optional)
    min_sodium = 30.4 # float | The minimum amount of sodium in milligrams the recipe must have per serving. (optional)
    max_sodium = 80.9 # float | The maximum amount of sodium in milligrams the recipe can have per serving. (optional)
    min_selenium = 30.4 # float | The minimum amount of selenium in micrograms the recipe must have per serving. (optional)
    max_selenium = 80.9 # float | The maximum amount of selenium in micrograms the recipe can have per serving. (optional)
    min_copper = 30.4 # float | The minimum amount of copper in milligrams the recipe must have per serving. (optional)
    max_copper = 80.9 # float | The maximum amount of copper in milligrams the recipe can have per serving. (optional)
    min_calcium = 30.4 # float | The minimum amount of calcium in milligrams the recipe must have per serving. (optional)
    max_calcium = 80.9 # float | The maximum amount of calcium in milligrams the recipe can have per serving. (optional)
    min_choline = 30.4 # float | The minimum amount of choline in milligrams the recipe must have per serving. (optional)
    max_choline = 80.9 # float | The maximum amount of choline in milligrams the recipe can have per serving. (optional)
    min_cholesterol = 30.4 # float | The minimum amount of cholesterol in milligrams the recipe must have per serving. (optional)
    max_cholesterol = 80.9 # float | The maximum amount of cholesterol in milligrams the recipe can have per serving. (optional)
    min_fluoride = 30.4 # float | The minimum amount of fluoride in milligrams the recipe must have per serving. (optional)
    max_fluoride = 80.9 # float | The maximum amount of fluoride in milligrams the recipe can have per serving. (optional)
    min_alcohol = 10.1 # float | The minimum amount of alcohol in grams the recipe must have per serving. (optional)
    max_alcohol = 25.5 # float | The maximum amount of alcohol in grams the recipe can have per serving. (optional)
    min_caffeine = 30.4 # float | The minimum amount of caffeine in milligrams the recipe must have per serving. (optional)
    max_caffeine = 80.9 # float | The maximum amount of caffeine in milligrams the recipe can have per serving. (optional)
    min_saturated_fat = 30.4 # float | The minimum amount of saturated fat in grams the recipe must have per serving. (optional)
    max_saturated_fat = 80.9 # float | The maximum amount of saturated fat in grams the recipe can have per serving. (optional)
    min_vitamin_a = 30.4 # float | The minimum amount of Vitamin A in IU the recipe must have per serving. (optional)
    max_vitamin_a = 80.9 # float | The maximum amount of Vitamin A in IU the recipe can have per serving. (optional)
    min_vitamin_c = 30.4 # float | The minimum amount of Vitamin C in milligrams the recipe must have per serving. (optional)
    max_vitamin_c = 80.9 # float | The maximum amount of Vitamin C in milligrams the recipe can have per serving. (optional)
    min_vitamin_d = 30.4 # float | The minimum amount of Vitamin D in micrograms the recipe must have per serving. (optional)
    max_vitamin_d = 80.9 # float | The maximum amount of Vitamin D in micrograms the recipe can have per serving. (optional)
    min_vitamin_e = 30.4 # float | The minimum amount of Vitamin E in milligrams the recipe must have per serving. (optional)
    max_vitamin_e = 80.9 # float | The maximum amount of Vitamin E in milligrams the recipe can have per serving. (optional)
    min_vitamin_k = 30.4 # float | The minimum amount of Vitamin K in micrograms the recipe must have per serving. (optional)
    max_vitamin_k = 80.9 # float | The maximum amount of Vitamin K in micrograms the recipe can have per serving. (optional)
    min_vitamin_b1 = 30.4 # float | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. (optional)
    max_vitamin_b1 = 80.9 # float | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. (optional)
    min_vitamin_b2 = 30.4 # float | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. (optional)
    max_vitamin_b2 = 80.9 # float | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. (optional)
    min_vitamin_b3 = 30.4 # float | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. (optional)
    max_vitamin_b3 = 80.9 # float | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. (optional)
    min_vitamin_b5 = 30.4 # float | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. (optional)
    max_vitamin_b5 = 80.9 # float | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. (optional)
    min_vitamin_b6 = 30.4 # float | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. (optional)
    max_vitamin_b6 = 80.9 # float | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. (optional)
    min_vitamin_b12 = 30.4 # float | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. (optional)
    max_vitamin_b12 = 80.9 # float | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. (optional)
    sort = 'meta-score' # str | The strategy to sort recipes by. See a full list of supported sorting options. (optional)
    sort_direction = 'ASC' # str | Whether to sort ascending or descending (ASC or DESC). (optional)
    offset = 0 # int | The number of recipes to skip, between 0 and 900. (optional)
    number = 3 # int | The number of recipes, between 1 and 100. (optional)

    try:
        # Search Recipes
        api_response = api_instance.search_recipes(query=query, cuisines=cuisines, exclude_cuisines=exclude_cuisines, meal_type=meal_type, diet=diet, intolerances=intolerances, equipment=equipment, include_ingredients=include_ingredients, exclude_ingredients=exclude_ingredients, fill_ingredients=fill_ingredients, add_recipe_information=add_recipe_information, max_time=max_time, min_servings=min_servings, max_servings=max_servings, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, min_sugar=min_sugar, max_sugar=max_sugar, min_fiber=min_fiber, max_fiber=max_fiber, min_folate=min_folate, max_folate=max_folate, min_folic_acid=min_folic_acid, max_folic_acid=max_folic_acid, min_iodine=min_iodine, max_iodine=max_iodine, min_iron=min_iron, max_iron=max_iron, min_zinc=min_zinc, max_zinc=max_zinc, min_magnesium=min_magnesium, max_magnesium=max_magnesium, min_manganese=min_manganese, max_manganese=max_manganese, min_phosphorus=min_phosphorus, max_phosphorus=max_phosphorus, min_potassium=min_potassium, max_potassium=max_potassium, min_sodium=min_sodium, max_sodium=max_sodium, min_selenium=min_selenium, max_selenium=max_selenium, min_copper=min_copper, max_copper=max_copper, min_calcium=min_calcium, max_calcium=max_calcium, min_choline=min_choline, max_choline=max_choline, min_cholesterol=min_cholesterol, max_cholesterol=max_cholesterol, min_fluoride=min_fluoride, max_fluoride=max_fluoride, min_alcohol=min_alcohol, max_alcohol=max_alcohol, min_caffeine=min_caffeine, max_caffeine=max_caffeine, min_saturated_fat=min_saturated_fat, max_saturated_fat=max_saturated_fat, min_vitamin_a=min_vitamin_a, max_vitamin_a=max_vitamin_a, min_vitamin_c=min_vitamin_c, max_vitamin_c=max_vitamin_c, min_vitamin_d=min_vitamin_d, max_vitamin_d=max_vitamin_d, min_vitamin_e=min_vitamin_e, max_vitamin_e=max_vitamin_e, min_vitamin_k=min_vitamin_k, max_vitamin_k=max_vitamin_k, min_vitamin_b1=min_vitamin_b1, max_vitamin_b1=max_vitamin_b1, min_vitamin_b2=min_vitamin_b2, max_vitamin_b2=max_vitamin_b2, min_vitamin_b3=min_vitamin_b3, max_vitamin_b3=max_vitamin_b3, min_vitamin_b5=min_vitamin_b5, max_vitamin_b5=max_vitamin_b5, min_vitamin_b6=min_vitamin_b6, max_vitamin_b6=max_vitamin_b6, min_vitamin_b12=min_vitamin_b12, max_vitamin_b12=max_vitamin_b12, sort=sort, sort_direction=sort_direction, offset=offset, number=number)
        print("The response of FoodApi->search_recipes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FoodApi->search_recipes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query. | [optional] 
 **cuisines** | **str**| The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). | [optional] 
 **exclude_cuisines** | **str**| The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). | [optional] 
 **meal_type** | **str**| The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | [optional] 
 **diet** | **str**| The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | [optional] 
 **intolerances** | **str**| A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | [optional] 
 **equipment** | **str**| The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | [optional] 
 **include_ingredients** | **str**| A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **exclude_ingredients** | **str**| A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **fill_ingredients** | **bool**| Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **add_recipe_information** | **bool**| If set to true, you get more information about the recipes returned. | [optional] 
 **max_time** | **int**| The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **min_servings** | **int**| The minimum amount of servings the recipe is for. | [optional] 
 **max_servings** | **int**| The maximum amount of servings the recipe is for. | [optional] 
 **min_calories** | **float**| The minimum amount of calories the recipe must have per serving. | [optional] 
 **max_calories** | **float**| The maximum amount of calories the recipe can have per serving. | [optional] 
 **min_carbs** | **float**| The minimum amount of carbohydrates in grams the recipe must have per serving. | [optional] 
 **max_carbs** | **float**| The maximum amount of carbohydrates in grams the recipe can have per serving. | [optional] 
 **min_protein** | **float**| The minimum amount of protein in grams the recipe must have per serving. | [optional] 
 **max_protein** | **float**| The maximum amount of protein in grams the recipe can have per serving. | [optional] 
 **min_fat** | **float**| The minimum amount of fat in grams the recipe must have per serving. | [optional] 
 **max_fat** | **float**| The maximum amount of fat in grams the recipe can have per serving. | [optional] 
 **min_sugar** | **float**| The minimum amount of sugar in grams the recipe must have per serving. | [optional] 
 **max_sugar** | **float**| The maximum amount of sugar in grams the recipe can have per serving. | [optional] 
 **min_fiber** | **float**| The minimum amount of fiber in grams the recipe must have per serving. | [optional] 
 **max_fiber** | **float**| The maximum amount of fiber in grams the recipe can have per serving. | [optional] 
 **min_folate** | **float**| The minimum amount of folate in micrograms the recipe must have per serving. | [optional] 
 **max_folate** | **float**| The maximum amount of folate in micrograms the recipe can have per serving. | [optional] 
 **min_folic_acid** | **float**| The minimum amount of folic acid in micrograms the recipe must have per serving. | [optional] 
 **max_folic_acid** | **float**| The maximum amount of folic acid in micrograms the recipe can have per serving. | [optional] 
 **min_iodine** | **float**| The minimum amount of iodine in micrograms the recipe must have per serving. | [optional] 
 **max_iodine** | **float**| The maximum amount of iodine in micrograms the recipe can have per serving. | [optional] 
 **min_iron** | **float**| The minimum amount of iron in milligrams the recipe must have per serving. | [optional] 
 **max_iron** | **float**| The maximum amount of iron in milligrams the recipe can have per serving. | [optional] 
 **min_zinc** | **float**| The minimum amount of zinc in milligrams the recipe must have per serving. | [optional] 
 **max_zinc** | **float**| The maximum amount of zinc in milligrams the recipe can have per serving. | [optional] 
 **min_magnesium** | **float**| The minimum amount of magnesium in milligrams the recipe must have per serving. | [optional] 
 **max_magnesium** | **float**| The maximum amount of magnesium in milligrams the recipe can have per serving. | [optional] 
 **min_manganese** | **float**| The minimum amount of manganese in milligrams the recipe must have per serving. | [optional] 
 **max_manganese** | **float**| The maximum amount of manganese in milligrams the recipe can have per serving. | [optional] 
 **min_phosphorus** | **float**| The minimum amount of phosphorus in milligrams the recipe must have per serving. | [optional] 
 **max_phosphorus** | **float**| The maximum amount of phosphorus in milligrams the recipe can have per serving. | [optional] 
 **min_potassium** | **float**| The minimum amount of potassium in milligrams the recipe must have per serving. | [optional] 
 **max_potassium** | **float**| The maximum amount of potassium in milligrams the recipe can have per serving. | [optional] 
 **min_sodium** | **float**| The minimum amount of sodium in milligrams the recipe must have per serving. | [optional] 
 **max_sodium** | **float**| The maximum amount of sodium in milligrams the recipe can have per serving. | [optional] 
 **min_selenium** | **float**| The minimum amount of selenium in micrograms the recipe must have per serving. | [optional] 
 **max_selenium** | **float**| The maximum amount of selenium in micrograms the recipe can have per serving. | [optional] 
 **min_copper** | **float**| The minimum amount of copper in milligrams the recipe must have per serving. | [optional] 
 **max_copper** | **float**| The maximum amount of copper in milligrams the recipe can have per serving. | [optional] 
 **min_calcium** | **float**| The minimum amount of calcium in milligrams the recipe must have per serving. | [optional] 
 **max_calcium** | **float**| The maximum amount of calcium in milligrams the recipe can have per serving. | [optional] 
 **min_choline** | **float**| The minimum amount of choline in milligrams the recipe must have per serving. | [optional] 
 **max_choline** | **float**| The maximum amount of choline in milligrams the recipe can have per serving. | [optional] 
 **min_cholesterol** | **float**| The minimum amount of cholesterol in milligrams the recipe must have per serving. | [optional] 
 **max_cholesterol** | **float**| The maximum amount of cholesterol in milligrams the recipe can have per serving. | [optional] 
 **min_fluoride** | **float**| The minimum amount of fluoride in milligrams the recipe must have per serving. | [optional] 
 **max_fluoride** | **float**| The maximum amount of fluoride in milligrams the recipe can have per serving. | [optional] 
 **min_alcohol** | **float**| The minimum amount of alcohol in grams the recipe must have per serving. | [optional] 
 **max_alcohol** | **float**| The maximum amount of alcohol in grams the recipe can have per serving. | [optional] 
 **min_caffeine** | **float**| The minimum amount of caffeine in milligrams the recipe must have per serving. | [optional] 
 **max_caffeine** | **float**| The maximum amount of caffeine in milligrams the recipe can have per serving. | [optional] 
 **min_saturated_fat** | **float**| The minimum amount of saturated fat in grams the recipe must have per serving. | [optional] 
 **max_saturated_fat** | **float**| The maximum amount of saturated fat in grams the recipe can have per serving. | [optional] 
 **min_vitamin_a** | **float**| The minimum amount of Vitamin A in IU the recipe must have per serving. | [optional] 
 **max_vitamin_a** | **float**| The maximum amount of Vitamin A in IU the recipe can have per serving. | [optional] 
 **min_vitamin_c** | **float**| The minimum amount of Vitamin C in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_c** | **float**| The maximum amount of Vitamin C in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_d** | **float**| The minimum amount of Vitamin D in micrograms the recipe must have per serving. | [optional] 
 **max_vitamin_d** | **float**| The maximum amount of Vitamin D in micrograms the recipe can have per serving. | [optional] 
 **min_vitamin_e** | **float**| The minimum amount of Vitamin E in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_e** | **float**| The maximum amount of Vitamin E in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_k** | **float**| The minimum amount of Vitamin K in micrograms the recipe must have per serving. | [optional] 
 **max_vitamin_k** | **float**| The maximum amount of Vitamin K in micrograms the recipe can have per serving. | [optional] 
 **min_vitamin_b1** | **float**| The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b1** | **float**| The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b2** | **float**| The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b2** | **float**| The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b3** | **float**| The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b3** | **float**| The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b5** | **float**| The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b5** | **float**| The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b6** | **float**| The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b6** | **float**| The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | [optional] 
 **min_vitamin_b12** | **float**| The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | [optional] 
 **max_vitamin_b12** | **float**| The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | [optional] 
 **sort** | **str**| The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sort_direction** | **str**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of recipes to skip, between 0 and 900. | [optional] 
 **number** | **int**| The number of recipes, between 1 and 100. | [optional] 

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
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_restaurants**
> SearchRestaurants200Response search_restaurants(lat, lon, query=query, distance=distance, budget=budget, min_rating=min_rating, cuisine=cuisine, is_open=is_open, page=page, sort=sort)

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.search_restaurants200_response import SearchRestaurants200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.FoodApi(api_client)
    lat = 32.715736 # float | The latitude to search around.
    lon = -117.161087 # float | The longitude to search around.
    query = 'burger' # str | The search query. (optional)
    distance = 5 # int | The maximum distance of the restaurant in miles around the given location. (optional)
    budget = 25 # float | The budget in USD for the meal. (optional)
    min_rating = 4.4 # float | The minimum rating of the restaurants in range [0,5]. (optional)
    cuisine = 'Mexican' # str | The cuisine that the restaurants should support. (optional)
    is_open = true # bool | Whether the restaurants have to be open now. (optional)
    page = 0 # int | The page of the results. (optional)
    sort = 'rating' # str | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. (optional)

    try:
        # Search Restaurants
        api_response = api_instance.search_restaurants(lat, lon, query=query, distance=distance, budget=budget, min_rating=min_rating, cuisine=cuisine, is_open=is_open, page=page, sort=sort)
        print("The response of FoodApi->search_restaurants:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FoodApi->search_restaurants: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **float**| The latitude to search around. | 
 **lon** | **float**| The longitude to search around. | 
 **query** | **str**| The search query. | [optional] 
 **distance** | **int**| The maximum distance of the restaurant in miles around the given location. | [optional] 
 **budget** | **float**| The budget in USD for the meal. | [optional] 
 **min_rating** | **float**| The minimum rating of the restaurants in range [0,5]. | [optional] 
 **cuisine** | **str**| The cuisine that the restaurants should support. | [optional] 
 **is_open** | **bool**| Whether the restaurants have to be open now. | [optional] 
 **page** | **int**| The page of the results. | [optional] 
 **sort** | **str**| The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | [optional] 

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
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

