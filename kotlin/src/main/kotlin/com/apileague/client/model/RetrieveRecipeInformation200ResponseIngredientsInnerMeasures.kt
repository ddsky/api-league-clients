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

import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param metric 
 * @param us 
 */


data class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures (

    @Json(name = "metric")
    val metric: SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric? = null,

    @Json(name = "us")
    val us: SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric? = null

) {


}

