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

import com.apileague.MediaApi
import com.apileague.client.model.DetectMainImageColor200ResponseInner
import com.apileague.client.model.SearchRoyaltyFreeImages200Response

class MediaApiTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of MediaApi
        //val apiInstance = MediaApi()

        // to test detectMainImageColor
        should("test detectMainImageColor") {
            // uncomment below to test detectMainImageColor
            //val url : kotlin.String = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM  // kotlin.String | The url of the image for which the colors should be detected.
            //val result : kotlin.collections.List<DetectMainImageColor200ResponseInner> = apiInstance.detectMainImageColor(url)
            //result shouldBe ("TODO")
        }

        // to test rescaleImage
        should("test rescaleImage") {
            // uncomment below to test rescaleImage
            //val url : kotlin.String = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM  // kotlin.String | The url of the image to be rescaled.
            //val width : kotlin.Int = 200 // kotlin.Int | The desired width of the rescaled image.
            //val height : kotlin.Int = 200 // kotlin.Int | The desired height of the rescaled image.
            //val crop : kotlin.Boolean = true // kotlin.Boolean | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
            //val result : kotlin.Any = apiInstance.rescaleImage(url, width, height, crop)
            //result shouldBe ("TODO")
        }

        // to test searchRoyaltyFreeImages
        should("test searchRoyaltyFreeImages") {
            // uncomment below to test searchRoyaltyFreeImages
            //val query : kotlin.String = dogs // kotlin.String | The search query.
            //val number : kotlin.Int = 3 // kotlin.Int | The number of images to return in range [1,10]
            //val result : SearchRoyaltyFreeImages200Response = apiInstance.searchRoyaltyFreeImages(query, number)
            //result shouldBe ("TODO")
        }

    }
}