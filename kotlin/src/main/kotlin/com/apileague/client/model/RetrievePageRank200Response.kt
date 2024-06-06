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
 * @param pageRank 
 * @param position 
 * @param percentile 
 */


data class RetrievePageRank200Response (

    @Json(name = "page_rank")
    val pageRank: java.math.BigDecimal? = null,

    @Json(name = "position")
    val position: kotlin.Int? = null,

    @Json(name = "percentile")
    val percentile: java.math.BigDecimal? = null

)

