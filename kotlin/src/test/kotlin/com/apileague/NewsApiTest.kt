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

import com.apileague.NewsApi
import com.apileague.client.model.ExtractNews200Response
import com.apileague.client.model.SearchNews200Response

class NewsApiTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of NewsApi
        //val apiInstance = NewsApi()

        // to test extractNews
        should("test extractNews") {
            // uncomment below to test extractNews
            //val url : kotlin.String = https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/ // kotlin.String | The url of the news.
            //val analyze : kotlin.Boolean = true // kotlin.Boolean | Whether to analyze the news (extract entities etc.)
            //val result : ExtractNews200Response = apiInstance.extractNews(url, analyze)
            //result shouldBe ("TODO")
        }

        // to test searchNews
        should("test searchNews") {
            // uncomment below to test searchNews
            //val text : kotlin.String = tesla // kotlin.String | The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
            //val sourceCountries : kotlin.String = us,uk // kotlin.String | A comma-separated list of ISO 3166 country codes from which the news should originate.
            //val language : kotlin.String = en // kotlin.String | The ISO 6391 language code of the news.
            //val minSentiment : kotlin.Double = -0.8 // kotlin.Double | The minimal sentiment of the news in range [-1,1].
            //val maxSentiment : kotlin.Double = 0.8 // kotlin.Double | The maximal sentiment of the news in range [-1,1].
            //val earliestPublishDate : kotlin.String = 2022-04-22 16:12:35 // kotlin.String | The news must have been published after this date.
            //val latestPublishDate : kotlin.String = 2022-04-22 16:12:35 // kotlin.String | The news must have been published before this date.
            //val newsSources : kotlin.String = https://www.bbc.co.uk // kotlin.String | A comma-separated list of news sources from which the news should originate.
            //val authors : kotlin.String = John Doe // kotlin.String | A comma-separated list of author names. Only news from any of the given authors will be returned.
            //val entities : kotlin.String = ORG:Tesla // kotlin.String | Filter news by entities (ORG, PER, or LOC).
            //val locationFilter : kotlin.String = 51.050407, 13.737262, 100 // kotlin.String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
            //val sort : kotlin.String = publish-time // kotlin.String | The sorting criteria (publish-time or sentiment).
            //val sortDirection : kotlin.String = ASC // kotlin.String | Whether to sort ascending or descending (ASC or DESC).
            //val offset : kotlin.Int = 0 // kotlin.Int | The number of news to skip in range [0,10000]
            //val number : kotlin.Int = 10 // kotlin.Int | The number of news to return in range [1,100]
            //val result : SearchNews200Response = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number)
            //result shouldBe ("TODO")
        }

    }
}