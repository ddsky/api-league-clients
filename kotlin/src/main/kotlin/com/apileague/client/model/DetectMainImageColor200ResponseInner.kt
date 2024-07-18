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
 * @param specificColor 
 * @param mainColor 
 * @param hexCode 
 */


data class DetectMainImageColor200ResponseInner (

    @Json(name = "specific_color")
    val specificColor: kotlin.String? = null,

    @Json(name = "main_color")
    val mainColor: kotlin.String? = null,

    @Json(name = "hex_code")
    val hexCode: kotlin.String? = null

) {


}

