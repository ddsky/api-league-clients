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
 * @param metaScore 
 * @param weightWatcherSmartPoints 
 * @param healthScore 
 */


data class RetrieveRecipeInformationAPI200ResponseScores (

    @Json(name = "meta_score")
    val metaScore: java.math.BigDecimal? = null,

    @Json(name = "weight_watcher_smart_points")
    val weightWatcherSmartPoints: kotlin.Int? = null,

    @Json(name = "health_score")
    val healthScore: kotlin.Int? = null

) {


}
