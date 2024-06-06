package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ComputeNutrition200Response
import org.openapitools.model.RetrieveRecipeInformation200Response
import org.openapitools.model.SearchRecipes200Response
import org.openapitools.model.SearchRestaurants200Response

class FoodApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def computeNutrition ( String ingredients, Integer servings, Boolean reduceOils, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/compute-nutrition"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ingredients == null) {
            throw new RuntimeException("missing required params ingredients")
        }

        if (ingredients != null) {
            queryParams.put("ingredients", ingredients)
        }
        if (servings != null) {
            queryParams.put("servings", servings)
        }
        if (reduceOils != null) {
            queryParams.put("reduce-oils", reduceOils)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ComputeNutrition200Response.class )

    }

    def retrieveRecipeInformation ( Integer id, Boolean addWinePairing, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retrieve-recipe"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (id != null) {
            queryParams.put("id", id)
        }
        if (addWinePairing != null) {
            queryParams.put("add-wine-pairing", addWinePairing)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RetrieveRecipeInformation200Response.class )

    }

    def searchRecipes ( String query, String cuisines, String excludeCuisines, String mealType, String diet, String intolerances, String equipment, String includeIngredients, String excludeIngredients, Boolean fillIngredients, Boolean addRecipeInformation, Integer maxTime, Integer minServings, Integer maxServings, Double minCalories, Double maxCalories, Double minCarbs, Double maxCarbs, Double minProtein, Double maxProtein, Double minFat, Double maxFat, Double minSugar, Double maxSugar, Double minFiber, Double maxFiber, Double minFolate, Double maxFolate, Double minFolicAcid, Double maxFolicAcid, Double minIodine, Double maxIodine, Double minIron, Double maxIron, Double minZinc, Double maxZinc, Double minMagnesium, Double maxMagnesium, Double minManganese, Double maxManganese, Double minPhosphorus, Double maxPhosphorus, Double minPotassium, Double maxPotassium, Double minSodium, Double maxSodium, Double minSelenium, Double maxSelenium, Double minCopper, Double maxCopper, Double minCalcium, Double maxCalcium, Double minCholine, Double maxCholine, Double minCholesterol, Double maxCholesterol, Double minFluoride, Double maxFluoride, Double minAlcohol, Double maxAlcohol, Double minCaffeine, Double maxCaffeine, Double minSaturatedFat, Double maxSaturatedFat, Double minVitaminA, Double maxVitaminA, Double minVitaminC, Double maxVitaminC, Double minVitaminD, Double maxVitaminD, Double minVitaminE, Double maxVitaminE, Double minVitaminK, Double maxVitaminK, Double minVitaminB1, Double maxVitaminB1, Double minVitaminB2, Double maxVitaminB2, Double minVitaminB3, Double maxVitaminB3, Double minVitaminB5, Double maxVitaminB5, Double minVitaminB6, Double maxVitaminB6, Double minVitaminB12, Double maxVitaminB12, String sort, String sortDirection, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-recipes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (cuisines != null) {
            queryParams.put("cuisines", cuisines)
        }
        if (excludeCuisines != null) {
            queryParams.put("exclude-cuisines", excludeCuisines)
        }
        if (mealType != null) {
            queryParams.put("meal-type", mealType)
        }
        if (diet != null) {
            queryParams.put("diet", diet)
        }
        if (intolerances != null) {
            queryParams.put("intolerances", intolerances)
        }
        if (equipment != null) {
            queryParams.put("equipment", equipment)
        }
        if (includeIngredients != null) {
            queryParams.put("include-ingredients", includeIngredients)
        }
        if (excludeIngredients != null) {
            queryParams.put("exclude-ingredients", excludeIngredients)
        }
        if (fillIngredients != null) {
            queryParams.put("fill-ingredients", fillIngredients)
        }
        if (addRecipeInformation != null) {
            queryParams.put("add-recipe-information", addRecipeInformation)
        }
        if (maxTime != null) {
            queryParams.put("max-time", maxTime)
        }
        if (minServings != null) {
            queryParams.put("min-servings", minServings)
        }
        if (maxServings != null) {
            queryParams.put("max-servings", maxServings)
        }
        if (minCalories != null) {
            queryParams.put("min-calories", minCalories)
        }
        if (maxCalories != null) {
            queryParams.put("max-calories", maxCalories)
        }
        if (minCarbs != null) {
            queryParams.put("min-carbs", minCarbs)
        }
        if (maxCarbs != null) {
            queryParams.put("max-carbs", maxCarbs)
        }
        if (minProtein != null) {
            queryParams.put("min-protein", minProtein)
        }
        if (maxProtein != null) {
            queryParams.put("max-protein", maxProtein)
        }
        if (minFat != null) {
            queryParams.put("min-fat", minFat)
        }
        if (maxFat != null) {
            queryParams.put("max-fat", maxFat)
        }
        if (minSugar != null) {
            queryParams.put("min-sugar", minSugar)
        }
        if (maxSugar != null) {
            queryParams.put("max-sugar", maxSugar)
        }
        if (minFiber != null) {
            queryParams.put("min-fiber", minFiber)
        }
        if (maxFiber != null) {
            queryParams.put("max-fiber", maxFiber)
        }
        if (minFolate != null) {
            queryParams.put("min-folate", minFolate)
        }
        if (maxFolate != null) {
            queryParams.put("max-folate", maxFolate)
        }
        if (minFolicAcid != null) {
            queryParams.put("min-folic-acid", minFolicAcid)
        }
        if (maxFolicAcid != null) {
            queryParams.put("max-folic-acid", maxFolicAcid)
        }
        if (minIodine != null) {
            queryParams.put("min-iodine", minIodine)
        }
        if (maxIodine != null) {
            queryParams.put("max-iodine", maxIodine)
        }
        if (minIron != null) {
            queryParams.put("min-iron", minIron)
        }
        if (maxIron != null) {
            queryParams.put("max-iron", maxIron)
        }
        if (minZinc != null) {
            queryParams.put("min-zinc", minZinc)
        }
        if (maxZinc != null) {
            queryParams.put("max-zinc", maxZinc)
        }
        if (minMagnesium != null) {
            queryParams.put("min-magnesium", minMagnesium)
        }
        if (maxMagnesium != null) {
            queryParams.put("max-magnesium", maxMagnesium)
        }
        if (minManganese != null) {
            queryParams.put("min-manganese", minManganese)
        }
        if (maxManganese != null) {
            queryParams.put("max-manganese", maxManganese)
        }
        if (minPhosphorus != null) {
            queryParams.put("min-phosphorus", minPhosphorus)
        }
        if (maxPhosphorus != null) {
            queryParams.put("max-phosphorus", maxPhosphorus)
        }
        if (minPotassium != null) {
            queryParams.put("min-potassium", minPotassium)
        }
        if (maxPotassium != null) {
            queryParams.put("max-potassium", maxPotassium)
        }
        if (minSodium != null) {
            queryParams.put("min-sodium", minSodium)
        }
        if (maxSodium != null) {
            queryParams.put("max-sodium", maxSodium)
        }
        if (minSelenium != null) {
            queryParams.put("min-selenium", minSelenium)
        }
        if (maxSelenium != null) {
            queryParams.put("max-selenium", maxSelenium)
        }
        if (minCopper != null) {
            queryParams.put("min-copper", minCopper)
        }
        if (maxCopper != null) {
            queryParams.put("max-copper", maxCopper)
        }
        if (minCalcium != null) {
            queryParams.put("min-calcium", minCalcium)
        }
        if (maxCalcium != null) {
            queryParams.put("max-calcium", maxCalcium)
        }
        if (minCholine != null) {
            queryParams.put("min-choline", minCholine)
        }
        if (maxCholine != null) {
            queryParams.put("max-choline", maxCholine)
        }
        if (minCholesterol != null) {
            queryParams.put("min-cholesterol", minCholesterol)
        }
        if (maxCholesterol != null) {
            queryParams.put("max-cholesterol", maxCholesterol)
        }
        if (minFluoride != null) {
            queryParams.put("min-fluoride", minFluoride)
        }
        if (maxFluoride != null) {
            queryParams.put("max-fluoride", maxFluoride)
        }
        if (minAlcohol != null) {
            queryParams.put("min-alcohol", minAlcohol)
        }
        if (maxAlcohol != null) {
            queryParams.put("max-alcohol", maxAlcohol)
        }
        if (minCaffeine != null) {
            queryParams.put("min-caffeine", minCaffeine)
        }
        if (maxCaffeine != null) {
            queryParams.put("max-caffeine", maxCaffeine)
        }
        if (minSaturatedFat != null) {
            queryParams.put("min-saturated-fat", minSaturatedFat)
        }
        if (maxSaturatedFat != null) {
            queryParams.put("max-saturated-fat", maxSaturatedFat)
        }
        if (minVitaminA != null) {
            queryParams.put("min-vitamin-a", minVitaminA)
        }
        if (maxVitaminA != null) {
            queryParams.put("max-vitamin-a", maxVitaminA)
        }
        if (minVitaminC != null) {
            queryParams.put("min-vitamin-c", minVitaminC)
        }
        if (maxVitaminC != null) {
            queryParams.put("max-vitamin-c", maxVitaminC)
        }
        if (minVitaminD != null) {
            queryParams.put("min-vitamin-d", minVitaminD)
        }
        if (maxVitaminD != null) {
            queryParams.put("max-vitamin-d", maxVitaminD)
        }
        if (minVitaminE != null) {
            queryParams.put("min-vitamin-e", minVitaminE)
        }
        if (maxVitaminE != null) {
            queryParams.put("max-vitamin-e", maxVitaminE)
        }
        if (minVitaminK != null) {
            queryParams.put("min-vitamin-k", minVitaminK)
        }
        if (maxVitaminK != null) {
            queryParams.put("max-vitamin-k", maxVitaminK)
        }
        if (minVitaminB1 != null) {
            queryParams.put("min-vitamin-b1", minVitaminB1)
        }
        if (maxVitaminB1 != null) {
            queryParams.put("max-vitamin-b1", maxVitaminB1)
        }
        if (minVitaminB2 != null) {
            queryParams.put("min-vitamin-b2", minVitaminB2)
        }
        if (maxVitaminB2 != null) {
            queryParams.put("max-vitamin-b2", maxVitaminB2)
        }
        if (minVitaminB3 != null) {
            queryParams.put("min-vitamin-b3", minVitaminB3)
        }
        if (maxVitaminB3 != null) {
            queryParams.put("max-vitamin-b3", maxVitaminB3)
        }
        if (minVitaminB5 != null) {
            queryParams.put("min-vitamin-b5", minVitaminB5)
        }
        if (maxVitaminB5 != null) {
            queryParams.put("max-vitamin-b5", maxVitaminB5)
        }
        if (minVitaminB6 != null) {
            queryParams.put("min-vitamin-b6", minVitaminB6)
        }
        if (maxVitaminB6 != null) {
            queryParams.put("max-vitamin-b6", maxVitaminB6)
        }
        if (minVitaminB12 != null) {
            queryParams.put("min-vitamin-b12", minVitaminB12)
        }
        if (maxVitaminB12 != null) {
            queryParams.put("max-vitamin-b12", maxVitaminB12)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (sortDirection != null) {
            queryParams.put("sort-direction", sortDirection)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchRecipes200Response.class )

    }

    def searchRestaurants ( Double lat, Double lon, String query, Integer distance, Double budget, Double minRating, String cuisine, Boolean isOpen, Integer page, String sort, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-restaurants"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (lat == null) {
            throw new RuntimeException("missing required params lat")
        }
        // verify required params are set
        if (lon == null) {
            throw new RuntimeException("missing required params lon")
        }

        if (query != null) {
            queryParams.put("query", query)
        }
        if (lat != null) {
            queryParams.put("lat", lat)
        }
        if (lon != null) {
            queryParams.put("lon", lon)
        }
        if (distance != null) {
            queryParams.put("distance", distance)
        }
        if (budget != null) {
            queryParams.put("budget", budget)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (cuisine != null) {
            queryParams.put("cuisine", cuisine)
        }
        if (isOpen != null) {
            queryParams.put("is-open", isOpen)
        }
        if (page != null) {
            queryParams.put("page", page)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchRestaurants200Response.class )

    }

}
