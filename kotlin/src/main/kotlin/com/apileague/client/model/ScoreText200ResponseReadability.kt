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

import com.apileague.client.model.ScoreText200ResponseReadabilityMainscores
import com.apileague.client.model.ScoreText200ResponseReadabilitySubscores

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param mainscores 
 * @param subscores 
 */


data class ScoreText200ResponseReadability (

    @Json(name = "mainscores")
    val mainscores: ScoreText200ResponseReadabilityMainscores? = null,

    @Json(name = "subscores")
    val subscores: ScoreText200ResponseReadabilitySubscores? = null

) {


}

