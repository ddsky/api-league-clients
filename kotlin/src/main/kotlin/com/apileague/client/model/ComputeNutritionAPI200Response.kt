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

import com.apileague.client.model.ComputeNutritionAPI200ResponseIngredientBreakdownInner
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing
import com.apileague.client.model.SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner

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


data class ComputeNutritionAPI200Response (

    @Json(name = "nutrients")
    val nutrients: kotlin.collections.List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner>? = null,

    @Json(name = "properties")
    val properties: kotlin.collections.List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>? = null,

    @Json(name = "flavonoids")
    val flavonoids: kotlin.collections.List<SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner>? = null,

    @Json(name = "ingredient_breakdown")
    val ingredientBreakdown: kotlin.collections.List<ComputeNutritionAPI200ResponseIngredientBreakdownInner>? = null,

    @Json(name = "caloric_breakdown")
    val caloricBreakdown: SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown? = null,

    @Json(name = "weight_per_serving")
    val weightPerServing: SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing? = null

) {


}

