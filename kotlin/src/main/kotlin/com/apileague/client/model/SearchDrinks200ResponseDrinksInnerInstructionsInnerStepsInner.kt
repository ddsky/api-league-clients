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

import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param number 
 * @param ingredients 
 * @param equipment 
 * @param step 
 */


data class SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner (

    @Json(name = "number")
    val number: kotlin.Int? = null,

    @Json(name = "ingredients")
    val ingredients: kotlin.collections.List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>? = null,

    @Json(name = "equipment")
    val equipment: kotlin.collections.List<kotlin.String>? = null,

    @Json(name = "step")
    val step: kotlin.String? = null

) {


}

