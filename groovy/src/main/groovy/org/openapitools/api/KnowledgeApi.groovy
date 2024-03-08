package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.RandomQuote200Response
import org.openapitools.model.RandomTrivia200Response

class KnowledgeApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def randomQuote ( Integer minLength, Integer maxLength, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retrieve-random-quote"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (minLength != null) {
            queryParams.put("min-length", minLength)
        }
        if (maxLength != null) {
            queryParams.put("max-length", maxLength)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RandomQuote200Response.class )

    }

    def randomTrivia ( Integer maxLength, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retrieve-random-trivia"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (maxLength != null) {
            queryParams.put("max-length", maxLength)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RandomTrivia200Response.class )

    }

}
