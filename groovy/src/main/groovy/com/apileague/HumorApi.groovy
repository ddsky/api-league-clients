package com.apileague;

import com.apileague.client.ApiUtils
import com.apileague.client.model.InlineResponse2004
import com.apileague.client.model.InlineResponse2004Jokes
import com.apileague.client.model.InlineResponse2005
import com.apileague.client.model.InlineResponse2006
import com.apileague.client.model.InlineResponse2007
import com.apileague.client.model.InlineResponse2008

class HumorApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def generateNonsenseWord ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/generate-nonsense-word"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse2008.class )

    }

    def randomJoke ( String includeTags, String excludeTags, Double minRating, Integer maxLength, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retrieve-random-joke"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (includeTags != null) {
            queryParams.put("include-tags", includeTags)
        }
        if (excludeTags != null) {
            queryParams.put("exclude-tags", excludeTags)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (maxLength != null) {
            queryParams.put("max-length", maxLength)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse2004Jokes.class )

    }

    def randomMeme ( String keywords, Boolean keywordsInImage, String mediaType, Double minRating, Integer maxAgeDays, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retrieve-random-meme"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (keywords != null) {
            queryParams.put("keywords", keywords)
        }
        if (keywordsInImage != null) {
            queryParams.put("keywords-in-image", keywordsInImage)
        }
        if (mediaType != null) {
            queryParams.put("media-type", mediaType)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (maxAgeDays != null) {
            queryParams.put("max-age-days", maxAgeDays)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse2006.class )

    }

    def searchGifs ( String query, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-gifs"

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
                    InlineResponse2007.class )

    }

    def searchJokes ( String keywords, String includeTags, String excludeTags, Double minRating, Double maxLength, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-jokes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (keywords != null) {
            queryParams.put("keywords", keywords)
        }
        if (includeTags != null) {
            queryParams.put("include-tags", includeTags)
        }
        if (excludeTags != null) {
            queryParams.put("exclude-tags", excludeTags)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (maxLength != null) {
            queryParams.put("max-length", maxLength)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse2004.class )

    }

    def searchMemes ( String keywords, Boolean keywordsInImage, String mediaType, Double minRating, Integer maxAgeDays, Integer offset, Integer number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-memes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (keywords != null) {
            queryParams.put("keywords", keywords)
        }
        if (keywordsInImage != null) {
            queryParams.put("keywords-in-image", keywordsInImage)
        }
        if (mediaType != null) {
            queryParams.put("media-type", mediaType)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (maxAgeDays != null) {
            queryParams.put("max-age-days", maxAgeDays)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse2005.class )

    }

}
