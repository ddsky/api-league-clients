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

import com.apileague.client.model.VectorSearchAPI200ResponseVectorsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param vectors 
 */


data class VectorSearchAPI200Response (

    @Json(name = "vectors")
    val vectors: kotlin.collections.List<VectorSearchAPI200ResponseVectorsInner>? = null

) {


}
