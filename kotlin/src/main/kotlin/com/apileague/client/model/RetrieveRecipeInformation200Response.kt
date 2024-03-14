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

import com.apileague.client.model.RetrieveRecipeInformation200ResponseCredits
import com.apileague.client.model.RetrieveRecipeInformation200ResponseDietaryProperties
import com.apileague.client.model.RetrieveRecipeInformation200ResponseIngredientsInner
import com.apileague.client.model.RetrieveRecipeInformation200ResponseInstructionsInner
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutrition
import com.apileague.client.model.RetrieveRecipeInformation200ResponseScores
import com.apileague.client.model.RetrieveRecipeInformation200ResponseTaste
import com.apileague.client.model.RetrieveRecipeInformation200ResponseTimes

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param id 
 * @param title 
 * @param servings 
 * @param images 
 * @param dietaryProperties 
 * @param pricePerServing 
 * @param times 
 * @param nutrition 
 * @param taste 
 * @param cuisines 
 * @param mealTypes 
 * @param occasions 
 * @param ingredients 
 * @param instructions 
 * @param credits 
 * @param scores 
 */


data class RetrieveRecipeInformation200Response (

    @Json(name = "id")
    val id: kotlin.Int? = null,

    @Json(name = "title")
    val title: kotlin.String? = null,

    @Json(name = "servings")
    val servings: kotlin.Int? = null,

    @Json(name = "images")
    val images: kotlin.collections.List<kotlin.String>? = null,

    @Json(name = "dietary_properties")
    val dietaryProperties: RetrieveRecipeInformation200ResponseDietaryProperties? = null,

    @Json(name = "price_per_serving")
    val pricePerServing: java.math.BigDecimal? = null,

    @Json(name = "times")
    val times: RetrieveRecipeInformation200ResponseTimes? = null,

    @Json(name = "nutrition")
    val nutrition: RetrieveRecipeInformation200ResponseNutrition? = null,

    @Json(name = "taste")
    val taste: RetrieveRecipeInformation200ResponseTaste? = null,

    @Json(name = "cuisines")
    val cuisines: kotlin.collections.List<kotlin.String>? = null,

    @Json(name = "meal_types")
    val mealTypes: kotlin.collections.List<kotlin.String>? = null,

    @Json(name = "occasions")
    val occasions: kotlin.collections.List<kotlin.String>? = null,

    @Json(name = "ingredients")
    val ingredients: kotlin.collections.List<RetrieveRecipeInformation200ResponseIngredientsInner>? = null,

    @Json(name = "instructions")
    val instructions: kotlin.collections.List<RetrieveRecipeInformation200ResponseInstructionsInner>? = null,

    @Json(name = "credits")
    val credits: RetrieveRecipeInformation200ResponseCredits? = null,

    @Json(name = "scores")
    val scores: RetrieveRecipeInformation200ResponseScores? = null

)

