package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ExtractAuthors200Response
import org.openapitools.model.ExtractContentFromAWebPage200Response
import org.openapitools.model.ExtractPublishDate200Response
import org.openapitools.model.RetrievePageRank200Response
import org.openapitools.model.SearchWeb200Response
import org.openapitools.model.VerifyEmailAddress200Response

class WebApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def extractAuthors ( String url, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/extract-authors"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (url == null) {
            throw new RuntimeException("missing required params url")
        }

        if (url != null) {
            queryParams.put("url", url)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ExtractAuthors200Response.class )

    }

    def extractContentFromAWebPage ( String url, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/extract-content"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (url == null) {
            throw new RuntimeException("missing required params url")
        }

        if (url != null) {
            queryParams.put("url", url)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ExtractContentFromAWebPage200Response.class )

    }

    def extractPublishDate ( String url, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/extract-publish-date"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (url == null) {
            throw new RuntimeException("missing required params url")
        }

        if (url != null) {
            queryParams.put("url", url)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ExtractPublishDate200Response.class )

    }

    def retrievePageRank ( String domain, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retrieve-page-rank"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (domain == null) {
            throw new RuntimeException("missing required params domain")
        }

        if (domain != null) {
            queryParams.put("domain", domain)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RetrievePageRank200Response.class )

    }

    def searchWeb ( String query, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-web"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (query == null) {
            throw new RuntimeException("missing required params query")
        }

        if (query != null) {
            queryParams.put("query", query)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchWeb200Response.class )

    }

    def verifyEmailAddress ( String email, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/verify-email"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (email == null) {
            throw new RuntimeException("missing required params email")
        }

        if (email != null) {
            queryParams.put("email", email)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    VerifyEmailAddress200Response.class )

    }

}
