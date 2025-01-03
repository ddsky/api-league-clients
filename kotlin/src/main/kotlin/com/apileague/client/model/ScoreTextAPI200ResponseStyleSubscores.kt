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
 * @param abbreviationScore 
 * @param styleScore 
 * @param spellingScore 
 */


data class ScoreTextAPI200ResponseStyleSubscores (

    @Json(name = "abbreviation_score")
    val abbreviationScore: kotlin.collections.List<kotlin.Int>? = null,

    @Json(name = "style_score")
    val styleScore: kotlin.collections.List<kotlin.Int>? = null,

    @Json(name = "spelling_score")
    val spellingScore: kotlin.collections.List<kotlin.Int>? = null

) {


}

