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
 * @param description 
 * @param url 
 * @param type 
 * @param width 
 * @param height 
 * @param ratio 
 */


data class RandomMemeAPI200Response (

    @Json(name = "description")
    val description: kotlin.String? = null,

    @Json(name = "url")
    val url: kotlin.String? = null,

    @Json(name = "type")
    val type: kotlin.String? = null,

    @Json(name = "width")
    val width: kotlin.Int? = null,

    @Json(name = "height")
    val height: kotlin.Int? = null,

    @Json(name = "ratio")
    val ratio: java.math.BigDecimal? = null

) {


}

