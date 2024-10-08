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

import com.apileague.client.model.ScoreText200ResponseInterestingness
import com.apileague.client.model.ScoreText200ResponseReadability
import com.apileague.client.model.ScoreText200ResponseSkimmability
import com.apileague.client.model.ScoreText200ResponseStyle

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param numberOfWords 
 * @param numberOfSentences 
 * @param readability 
 * @param skimmability 
 * @param interestingness 
 * @param style 
 * @param totalScore 
 */


data class ScoreText200Response (

    @Json(name = "number_of_words")
    val numberOfWords: kotlin.Int? = null,

    @Json(name = "number_of_sentences")
    val numberOfSentences: kotlin.Int? = null,

    @Json(name = "readability")
    val readability: ScoreText200ResponseReadability? = null,

    @Json(name = "skimmability")
    val skimmability: ScoreText200ResponseSkimmability? = null,

    @Json(name = "interestingness")
    val interestingness: ScoreText200ResponseInterestingness? = null,

    @Json(name = "style")
    val style: ScoreText200ResponseStyle? = null,

    @Json(name = "total_score")
    val totalScore: java.math.BigDecimal? = null

) {


}

