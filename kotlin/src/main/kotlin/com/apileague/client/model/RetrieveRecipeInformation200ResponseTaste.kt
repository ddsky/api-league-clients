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
 * @param fattiness 
 * @param spiciness 
 * @param saltiness 
 * @param bitterness 
 * @param savoriness 
 * @param sweetness 
 * @param sourness 
 */


data class RetrieveRecipeInformation200ResponseTaste (

    @Json(name = "fattiness")
    val fattiness: java.math.BigDecimal? = null,

    @Json(name = "spiciness")
    val spiciness: kotlin.Int? = null,

    @Json(name = "saltiness")
    val saltiness: kotlin.Int? = null,

    @Json(name = "bitterness")
    val bitterness: java.math.BigDecimal? = null,

    @Json(name = "savoriness")
    val savoriness: java.math.BigDecimal? = null,

    @Json(name = "sweetness")
    val sweetness: java.math.BigDecimal? = null,

    @Json(name = "sourness")
    val sourness: java.math.BigDecimal? = null

)

