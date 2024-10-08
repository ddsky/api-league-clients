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

package com.apileague

import io.kotlintest.shouldBe
import io.kotlintest.specs.ShouldSpec

import com.apileague.KnowledgeApi
import com.apileague.client.model.RandomQuote200Response
import com.apileague.client.model.RandomRiddle200Response
import com.apileague.client.model.RandomTrivia200Response

class KnowledgeApiTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of KnowledgeApi
        //val apiInstance = KnowledgeApi()

        // to test randomQuote
        should("test randomQuote") {
            // uncomment below to test randomQuote
            //val minLength : kotlin.Int = 120 // kotlin.Int | The minimum length of the quote in letters.
            //val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the quote in letters.
            //val result : RandomQuote200Response = apiInstance.randomQuote(minLength, maxLength)
            //result shouldBe ("TODO")
        }

        // to test randomRiddle
        should("test randomRiddle") {
            // uncomment below to test randomRiddle
            //val difficulty : kotlin.String = easy // kotlin.String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
            //val result : RandomRiddle200Response = apiInstance.randomRiddle(difficulty)
            //result shouldBe ("TODO")
        }

        // to test randomTrivia
        should("test randomTrivia") {
            // uncomment below to test randomTrivia
            //val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the trivia in letters.
            //val result : RandomTrivia200Response = apiInstance.randomTrivia(maxLength)
            //result shouldBe ("TODO")
        }

    }
}
