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

import com.apileague.client.model.ExtractEntitiesAPI200ResponseEntitiesInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param entities 
 */


data class ExtractEntitiesAPI200Response (

    @Json(name = "entities")
    val entities: kotlin.collections.List<ExtractEntitiesAPI200ResponseEntitiesInner>? = null

) {


}
