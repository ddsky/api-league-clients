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
 * @param totalPossible 
 * @param total 
 */


data class ScoreTextAPI200ResponseReadabilityMainscores (

    @Json(name = "total_possible")
    val totalPossible: kotlin.Int? = null,

    @Json(name = "total")
    val total: kotlin.Int? = null

) {


}

