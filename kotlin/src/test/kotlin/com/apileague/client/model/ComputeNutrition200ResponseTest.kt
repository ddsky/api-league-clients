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

import com.apileague.client.model.ComputeNutrition200Response
import com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInner
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionWeightPerServing
import com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner

class ComputeNutrition200ResponseTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of ComputeNutrition200Response
        //val modelInstance = ComputeNutrition200Response()

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
