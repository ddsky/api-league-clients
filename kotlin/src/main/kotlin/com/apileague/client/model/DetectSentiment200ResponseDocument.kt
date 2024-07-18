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
 * @param sentiment 
 * @param confidence 
 * @param averageConfidence 
 */


data class DetectSentiment200ResponseDocument (

    @Json(name = "sentiment")
    val sentiment: kotlin.String? = null,

    @Json(name = "confidence")
    val confidence: kotlin.Int? = null,

    @Json(name = "average_confidence")
    val averageConfidence: kotlin.Int? = null

) {


}

