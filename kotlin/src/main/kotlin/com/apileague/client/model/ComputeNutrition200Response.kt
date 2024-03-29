/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.apileague.client.model

import com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInner
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionWeightPerServing
import com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param nutrients 
 * @param properties 
 * @param flavonoids 
 * @param ingredientBreakdown 
 * @param caloricBreakdown 
 * @param weightPerServing 
 */


data class ComputeNutrition200Response (

    @Json(name = "nutrients")
    val nutrients: kotlin.collections.List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner>? = null,

    @Json(name = "properties")
    val properties: kotlin.collections.List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner>? = null,

    @Json(name = "flavonoids")
    val flavonoids: kotlin.collections.List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>? = null,

    @Json(name = "ingredient_breakdown")
    val ingredientBreakdown: kotlin.collections.List<ComputeNutrition200ResponseIngredientBreakdownInner>? = null,

    @Json(name = "caloric_breakdown")
    val caloricBreakdown: RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown? = null,

    @Json(name = "weight_per_serving")
    val weightPerServing: RetrieveRecipeInformation200ResponseNutritionWeightPerServing? = null

)

