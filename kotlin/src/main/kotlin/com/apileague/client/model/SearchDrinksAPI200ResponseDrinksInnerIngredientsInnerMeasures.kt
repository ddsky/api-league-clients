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

import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param metric 
 * @param us 
 */


data class SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures (

    @Json(name = "metric")
    val metric: SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric? = null,

    @Json(name = "us")
    val us: SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs? = null

) {


}

