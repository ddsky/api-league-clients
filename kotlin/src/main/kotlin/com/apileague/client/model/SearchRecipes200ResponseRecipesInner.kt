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

import com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutrition

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param images 
 * @param nutrition 
 * @param id 
 * @param title 
 */


data class SearchRecipes200ResponseRecipesInner (

    @Json(name = "images")
    val images: kotlin.collections.List<kotlin.String>? = null,

    @Json(name = "nutrition")
    val nutrition: SearchRecipes200ResponseRecipesInnerNutrition? = null,

    @Json(name = "id")
    val id: kotlin.Int? = null,

    @Json(name = "title")
    val title: kotlin.String? = null

)

