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


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param name 
 * @param percentOfDailyNeeds 
 * @param amount 
 * @param unit 
 */


data class ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner (

    @Json(name = "name")
    val name: kotlin.String? = null,

    @Json(name = "percent_of_daily_needs")
    val percentOfDailyNeeds: kotlin.Int? = null,

    @Json(name = "amount")
    val amount: kotlin.Int? = null,

    @Json(name = "unit")
    val unit: kotlin.String? = null

) {


}

