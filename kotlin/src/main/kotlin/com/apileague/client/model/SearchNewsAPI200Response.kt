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

import com.apileague.client.model.SearchNewsAPI200ResponseNewsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param offset 
 * @param number 
 * @param available 
 * @param news 
 */


data class SearchNewsAPI200Response (

    @Json(name = "offset")
    val offset: kotlin.Int? = null,

    @Json(name = "number")
    val number: kotlin.Int? = null,

    @Json(name = "available")
    val available: kotlin.Int? = null,

    @Json(name = "news")
    val news: kotlin.collections.List<SearchNewsAPI200ResponseNewsInner>? = null

) {


}

