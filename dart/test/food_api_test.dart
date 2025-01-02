//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for FoodApi
void main() {
  // final instance = FoodApi();

  group('tests for FoodApi', () {
    // Compute Nutrition API
    //
    // Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
    //
    //Future<ComputeNutritionAPI200Response> computeNutritionAPI(String ingredients, { int servings, bool reduceOils }) async
    test('test computeNutritionAPI', () async {
      // TODO
    });

    // Retrieve Recipe Information API
    //
    // Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
    //
    //Future<RetrieveRecipeInformationAPI200Response> retrieveRecipeInformationAPI(int id, { bool addWinePairing }) async
    test('test retrieveRecipeInformationAPI', () async {
      // TODO
    });

    // Search Drinks API
    //
    // Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
    //
    //Future<SearchDrinksAPI200Response> searchDrinksAPI({ String query, String glassTypes, String flavors, String diet, String includeIngredients, String excludeIngredients, double minCalories, double maxCalories, double minCarbs, double maxCarbs, double minProtein, double maxProtein, double minFat, double maxFat, double minAlcoholPercent, double maxAlcoholPercent, double minCaffeine, double maxCaffeine, String sort, String sortDirection, int offset, int number }) async
    test('test searchDrinksAPI', () async {
      // TODO
    });

    // Search Recipes API
    //
    // Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
    //
    //Future<SearchRecipesAPI200Response> searchRecipesAPI({ String query, String cuisines, String excludeCuisines, String mealType, String diet, String intolerances, String equipment, String includeIngredients, String excludeIngredients, bool fillIngredients, bool addRecipeInformation, int maxTime, int minServings, int maxServings, double minCalories, double maxCalories, double minCarbs, double maxCarbs, double minProtein, double maxProtein, double minFat, double maxFat, double minSugar, double maxSugar, double minFiber, double maxFiber, double minFolate, double maxFolate, double minFolicAcid, double maxFolicAcid, double minIodine, double maxIodine, double minIron, double maxIron, double minZinc, double maxZinc, double minMagnesium, double maxMagnesium, double minManganese, double maxManganese, double minPhosphorus, double maxPhosphorus, double minPotassium, double maxPotassium, double minSodium, double maxSodium, double minSelenium, double maxSelenium, double minCopper, double maxCopper, double minCalcium, double maxCalcium, double minCholine, double maxCholine, double minCholesterol, double maxCholesterol, double minFluoride, double maxFluoride, double minAlcohol, double maxAlcohol, double minCaffeine, double maxCaffeine, double minSaturatedFat, double maxSaturatedFat, double minVitaminA, double maxVitaminA, double minVitaminC, double maxVitaminC, double minVitaminD, double maxVitaminD, double minVitaminE, double maxVitaminE, double minVitaminK, double maxVitaminK, double minVitaminB1, double maxVitaminB1, double minVitaminB2, double maxVitaminB2, double minVitaminB3, double maxVitaminB3, double minVitaminB5, double maxVitaminB5, double minVitaminB6, double maxVitaminB6, double minVitaminB12, double maxVitaminB12, String sort, String sortDirection, int offset, int number }) async
    test('test searchRecipesAPI', () async {
      // TODO
    });

    // Search Restaurants API
    //
    // Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
    //
    //Future<SearchRestaurantsAPI200Response> searchRestaurantsAPI(double lat, double lon, { String query, int distance, double budget, double minRating, String cuisine, bool isOpen, int page, String sort }) async
    test('test searchRestaurantsAPI', () async {
      // TODO
    });

  });
}
