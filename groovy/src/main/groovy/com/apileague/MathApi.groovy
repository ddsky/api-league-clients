package com.apileague;

import com.apileague.client.ApiUtils
import com.apileague.client.model.InlineResponse20030

class MathApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def convertUnits ( Double sourceAmount, String sourceUnit, String targetUnit, String foodName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/convert-units"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (sourceAmount == null) {
            throw new RuntimeException("missing required params sourceAmount")
        }
        // verify required params are set
        if (sourceUnit == null) {
            throw new RuntimeException("missing required params sourceUnit")
        }
        // verify required params are set
        if (targetUnit == null) {
            throw new RuntimeException("missing required params targetUnit")
        }

        if (sourceAmount != null) {
            queryParams.put("source-amount", sourceAmount)
        }
        if (sourceUnit != null) {
            queryParams.put("source-unit", sourceUnit)
        }
        if (targetUnit != null) {
            queryParams.put("target-unit", targetUnit)
        }
        if (foodName != null) {
            queryParams.put("food-name", foodName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20030.class )

    }

}
