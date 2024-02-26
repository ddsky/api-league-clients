package com.apileague;

import com.apileague.client.ApiUtils
import com.apileague.client.model.InlineResponse20010
import com.apileague.client.model.InlineResponse2009

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
                    InlineResponse20010.class )

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
                    InlineResponse2009.class )

    }

}
