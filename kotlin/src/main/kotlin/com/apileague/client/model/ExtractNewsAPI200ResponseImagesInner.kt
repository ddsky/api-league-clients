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
 * @param width 
 * @param title 
 * @param url 
 * @param height 
 */


data class ExtractNewsAPI200ResponseImagesInner (

    @Json(name = "width")
    val width: kotlin.Int? = null,

    @Json(name = "title")
    val title: kotlin.String? = null,

    @Json(name = "url")
    val url: kotlin.String? = null,

    @Json(name = "height")
    val height: kotlin.Int? = null

) {


}

