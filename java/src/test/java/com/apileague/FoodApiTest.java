/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.ComputeNutrition200Response;
import com.apileague.client.model.RetrieveRecipeInformation200Response;
import com.apileague.client.model.SearchDrinks200Response;
import com.apileague.client.model.SearchRecipes200Response;
import com.apileague.client.model.SearchRestaurants200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for FoodApi
 */
@Disabled
public class FoodApiTest {

    private final FoodApi api = new FoodApi();

    /**
     * Compute Nutrition
     *
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void computeNutritionTest() throws ApiException {
        String ingredients = null;
        Integer servings = null;
        Boolean reduceOils = null;
        ComputeNutrition200Response response = api.computeNutrition(ingredients, servings, reduceOils);
        // TODO: test validations
    }

    /**
     * Retrieve Recipe Information
     *
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void retrieveRecipeInformationTest() throws ApiException {
        Integer id = null;
        Boolean addWinePairing = null;
        RetrieveRecipeInformation200Response response = api.retrieveRecipeInformation(id, addWinePairing);
        // TODO: test validations
    }

    /**
     * Search Drinks
     *
     * Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchDrinksTest() throws ApiException {
        String query = null;
        String glassTypes = null;
        String flavors = null;
        String diet = null;
        String includeIngredients = null;
        String excludeIngredients = null;
        Double minCalories = null;
        Double maxCalories = null;
        Double minCarbs = null;
        Double maxCarbs = null;
        Double minProtein = null;
        Double maxProtein = null;
        Double minFat = null;
        Double maxFat = null;
        Double minAlcoholPercent = null;
        Double maxAlcoholPercent = null;
        Double minCaffeine = null;
        Double maxCaffeine = null;
        String sort = null;
        String sortDirection = null;
        Integer offset = null;
        Integer number = null;
        SearchDrinks200Response response = api.searchDrinks(query, glassTypes, flavors, diet, includeIngredients, excludeIngredients, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minAlcoholPercent, maxAlcoholPercent, minCaffeine, maxCaffeine, sort, sortDirection, offset, number);
        // TODO: test validations
    }

    /**
     * Search Recipes
     *
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchRecipesTest() throws ApiException {
        String query = null;
        String cuisines = null;
        String excludeCuisines = null;
        String mealType = null;
        String diet = null;
        String intolerances = null;
        String equipment = null;
        String includeIngredients = null;
        String excludeIngredients = null;
        Boolean fillIngredients = null;
        Boolean addRecipeInformation = null;
        Integer maxTime = null;
        Integer minServings = null;
        Integer maxServings = null;
        Double minCalories = null;
        Double maxCalories = null;
        Double minCarbs = null;
        Double maxCarbs = null;
        Double minProtein = null;
        Double maxProtein = null;
        Double minFat = null;
        Double maxFat = null;
        Double minSugar = null;
        Double maxSugar = null;
        Double minFiber = null;
        Double maxFiber = null;
        Double minFolate = null;
        Double maxFolate = null;
        Double minFolicAcid = null;
        Double maxFolicAcid = null;
        Double minIodine = null;
        Double maxIodine = null;
        Double minIron = null;
        Double maxIron = null;
        Double minZinc = null;
        Double maxZinc = null;
        Double minMagnesium = null;
        Double maxMagnesium = null;
        Double minManganese = null;
        Double maxManganese = null;
        Double minPhosphorus = null;
        Double maxPhosphorus = null;
        Double minPotassium = null;
        Double maxPotassium = null;
        Double minSodium = null;
        Double maxSodium = null;
        Double minSelenium = null;
        Double maxSelenium = null;
        Double minCopper = null;
        Double maxCopper = null;
        Double minCalcium = null;
        Double maxCalcium = null;
        Double minCholine = null;
        Double maxCholine = null;
        Double minCholesterol = null;
        Double maxCholesterol = null;
        Double minFluoride = null;
        Double maxFluoride = null;
        Double minAlcohol = null;
        Double maxAlcohol = null;
        Double minCaffeine = null;
        Double maxCaffeine = null;
        Double minSaturatedFat = null;
        Double maxSaturatedFat = null;
        Double minVitaminA = null;
        Double maxVitaminA = null;
        Double minVitaminC = null;
        Double maxVitaminC = null;
        Double minVitaminD = null;
        Double maxVitaminD = null;
        Double minVitaminE = null;
        Double maxVitaminE = null;
        Double minVitaminK = null;
        Double maxVitaminK = null;
        Double minVitaminB1 = null;
        Double maxVitaminB1 = null;
        Double minVitaminB2 = null;
        Double maxVitaminB2 = null;
        Double minVitaminB3 = null;
        Double maxVitaminB3 = null;
        Double minVitaminB5 = null;
        Double maxVitaminB5 = null;
        Double minVitaminB6 = null;
        Double maxVitaminB6 = null;
        Double minVitaminB12 = null;
        Double maxVitaminB12 = null;
        String sort = null;
        String sortDirection = null;
        Integer offset = null;
        Integer number = null;
        SearchRecipes200Response response = api.searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number);
        // TODO: test validations
    }

    /**
     * Search Restaurants
     *
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchRestaurantsTest() throws ApiException {
        Double lat = null;
        Double lon = null;
        String query = null;
        Integer distance = null;
        Double budget = null;
        Double minRating = null;
        String cuisine = null;
        Boolean isOpen = null;
        Integer page = null;
        String sort = null;
        SearchRestaurants200Response response = api.searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort);
        // TODO: test validations
    }

}
