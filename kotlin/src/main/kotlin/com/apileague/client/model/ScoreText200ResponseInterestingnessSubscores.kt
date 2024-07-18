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
 * @param titleRatingScore 
 * @param quoteScore 
 * @param lengthScore 
 * @param linkScore 
 * @param googleHitsScore 
 */


data class ScoreText200ResponseInterestingnessSubscores (

    @Json(name = "title_rating_score")
    val titleRatingScore: kotlin.collections.List<kotlin.Int>? = null,

    @Json(name = "quote_score")
    val quoteScore: kotlin.collections.List<kotlin.Int>? = null,

    @Json(name = "length_score")
    val lengthScore: kotlin.collections.List<kotlin.Int>? = null,

    @Json(name = "link_score")
    val linkScore: kotlin.collections.List<kotlin.Int>? = null,

    @Json(name = "google_hits_score")
    val googleHitsScore: kotlin.collections.List<kotlin.Int>? = null

) {


}

