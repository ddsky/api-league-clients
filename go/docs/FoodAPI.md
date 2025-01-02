# \FoodAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ComputeNutritionAPI**](FoodAPI.md#ComputeNutritionAPI) | **Get** /compute-nutrition | Compute Nutrition API
[**RetrieveRecipeInformationAPI**](FoodAPI.md#RetrieveRecipeInformationAPI) | **Get** /retrieve-recipe | Retrieve Recipe Information API
[**SearchDrinksAPI**](FoodAPI.md#SearchDrinksAPI) | **Get** /search-drinks | Search Drinks API
[**SearchRecipesAPI**](FoodAPI.md#SearchRecipesAPI) | **Get** /search-recipes | Search Recipes API
[**SearchRestaurantsAPI**](FoodAPI.md#SearchRestaurantsAPI) | **Get** /search-restaurants | Search Restaurants API



## ComputeNutritionAPI

> ComputeNutritionAPI200Response ComputeNutritionAPI(ctx).Ingredients(ingredients).Servings(servings).ReduceOils(reduceOils).Execute()

Compute Nutrition API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	ingredients := "1 cup apples,3oz milk,35g butter" // string | A comma-separated list of the ingredients of the recipe.
	servings := int32(1) // int32 | The number of servings the ingredients make. Nutrition is computed per serving. (optional)
	reduceOils := true // bool | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FoodAPI.ComputeNutritionAPI(context.Background()).Ingredients(ingredients).Servings(servings).ReduceOils(reduceOils).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FoodAPI.ComputeNutritionAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ComputeNutritionAPI`: ComputeNutritionAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `FoodAPI.ComputeNutritionAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiComputeNutritionAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredients** | **string** | A comma-separated list of the ingredients of the recipe. | 
 **servings** | **int32** | The number of servings the ingredients make. Nutrition is computed per serving. | 
 **reduceOils** | **bool** | If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true. | 

### Return type

[**ComputeNutritionAPI200Response**](ComputeNutritionAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrieveRecipeInformationAPI

> RetrieveRecipeInformationAPI200Response RetrieveRecipeInformationAPI(ctx).Id(id).AddWinePairing(addWinePairing).Execute()

Retrieve Recipe Information API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	id := int32(74987) // int32 | The id of the recipe to retrieve.
	addWinePairing := true // bool | Whether to pair a wine to the recipe. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FoodAPI.RetrieveRecipeInformationAPI(context.Background()).Id(id).AddWinePairing(addWinePairing).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FoodAPI.RetrieveRecipeInformationAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrieveRecipeInformationAPI`: RetrieveRecipeInformationAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `FoodAPI.RetrieveRecipeInformationAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrieveRecipeInformationAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int32** | The id of the recipe to retrieve. | 
 **addWinePairing** | **bool** | Whether to pair a wine to the recipe. | 

### Return type

[**RetrieveRecipeInformationAPI200Response**](RetrieveRecipeInformationAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchDrinksAPI

> SearchDrinksAPI200Response SearchDrinksAPI(ctx).Query(query).GlassTypes(glassTypes).Flavors(flavors).Diet(diet).IncludeIngredients(includeIngredients).ExcludeIngredients(excludeIngredients).MinCalories(minCalories).MaxCalories(maxCalories).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinFat(minFat).MaxFat(maxFat).MinAlcoholPercent(minAlcoholPercent).MaxAlcoholPercent(maxAlcoholPercent).MinCaffeine(minCaffeine).MaxCaffeine(maxCaffeine).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()

Search Drinks API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	query := "vodka" // string | The search query. (optional)
	glassTypes := "Highball Glass" // string | A comma-separated list (interpreted as OR) of glass types that the drink should be served in. (optional)
	flavors := "sour,sweet" // string | A comma-separated list (interpreted as AND) of dominant flavors in the drink. (optional)
	diet := "paleo" // string | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. (optional)
	includeIngredients := "orange" // string | A comma-separated list of ingredients that should/must be used in the drinks. (optional)
	excludeIngredients := "vodka" // string | A comma-separated list of ingredients or ingredient types that the drinks must not contain. (optional)
	minCalories := float64(100) // float64 | The minimum amount of calories the drink must have per serving. (optional)
	maxCalories := float64(655) // float64 | The maximum amount of calories the drink can have per serving. (optional)
	minCarbs := float64(10.1) // float64 | The minimum amount of carbohydrates in grams the drink must have per serving. (optional)
	maxCarbs := float64(25.5) // float64 | The maximum amount of carbohydrates in grams the drink can have per serving. (optional)
	minProtein := float64(10.1) // float64 | The minimum amount of protein in grams the drink must have per serving. (optional)
	maxProtein := float64(25.5) // float64 | The maximum amount of protein in grams the drink can have per serving. (optional)
	minFat := float64(10.1) // float64 | The minimum amount of fat in grams the drink must have per serving. (optional)
	maxFat := float64(25.5) // float64 | The maximum amount of fat in grams the drink can have per serving. (optional)
	minAlcoholPercent := float64(10) // float64 | The minimum alcohol percentage the drink must have. (optional)
	maxAlcoholPercent := float64(35) // float64 | The maximum alcohol percentage the drink can have. (optional)
	minCaffeine := float64(30.4) // float64 | The minimum amount of caffeine in milligrams the drink must have per serving. (optional)
	maxCaffeine := float64(80.9) // float64 | The maximum amount of caffeine in milligrams the drink can have per serving. (optional)
	sort := "calories" // string | The attribute by which to sort the drinks. (optional)
	sortDirection := "ASC" // string | Whether to sort ascending or descending (ASC or DESC). (optional)
	offset := int32(0) // int32 | The number of drinks to skip, between 0 and 90. (optional)
	number := int32(3) // int32 | The number of drinks, between 1 and 10. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FoodAPI.SearchDrinksAPI(context.Background()).Query(query).GlassTypes(glassTypes).Flavors(flavors).Diet(diet).IncludeIngredients(includeIngredients).ExcludeIngredients(excludeIngredients).MinCalories(minCalories).MaxCalories(maxCalories).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinFat(minFat).MaxFat(maxFat).MinAlcoholPercent(minAlcoholPercent).MaxAlcoholPercent(maxAlcoholPercent).MinCaffeine(minCaffeine).MaxCaffeine(maxCaffeine).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FoodAPI.SearchDrinksAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchDrinksAPI`: SearchDrinksAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `FoodAPI.SearchDrinksAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchDrinksAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **glassTypes** | **string** | A comma-separated list (interpreted as OR) of glass types that the drink should be served in. | 
 **flavors** | **string** | A comma-separated list (interpreted as AND) of dominant flavors in the drink. | 
 **diet** | **string** | The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian. | 
 **includeIngredients** | **string** | A comma-separated list of ingredients that should/must be used in the drinks. | 
 **excludeIngredients** | **string** | A comma-separated list of ingredients or ingredient types that the drinks must not contain. | 
 **minCalories** | **float64** | The minimum amount of calories the drink must have per serving. | 
 **maxCalories** | **float64** | The maximum amount of calories the drink can have per serving. | 
 **minCarbs** | **float64** | The minimum amount of carbohydrates in grams the drink must have per serving. | 
 **maxCarbs** | **float64** | The maximum amount of carbohydrates in grams the drink can have per serving. | 
 **minProtein** | **float64** | The minimum amount of protein in grams the drink must have per serving. | 
 **maxProtein** | **float64** | The maximum amount of protein in grams the drink can have per serving. | 
 **minFat** | **float64** | The minimum amount of fat in grams the drink must have per serving. | 
 **maxFat** | **float64** | The maximum amount of fat in grams the drink can have per serving. | 
 **minAlcoholPercent** | **float64** | The minimum alcohol percentage the drink must have. | 
 **maxAlcoholPercent** | **float64** | The maximum alcohol percentage the drink can have. | 
 **minCaffeine** | **float64** | The minimum amount of caffeine in milligrams the drink must have per serving. | 
 **maxCaffeine** | **float64** | The maximum amount of caffeine in milligrams the drink can have per serving. | 
 **sort** | **string** | The attribute by which to sort the drinks. | 
 **sortDirection** | **string** | Whether to sort ascending or descending (ASC or DESC). | 
 **offset** | **int32** | The number of drinks to skip, between 0 and 90. | 
 **number** | **int32** | The number of drinks, between 1 and 10. | 

### Return type

[**SearchDrinksAPI200Response**](SearchDrinksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRecipesAPI

> SearchRecipesAPI200Response SearchRecipesAPI(ctx).Query(query).Cuisines(cuisines).ExcludeCuisines(excludeCuisines).MealType(mealType).Diet(diet).Intolerances(intolerances).Equipment(equipment).IncludeIngredients(includeIngredients).ExcludeIngredients(excludeIngredients).FillIngredients(fillIngredients).AddRecipeInformation(addRecipeInformation).MaxTime(maxTime).MinServings(minServings).MaxServings(maxServings).MinCalories(minCalories).MaxCalories(maxCalories).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinFat(minFat).MaxFat(maxFat).MinSugar(minSugar).MaxSugar(maxSugar).MinFiber(minFiber).MaxFiber(maxFiber).MinFolate(minFolate).MaxFolate(maxFolate).MinFolicAcid(minFolicAcid).MaxFolicAcid(maxFolicAcid).MinIodine(minIodine).MaxIodine(maxIodine).MinIron(minIron).MaxIron(maxIron).MinZinc(minZinc).MaxZinc(maxZinc).MinMagnesium(minMagnesium).MaxMagnesium(maxMagnesium).MinManganese(minManganese).MaxManganese(maxManganese).MinPhosphorus(minPhosphorus).MaxPhosphorus(maxPhosphorus).MinPotassium(minPotassium).MaxPotassium(maxPotassium).MinSodium(minSodium).MaxSodium(maxSodium).MinSelenium(minSelenium).MaxSelenium(maxSelenium).MinCopper(minCopper).MaxCopper(maxCopper).MinCalcium(minCalcium).MaxCalcium(maxCalcium).MinCholine(minCholine).MaxCholine(maxCholine).MinCholesterol(minCholesterol).MaxCholesterol(maxCholesterol).MinFluoride(minFluoride).MaxFluoride(maxFluoride).MinAlcohol(minAlcohol).MaxAlcohol(maxAlcohol).MinCaffeine(minCaffeine).MaxCaffeine(maxCaffeine).MinSaturatedFat(minSaturatedFat).MaxSaturatedFat(maxSaturatedFat).MinVitaminA(minVitaminA).MaxVitaminA(maxVitaminA).MinVitaminC(minVitaminC).MaxVitaminC(maxVitaminC).MinVitaminD(minVitaminD).MaxVitaminD(maxVitaminD).MinVitaminE(minVitaminE).MaxVitaminE(maxVitaminE).MinVitaminK(minVitaminK).MaxVitaminK(maxVitaminK).MinVitaminB1(minVitaminB1).MaxVitaminB1(maxVitaminB1).MinVitaminB2(minVitaminB2).MaxVitaminB2(maxVitaminB2).MinVitaminB3(minVitaminB3).MaxVitaminB3(maxVitaminB3).MinVitaminB5(minVitaminB5).MaxVitaminB5(maxVitaminB5).MinVitaminB6(minVitaminB6).MaxVitaminB6(maxVitaminB6).MinVitaminB12(minVitaminB12).MaxVitaminB12(maxVitaminB12).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()

Search Recipes API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	query := "pasta with mushrooms but without nuts" // string | The search query. (optional)
	cuisines := "mexican" // string | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as 'OR'). (optional)
	excludeCuisines := "indian,japanese" // string | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as 'AND'). (optional)
	mealType := "dessert" // string | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. (optional)
	diet := "paleo" // string | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. (optional)
	intolerances := "gluten,dairy,shellfish" // string | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. (optional)
	equipment := "blender,frying pan,bowl" // string | The equipment required. Multiple values will be interpreted as 'OR'. (optional)
	includeIngredients := "tomato,cheese" // string | A comma-separated list of ingredients that should/must be used in the recipes. (optional)
	excludeIngredients := "olives,capers" // string | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
	fillIngredients := true // bool | Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
	addRecipeInformation := true // bool | If set to true, you get more information about the recipes returned. (optional)
	maxTime := int32(45) // int32 | The maximum time in minutes it should take to prepare and cook the recipe. (optional)
	minServings := int32(1) // int32 | The minimum amount of servings the recipe is for. (optional)
	maxServings := int32(8) // int32 | The maximum amount of servings the recipe is for. (optional)
	minCalories := float64(100) // float64 | The minimum amount of calories the recipe must have per serving. (optional)
	maxCalories := float64(655) // float64 | The maximum amount of calories the recipe can have per serving. (optional)
	minCarbs := float64(10.1) // float64 | The minimum amount of carbohydrates in grams the recipe must have per serving. (optional)
	maxCarbs := float64(25.5) // float64 | The maximum amount of carbohydrates in grams the recipe can have per serving. (optional)
	minProtein := float64(10.1) // float64 | The minimum amount of protein in grams the recipe must have per serving. (optional)
	maxProtein := float64(25.5) // float64 | The maximum amount of protein in grams the recipe can have per serving. (optional)
	minFat := float64(10.1) // float64 | The minimum amount of fat in grams the recipe must have per serving. (optional)
	maxFat := float64(25.5) // float64 | The maximum amount of fat in grams the recipe can have per serving. (optional)
	minSugar := float64(10.1) // float64 | The minimum amount of sugar in grams the recipe must have per serving. (optional)
	maxSugar := float64(25.5) // float64 | The maximum amount of sugar in grams the recipe can have per serving. (optional)
	minFiber := float64(10.1) // float64 | The minimum amount of fiber in grams the recipe must have per serving. (optional)
	maxFiber := float64(25.5) // float64 | The maximum amount of fiber in grams the recipe can have per serving. (optional)
	minFolate := float64(30.4) // float64 | The minimum amount of folate in micrograms the recipe must have per serving. (optional)
	maxFolate := float64(80.9) // float64 | The maximum amount of folate in micrograms the recipe can have per serving. (optional)
	minFolicAcid := float64(30.4) // float64 | The minimum amount of folic acid in micrograms the recipe must have per serving. (optional)
	maxFolicAcid := float64(80.9) // float64 | The maximum amount of folic acid in micrograms the recipe can have per serving. (optional)
	minIodine := float64(30.4) // float64 | The minimum amount of iodine in micrograms the recipe must have per serving. (optional)
	maxIodine := float64(80.9) // float64 | The maximum amount of iodine in micrograms the recipe can have per serving. (optional)
	minIron := float64(30.4) // float64 | The minimum amount of iron in milligrams the recipe must have per serving. (optional)
	maxIron := float64(80.9) // float64 | The maximum amount of iron in milligrams the recipe can have per serving. (optional)
	minZinc := float64(30.4) // float64 | The minimum amount of zinc in milligrams the recipe must have per serving. (optional)
	maxZinc := float64(80.9) // float64 | The maximum amount of zinc in milligrams the recipe can have per serving. (optional)
	minMagnesium := float64(30.4) // float64 | The minimum amount of magnesium in milligrams the recipe must have per serving. (optional)
	maxMagnesium := float64(80.9) // float64 | The maximum amount of magnesium in milligrams the recipe can have per serving. (optional)
	minManganese := float64(30.4) // float64 | The minimum amount of manganese in milligrams the recipe must have per serving. (optional)
	maxManganese := float64(80.9) // float64 | The maximum amount of manganese in milligrams the recipe can have per serving. (optional)
	minPhosphorus := float64(30.4) // float64 | The minimum amount of phosphorus in milligrams the recipe must have per serving. (optional)
	maxPhosphorus := float64(80.9) // float64 | The maximum amount of phosphorus in milligrams the recipe can have per serving. (optional)
	minPotassium := float64(30.4) // float64 | The minimum amount of potassium in milligrams the recipe must have per serving. (optional)
	maxPotassium := float64(80.9) // float64 | The maximum amount of potassium in milligrams the recipe can have per serving. (optional)
	minSodium := float64(30.4) // float64 | The minimum amount of sodium in milligrams the recipe must have per serving. (optional)
	maxSodium := float64(80.9) // float64 | The maximum amount of sodium in milligrams the recipe can have per serving. (optional)
	minSelenium := float64(30.4) // float64 | The minimum amount of selenium in micrograms the recipe must have per serving. (optional)
	maxSelenium := float64(80.9) // float64 | The maximum amount of selenium in micrograms the recipe can have per serving. (optional)
	minCopper := float64(30.4) // float64 | The minimum amount of copper in milligrams the recipe must have per serving. (optional)
	maxCopper := float64(80.9) // float64 | The maximum amount of copper in milligrams the recipe can have per serving. (optional)
	minCalcium := float64(30.4) // float64 | The minimum amount of calcium in milligrams the recipe must have per serving. (optional)
	maxCalcium := float64(80.9) // float64 | The maximum amount of calcium in milligrams the recipe can have per serving. (optional)
	minCholine := float64(30.4) // float64 | The minimum amount of choline in milligrams the recipe must have per serving. (optional)
	maxCholine := float64(80.9) // float64 | The maximum amount of choline in milligrams the recipe can have per serving. (optional)
	minCholesterol := float64(30.4) // float64 | The minimum amount of cholesterol in milligrams the recipe must have per serving. (optional)
	maxCholesterol := float64(80.9) // float64 | The maximum amount of cholesterol in milligrams the recipe can have per serving. (optional)
	minFluoride := float64(30.4) // float64 | The minimum amount of fluoride in milligrams the recipe must have per serving. (optional)
	maxFluoride := float64(80.9) // float64 | The maximum amount of fluoride in milligrams the recipe can have per serving. (optional)
	minAlcohol := float64(10.1) // float64 | The minimum amount of alcohol in grams the recipe must have per serving. (optional)
	maxAlcohol := float64(25.5) // float64 | The maximum amount of alcohol in grams the recipe can have per serving. (optional)
	minCaffeine := float64(30.4) // float64 | The minimum amount of caffeine in milligrams the recipe must have per serving. (optional)
	maxCaffeine := float64(80.9) // float64 | The maximum amount of caffeine in milligrams the recipe can have per serving. (optional)
	minSaturatedFat := float64(30.4) // float64 | The minimum amount of saturated fat in grams the recipe must have per serving. (optional)
	maxSaturatedFat := float64(80.9) // float64 | The maximum amount of saturated fat in grams the recipe can have per serving. (optional)
	minVitaminA := float64(30.4) // float64 | The minimum amount of Vitamin A in IU the recipe must have per serving. (optional)
	maxVitaminA := float64(80.9) // float64 | The maximum amount of Vitamin A in IU the recipe can have per serving. (optional)
	minVitaminC := float64(30.4) // float64 | The minimum amount of Vitamin C in milligrams the recipe must have per serving. (optional)
	maxVitaminC := float64(80.9) // float64 | The maximum amount of Vitamin C in milligrams the recipe can have per serving. (optional)
	minVitaminD := float64(30.4) // float64 | The minimum amount of Vitamin D in micrograms the recipe must have per serving. (optional)
	maxVitaminD := float64(80.9) // float64 | The maximum amount of Vitamin D in micrograms the recipe can have per serving. (optional)
	minVitaminE := float64(30.4) // float64 | The minimum amount of Vitamin E in milligrams the recipe must have per serving. (optional)
	maxVitaminE := float64(80.9) // float64 | The maximum amount of Vitamin E in milligrams the recipe can have per serving. (optional)
	minVitaminK := float64(30.4) // float64 | The minimum amount of Vitamin K in micrograms the recipe must have per serving. (optional)
	maxVitaminK := float64(80.9) // float64 | The maximum amount of Vitamin K in micrograms the recipe can have per serving. (optional)
	minVitaminB1 := float64(30.4) // float64 | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. (optional)
	maxVitaminB1 := float64(80.9) // float64 | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. (optional)
	minVitaminB2 := float64(30.4) // float64 | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. (optional)
	maxVitaminB2 := float64(80.9) // float64 | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. (optional)
	minVitaminB3 := float64(30.4) // float64 | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. (optional)
	maxVitaminB3 := float64(80.9) // float64 | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. (optional)
	minVitaminB5 := float64(30.4) // float64 | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. (optional)
	maxVitaminB5 := float64(80.9) // float64 | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. (optional)
	minVitaminB6 := float64(30.4) // float64 | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. (optional)
	maxVitaminB6 := float64(80.9) // float64 | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. (optional)
	minVitaminB12 := float64(30.4) // float64 | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. (optional)
	maxVitaminB12 := float64(80.9) // float64 | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. (optional)
	sort := "meta-score" // string | The strategy to sort recipes by. (optional)
	sortDirection := "ASC" // string | Whether to sort ascending or descending (ASC or DESC). (optional)
	offset := int32(0) // int32 | The number of recipes to skip, between 0 and 900. (optional)
	number := int32(3) // int32 | The number of recipes, between 1 and 100. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FoodAPI.SearchRecipesAPI(context.Background()).Query(query).Cuisines(cuisines).ExcludeCuisines(excludeCuisines).MealType(mealType).Diet(diet).Intolerances(intolerances).Equipment(equipment).IncludeIngredients(includeIngredients).ExcludeIngredients(excludeIngredients).FillIngredients(fillIngredients).AddRecipeInformation(addRecipeInformation).MaxTime(maxTime).MinServings(minServings).MaxServings(maxServings).MinCalories(minCalories).MaxCalories(maxCalories).MinCarbs(minCarbs).MaxCarbs(maxCarbs).MinProtein(minProtein).MaxProtein(maxProtein).MinFat(minFat).MaxFat(maxFat).MinSugar(minSugar).MaxSugar(maxSugar).MinFiber(minFiber).MaxFiber(maxFiber).MinFolate(minFolate).MaxFolate(maxFolate).MinFolicAcid(minFolicAcid).MaxFolicAcid(maxFolicAcid).MinIodine(minIodine).MaxIodine(maxIodine).MinIron(minIron).MaxIron(maxIron).MinZinc(minZinc).MaxZinc(maxZinc).MinMagnesium(minMagnesium).MaxMagnesium(maxMagnesium).MinManganese(minManganese).MaxManganese(maxManganese).MinPhosphorus(minPhosphorus).MaxPhosphorus(maxPhosphorus).MinPotassium(minPotassium).MaxPotassium(maxPotassium).MinSodium(minSodium).MaxSodium(maxSodium).MinSelenium(minSelenium).MaxSelenium(maxSelenium).MinCopper(minCopper).MaxCopper(maxCopper).MinCalcium(minCalcium).MaxCalcium(maxCalcium).MinCholine(minCholine).MaxCholine(maxCholine).MinCholesterol(minCholesterol).MaxCholesterol(maxCholesterol).MinFluoride(minFluoride).MaxFluoride(maxFluoride).MinAlcohol(minAlcohol).MaxAlcohol(maxAlcohol).MinCaffeine(minCaffeine).MaxCaffeine(maxCaffeine).MinSaturatedFat(minSaturatedFat).MaxSaturatedFat(maxSaturatedFat).MinVitaminA(minVitaminA).MaxVitaminA(maxVitaminA).MinVitaminC(minVitaminC).MaxVitaminC(maxVitaminC).MinVitaminD(minVitaminD).MaxVitaminD(maxVitaminD).MinVitaminE(minVitaminE).MaxVitaminE(maxVitaminE).MinVitaminK(minVitaminK).MaxVitaminK(maxVitaminK).MinVitaminB1(minVitaminB1).MaxVitaminB1(maxVitaminB1).MinVitaminB2(minVitaminB2).MaxVitaminB2(maxVitaminB2).MinVitaminB3(minVitaminB3).MaxVitaminB3(maxVitaminB3).MinVitaminB5(minVitaminB5).MaxVitaminB5(maxVitaminB5).MinVitaminB6(minVitaminB6).MaxVitaminB6(maxVitaminB6).MinVitaminB12(minVitaminB12).MaxVitaminB12(maxVitaminB12).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FoodAPI.SearchRecipesAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchRecipesAPI`: SearchRecipesAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `FoodAPI.SearchRecipesAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRecipesAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **cuisines** | **string** | The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as &#39;OR&#39;). | 
 **excludeCuisines** | **string** | The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as &#39;AND&#39;). | 
 **mealType** | **string** | The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink. | 
 **diet** | **string** | The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian. | 
 **intolerances** | **string** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. | 
 **equipment** | **string** | The equipment required. Multiple values will be interpreted as &#39;OR&#39;. | 
 **includeIngredients** | **string** | A comma-separated list of ingredients that should/must be used in the recipes. | 
 **excludeIngredients** | **string** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | 
 **fillIngredients** | **bool** | Add information about the ingredients and whether they are used or missing in relation to the query. | 
 **addRecipeInformation** | **bool** | If set to true, you get more information about the recipes returned. | 
 **maxTime** | **int32** | The maximum time in minutes it should take to prepare and cook the recipe. | 
 **minServings** | **int32** | The minimum amount of servings the recipe is for. | 
 **maxServings** | **int32** | The maximum amount of servings the recipe is for. | 
 **minCalories** | **float64** | The minimum amount of calories the recipe must have per serving. | 
 **maxCalories** | **float64** | The maximum amount of calories the recipe can have per serving. | 
 **minCarbs** | **float64** | The minimum amount of carbohydrates in grams the recipe must have per serving. | 
 **maxCarbs** | **float64** | The maximum amount of carbohydrates in grams the recipe can have per serving. | 
 **minProtein** | **float64** | The minimum amount of protein in grams the recipe must have per serving. | 
 **maxProtein** | **float64** | The maximum amount of protein in grams the recipe can have per serving. | 
 **minFat** | **float64** | The minimum amount of fat in grams the recipe must have per serving. | 
 **maxFat** | **float64** | The maximum amount of fat in grams the recipe can have per serving. | 
 **minSugar** | **float64** | The minimum amount of sugar in grams the recipe must have per serving. | 
 **maxSugar** | **float64** | The maximum amount of sugar in grams the recipe can have per serving. | 
 **minFiber** | **float64** | The minimum amount of fiber in grams the recipe must have per serving. | 
 **maxFiber** | **float64** | The maximum amount of fiber in grams the recipe can have per serving. | 
 **minFolate** | **float64** | The minimum amount of folate in micrograms the recipe must have per serving. | 
 **maxFolate** | **float64** | The maximum amount of folate in micrograms the recipe can have per serving. | 
 **minFolicAcid** | **float64** | The minimum amount of folic acid in micrograms the recipe must have per serving. | 
 **maxFolicAcid** | **float64** | The maximum amount of folic acid in micrograms the recipe can have per serving. | 
 **minIodine** | **float64** | The minimum amount of iodine in micrograms the recipe must have per serving. | 
 **maxIodine** | **float64** | The maximum amount of iodine in micrograms the recipe can have per serving. | 
 **minIron** | **float64** | The minimum amount of iron in milligrams the recipe must have per serving. | 
 **maxIron** | **float64** | The maximum amount of iron in milligrams the recipe can have per serving. | 
 **minZinc** | **float64** | The minimum amount of zinc in milligrams the recipe must have per serving. | 
 **maxZinc** | **float64** | The maximum amount of zinc in milligrams the recipe can have per serving. | 
 **minMagnesium** | **float64** | The minimum amount of magnesium in milligrams the recipe must have per serving. | 
 **maxMagnesium** | **float64** | The maximum amount of magnesium in milligrams the recipe can have per serving. | 
 **minManganese** | **float64** | The minimum amount of manganese in milligrams the recipe must have per serving. | 
 **maxManganese** | **float64** | The maximum amount of manganese in milligrams the recipe can have per serving. | 
 **minPhosphorus** | **float64** | The minimum amount of phosphorus in milligrams the recipe must have per serving. | 
 **maxPhosphorus** | **float64** | The maximum amount of phosphorus in milligrams the recipe can have per serving. | 
 **minPotassium** | **float64** | The minimum amount of potassium in milligrams the recipe must have per serving. | 
 **maxPotassium** | **float64** | The maximum amount of potassium in milligrams the recipe can have per serving. | 
 **minSodium** | **float64** | The minimum amount of sodium in milligrams the recipe must have per serving. | 
 **maxSodium** | **float64** | The maximum amount of sodium in milligrams the recipe can have per serving. | 
 **minSelenium** | **float64** | The minimum amount of selenium in micrograms the recipe must have per serving. | 
 **maxSelenium** | **float64** | The maximum amount of selenium in micrograms the recipe can have per serving. | 
 **minCopper** | **float64** | The minimum amount of copper in milligrams the recipe must have per serving. | 
 **maxCopper** | **float64** | The maximum amount of copper in milligrams the recipe can have per serving. | 
 **minCalcium** | **float64** | The minimum amount of calcium in milligrams the recipe must have per serving. | 
 **maxCalcium** | **float64** | The maximum amount of calcium in milligrams the recipe can have per serving. | 
 **minCholine** | **float64** | The minimum amount of choline in milligrams the recipe must have per serving. | 
 **maxCholine** | **float64** | The maximum amount of choline in milligrams the recipe can have per serving. | 
 **minCholesterol** | **float64** | The minimum amount of cholesterol in milligrams the recipe must have per serving. | 
 **maxCholesterol** | **float64** | The maximum amount of cholesterol in milligrams the recipe can have per serving. | 
 **minFluoride** | **float64** | The minimum amount of fluoride in milligrams the recipe must have per serving. | 
 **maxFluoride** | **float64** | The maximum amount of fluoride in milligrams the recipe can have per serving. | 
 **minAlcohol** | **float64** | The minimum amount of alcohol in grams the recipe must have per serving. | 
 **maxAlcohol** | **float64** | The maximum amount of alcohol in grams the recipe can have per serving. | 
 **minCaffeine** | **float64** | The minimum amount of caffeine in milligrams the recipe must have per serving. | 
 **maxCaffeine** | **float64** | The maximum amount of caffeine in milligrams the recipe can have per serving. | 
 **minSaturatedFat** | **float64** | The minimum amount of saturated fat in grams the recipe must have per serving. | 
 **maxSaturatedFat** | **float64** | The maximum amount of saturated fat in grams the recipe can have per serving. | 
 **minVitaminA** | **float64** | The minimum amount of Vitamin A in IU the recipe must have per serving. | 
 **maxVitaminA** | **float64** | The maximum amount of Vitamin A in IU the recipe can have per serving. | 
 **minVitaminC** | **float64** | The minimum amount of Vitamin C in milligrams the recipe must have per serving. | 
 **maxVitaminC** | **float64** | The maximum amount of Vitamin C in milligrams the recipe can have per serving. | 
 **minVitaminD** | **float64** | The minimum amount of Vitamin D in micrograms the recipe must have per serving. | 
 **maxVitaminD** | **float64** | The maximum amount of Vitamin D in micrograms the recipe can have per serving. | 
 **minVitaminE** | **float64** | The minimum amount of Vitamin E in milligrams the recipe must have per serving. | 
 **maxVitaminE** | **float64** | The maximum amount of Vitamin E in milligrams the recipe can have per serving. | 
 **minVitaminK** | **float64** | The minimum amount of Vitamin K in micrograms the recipe must have per serving. | 
 **maxVitaminK** | **float64** | The maximum amount of Vitamin K in micrograms the recipe can have per serving. | 
 **minVitaminB1** | **float64** | The minimum amount of Vitamin B1 in milligrams the recipe must have per serving. | 
 **maxVitaminB1** | **float64** | The maximum amount of Vitamin B1 in milligrams the recipe can have per serving. | 
 **minVitaminB2** | **float64** | The minimum amount of Vitamin B2 in milligrams the recipe must have per serving. | 
 **maxVitaminB2** | **float64** | The maximum amount of Vitamin B2 in milligrams the recipe can have per serving. | 
 **minVitaminB3** | **float64** | The minimum amount of Vitamin B3 in milligrams the recipe must have per serving. | 
 **maxVitaminB3** | **float64** | The maximum amount of Vitamin B3 in milligrams the recipe can have per serving. | 
 **minVitaminB5** | **float64** | The minimum amount of Vitamin B5 in milligrams the recipe must have per serving. | 
 **maxVitaminB5** | **float64** | The maximum amount of Vitamin B5 in milligrams the recipe can have per serving. | 
 **minVitaminB6** | **float64** | The minimum amount of Vitamin B6 in milligrams the recipe must have per serving. | 
 **maxVitaminB6** | **float64** | The maximum amount of Vitamin B6 in milligrams the recipe can have per serving. | 
 **minVitaminB12** | **float64** | The minimum amount of Vitamin B12 in milligrams the recipe must have per serving. | 
 **maxVitaminB12** | **float64** | The maximum amount of Vitamin B12 in milligrams the recipe can have per serving. | 
 **sort** | **string** | The strategy to sort recipes by. | 
 **sortDirection** | **string** | Whether to sort ascending or descending (ASC or DESC). | 
 **offset** | **int32** | The number of recipes to skip, between 0 and 900. | 
 **number** | **int32** | The number of recipes, between 1 and 100. | 

### Return type

[**SearchRecipesAPI200Response**](SearchRecipesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchRestaurantsAPI

> SearchRestaurantsAPI200Response SearchRestaurantsAPI(ctx).Lat(lat).Lon(lon).Query(query).Distance(distance).Budget(budget).MinRating(minRating).Cuisine(cuisine).IsOpen(isOpen).Page(page).Sort(sort).Execute()

Search Restaurants API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	lat := float64(32.715736) // float64 | The latitude to search around.
	lon := float64(-117.161087) // float64 | The longitude to search around.
	query := "burger" // string | The search query. (optional)
	distance := int32(5) // int32 | The maximum distance of the restaurant in miles around the given location. (optional)
	budget := float64(25) // float64 | The budget in USD for the meal. (optional)
	minRating := float64(4.4) // float64 | The minimum rating of the restaurants in range [0,5]. (optional)
	cuisine := "Mexican" // string | The cuisine that the restaurants should support. (optional)
	isOpen := true // bool | Whether the restaurants have to be open now. (optional)
	page := int32(0) // int32 | The page of the results. (optional)
	sort := "rating" // string | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FoodAPI.SearchRestaurantsAPI(context.Background()).Lat(lat).Lon(lon).Query(query).Distance(distance).Budget(budget).MinRating(minRating).Cuisine(cuisine).IsOpen(isOpen).Page(page).Sort(sort).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FoodAPI.SearchRestaurantsAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchRestaurantsAPI`: SearchRestaurantsAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `FoodAPI.SearchRestaurantsAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRestaurantsAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **float64** | The latitude to search around. | 
 **lon** | **float64** | The longitude to search around. | 
 **query** | **string** | The search query. | 
 **distance** | **int32** | The maximum distance of the restaurant in miles around the given location. | 
 **budget** | **float64** | The budget in USD for the meal. | 
 **minRating** | **float64** | The minimum rating of the restaurants in range [0,5]. | 
 **cuisine** | **string** | The cuisine that the restaurants should support. | 
 **isOpen** | **bool** | Whether the restaurants have to be open now. | 
 **page** | **int32** | The page of the results. | 
 **sort** | **string** | The sort parameter, one of: cheapest, fastest, rating, distance or relevance. | 

### Return type

[**SearchRestaurantsAPI200Response**](SearchRestaurantsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

