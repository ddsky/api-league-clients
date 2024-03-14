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
 * @param zipcode 
 * @param country 
 * @param city 
 * @param latitude 
 * @param lon 
 * @param streetAddr2 
 * @param state 
 * @param streetAddr 
 * @param lat 
 * @param longitude 
 */


data class SearchRestaurants200ResponseRestaurantsInnerAddress (

    @Json(name = "zipcode")
    val zipcode: kotlin.String? = null,

    @Json(name = "country")
    val country: kotlin.String? = null,

    @Json(name = "city")
    val city: kotlin.String? = null,

    @Json(name = "latitude")
    val latitude: java.math.BigDecimal? = null,

    @Json(name = "lon")
    val lon: java.math.BigDecimal? = null,

    @Json(name = "street_addr_2")
    val streetAddr2: kotlin.String? = null,

    @Json(name = "state")
    val state: kotlin.String? = null,

    @Json(name = "street_addr")
    val streetAddr: kotlin.String? = null,

    @Json(name = "lat")
    val lat: java.math.BigDecimal? = null,

    @Json(name = "longitude")
    val longitude: java.math.BigDecimal? = null

)
