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
 * @param title 
 * @param author 
 * @param poem 
 */


data class RandomPoemAPI200Response (

    @Json(name = "title")
    val title: kotlin.String? = null,

    @Json(name = "author")
    val author: kotlin.String? = null,

    @Json(name = "poem")
    val poem: kotlin.String? = null

) {


}
