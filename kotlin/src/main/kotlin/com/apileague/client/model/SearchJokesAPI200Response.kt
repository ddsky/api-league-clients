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

import com.apileague.client.model.SearchJokesAPI200ResponseJokesInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param jokes 
 * @param available 
 */


data class SearchJokesAPI200Response (

    @Json(name = "jokes")
    val jokes: kotlin.collections.List<SearchJokesAPI200ResponseJokesInner>? = null,

    @Json(name = "available")
    val available: kotlin.Int? = null

) {


}

