package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ExtractNews200Response
import org.openapitools.model.SearchNews200Response

class NewsApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def extractNews ( String url, Boolean analyze, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/extract-news"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (url == null) {
            throw new RuntimeException("missing required params url")
        }
        // verify required params are set
        if (analyze == null) {
            throw new RuntimeException("missing required params analyze")
        }

        if (url != null) {
            queryParams.put("url", url)
        }
        if (analyze != null) {
            queryParams.put("analyze", analyze)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ExtractNews200Response.class )

    }

    def searchNews ( String text, String sourceCountries, String language, Double minSentiment, Double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String entities, String locationFilter, String sort, String sortDirection, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-news"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (text != null) {
            queryParams.put("text", text)
        }
        if (sourceCountries != null) {
            queryParams.put("source-countries", sourceCountries)
        }
        if (language != null) {
            queryParams.put("language", language)
        }
        if (minSentiment != null) {
            queryParams.put("min-sentiment", minSentiment)
        }
        if (maxSentiment != null) {
            queryParams.put("max-sentiment", maxSentiment)
        }
        if (earliestPublishDate != null) {
            queryParams.put("earliest-publish-date", earliestPublishDate)
        }
        if (latestPublishDate != null) {
            queryParams.put("latest-publish-date", latestPublishDate)
        }
        if (newsSources != null) {
            queryParams.put("news-sources", newsSources)
        }
        if (authors != null) {
            queryParams.put("authors", authors)
        }
        if (entities != null) {
            queryParams.put("entities", entities)
        }
        if (locationFilter != null) {
            queryParams.put("location-filter", locationFilter)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (sortDirection != null) {
            queryParams.put("sort-direction", sortDirection)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchNews200Response.class )

    }

}
