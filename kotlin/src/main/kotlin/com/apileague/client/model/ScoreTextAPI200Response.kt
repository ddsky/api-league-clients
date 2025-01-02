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

import com.apileague.client.model.ScoreTextAPI200ResponseInterestingness
import com.apileague.client.model.ScoreTextAPI200ResponseReadability
import com.apileague.client.model.ScoreTextAPI200ResponseSkimmability
import com.apileague.client.model.ScoreTextAPI200ResponseStyle

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


data class ScoreTextAPI200Response (

    @Json(name = "number_of_words")
    val numberOfWords: kotlin.Int? = null,

    @Json(name = "number_of_sentences")
    val numberOfSentences: kotlin.Int? = null,

    @Json(name = "readability")
    val readability: ScoreTextAPI200ResponseReadability? = null,

    @Json(name = "skimmability")
    val skimmability: ScoreTextAPI200ResponseSkimmability? = null,

    @Json(name = "interestingness")
    val interestingness: ScoreTextAPI200ResponseInterestingness? = null,

    @Json(name = "style")
    val style: ScoreTextAPI200ResponseStyle? = null,

    @Json(name = "total_score")
    val totalScore: java.math.BigDecimal? = null

) {


}
