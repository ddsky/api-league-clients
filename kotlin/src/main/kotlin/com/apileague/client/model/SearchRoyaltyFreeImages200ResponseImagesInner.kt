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

import com.apileague.client.model.SearchRoyaltyFreeImages200ResponseImagesInnerLicense

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param width 
 * @param license 
 * @param thumbnail 
 * @param id 
 * @param url 
 * @param height 
 */


data class SearchRoyaltyFreeImages200ResponseImagesInner (

    @Json(name = "width")
    val width: kotlin.Int? = null,

    @Json(name = "license")
    val license: SearchRoyaltyFreeImages200ResponseImagesInnerLicense? = null,

    @Json(name = "thumbnail")
    val thumbnail: kotlin.String? = null,

    @Json(name = "id")
    val id: kotlin.String? = null,

    @Json(name = "url")
    val url: kotlin.String? = null,

    @Json(name = "height")
    val height: kotlin.Int? = null

)

