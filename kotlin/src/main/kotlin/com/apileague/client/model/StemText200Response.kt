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
 * @param original 
 * @param stemmed 
 */


data class StemText200Response (

    @Json(name = "original")
    val original: kotlin.String? = null,

    @Json(name = "stemmed")
    val stemmed: kotlin.String? = null

) {


}

