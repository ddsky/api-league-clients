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
 * @param name 
 * @param probabilityMale 
 * @param probabilityFemale 
 * @param popularity 
 */


data class DetectGenderByName200Response (

    @Json(name = "name")
    val name: kotlin.String? = null,

    @Json(name = "probability_male")
    val probabilityMale: java.math.BigDecimal? = null,

    @Json(name = "probability_female")
    val probabilityFemale: java.math.BigDecimal? = null,

    @Json(name = "popularity")
    val popularity: java.math.BigDecimal? = null

) {


}

