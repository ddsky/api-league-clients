package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.FindSimilarBooks200Response
import org.openapitools.model.SearchBooks200Response

class BooksApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def findSimilarBooks ( Integer id, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/list-similar-books"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    FindSimilarBooks200Response.class )

    }

    def searchBooks ( String query, Integer earliestPublishYear, Integer latestPublishYear, Double minRating, Double maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, Boolean groupResults, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-books"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (earliestPublishYear != null) {
            queryParams.put("earliest-publish-year", earliestPublishYear)
        }
        if (latestPublishYear != null) {
            queryParams.put("latest-publish-year", latestPublishYear)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (maxRating != null) {
            queryParams.put("max-rating", maxRating)
        }
        if (genres != null) {
            queryParams.put("genres", genres)
        }
        if (authors != null) {
            queryParams.put("authors", authors)
        }
        if (isbn != null) {
            queryParams.put("isbn", isbn)
        }
        if (oclc != null) {
            queryParams.put("oclc", oclc)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (sortDirection != null) {
            queryParams.put("sort-direction", sortDirection)
        }
        if (groupResults != null) {
            queryParams.put("group-results", groupResults)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchBooks200Response.class )

    }

}
