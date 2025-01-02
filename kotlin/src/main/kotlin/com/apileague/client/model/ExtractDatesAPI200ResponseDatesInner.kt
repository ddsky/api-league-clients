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
 * @param startPosition 
 * @param date 
 * @param normalizedDate 
 * @param tag 
 * @param endPosition 
 */


data class ExtractDatesAPI200ResponseDatesInner (

    @Json(name = "start_position")
    val startPosition: kotlin.Int? = null,

    @Json(name = "date")
    val date: kotlin.String? = null,

    @Json(name = "normalized_date")
    val normalizedDate: java.math.BigDecimal? = null,

    @Json(name = "tag")
    val tag: kotlin.String? = null,

    @Json(name = "end_position")
    val endPosition: kotlin.Int? = null

) {


}
