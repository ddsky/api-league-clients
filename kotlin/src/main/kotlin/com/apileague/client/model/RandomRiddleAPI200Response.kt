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
 * @param riddle 
 * @param answer 
 * @param difficulty 
 */


data class RandomRiddleAPI200Response (

    @Json(name = "riddle")
    val riddle: kotlin.String? = null,

    @Json(name = "answer")
    val answer: kotlin.String? = null,

    @Json(name = "difficulty")
    val difficulty: kotlin.String? = null

) {


}

