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

import io.kotlintest.shouldBe
import io.kotlintest.specs.ShouldSpec

import com.apileague.client.model.ComputeNutritionAPI200Response
import com.apileague.client.model.ComputeNutritionAPI200ResponseIngredientBreakdownInner
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing
import com.apileague.client.model.SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner

class ComputeNutritionAPI200ResponseTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of ComputeNutritionAPI200Response
        //val modelInstance = ComputeNutritionAPI200Response()

        // to test the property `nutrients`
        should("test nutrients") {
            // uncomment below to test the property
            //modelInstance.nutrients shouldBe ("TODO")
        }

        // to test the property `properties`
        should("test properties") {
            // uncomment below to test the property
            //modelInstance.properties shouldBe ("TODO")
        }

        // to test the property `flavonoids`
        should("test flavonoids") {
            // uncomment below to test the property
            //modelInstance.flavonoids shouldBe ("TODO")
        }

        // to test the property `ingredientBreakdown`
        should("test ingredientBreakdown") {
            // uncomment below to test the property
            //modelInstance.ingredientBreakdown shouldBe ("TODO")
        }

        // to test the property `caloricBreakdown`
        should("test caloricBreakdown") {
            // uncomment below to test the property
            //modelInstance.caloricBreakdown shouldBe ("TODO")
        }

        // to test the property `weightPerServing`
        should("test weightPerServing") {
            // uncomment below to test the property
            //modelInstance.weightPerServing shouldBe ("TODO")
        }

    }
}