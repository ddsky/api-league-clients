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

import com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param nutrients 
 */


data class SearchRecipes200ResponseRecipesInnerNutrition (

    @Json(name = "nutrients")
    val nutrients: kotlin.collections.List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>? = null

) {


}

