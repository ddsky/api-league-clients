/**
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.apileague.client.model


import com.squareup.moshi.Json

/**
 * 
 *
 * @param startPosition 
 * @param image 
 * @param type 
 * @param `value` 
 * @param endPosition 
 */

data class InlineResponse20026Entities (

    @Json(name = "start_position")
    val startPosition: kotlin.Int? = null,

    @Json(name = "image")
    val image: kotlin.String? = null,

    @Json(name = "type")
    val type: kotlin.String? = null,

    @Json(name = "value")
    val `value`: kotlin.String? = null,

    @Json(name = "end_position")
    val endPosition: kotlin.Int? = null

)

