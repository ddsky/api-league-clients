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
import com.apileague.client.model.RandomQuoteAPI200Response
import com.apileague.client.model.RandomRiddleAPI200Response
import com.apileague.client.model.RandomTriviaAPI200Response

class KnowledgeApiTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of KnowledgeApi
        //val apiInstance = KnowledgeApi()

        // to test randomQuoteAPI
        should("test randomQuoteAPI") {
            // uncomment below to test randomQuoteAPI
            //val minLength : kotlin.Int = 120 // kotlin.Int | The minimum length of the quote in letters.
            //val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the quote in letters.
            //val result : RandomQuoteAPI200Response = apiInstance.randomQuoteAPI(minLength, maxLength)
            //result shouldBe ("TODO")
        }

        // to test randomRiddleAPI
        should("test randomRiddleAPI") {
            // uncomment below to test randomRiddleAPI
            //val difficulty : kotlin.String = easy // kotlin.String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
            //val result : RandomRiddleAPI200Response = apiInstance.randomRiddleAPI(difficulty)
            //result shouldBe ("TODO")
        }

        // to test randomTriviaAPI
        should("test randomTriviaAPI") {
            // uncomment below to test randomTriviaAPI
            //val maxLength : kotlin.Int = 300 // kotlin.Int | The maximum length of the trivia in letters.
            //val result : RandomTriviaAPI200Response = apiInstance.randomTriviaAPI(maxLength)
            //result shouldBe ("TODO")
        }

    }
}
