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

import com.apileague.client.model.TopNewsAPI200ResponseTopNewsInnerNewsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param news 
 */


data class TopNewsAPI200ResponseTopNewsInner (

    @Json(name = "news")
    val news: kotlin.collections.List<TopNewsAPI200ResponseTopNewsInnerNewsInner>? = null

) {


}

