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

import com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param name 
 * @param amount 
 * @param unit 
 * @param id 
 * @param nutrients 
 */


data class ComputeNutrition200ResponseIngredientBreakdownInner (

    @Json(name = "name")
    val name: kotlin.String? = null,

    @Json(name = "amount")
    val amount: kotlin.Int? = null,

    @Json(name = "unit")
    val unit: kotlin.String? = null,

    @Json(name = "id")
    val id: kotlin.Int? = null,

    @Json(name = "nutrients")
    val nutrients: kotlin.collections.List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner>? = null

) {


}

