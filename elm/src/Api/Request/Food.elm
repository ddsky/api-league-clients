{-
   API League
   API League is a Hub for World Class APIs.

   The version of the OpenAPI document: 1.6.2
   Contact: mail@apileague.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Food exposing
    ( computeNutrition
    , retrieveRecipeInformation
    , searchDrinks
    , searchRecipes
    , searchRestaurants
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode

{-| Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
-}
computeNutrition : String -> Maybe Int -> Maybe Bool -> Api.Request Api.Data.ComputeNutrition200Response
computeNutrition ingredients_query servings_query reduceOils_query =
    Api.request
        "GET"
        "/compute-nutrition"
        []
        [ ( "ingredients", Just <| identity ingredients_query ), ( "servings", Maybe.map String.fromInt servings_query ), ( "reduce-oils", Maybe.map (\val -> if val then "true" else "false") reduceOils_query ) ]
        []
        Nothing
        Api.Data.computeNutrition200ResponseDecoder


{-| Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
-}
retrieveRecipeInformation : Int -> Maybe Bool -> Api.Request Api.Data.RetrieveRecipeInformation200Response
retrieveRecipeInformation id_query addWinePairing_query =
    Api.request
        "GET"
        "/retrieve-recipe"
        []
        [ ( "id", Just <| String.fromInt id_query ), ( "add-wine-pairing", Maybe.map (\val -> if val then "true" else "false") addWinePairing_query ) ]
        []
        Nothing
        Api.Data.retrieveRecipeInformation200ResponseDecoder


{-| Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
-}
searchDrinks : Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe String -> Maybe String -> Maybe Int -> Maybe Int -> Api.Request Api.Data.SearchDrinks200Response
searchDrinks query_query glassTypes_query flavors_query diet_query includeIngredients_query excludeIngredients_query minCalories_query maxCalories_query minCarbs_query maxCarbs_query minProtein_query maxProtein_query minFat_query maxFat_query minAlcoholPercent_query maxAlcoholPercent_query minCaffeine_query maxCaffeine_query sort_query sortDirection_query offset_query number_query =
    Api.request
        "GET"
        "/search-drinks"
        []
        [ ( "query", Maybe.map identity query_query ), ( "glass-types", Maybe.map identity glassTypes_query ), ( "flavors", Maybe.map identity flavors_query ), ( "diet", Maybe.map identity diet_query ), ( "include-ingredients", Maybe.map identity includeIngredients_query ), ( "exclude-ingredients", Maybe.map identity excludeIngredients_query ), ( "min-calories", Maybe.map String.fromFloat minCalories_query ), ( "max-calories", Maybe.map String.fromFloat maxCalories_query ), ( "min-carbs", Maybe.map String.fromFloat minCarbs_query ), ( "max-carbs", Maybe.map String.fromFloat maxCarbs_query ), ( "min-protein", Maybe.map String.fromFloat minProtein_query ), ( "max-protein", Maybe.map String.fromFloat maxProtein_query ), ( "min-fat", Maybe.map String.fromFloat minFat_query ), ( "max-fat", Maybe.map String.fromFloat maxFat_query ), ( "min-alcohol-percent", Maybe.map String.fromFloat minAlcoholPercent_query ), ( "max-alcohol-percent", Maybe.map String.fromFloat maxAlcoholPercent_query ), ( "min-caffeine", Maybe.map String.fromFloat minCaffeine_query ), ( "max-caffeine", Maybe.map String.fromFloat maxCaffeine_query ), ( "sort", Maybe.map identity sort_query ), ( "sort-direction", Maybe.map identity sortDirection_query ), ( "offset", Maybe.map String.fromInt offset_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchDrinks200ResponseDecoder


{-| Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
-}
searchRecipes : Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Maybe Bool -> Maybe Bool -> Maybe Int -> Maybe Int -> Maybe Int -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe Float -> Maybe String -> Maybe String -> Maybe Int -> Maybe Int -> Api.Request Api.Data.SearchRecipes200Response
searchRecipes query_query cuisines_query excludeCuisines_query mealType_query diet_query intolerances_query equipment_query includeIngredients_query excludeIngredients_query fillIngredients_query addRecipeInformation_query maxTime_query minServings_query maxServings_query minCalories_query maxCalories_query minCarbs_query maxCarbs_query minProtein_query maxProtein_query minFat_query maxFat_query minSugar_query maxSugar_query minFiber_query maxFiber_query minFolate_query maxFolate_query minFolicAcid_query maxFolicAcid_query minIodine_query maxIodine_query minIron_query maxIron_query minZinc_query maxZinc_query minMagnesium_query maxMagnesium_query minManganese_query maxManganese_query minPhosphorus_query maxPhosphorus_query minPotassium_query maxPotassium_query minSodium_query maxSodium_query minSelenium_query maxSelenium_query minCopper_query maxCopper_query minCalcium_query maxCalcium_query minCholine_query maxCholine_query minCholesterol_query maxCholesterol_query minFluoride_query maxFluoride_query minAlcohol_query maxAlcohol_query minCaffeine_query maxCaffeine_query minSaturatedFat_query maxSaturatedFat_query minVitaminA_query maxVitaminA_query minVitaminC_query maxVitaminC_query minVitaminD_query maxVitaminD_query minVitaminE_query maxVitaminE_query minVitaminK_query maxVitaminK_query minVitaminB1_query maxVitaminB1_query minVitaminB2_query maxVitaminB2_query minVitaminB3_query maxVitaminB3_query minVitaminB5_query maxVitaminB5_query minVitaminB6_query maxVitaminB6_query minVitaminB12_query maxVitaminB12_query sort_query sortDirection_query offset_query number_query =
    Api.request
        "GET"
        "/search-recipes"
        []
        [ ( "query", Maybe.map identity query_query ), ( "cuisines", Maybe.map identity cuisines_query ), ( "exclude-cuisines", Maybe.map identity excludeCuisines_query ), ( "meal-type", Maybe.map identity mealType_query ), ( "diet", Maybe.map identity diet_query ), ( "intolerances", Maybe.map identity intolerances_query ), ( "equipment", Maybe.map identity equipment_query ), ( "include-ingredients", Maybe.map identity includeIngredients_query ), ( "exclude-ingredients", Maybe.map identity excludeIngredients_query ), ( "fill-ingredients", Maybe.map (\val -> if val then "true" else "false") fillIngredients_query ), ( "add-recipe-information", Maybe.map (\val -> if val then "true" else "false") addRecipeInformation_query ), ( "max-time", Maybe.map String.fromInt maxTime_query ), ( "min-servings", Maybe.map String.fromInt minServings_query ), ( "max-servings", Maybe.map String.fromInt maxServings_query ), ( "min-calories", Maybe.map String.fromFloat minCalories_query ), ( "max-calories", Maybe.map String.fromFloat maxCalories_query ), ( "min-carbs", Maybe.map String.fromFloat minCarbs_query ), ( "max-carbs", Maybe.map String.fromFloat maxCarbs_query ), ( "min-protein", Maybe.map String.fromFloat minProtein_query ), ( "max-protein", Maybe.map String.fromFloat maxProtein_query ), ( "min-fat", Maybe.map String.fromFloat minFat_query ), ( "max-fat", Maybe.map String.fromFloat maxFat_query ), ( "min-sugar", Maybe.map String.fromFloat minSugar_query ), ( "max-sugar", Maybe.map String.fromFloat maxSugar_query ), ( "min-fiber", Maybe.map String.fromFloat minFiber_query ), ( "max-fiber", Maybe.map String.fromFloat maxFiber_query ), ( "min-folate", Maybe.map String.fromFloat minFolate_query ), ( "max-folate", Maybe.map String.fromFloat maxFolate_query ), ( "min-folic-acid", Maybe.map String.fromFloat minFolicAcid_query ), ( "max-folic-acid", Maybe.map String.fromFloat maxFolicAcid_query ), ( "min-iodine", Maybe.map String.fromFloat minIodine_query ), ( "max-iodine", Maybe.map String.fromFloat maxIodine_query ), ( "min-iron", Maybe.map String.fromFloat minIron_query ), ( "max-iron", Maybe.map String.fromFloat maxIron_query ), ( "min-zinc", Maybe.map String.fromFloat minZinc_query ), ( "max-zinc", Maybe.map String.fromFloat maxZinc_query ), ( "min-magnesium", Maybe.map String.fromFloat minMagnesium_query ), ( "max-magnesium", Maybe.map String.fromFloat maxMagnesium_query ), ( "min-manganese", Maybe.map String.fromFloat minManganese_query ), ( "max-manganese", Maybe.map String.fromFloat maxManganese_query ), ( "min-phosphorus", Maybe.map String.fromFloat minPhosphorus_query ), ( "max-phosphorus", Maybe.map String.fromFloat maxPhosphorus_query ), ( "min-potassium", Maybe.map String.fromFloat minPotassium_query ), ( "max-potassium", Maybe.map String.fromFloat maxPotassium_query ), ( "min-sodium", Maybe.map String.fromFloat minSodium_query ), ( "max-sodium", Maybe.map String.fromFloat maxSodium_query ), ( "min-selenium", Maybe.map String.fromFloat minSelenium_query ), ( "max-selenium", Maybe.map String.fromFloat maxSelenium_query ), ( "min-copper", Maybe.map String.fromFloat minCopper_query ), ( "max-copper", Maybe.map String.fromFloat maxCopper_query ), ( "min-calcium", Maybe.map String.fromFloat minCalcium_query ), ( "max-calcium", Maybe.map String.fromFloat maxCalcium_query ), ( "min-choline", Maybe.map String.fromFloat minCholine_query ), ( "max-choline", Maybe.map String.fromFloat maxCholine_query ), ( "min-cholesterol", Maybe.map String.fromFloat minCholesterol_query ), ( "max-cholesterol", Maybe.map String.fromFloat maxCholesterol_query ), ( "min-fluoride", Maybe.map String.fromFloat minFluoride_query ), ( "max-fluoride", Maybe.map String.fromFloat maxFluoride_query ), ( "min-alcohol", Maybe.map String.fromFloat minAlcohol_query ), ( "max-alcohol", Maybe.map String.fromFloat maxAlcohol_query ), ( "min-caffeine", Maybe.map String.fromFloat minCaffeine_query ), ( "max-caffeine", Maybe.map String.fromFloat maxCaffeine_query ), ( "min-saturated-fat", Maybe.map String.fromFloat minSaturatedFat_query ), ( "max-saturated-fat", Maybe.map String.fromFloat maxSaturatedFat_query ), ( "min-vitamin-a", Maybe.map String.fromFloat minVitaminA_query ), ( "max-vitamin-a", Maybe.map String.fromFloat maxVitaminA_query ), ( "min-vitamin-c", Maybe.map String.fromFloat minVitaminC_query ), ( "max-vitamin-c", Maybe.map String.fromFloat maxVitaminC_query ), ( "min-vitamin-d", Maybe.map String.fromFloat minVitaminD_query ), ( "max-vitamin-d", Maybe.map String.fromFloat maxVitaminD_query ), ( "min-vitamin-e", Maybe.map String.fromFloat minVitaminE_query ), ( "max-vitamin-e", Maybe.map String.fromFloat maxVitaminE_query ), ( "min-vitamin-k", Maybe.map String.fromFloat minVitaminK_query ), ( "max-vitamin-k", Maybe.map String.fromFloat maxVitaminK_query ), ( "min-vitamin-b1", Maybe.map String.fromFloat minVitaminB1_query ), ( "max-vitamin-b1", Maybe.map String.fromFloat maxVitaminB1_query ), ( "min-vitamin-b2", Maybe.map String.fromFloat minVitaminB2_query ), ( "max-vitamin-b2", Maybe.map String.fromFloat maxVitaminB2_query ), ( "min-vitamin-b3", Maybe.map String.fromFloat minVitaminB3_query ), ( "max-vitamin-b3", Maybe.map String.fromFloat maxVitaminB3_query ), ( "min-vitamin-b5", Maybe.map String.fromFloat minVitaminB5_query ), ( "max-vitamin-b5", Maybe.map String.fromFloat maxVitaminB5_query ), ( "min-vitamin-b6", Maybe.map String.fromFloat minVitaminB6_query ), ( "max-vitamin-b6", Maybe.map String.fromFloat maxVitaminB6_query ), ( "min-vitamin-b12", Maybe.map String.fromFloat minVitaminB12_query ), ( "max-vitamin-b12", Maybe.map String.fromFloat maxVitaminB12_query ), ( "sort", Maybe.map identity sort_query ), ( "sort-direction", Maybe.map identity sortDirection_query ), ( "offset", Maybe.map String.fromInt offset_query ), ( "number", Maybe.map String.fromInt number_query ) ]
        []
        Nothing
        Api.Data.searchRecipes200ResponseDecoder


{-| Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
-}
searchRestaurants : Float -> Float -> Maybe String -> Maybe Int -> Maybe Float -> Maybe Float -> Maybe String -> Maybe Bool -> Maybe Int -> Maybe String -> Api.Request Api.Data.SearchRestaurants200Response
searchRestaurants lat_query lon_query query_query distance_query budget_query minRating_query cuisine_query isOpen_query page_query sort_query =
    Api.request
        "GET"
        "/search-restaurants"
        []
        [ ( "query", Maybe.map identity query_query ), ( "lat", Just <| String.fromFloat lat_query ), ( "lon", Just <| String.fromFloat lon_query ), ( "distance", Maybe.map String.fromInt distance_query ), ( "budget", Maybe.map String.fromFloat budget_query ), ( "min-rating", Maybe.map String.fromFloat minRating_query ), ( "cuisine", Maybe.map identity cuisine_query ), ( "is-open", Maybe.map (\val -> if val then "true" else "false") isOpen_query ), ( "page", Maybe.map String.fromInt page_query ), ( "sort", Maybe.map identity sort_query ) ]
        []
        Nothing
        Api.Data.searchRestaurants200ResponseDecoder

