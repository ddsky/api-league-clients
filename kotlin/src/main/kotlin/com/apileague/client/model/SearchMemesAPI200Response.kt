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

import com.apileague.client.model.SearchMemesAPI200ResponseMemesInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param memes 
 * @param available 
 */


data class SearchMemesAPI200Response (

    @Json(name = "memes")
    val memes: kotlin.collections.List<SearchMemesAPI200ResponseMemesInner>? = null,

    @Json(name = "available")
    val available: kotlin.Int? = null

) {


}

