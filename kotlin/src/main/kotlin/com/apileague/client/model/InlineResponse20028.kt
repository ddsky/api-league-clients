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

import com.apileague.client.model.InlineResponse20028Images

import com.squareup.moshi.Json

/**
 * 
 *
 * @param images 
 */

data class InlineResponse20028 (

    @Json(name = "images")
    val images: kotlin.collections.List<InlineResponse20028Images>? = null

)

