/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import ComputeNutrition200Response from '../model/ComputeNutrition200Response';
import RetrieveRecipeInformation200Response from '../model/RetrieveRecipeInformation200Response';
import SearchDrinks200Response from '../model/SearchDrinks200Response';
import SearchRecipes200Response from '../model/SearchRecipes200Response';
import SearchRestaurants200Response from '../model/SearchRestaurants200Response';

/**
* Food service.
* @module api/FoodApi
* @version 1.6.3
*/
export default class FoodApi {

    /**
    * Constructs a new FoodApi. 
    * @alias module:api/FoodApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the computeNutrition operation.
     * @callback module:api/FoodApi~computeNutritionCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ComputeNutrition200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Compute Nutrition
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * @param {String} ingredients A comma-separated list of the ingredients of the recipe.
     * @param {Object} opts Optional parameters
     * @param {Number} [servings] The number of servings the ingredients make. Nutrition is computed per serving.
     * @param {Boolean} [reduceOils] If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
     * @param {module:api/FoodApi~computeNutritionCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ComputeNutrition200Response}
     */
    computeNutrition(ingredients, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'ingredients' is set
      if (ingredients === undefined || ingredients === null) {
        throw new Error("Missing the required parameter 'ingredients' when calling computeNutrition");
      }

      let pathParams = {
      };
      let queryParams = {
        'ingredients': ingredients,
        'servings': opts['servings'],
        'reduce-oils': opts['reduceOils']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ComputeNutrition200Response;
      return this.apiClient.callApi(
        '/compute-nutrition', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the retrieveRecipeInformation operation.
     * @callback module:api/FoodApi~retrieveRecipeInformationCallback
     * @param {String} error Error message, if any.
     * @param {module:model/RetrieveRecipeInformation200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve Recipe Information
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * @param {Number} id The id of the recipe to retrieve.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [addWinePairing] Whether to pair a wine to the recipe.
     * @param {module:api/FoodApi~retrieveRecipeInformationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/RetrieveRecipeInformation200Response}
     */
    retrieveRecipeInformation(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling retrieveRecipeInformation");
      }

      let pathParams = {
      };
      let queryParams = {
        'id': id,
        'add-wine-pairing': opts['addWinePairing']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = RetrieveRecipeInformation200Response;
      return this.apiClient.callApi(
        '/retrieve-recipe', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchDrinks operation.
     * @callback module:api/FoodApi~searchDrinksCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchDrinks200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Drinks
     * Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
     * @param {Object} opts Optional parameters
     * @param {String} [query] The search query.
     * @param {String} [glassTypes] A comma-separated list (interpreted as OR) of glass types that the drink should be served in.
     * @param {String} [flavors] A comma-separated list (interpreted as AND) of dominant flavors in the drink.
     * @param {String} [diet] The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian.
     * @param {String} [includeIngredients] A comma-separated list of ingredients that should/must be used in the drinks.
     * @param {String} [excludeIngredients] A comma-separated list of ingredients or ingredient types that the drinks must not contain.
     * @param {Number} [minCalories] The minimum amount of calories the drink must have per serving.
     * @param {Number} [maxCalories] The maximum amount of calories the drink can have per serving.
     * @param {Number} [minCarbs] The minimum amount of carbohydrates in grams the drink must have per serving.
     * @param {Number} [maxCarbs] The maximum amount of carbohydrates in grams the drink can have per serving.
     * @param {Number} [minProtein] The minimum amount of protein in grams the drink must have per serving.
     * @param {Number} [maxProtein] The maximum amount of protein in grams the drink can have per serving.
     * @param {Number} [minFat] The minimum amount of fat in grams the drink must have per serving.
     * @param {Number} [maxFat] The maximum amount of fat in grams the drink can have per serving.
     * @param {Number} [minAlcoholPercent] The minimum alcohol percentage the drink must have.
     * @param {Number} [maxAlcoholPercent] The maximum alcohol percentage the drink can have.
     * @param {Number} [minCaffeine] The minimum amount of caffeine in milligrams the drink must have per serving.
     * @param {Number} [maxCaffeine] The maximum amount of caffeine in milligrams the drink can have per serving.
     * @param {String} [sort] The attribute by which to sort the drinks.
     * @param {String} [sortDirection] Whether to sort ascending or descending (ASC or DESC).
     * @param {Number} [offset] The number of drinks to skip, between 0 and 90.
     * @param {Number} [number] The number of drinks, between 1 and 10.
     * @param {module:api/FoodApi~searchDrinksCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchDrinks200Response}
     */
    searchDrinks(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'query': opts['query'],
        'glass-types': opts['glassTypes'],
        'flavors': opts['flavors'],
        'diet': opts['diet'],
        'include-ingredients': opts['includeIngredients'],
        'exclude-ingredients': opts['excludeIngredients'],
        'min-calories': opts['minCalories'],
        'max-calories': opts['maxCalories'],
        'min-carbs': opts['minCarbs'],
        'max-carbs': opts['maxCarbs'],
        'min-protein': opts['minProtein'],
        'max-protein': opts['maxProtein'],
        'min-fat': opts['minFat'],
        'max-fat': opts['maxFat'],
        'min-alcohol-percent': opts['minAlcoholPercent'],
        'max-alcohol-percent': opts['maxAlcoholPercent'],
        'min-caffeine': opts['minCaffeine'],
        'max-caffeine': opts['maxCaffeine'],
        'sort': opts['sort'],
        'sort-direction': opts['sortDirection'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchDrinks200Response;
      return this.apiClient.callApi(
        '/search-drinks', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchRecipes operation.
     * @callback module:api/FoodApi~searchRecipesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchRecipes200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Recipes
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * @param {Object} opts Optional parameters
     * @param {String} [query] The search query.
     * @param {String} [cuisines] The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as 'OR').
     * @param {String} [excludeCuisines] The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as 'AND').
     * @param {String} [mealType] The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
     * @param {String} [diet] The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
     * @param {String} [intolerances] A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
     * @param {String} [equipment] The equipment required. Multiple values will be interpreted as 'OR'.
     * @param {String} [includeIngredients] A comma-separated list of ingredients that should/must be used in the recipes.
     * @param {String} [excludeIngredients] A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @param {Boolean} [fillIngredients] Add information about the ingredients and whether they are used or missing in relation to the query.
     * @param {Boolean} [addRecipeInformation] If set to true, you get more information about the recipes returned.
     * @param {Number} [maxTime] The maximum time in minutes it should take to prepare and cook the recipe.
     * @param {Number} [minServings] The minimum amount of servings the recipe is for.
     * @param {Number} [maxServings] The maximum amount of servings the recipe is for.
     * @param {Number} [minCalories] The minimum amount of calories the recipe must have per serving.
     * @param {Number} [maxCalories] The maximum amount of calories the recipe can have per serving.
     * @param {Number} [minCarbs] The minimum amount of carbohydrates in grams the recipe must have per serving.
     * @param {Number} [maxCarbs] The maximum amount of carbohydrates in grams the recipe can have per serving.
     * @param {Number} [minProtein] The minimum amount of protein in grams the recipe must have per serving.
     * @param {Number} [maxProtein] The maximum amount of protein in grams the recipe can have per serving.
     * @param {Number} [minFat] The minimum amount of fat in grams the recipe must have per serving.
     * @param {Number} [maxFat] The maximum amount of fat in grams the recipe can have per serving.
     * @param {Number} [minSugar] The minimum amount of sugar in grams the recipe must have per serving.
     * @param {Number} [maxSugar] The maximum amount of sugar in grams the recipe can have per serving.
     * @param {Number} [minFiber] The minimum amount of fiber in grams the recipe must have per serving.
     * @param {Number} [maxFiber] The maximum amount of fiber in grams the recipe can have per serving.
     * @param {Number} [minFolate] The minimum amount of folate in micrograms the recipe must have per serving.
     * @param {Number} [maxFolate] The maximum amount of folate in micrograms the recipe can have per serving.
     * @param {Number} [minFolicAcid] The minimum amount of folic acid in micrograms the recipe must have per serving.
     * @param {Number} [maxFolicAcid] The maximum amount of folic acid in micrograms the recipe can have per serving.
     * @param {Number} [minIodine] The minimum amount of iodine in micrograms the recipe must have per serving.
     * @param {Number} [maxIodine] The maximum amount of iodine in micrograms the recipe can have per serving.
     * @param {Number} [minIron] The minimum amount of iron in milligrams the recipe must have per serving.
     * @param {Number} [maxIron] The maximum amount of iron in milligrams the recipe can have per serving.
     * @param {Number} [minZinc] The minimum amount of zinc in milligrams the recipe must have per serving.
     * @param {Number} [maxZinc] The maximum amount of zinc in milligrams the recipe can have per serving.
     * @param {Number} [minMagnesium] The minimum amount of magnesium in milligrams the recipe must have per serving.
     * @param {Number} [maxMagnesium] The maximum amount of magnesium in milligrams the recipe can have per serving.
     * @param {Number} [minManganese] The minimum amount of manganese in milligrams the recipe must have per serving.
     * @param {Number} [maxManganese] The maximum amount of manganese in milligrams the recipe can have per serving.
     * @param {Number} [minPhosphorus] The minimum amount of phosphorus in milligrams the recipe must have per serving.
     * @param {Number} [maxPhosphorus] The maximum amount of phosphorus in milligrams the recipe can have per serving.
     * @param {Number} [minPotassium] The minimum amount of potassium in milligrams the recipe must have per serving.
     * @param {Number} [maxPotassium] The maximum amount of potassium in milligrams the recipe can have per serving.
     * @param {Number} [minSodium] The minimum amount of sodium in milligrams the recipe must have per serving.
     * @param {Number} [maxSodium] The maximum amount of sodium in milligrams the recipe can have per serving.
     * @param {Number} [minSelenium] The minimum amount of selenium in micrograms the recipe must have per serving.
     * @param {Number} [maxSelenium] The maximum amount of selenium in micrograms the recipe can have per serving.
     * @param {Number} [minCopper] The minimum amount of copper in milligrams the recipe must have per serving.
     * @param {Number} [maxCopper] The maximum amount of copper in milligrams the recipe can have per serving.
     * @param {Number} [minCalcium] The minimum amount of calcium in milligrams the recipe must have per serving.
     * @param {Number} [maxCalcium] The maximum amount of calcium in milligrams the recipe can have per serving.
     * @param {Number} [minCholine] The minimum amount of choline in milligrams the recipe must have per serving.
     * @param {Number} [maxCholine] The maximum amount of choline in milligrams the recipe can have per serving.
     * @param {Number} [minCholesterol] The minimum amount of cholesterol in milligrams the recipe must have per serving.
     * @param {Number} [maxCholesterol] The maximum amount of cholesterol in milligrams the recipe can have per serving.
     * @param {Number} [minFluoride] The minimum amount of fluoride in milligrams the recipe must have per serving.
     * @param {Number} [maxFluoride] The maximum amount of fluoride in milligrams the recipe can have per serving.
     * @param {Number} [minAlcohol] The minimum amount of alcohol in grams the recipe must have per serving.
     * @param {Number} [maxAlcohol] The maximum amount of alcohol in grams the recipe can have per serving.
     * @param {Number} [minCaffeine] The minimum amount of caffeine in milligrams the recipe must have per serving.
     * @param {Number} [maxCaffeine] The maximum amount of caffeine in milligrams the recipe can have per serving.
     * @param {Number} [minSaturatedFat] The minimum amount of saturated fat in grams the recipe must have per serving.
     * @param {Number} [maxSaturatedFat] The maximum amount of saturated fat in grams the recipe can have per serving.
     * @param {Number} [minVitaminA] The minimum amount of Vitamin A in IU the recipe must have per serving.
     * @param {Number} [maxVitaminA] The maximum amount of Vitamin A in IU the recipe can have per serving.
     * @param {Number} [minVitaminC] The minimum amount of Vitamin C in milligrams the recipe must have per serving.
     * @param {Number} [maxVitaminC] The maximum amount of Vitamin C in milligrams the recipe can have per serving.
     * @param {Number} [minVitaminD] The minimum amount of Vitamin D in micrograms the recipe must have per serving.
     * @param {Number} [maxVitaminD] The maximum amount of Vitamin D in micrograms the recipe can have per serving.
     * @param {Number} [minVitaminE] The minimum amount of Vitamin E in milligrams the recipe must have per serving.
     * @param {Number} [maxVitaminE] The maximum amount of Vitamin E in milligrams the recipe can have per serving.
     * @param {Number} [minVitaminK] The minimum amount of Vitamin K in micrograms the recipe must have per serving.
     * @param {Number} [maxVitaminK] The maximum amount of Vitamin K in micrograms the recipe can have per serving.
     * @param {Number} [minVitaminB1] The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
     * @param {Number} [maxVitaminB1] The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
     * @param {Number} [minVitaminB2] The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
     * @param {Number} [maxVitaminB2] The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
     * @param {Number} [minVitaminB3] The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
     * @param {Number} [maxVitaminB3] The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
     * @param {Number} [minVitaminB5] The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
     * @param {Number} [maxVitaminB5] The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
     * @param {Number} [minVitaminB6] The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
     * @param {Number} [maxVitaminB6] The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
     * @param {Number} [minVitaminB12] The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
     * @param {Number} [maxVitaminB12] The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
     * @param {String} [sort] The strategy to sort recipes by.
     * @param {String} [sortDirection] Whether to sort ascending or descending (ASC or DESC).
     * @param {Number} [offset] The number of recipes to skip, between 0 and 900.
     * @param {Number} [number] The number of recipes, between 1 and 100.
     * @param {module:api/FoodApi~searchRecipesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchRecipes200Response}
     */
    searchRecipes(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'query': opts['query'],
        'cuisines': opts['cuisines'],
        'exclude-cuisines': opts['excludeCuisines'],
        'meal-type': opts['mealType'],
        'diet': opts['diet'],
        'intolerances': opts['intolerances'],
        'equipment': opts['equipment'],
        'include-ingredients': opts['includeIngredients'],
        'exclude-ingredients': opts['excludeIngredients'],
        'fill-ingredients': opts['fillIngredients'],
        'add-recipe-information': opts['addRecipeInformation'],
        'max-time': opts['maxTime'],
        'min-servings': opts['minServings'],
        'max-servings': opts['maxServings'],
        'min-calories': opts['minCalories'],
        'max-calories': opts['maxCalories'],
        'min-carbs': opts['minCarbs'],
        'max-carbs': opts['maxCarbs'],
        'min-protein': opts['minProtein'],
        'max-protein': opts['maxProtein'],
        'min-fat': opts['minFat'],
        'max-fat': opts['maxFat'],
        'min-sugar': opts['minSugar'],
        'max-sugar': opts['maxSugar'],
        'min-fiber': opts['minFiber'],
        'max-fiber': opts['maxFiber'],
        'min-folate': opts['minFolate'],
        'max-folate': opts['maxFolate'],
        'min-folic-acid': opts['minFolicAcid'],
        'max-folic-acid': opts['maxFolicAcid'],
        'min-iodine': opts['minIodine'],
        'max-iodine': opts['maxIodine'],
        'min-iron': opts['minIron'],
        'max-iron': opts['maxIron'],
        'min-zinc': opts['minZinc'],
        'max-zinc': opts['maxZinc'],
        'min-magnesium': opts['minMagnesium'],
        'max-magnesium': opts['maxMagnesium'],
        'min-manganese': opts['minManganese'],
        'max-manganese': opts['maxManganese'],
        'min-phosphorus': opts['minPhosphorus'],
        'max-phosphorus': opts['maxPhosphorus'],
        'min-potassium': opts['minPotassium'],
        'max-potassium': opts['maxPotassium'],
        'min-sodium': opts['minSodium'],
        'max-sodium': opts['maxSodium'],
        'min-selenium': opts['minSelenium'],
        'max-selenium': opts['maxSelenium'],
        'min-copper': opts['minCopper'],
        'max-copper': opts['maxCopper'],
        'min-calcium': opts['minCalcium'],
        'max-calcium': opts['maxCalcium'],
        'min-choline': opts['minCholine'],
        'max-choline': opts['maxCholine'],
        'min-cholesterol': opts['minCholesterol'],
        'max-cholesterol': opts['maxCholesterol'],
        'min-fluoride': opts['minFluoride'],
        'max-fluoride': opts['maxFluoride'],
        'min-alcohol': opts['minAlcohol'],
        'max-alcohol': opts['maxAlcohol'],
        'min-caffeine': opts['minCaffeine'],
        'max-caffeine': opts['maxCaffeine'],
        'min-saturated-fat': opts['minSaturatedFat'],
        'max-saturated-fat': opts['maxSaturatedFat'],
        'min-vitamin-a': opts['minVitaminA'],
        'max-vitamin-a': opts['maxVitaminA'],
        'min-vitamin-c': opts['minVitaminC'],
        'max-vitamin-c': opts['maxVitaminC'],
        'min-vitamin-d': opts['minVitaminD'],
        'max-vitamin-d': opts['maxVitaminD'],
        'min-vitamin-e': opts['minVitaminE'],
        'max-vitamin-e': opts['maxVitaminE'],
        'min-vitamin-k': opts['minVitaminK'],
        'max-vitamin-k': opts['maxVitaminK'],
        'min-vitamin-b1': opts['minVitaminB1'],
        'max-vitamin-b1': opts['maxVitaminB1'],
        'min-vitamin-b2': opts['minVitaminB2'],
        'max-vitamin-b2': opts['maxVitaminB2'],
        'min-vitamin-b3': opts['minVitaminB3'],
        'max-vitamin-b3': opts['maxVitaminB3'],
        'min-vitamin-b5': opts['minVitaminB5'],
        'max-vitamin-b5': opts['maxVitaminB5'],
        'min-vitamin-b6': opts['minVitaminB6'],
        'max-vitamin-b6': opts['maxVitaminB6'],
        'min-vitamin-b12': opts['minVitaminB12'],
        'max-vitamin-b12': opts['maxVitaminB12'],
        'sort': opts['sort'],
        'sort-direction': opts['sortDirection'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchRecipes200Response;
      return this.apiClient.callApi(
        '/search-recipes', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchRestaurants operation.
     * @callback module:api/FoodApi~searchRestaurantsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchRestaurants200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Restaurants
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * @param {Number} lat The latitude to search around.
     * @param {Number} lon The longitude to search around.
     * @param {Object} opts Optional parameters
     * @param {String} [query] The search query.
     * @param {Number} [distance] The maximum distance of the restaurant in miles around the given location.
     * @param {Number} [budget] The budget in USD for the meal.
     * @param {Number} [minRating] The minimum rating of the restaurants in range [0,5].
     * @param {String} [cuisine] The cuisine that the restaurants should support.
     * @param {Boolean} [isOpen] Whether the restaurants have to be open now.
     * @param {Number} [page] The page of the results.
     * @param {String} [sort] The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
     * @param {module:api/FoodApi~searchRestaurantsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchRestaurants200Response}
     */
    searchRestaurants(lat, lon, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'lat' is set
      if (lat === undefined || lat === null) {
        throw new Error("Missing the required parameter 'lat' when calling searchRestaurants");
      }
      // verify the required parameter 'lon' is set
      if (lon === undefined || lon === null) {
        throw new Error("Missing the required parameter 'lon' when calling searchRestaurants");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': opts['query'],
        'lat': lat,
        'lon': lon,
        'distance': opts['distance'],
        'budget': opts['budget'],
        'min-rating': opts['minRating'],
        'cuisine': opts['cuisine'],
        'is-open': opts['isOpen'],
        'page': opts['page'],
        'sort': opts['sort']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchRestaurants200Response;
      return this.apiClient.callApi(
        '/search-restaurants', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
