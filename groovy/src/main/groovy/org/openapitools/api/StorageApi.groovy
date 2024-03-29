package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ReadKeyValueFromStore200Response
import org.openapitools.model.StoreKeyValueGET200Response

class StorageApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def readKeyValueFromStore ( String key, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/read-key-value"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (key == null) {
            throw new RuntimeException("missing required params key")
        }

        if (key != null) {
            queryParams.put("key", key)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ReadKeyValueFromStore200Response.class )

    }

    def storeKeyValueGET ( String key, String value, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/store-key-value"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (key == null) {
            throw new RuntimeException("missing required params key")
        }
        // verify required params are set
        if (value == null) {
            throw new RuntimeException("missing required params value")
        }

        if (key != null) {
            queryParams.put("key", key)
        }
        if (value != null) {
            queryParams.put("value", value)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    StoreKeyValueGET200Response.class )

    }

}
