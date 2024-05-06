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

import com.apileague.ArtApi
import com.apileague.client.model.RandomPoem200Response

class ArtApiTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of ArtApi
        //val apiInstance = ArtApi()

        // to test imageToAsciiArtByURL
        should("test imageToAsciiArtByURL") {
            // uncomment below to test imageToAsciiArtByURL
            //val url : kotlin.String = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png // kotlin.String | The URL to the image.
            //val width : kotlin.Int = 200 // kotlin.Int | The maximum width of the image (default 400, max. 500).
            //val height : kotlin.Int = 200 // kotlin.Int | The maximum height of the image (default 400, max. 500).
            //val result : kotlin.String = apiInstance.imageToAsciiArtByURL(url, width, height)
            //result shouldBe ("TODO")
        }

        // to test randomPoem
        should("test randomPoem") {
            // uncomment below to test randomPoem
            //val minLines : kotlin.Int = 5 // kotlin.Int | The minimum number of lines of the poem.
            //val maxLines : kotlin.Int = 20 // kotlin.Int | The maximum number of lines of the poem.
            //val result : RandomPoem200Response = apiInstance.randomPoem(minLines, maxLines)
            //result shouldBe ("TODO")
        }

    }
}
