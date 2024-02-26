package com.apileague;

import com.apileague.client.ApiUtils
import com.apileague.client.model.InlineResponse20028
import com.apileague.client.model.InlineResponse20029

class MediaApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def detectMainImageColor ( String url, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/detect-color"

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
                    "GET", "array",
                    InlineResponse20029.class )

    }

    def rescaleImage ( String url, Integer width, Integer height, Boolean crop, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/rescale-image"

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
        if (width == null) {
            throw new RuntimeException("missing required params width")
        }
        // verify required params are set
        if (height == null) {
            throw new RuntimeException("missing required params height")
        }
        // verify required params are set
        if (crop == null) {
            throw new RuntimeException("missing required params crop")
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
        if (crop != null) {
            queryParams.put("crop", crop)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchRoyaltyFreeImages ( String query, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-images"

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
                    InlineResponse20028.class )

    }

}
