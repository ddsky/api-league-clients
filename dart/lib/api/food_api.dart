//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FoodApi {
  FoodApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Compute Nutrition
  ///
  /// Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ingredients (required):
  ///   A comma-separated list of the ingredients of the recipe.
  ///
  /// * [int] servings:
  ///   The number of servings the ingredients make. Nutrition is computed per serving.
  ///
  /// * [bool] reduceOils:
  ///   If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
  Future<Response> computeNutritionWithHttpInfo(String ingredients, { int? servings, bool? reduceOils, }) async {
    // ignore: prefer_const_declarations
    final path = r'/compute-nutrition';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ingredients', ingredients));
    if (servings != null) {
      queryParams.addAll(_queryParams('', 'servings', servings));
    }
    if (reduceOils != null) {
      queryParams.addAll(_queryParams('', 'reduce-oils', reduceOils));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Compute Nutrition
  ///
  /// Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
  ///
  /// Parameters:
  ///
  /// * [String] ingredients (required):
  ///   A comma-separated list of the ingredients of the recipe.
  ///
  /// * [int] servings:
  ///   The number of servings the ingredients make. Nutrition is computed per serving.
  ///
  /// * [bool] reduceOils:
  ///   If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
  Future<ComputeNutrition200Response?> computeNutrition(String ingredients, { int? servings, bool? reduceOils, }) async {
    final response = await computeNutritionWithHttpInfo(ingredients,  servings: servings, reduceOils: reduceOils, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ComputeNutrition200Response',) as ComputeNutrition200Response;
    
    }
    return null;
  }

  /// Retrieve Recipe Information
  ///
  /// Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the recipe to retrieve.
  ///
  /// * [bool] addWinePairing:
  ///   Whether to pair a wine to the recipe.
  Future<Response> retrieveRecipeInformationWithHttpInfo(int id, { bool? addWinePairing, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-recipe';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));
    if (addWinePairing != null) {
      queryParams.addAll(_queryParams('', 'add-wine-pairing', addWinePairing));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieve Recipe Information
  ///
  /// Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the recipe to retrieve.
  ///
  /// * [bool] addWinePairing:
  ///   Whether to pair a wine to the recipe.
  Future<RetrieveRecipeInformation200Response?> retrieveRecipeInformation(int id, { bool? addWinePairing, }) async {
    final response = await retrieveRecipeInformationWithHttpInfo(id,  addWinePairing: addWinePairing, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveRecipeInformation200Response',) as RetrieveRecipeInformation200Response;
    
    }
    return null;
  }

  /// Search Recipes
  ///
  /// Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [String] cuisines:
  ///   The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR').
  ///
  /// * [String] excludeCuisines:
  ///   The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND').
  ///
  /// * [String] mealType:
  ///   The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
  ///
  /// * [String] diet:
  ///   The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
  ///
  /// * [String] intolerances:
  ///   A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
  ///
  /// * [String] equipment:
  ///   The equipment required. Multiple values will be interpreted as 'OR'.
  ///
  /// * [String] includeIngredients:
  ///   A comma-separated list of ingredients that should/must be used in the recipes.
  ///
  /// * [String] excludeIngredients:
  ///   A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  ///
  /// * [bool] fillIngredients:
  ///   Add information about the ingredients and whether they are used or missing in relation to the query.
  ///
  /// * [bool] addRecipeInformation:
  ///   If set to true, you get more information about the recipes returned.
  ///
  /// * [int] maxTime:
  ///   The maximum time in minutes it should take to prepare and cook the recipe.
  ///
  /// * [int] minServings:
  ///   The minimum amount of servings the recipe is for.
  ///
  /// * [int] maxServings:
  ///   The maximum amount of servings the recipe is for.
  ///
  /// * [double] minCalories:
  ///   The minimum amount of calories the recipe must have per serving.
  ///
  /// * [double] maxCalories:
  ///   The maximum amount of calories the recipe can have per serving.
  ///
  /// * [double] minCarbs:
  ///   The minimum amount of carbohydrates in grams the recipe must have per serving.
  ///
  /// * [double] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the recipe can have per serving.
  ///
  /// * [double] minProtein:
  ///   The minimum amount of protein in grams the recipe must have per serving.
  ///
  /// * [double] maxProtein:
  ///   The maximum amount of protein in grams the recipe can have per serving.
  ///
  /// * [double] minFat:
  ///   The minimum amount of fat in grams the recipe must have per serving.
  ///
  /// * [double] maxFat:
  ///   The maximum amount of fat in grams the recipe can have per serving.
  ///
  /// * [double] minSugar:
  ///   The minimum amount of sugar in grams the recipe must have per serving.
  ///
  /// * [double] maxSugar:
  ///   The maximum amount of sugar in grams the recipe can have per serving.
  ///
  /// * [double] minFiber:
  ///   The minimum amount of fiber in grams the recipe must have per serving.
  ///
  /// * [double] maxFiber:
  ///   The maximum amount of fiber in grams the recipe can have per serving.
  ///
  /// * [double] minFolate:
  ///   The minimum amount of folate in micrograms the recipe must have per serving.
  ///
  /// * [double] maxFolate:
  ///   The maximum amount of folate in micrograms the recipe can have per serving.
  ///
  /// * [double] minFolicAcid:
  ///   The minimum amount of folic acid in micrograms the recipe must have per serving.
  ///
  /// * [double] maxFolicAcid:
  ///   The maximum amount of folic acid in micrograms the recipe can have per serving.
  ///
  /// * [double] minIodine:
  ///   The minimum amount of iodine in micrograms the recipe must have per serving.
  ///
  /// * [double] maxIodine:
  ///   The maximum amount of iodine in micrograms the recipe can have per serving.
  ///
  /// * [double] minIron:
  ///   The minimum amount of iron in milligrams the recipe must have per serving.
  ///
  /// * [double] maxIron:
  ///   The maximum amount of iron in milligrams the recipe can have per serving.
  ///
  /// * [double] minZinc:
  ///   The minimum amount of zinc in milligrams the recipe must have per serving.
  ///
  /// * [double] maxZinc:
  ///   The maximum amount of zinc in milligrams the recipe can have per serving.
  ///
  /// * [double] minMagnesium:
  ///   The minimum amount of magnesium in milligrams the recipe must have per serving.
  ///
  /// * [double] maxMagnesium:
  ///   The maximum amount of magnesium in milligrams the recipe can have per serving.
  ///
  /// * [double] minManganese:
  ///   The minimum amount of manganese in milligrams the recipe must have per serving.
  ///
  /// * [double] maxManganese:
  ///   The maximum amount of manganese in milligrams the recipe can have per serving.
  ///
  /// * [double] minPhosphorus:
  ///   The minimum amount of phosphorus in milligrams the recipe must have per serving.
  ///
  /// * [double] maxPhosphorus:
  ///   The maximum amount of phosphorus in milligrams the recipe can have per serving.
  ///
  /// * [double] minPotassium:
  ///   The minimum amount of potassium in milligrams the recipe must have per serving.
  ///
  /// * [double] maxPotassium:
  ///   The maximum amount of potassium in milligrams the recipe can have per serving.
  ///
  /// * [double] minSodium:
  ///   The minimum amount of sodium in milligrams the recipe must have per serving.
  ///
  /// * [double] maxSodium:
  ///   The maximum amount of sodium in milligrams the recipe can have per serving.
  ///
  /// * [double] minSelenium:
  ///   The minimum amount of selenium in micrograms the recipe must have per serving.
  ///
  /// * [double] maxSelenium:
  ///   The maximum amount of selenium in micrograms the recipe can have per serving.
  ///
  /// * [double] minCopper:
  ///   The minimum amount of copper in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCopper:
  ///   The maximum amount of copper in milligrams the recipe can have per serving.
  ///
  /// * [double] minCalcium:
  ///   The minimum amount of calcium in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCalcium:
  ///   The maximum amount of calcium in milligrams the recipe can have per serving.
  ///
  /// * [double] minCholine:
  ///   The minimum amount of choline in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCholine:
  ///   The maximum amount of choline in milligrams the recipe can have per serving.
  ///
  /// * [double] minCholesterol:
  ///   The minimum amount of cholesterol in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCholesterol:
  ///   The maximum amount of cholesterol in milligrams the recipe can have per serving.
  ///
  /// * [double] minFluoride:
  ///   The minimum amount of fluoride in milligrams the recipe must have per serving.
  ///
  /// * [double] maxFluoride:
  ///   The maximum amount of fluoride in milligrams the recipe can have per serving.
  ///
  /// * [double] minAlcohol:
  ///   The minimum amount of alcohol in grams the recipe must have per serving.
  ///
  /// * [double] maxAlcohol:
  ///   The maximum amount of alcohol in grams the recipe can have per serving.
  ///
  /// * [double] minCaffeine:
  ///   The minimum amount of caffeine in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCaffeine:
  ///   The maximum amount of caffeine in milligrams the recipe can have per serving.
  ///
  /// * [double] minSaturatedFat:
  ///   The minimum amount of saturated fat in grams the recipe must have per serving.
  ///
  /// * [double] maxSaturatedFat:
  ///   The maximum amount of saturated fat in grams the recipe can have per serving.
  ///
  /// * [double] minVitaminA:
  ///   The minimum amount of Vitamin A in IU the recipe must have per serving.
  ///
  /// * [double] maxVitaminA:
  ///   The maximum amount of Vitamin A in IU the recipe can have per serving.
  ///
  /// * [double] minVitaminC:
  ///   The minimum amount of Vitamin C in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminC:
  ///   The maximum amount of Vitamin C in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminD:
  ///   The minimum amount of Vitamin D in micrograms the recipe must have per serving.
  ///
  /// * [double] maxVitaminD:
  ///   The maximum amount of Vitamin D in micrograms the recipe can have per serving.
  ///
  /// * [double] minVitaminE:
  ///   The minimum amount of Vitamin E in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminE:
  ///   The maximum amount of Vitamin E in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminK:
  ///   The minimum amount of Vitamin K in micrograms the recipe must have per serving.
  ///
  /// * [double] maxVitaminK:
  ///   The maximum amount of Vitamin K in micrograms the recipe can have per serving.
  ///
  /// * [double] minVitaminB1:
  ///   The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB1:
  ///   The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB2:
  ///   The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB2:
  ///   The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB3:
  ///   The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB3:
  ///   The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB5:
  ///   The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB5:
  ///   The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB6:
  ///   The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB6:
  ///   The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB12:
  ///   The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB12:
  ///   The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
  ///
  /// * [String] sort:
  ///   The strategy to sort recipes by. See a full list of supported sorting options.
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending (ASC or DESC).
  ///
  /// * [int] offset:
  ///   The number of recipes to skip, between 0 and 900.
  ///
  /// * [int] number:
  ///   The number of recipes, between 1 and 100.
  Future<Response> searchRecipesWithHttpInfo({ String? query, String? cuisines, String? excludeCuisines, String? mealType, String? diet, String? intolerances, String? equipment, String? includeIngredients, String? excludeIngredients, bool? fillIngredients, bool? addRecipeInformation, int? maxTime, int? minServings, int? maxServings, double? minCalories, double? maxCalories, double? minCarbs, double? maxCarbs, double? minProtein, double? maxProtein, double? minFat, double? maxFat, double? minSugar, double? maxSugar, double? minFiber, double? maxFiber, double? minFolate, double? maxFolate, double? minFolicAcid, double? maxFolicAcid, double? minIodine, double? maxIodine, double? minIron, double? maxIron, double? minZinc, double? maxZinc, double? minMagnesium, double? maxMagnesium, double? minManganese, double? maxManganese, double? minPhosphorus, double? maxPhosphorus, double? minPotassium, double? maxPotassium, double? minSodium, double? maxSodium, double? minSelenium, double? maxSelenium, double? minCopper, double? maxCopper, double? minCalcium, double? maxCalcium, double? minCholine, double? maxCholine, double? minCholesterol, double? maxCholesterol, double? minFluoride, double? maxFluoride, double? minAlcohol, double? maxAlcohol, double? minCaffeine, double? maxCaffeine, double? minSaturatedFat, double? maxSaturatedFat, double? minVitaminA, double? maxVitaminA, double? minVitaminC, double? maxVitaminC, double? minVitaminD, double? maxVitaminD, double? minVitaminE, double? maxVitaminE, double? minVitaminK, double? maxVitaminK, double? minVitaminB1, double? maxVitaminB1, double? minVitaminB2, double? maxVitaminB2, double? minVitaminB3, double? maxVitaminB3, double? minVitaminB5, double? maxVitaminB5, double? minVitaminB6, double? maxVitaminB6, double? minVitaminB12, double? maxVitaminB12, String? sort, String? sortDirection, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-recipes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (cuisines != null) {
      queryParams.addAll(_queryParams('', 'cuisines', cuisines));
    }
    if (excludeCuisines != null) {
      queryParams.addAll(_queryParams('', 'exclude-cuisines', excludeCuisines));
    }
    if (mealType != null) {
      queryParams.addAll(_queryParams('', 'meal-type', mealType));
    }
    if (diet != null) {
      queryParams.addAll(_queryParams('', 'diet', diet));
    }
    if (intolerances != null) {
      queryParams.addAll(_queryParams('', 'intolerances', intolerances));
    }
    if (equipment != null) {
      queryParams.addAll(_queryParams('', 'equipment', equipment));
    }
    if (includeIngredients != null) {
      queryParams.addAll(_queryParams('', 'include-ingredients', includeIngredients));
    }
    if (excludeIngredients != null) {
      queryParams.addAll(_queryParams('', 'exclude-ingredients', excludeIngredients));
    }
    if (fillIngredients != null) {
      queryParams.addAll(_queryParams('', 'fill-ingredients', fillIngredients));
    }
    if (addRecipeInformation != null) {
      queryParams.addAll(_queryParams('', 'add-recipe-information', addRecipeInformation));
    }
    if (maxTime != null) {
      queryParams.addAll(_queryParams('', 'max-time', maxTime));
    }
    if (minServings != null) {
      queryParams.addAll(_queryParams('', 'min-servings', minServings));
    }
    if (maxServings != null) {
      queryParams.addAll(_queryParams('', 'max-servings', maxServings));
    }
    if (minCalories != null) {
      queryParams.addAll(_queryParams('', 'min-calories', minCalories));
    }
    if (maxCalories != null) {
      queryParams.addAll(_queryParams('', 'max-calories', maxCalories));
    }
    if (minCarbs != null) {
      queryParams.addAll(_queryParams('', 'min-carbs', minCarbs));
    }
    if (maxCarbs != null) {
      queryParams.addAll(_queryParams('', 'max-carbs', maxCarbs));
    }
    if (minProtein != null) {
      queryParams.addAll(_queryParams('', 'min-protein', minProtein));
    }
    if (maxProtein != null) {
      queryParams.addAll(_queryParams('', 'max-protein', maxProtein));
    }
    if (minFat != null) {
      queryParams.addAll(_queryParams('', 'min-fat', minFat));
    }
    if (maxFat != null) {
      queryParams.addAll(_queryParams('', 'max-fat', maxFat));
    }
    if (minSugar != null) {
      queryParams.addAll(_queryParams('', 'min-sugar', minSugar));
    }
    if (maxSugar != null) {
      queryParams.addAll(_queryParams('', 'max-sugar', maxSugar));
    }
    if (minFiber != null) {
      queryParams.addAll(_queryParams('', 'min-fiber', minFiber));
    }
    if (maxFiber != null) {
      queryParams.addAll(_queryParams('', 'max-fiber', maxFiber));
    }
    if (minFolate != null) {
      queryParams.addAll(_queryParams('', 'min-folate', minFolate));
    }
    if (maxFolate != null) {
      queryParams.addAll(_queryParams('', 'max-folate', maxFolate));
    }
    if (minFolicAcid != null) {
      queryParams.addAll(_queryParams('', 'min-folic-acid', minFolicAcid));
    }
    if (maxFolicAcid != null) {
      queryParams.addAll(_queryParams('', 'max-folic-acid', maxFolicAcid));
    }
    if (minIodine != null) {
      queryParams.addAll(_queryParams('', 'min-iodine', minIodine));
    }
    if (maxIodine != null) {
      queryParams.addAll(_queryParams('', 'max-iodine', maxIodine));
    }
    if (minIron != null) {
      queryParams.addAll(_queryParams('', 'min-iron', minIron));
    }
    if (maxIron != null) {
      queryParams.addAll(_queryParams('', 'max-iron', maxIron));
    }
    if (minZinc != null) {
      queryParams.addAll(_queryParams('', 'min-zinc', minZinc));
    }
    if (maxZinc != null) {
      queryParams.addAll(_queryParams('', 'max-zinc', maxZinc));
    }
    if (minMagnesium != null) {
      queryParams.addAll(_queryParams('', 'min-magnesium', minMagnesium));
    }
    if (maxMagnesium != null) {
      queryParams.addAll(_queryParams('', 'max-magnesium', maxMagnesium));
    }
    if (minManganese != null) {
      queryParams.addAll(_queryParams('', 'min-manganese', minManganese));
    }
    if (maxManganese != null) {
      queryParams.addAll(_queryParams('', 'max-manganese', maxManganese));
    }
    if (minPhosphorus != null) {
      queryParams.addAll(_queryParams('', 'min-phosphorus', minPhosphorus));
    }
    if (maxPhosphorus != null) {
      queryParams.addAll(_queryParams('', 'max-phosphorus', maxPhosphorus));
    }
    if (minPotassium != null) {
      queryParams.addAll(_queryParams('', 'min-potassium', minPotassium));
    }
    if (maxPotassium != null) {
      queryParams.addAll(_queryParams('', 'max-potassium', maxPotassium));
    }
    if (minSodium != null) {
      queryParams.addAll(_queryParams('', 'min-sodium', minSodium));
    }
    if (maxSodium != null) {
      queryParams.addAll(_queryParams('', 'max-sodium', maxSodium));
    }
    if (minSelenium != null) {
      queryParams.addAll(_queryParams('', 'min-selenium', minSelenium));
    }
    if (maxSelenium != null) {
      queryParams.addAll(_queryParams('', 'max-selenium', maxSelenium));
    }
    if (minCopper != null) {
      queryParams.addAll(_queryParams('', 'min-copper', minCopper));
    }
    if (maxCopper != null) {
      queryParams.addAll(_queryParams('', 'max-copper', maxCopper));
    }
    if (minCalcium != null) {
      queryParams.addAll(_queryParams('', 'min-calcium', minCalcium));
    }
    if (maxCalcium != null) {
      queryParams.addAll(_queryParams('', 'max-calcium', maxCalcium));
    }
    if (minCholine != null) {
      queryParams.addAll(_queryParams('', 'min-choline', minCholine));
    }
    if (maxCholine != null) {
      queryParams.addAll(_queryParams('', 'max-choline', maxCholine));
    }
    if (minCholesterol != null) {
      queryParams.addAll(_queryParams('', 'min-cholesterol', minCholesterol));
    }
    if (maxCholesterol != null) {
      queryParams.addAll(_queryParams('', 'max-cholesterol', maxCholesterol));
    }
    if (minFluoride != null) {
      queryParams.addAll(_queryParams('', 'min-fluoride', minFluoride));
    }
    if (maxFluoride != null) {
      queryParams.addAll(_queryParams('', 'max-fluoride', maxFluoride));
    }
    if (minAlcohol != null) {
      queryParams.addAll(_queryParams('', 'min-alcohol', minAlcohol));
    }
    if (maxAlcohol != null) {
      queryParams.addAll(_queryParams('', 'max-alcohol', maxAlcohol));
    }
    if (minCaffeine != null) {
      queryParams.addAll(_queryParams('', 'min-caffeine', minCaffeine));
    }
    if (maxCaffeine != null) {
      queryParams.addAll(_queryParams('', 'max-caffeine', maxCaffeine));
    }
    if (minSaturatedFat != null) {
      queryParams.addAll(_queryParams('', 'min-saturated-fat', minSaturatedFat));
    }
    if (maxSaturatedFat != null) {
      queryParams.addAll(_queryParams('', 'max-saturated-fat', maxSaturatedFat));
    }
    if (minVitaminA != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-a', minVitaminA));
    }
    if (maxVitaminA != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-a', maxVitaminA));
    }
    if (minVitaminC != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-c', minVitaminC));
    }
    if (maxVitaminC != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-c', maxVitaminC));
    }
    if (minVitaminD != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-d', minVitaminD));
    }
    if (maxVitaminD != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-d', maxVitaminD));
    }
    if (minVitaminE != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-e', minVitaminE));
    }
    if (maxVitaminE != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-e', maxVitaminE));
    }
    if (minVitaminK != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-k', minVitaminK));
    }
    if (maxVitaminK != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-k', maxVitaminK));
    }
    if (minVitaminB1 != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-b1', minVitaminB1));
    }
    if (maxVitaminB1 != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-b1', maxVitaminB1));
    }
    if (minVitaminB2 != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-b2', minVitaminB2));
    }
    if (maxVitaminB2 != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-b2', maxVitaminB2));
    }
    if (minVitaminB3 != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-b3', minVitaminB3));
    }
    if (maxVitaminB3 != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-b3', maxVitaminB3));
    }
    if (minVitaminB5 != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-b5', minVitaminB5));
    }
    if (maxVitaminB5 != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-b5', maxVitaminB5));
    }
    if (minVitaminB6 != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-b6', minVitaminB6));
    }
    if (maxVitaminB6 != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-b6', maxVitaminB6));
    }
    if (minVitaminB12 != null) {
      queryParams.addAll(_queryParams('', 'min-vitamin-b12', minVitaminB12));
    }
    if (maxVitaminB12 != null) {
      queryParams.addAll(_queryParams('', 'max-vitamin-b12', maxVitaminB12));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sort-direction', sortDirection));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Recipes
  ///
  /// Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [String] cuisines:
  ///   The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR').
  ///
  /// * [String] excludeCuisines:
  ///   The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND').
  ///
  /// * [String] mealType:
  ///   The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
  ///
  /// * [String] diet:
  ///   The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
  ///
  /// * [String] intolerances:
  ///   A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
  ///
  /// * [String] equipment:
  ///   The equipment required. Multiple values will be interpreted as 'OR'.
  ///
  /// * [String] includeIngredients:
  ///   A comma-separated list of ingredients that should/must be used in the recipes.
  ///
  /// * [String] excludeIngredients:
  ///   A comma-separated list of ingredients or ingredient types that the recipes must not contain.
  ///
  /// * [bool] fillIngredients:
  ///   Add information about the ingredients and whether they are used or missing in relation to the query.
  ///
  /// * [bool] addRecipeInformation:
  ///   If set to true, you get more information about the recipes returned.
  ///
  /// * [int] maxTime:
  ///   The maximum time in minutes it should take to prepare and cook the recipe.
  ///
  /// * [int] minServings:
  ///   The minimum amount of servings the recipe is for.
  ///
  /// * [int] maxServings:
  ///   The maximum amount of servings the recipe is for.
  ///
  /// * [double] minCalories:
  ///   The minimum amount of calories the recipe must have per serving.
  ///
  /// * [double] maxCalories:
  ///   The maximum amount of calories the recipe can have per serving.
  ///
  /// * [double] minCarbs:
  ///   The minimum amount of carbohydrates in grams the recipe must have per serving.
  ///
  /// * [double] maxCarbs:
  ///   The maximum amount of carbohydrates in grams the recipe can have per serving.
  ///
  /// * [double] minProtein:
  ///   The minimum amount of protein in grams the recipe must have per serving.
  ///
  /// * [double] maxProtein:
  ///   The maximum amount of protein in grams the recipe can have per serving.
  ///
  /// * [double] minFat:
  ///   The minimum amount of fat in grams the recipe must have per serving.
  ///
  /// * [double] maxFat:
  ///   The maximum amount of fat in grams the recipe can have per serving.
  ///
  /// * [double] minSugar:
  ///   The minimum amount of sugar in grams the recipe must have per serving.
  ///
  /// * [double] maxSugar:
  ///   The maximum amount of sugar in grams the recipe can have per serving.
  ///
  /// * [double] minFiber:
  ///   The minimum amount of fiber in grams the recipe must have per serving.
  ///
  /// * [double] maxFiber:
  ///   The maximum amount of fiber in grams the recipe can have per serving.
  ///
  /// * [double] minFolate:
  ///   The minimum amount of folate in micrograms the recipe must have per serving.
  ///
  /// * [double] maxFolate:
  ///   The maximum amount of folate in micrograms the recipe can have per serving.
  ///
  /// * [double] minFolicAcid:
  ///   The minimum amount of folic acid in micrograms the recipe must have per serving.
  ///
  /// * [double] maxFolicAcid:
  ///   The maximum amount of folic acid in micrograms the recipe can have per serving.
  ///
  /// * [double] minIodine:
  ///   The minimum amount of iodine in micrograms the recipe must have per serving.
  ///
  /// * [double] maxIodine:
  ///   The maximum amount of iodine in micrograms the recipe can have per serving.
  ///
  /// * [double] minIron:
  ///   The minimum amount of iron in milligrams the recipe must have per serving.
  ///
  /// * [double] maxIron:
  ///   The maximum amount of iron in milligrams the recipe can have per serving.
  ///
  /// * [double] minZinc:
  ///   The minimum amount of zinc in milligrams the recipe must have per serving.
  ///
  /// * [double] maxZinc:
  ///   The maximum amount of zinc in milligrams the recipe can have per serving.
  ///
  /// * [double] minMagnesium:
  ///   The minimum amount of magnesium in milligrams the recipe must have per serving.
  ///
  /// * [double] maxMagnesium:
  ///   The maximum amount of magnesium in milligrams the recipe can have per serving.
  ///
  /// * [double] minManganese:
  ///   The minimum amount of manganese in milligrams the recipe must have per serving.
  ///
  /// * [double] maxManganese:
  ///   The maximum amount of manganese in milligrams the recipe can have per serving.
  ///
  /// * [double] minPhosphorus:
  ///   The minimum amount of phosphorus in milligrams the recipe must have per serving.
  ///
  /// * [double] maxPhosphorus:
  ///   The maximum amount of phosphorus in milligrams the recipe can have per serving.
  ///
  /// * [double] minPotassium:
  ///   The minimum amount of potassium in milligrams the recipe must have per serving.
  ///
  /// * [double] maxPotassium:
  ///   The maximum amount of potassium in milligrams the recipe can have per serving.
  ///
  /// * [double] minSodium:
  ///   The minimum amount of sodium in milligrams the recipe must have per serving.
  ///
  /// * [double] maxSodium:
  ///   The maximum amount of sodium in milligrams the recipe can have per serving.
  ///
  /// * [double] minSelenium:
  ///   The minimum amount of selenium in micrograms the recipe must have per serving.
  ///
  /// * [double] maxSelenium:
  ///   The maximum amount of selenium in micrograms the recipe can have per serving.
  ///
  /// * [double] minCopper:
  ///   The minimum amount of copper in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCopper:
  ///   The maximum amount of copper in milligrams the recipe can have per serving.
  ///
  /// * [double] minCalcium:
  ///   The minimum amount of calcium in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCalcium:
  ///   The maximum amount of calcium in milligrams the recipe can have per serving.
  ///
  /// * [double] minCholine:
  ///   The minimum amount of choline in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCholine:
  ///   The maximum amount of choline in milligrams the recipe can have per serving.
  ///
  /// * [double] minCholesterol:
  ///   The minimum amount of cholesterol in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCholesterol:
  ///   The maximum amount of cholesterol in milligrams the recipe can have per serving.
  ///
  /// * [double] minFluoride:
  ///   The minimum amount of fluoride in milligrams the recipe must have per serving.
  ///
  /// * [double] maxFluoride:
  ///   The maximum amount of fluoride in milligrams the recipe can have per serving.
  ///
  /// * [double] minAlcohol:
  ///   The minimum amount of alcohol in grams the recipe must have per serving.
  ///
  /// * [double] maxAlcohol:
  ///   The maximum amount of alcohol in grams the recipe can have per serving.
  ///
  /// * [double] minCaffeine:
  ///   The minimum amount of caffeine in milligrams the recipe must have per serving.
  ///
  /// * [double] maxCaffeine:
  ///   The maximum amount of caffeine in milligrams the recipe can have per serving.
  ///
  /// * [double] minSaturatedFat:
  ///   The minimum amount of saturated fat in grams the recipe must have per serving.
  ///
  /// * [double] maxSaturatedFat:
  ///   The maximum amount of saturated fat in grams the recipe can have per serving.
  ///
  /// * [double] minVitaminA:
  ///   The minimum amount of Vitamin A in IU the recipe must have per serving.
  ///
  /// * [double] maxVitaminA:
  ///   The maximum amount of Vitamin A in IU the recipe can have per serving.
  ///
  /// * [double] minVitaminC:
  ///   The minimum amount of Vitamin C in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminC:
  ///   The maximum amount of Vitamin C in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminD:
  ///   The minimum amount of Vitamin D in micrograms the recipe must have per serving.
  ///
  /// * [double] maxVitaminD:
  ///   The maximum amount of Vitamin D in micrograms the recipe can have per serving.
  ///
  /// * [double] minVitaminE:
  ///   The minimum amount of Vitamin E in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminE:
  ///   The maximum amount of Vitamin E in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminK:
  ///   The minimum amount of Vitamin K in micrograms the recipe must have per serving.
  ///
  /// * [double] maxVitaminK:
  ///   The maximum amount of Vitamin K in micrograms the recipe can have per serving.
  ///
  /// * [double] minVitaminB1:
  ///   The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB1:
  ///   The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB2:
  ///   The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB2:
  ///   The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB3:
  ///   The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB3:
  ///   The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB5:
  ///   The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB5:
  ///   The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB6:
  ///   The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB6:
  ///   The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
  ///
  /// * [double] minVitaminB12:
  ///   The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
  ///
  /// * [double] maxVitaminB12:
  ///   The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
  ///
  /// * [String] sort:
  ///   The strategy to sort recipes by. See a full list of supported sorting options.
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending (ASC or DESC).
  ///
  /// * [int] offset:
  ///   The number of recipes to skip, between 0 and 900.
  ///
  /// * [int] number:
  ///   The number of recipes, between 1 and 100.
  Future<SearchRecipes200Response?> searchRecipes({ String? query, String? cuisines, String? excludeCuisines, String? mealType, String? diet, String? intolerances, String? equipment, String? includeIngredients, String? excludeIngredients, bool? fillIngredients, bool? addRecipeInformation, int? maxTime, int? minServings, int? maxServings, double? minCalories, double? maxCalories, double? minCarbs, double? maxCarbs, double? minProtein, double? maxProtein, double? minFat, double? maxFat, double? minSugar, double? maxSugar, double? minFiber, double? maxFiber, double? minFolate, double? maxFolate, double? minFolicAcid, double? maxFolicAcid, double? minIodine, double? maxIodine, double? minIron, double? maxIron, double? minZinc, double? maxZinc, double? minMagnesium, double? maxMagnesium, double? minManganese, double? maxManganese, double? minPhosphorus, double? maxPhosphorus, double? minPotassium, double? maxPotassium, double? minSodium, double? maxSodium, double? minSelenium, double? maxSelenium, double? minCopper, double? maxCopper, double? minCalcium, double? maxCalcium, double? minCholine, double? maxCholine, double? minCholesterol, double? maxCholesterol, double? minFluoride, double? maxFluoride, double? minAlcohol, double? maxAlcohol, double? minCaffeine, double? maxCaffeine, double? minSaturatedFat, double? maxSaturatedFat, double? minVitaminA, double? maxVitaminA, double? minVitaminC, double? maxVitaminC, double? minVitaminD, double? maxVitaminD, double? minVitaminE, double? maxVitaminE, double? minVitaminK, double? maxVitaminK, double? minVitaminB1, double? maxVitaminB1, double? minVitaminB2, double? maxVitaminB2, double? minVitaminB3, double? maxVitaminB3, double? minVitaminB5, double? maxVitaminB5, double? minVitaminB6, double? maxVitaminB6, double? minVitaminB12, double? maxVitaminB12, String? sort, String? sortDirection, int? offset, int? number, }) async {
    final response = await searchRecipesWithHttpInfo( query: query, cuisines: cuisines, excludeCuisines: excludeCuisines, mealType: mealType, diet: diet, intolerances: intolerances, equipment: equipment, includeIngredients: includeIngredients, excludeIngredients: excludeIngredients, fillIngredients: fillIngredients, addRecipeInformation: addRecipeInformation, maxTime: maxTime, minServings: minServings, maxServings: maxServings, minCalories: minCalories, maxCalories: maxCalories, minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minFat: minFat, maxFat: maxFat, minSugar: minSugar, maxSugar: maxSugar, minFiber: minFiber, maxFiber: maxFiber, minFolate: minFolate, maxFolate: maxFolate, minFolicAcid: minFolicAcid, maxFolicAcid: maxFolicAcid, minIodine: minIodine, maxIodine: maxIodine, minIron: minIron, maxIron: maxIron, minZinc: minZinc, maxZinc: maxZinc, minMagnesium: minMagnesium, maxMagnesium: maxMagnesium, minManganese: minManganese, maxManganese: maxManganese, minPhosphorus: minPhosphorus, maxPhosphorus: maxPhosphorus, minPotassium: minPotassium, maxPotassium: maxPotassium, minSodium: minSodium, maxSodium: maxSodium, minSelenium: minSelenium, maxSelenium: maxSelenium, minCopper: minCopper, maxCopper: maxCopper, minCalcium: minCalcium, maxCalcium: maxCalcium, minCholine: minCholine, maxCholine: maxCholine, minCholesterol: minCholesterol, maxCholesterol: maxCholesterol, minFluoride: minFluoride, maxFluoride: maxFluoride, minAlcohol: minAlcohol, maxAlcohol: maxAlcohol, minCaffeine: minCaffeine, maxCaffeine: maxCaffeine, minSaturatedFat: minSaturatedFat, maxSaturatedFat: maxSaturatedFat, minVitaminA: minVitaminA, maxVitaminA: maxVitaminA, minVitaminC: minVitaminC, maxVitaminC: maxVitaminC, minVitaminD: minVitaminD, maxVitaminD: maxVitaminD, minVitaminE: minVitaminE, maxVitaminE: maxVitaminE, minVitaminK: minVitaminK, maxVitaminK: maxVitaminK, minVitaminB1: minVitaminB1, maxVitaminB1: maxVitaminB1, minVitaminB2: minVitaminB2, maxVitaminB2: maxVitaminB2, minVitaminB3: minVitaminB3, maxVitaminB3: maxVitaminB3, minVitaminB5: minVitaminB5, maxVitaminB5: maxVitaminB5, minVitaminB6: minVitaminB6, maxVitaminB6: maxVitaminB6, minVitaminB12: minVitaminB12, maxVitaminB12: maxVitaminB12, sort: sort, sortDirection: sortDirection, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchRecipes200Response',) as SearchRecipes200Response;
    
    }
    return null;
  }

  /// Search Restaurants
  ///
  /// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [double] lat (required):
  ///   The latitude to search around.
  ///
  /// * [double] lon (required):
  ///   The longitude to search around.
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [int] distance:
  ///   The maximum distance of the restaurant in miles around the given location.
  ///
  /// * [double] budget:
  ///   The budget in USD for the meal.
  ///
  /// * [double] minRating:
  ///   The minimum rating of the restaurants in range [0,5].
  ///
  /// * [String] cuisine:
  ///   The cuisine that the restaurants should support.
  ///
  /// * [bool] isOpen:
  ///   Whether the restaurants have to be open now.
  ///
  /// * [int] page:
  ///   The page of the results.
  ///
  /// * [String] sort:
  ///   The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
  Future<Response> searchRestaurantsWithHttpInfo(double lat, double lon, { String? query, int? distance, double? budget, double? minRating, String? cuisine, bool? isOpen, int? page, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-restaurants';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
      queryParams.addAll(_queryParams('', 'lat', lat));
      queryParams.addAll(_queryParams('', 'lon', lon));
    if (distance != null) {
      queryParams.addAll(_queryParams('', 'distance', distance));
    }
    if (budget != null) {
      queryParams.addAll(_queryParams('', 'budget', budget));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (cuisine != null) {
      queryParams.addAll(_queryParams('', 'cuisine', cuisine));
    }
    if (isOpen != null) {
      queryParams.addAll(_queryParams('', 'is-open', isOpen));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Restaurants
  ///
  /// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
  ///
  /// Parameters:
  ///
  /// * [double] lat (required):
  ///   The latitude to search around.
  ///
  /// * [double] lon (required):
  ///   The longitude to search around.
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [int] distance:
  ///   The maximum distance of the restaurant in miles around the given location.
  ///
  /// * [double] budget:
  ///   The budget in USD for the meal.
  ///
  /// * [double] minRating:
  ///   The minimum rating of the restaurants in range [0,5].
  ///
  /// * [String] cuisine:
  ///   The cuisine that the restaurants should support.
  ///
  /// * [bool] isOpen:
  ///   Whether the restaurants have to be open now.
  ///
  /// * [int] page:
  ///   The page of the results.
  ///
  /// * [String] sort:
  ///   The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
  Future<SearchRestaurants200Response?> searchRestaurants(double lat, double lon, { String? query, int? distance, double? budget, double? minRating, String? cuisine, bool? isOpen, int? page, String? sort, }) async {
    final response = await searchRestaurantsWithHttpInfo(lat, lon,  query: query, distance: distance, budget: budget, minRating: minRating, cuisine: cuisine, isOpen: isOpen, page: page, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchRestaurants200Response',) as SearchRestaurants200Response;
    
    }
    return null;
  }
}
