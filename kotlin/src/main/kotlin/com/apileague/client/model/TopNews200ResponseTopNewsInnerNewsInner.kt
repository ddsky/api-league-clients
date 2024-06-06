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
 * @param summary 
 * @param image 
 * @param author 
 * @param id 
 * @param text 
 * @param title 
 * @param publishDate 
 * @param url 
 * @param authors 
 */


data class TopNews200ResponseTopNewsInnerNewsInner (

    @Json(name = "summary")
    val summary: kotlin.String? = null,

    @Json(name = "image")
    val image: kotlin.String? = null,

    @Json(name = "author")
    val author: kotlin.String? = null,

    @Json(name = "id")
    val id: kotlin.Int? = null,

    @Json(name = "text")
    val text: kotlin.String? = null,

    @Json(name = "title")
    val title: kotlin.String? = null,

    @Json(name = "publish_date")
    val publishDate: kotlin.String? = null,

    @Json(name = "url")
    val url: kotlin.String? = null,

    @Json(name = "authors")
    val authors: kotlin.collections.List<kotlin.String>? = null

)

