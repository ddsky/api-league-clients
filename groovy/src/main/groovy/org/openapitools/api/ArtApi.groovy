package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.RandomPoem200Response

class ArtApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def imageToAsciiArtByURL ( String url, Integer width, Integer height, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/convert-image-to-ascii-txt"

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
        if (width != null) {
            queryParams.put("width", width)
        }
        if (height != null) {
            queryParams.put("height", height)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

    def randomPoem ( Integer minLines, Integer maxLines, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retrieve-random-poem"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (minLines != null) {
            queryParams.put("min-lines", minLines)
        }
        if (maxLines != null) {
            queryParams.put("max-lines", maxLines)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RandomPoem200Response.class )

    }

}
