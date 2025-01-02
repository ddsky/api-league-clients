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

import com.apileague.client.model.DetectSentimentAPI200ResponseDocument
import com.apileague.client.model.DetectSentimentAPI200ResponseSentencesInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param document 
 * @param sentences 
 */


data class DetectSentimentAPI200Response (

    @Json(name = "document")
    val document: DetectSentimentAPI200ResponseDocument? = null,

    @Json(name = "sentences")
    val sentences: kotlin.collections.List<DetectSentimentAPI200ResponseSentencesInner>? = null

) {


}
