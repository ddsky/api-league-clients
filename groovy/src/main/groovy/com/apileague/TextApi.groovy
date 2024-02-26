package com.apileague;

import com.apileague.client.ApiUtils
import com.apileague.client.model.InlineResponse20016
import com.apileague.client.model.InlineResponse20017
import com.apileague.client.model.InlineResponse20018
import com.apileague.client.model.InlineResponse20019
import com.apileague.client.model.InlineResponse20020
import com.apileague.client.model.InlineResponse20021
import com.apileague.client.model.InlineResponse20022
import com.apileague.client.model.InlineResponse20023
import com.apileague.client.model.InlineResponse20024
import com.apileague.client.model.InlineResponse20025
import com.apileague.client.model.InlineResponse20026
import com.apileague.client.model.InlineResponse20027

class TextApi {
    String basePath = "https://api.apileague.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def correctSpelling ( String text, String language, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/correct-spelling"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }
        // verify required params are set
        if (language == null) {
            throw new RuntimeException("missing required params language")
        }

        if (text != null) {
            queryParams.put("text", text)
        }
        if (language != null) {
            queryParams.put("language", language)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20016.class )

    }

    def detectLanguage ( String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/detect-language"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (text != null) {
            queryParams.put("text", text)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    InlineResponse20017.class )

    }

    def detectSentiment ( String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/detect-sentiment"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (text != null) {
            queryParams.put("text", text)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20018.class )

    }

    def extractDates ( String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/extract-dates"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (text != null) {
            queryParams.put("text", text)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20021.class )

    }

    def extractEntities ( String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/extract-entities"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (text != null) {
            queryParams.put("text", text)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20027.class )

    }

    def listWordSynonyms ( String word, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/list-synonyms"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (word == null) {
            throw new RuntimeException("missing required params word")
        }

        if (word != null) {
            queryParams.put("word", word)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20022.class )

    }

    def partOfSpeechTagging ( String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tag-pos"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (text != null) {
            queryParams.put("text", text)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20023.class )

    }

    def pluralizeWord ( String word, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/pluralize-word"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (word == null) {
            throw new RuntimeException("missing required params word")
        }

        if (word != null) {
            queryParams.put("word", word)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20026.class )

    }

    def scoreReadability ( String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/score-readability"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (text != null) {
            queryParams.put("text", text)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20020.class )

    }

    def scoreText ( String title, String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/score-text"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }
        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (title != null) {
            queryParams.put("title", title)
        }
        if (text != null) {
            queryParams.put("text", text)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20019.class )

    }

    def singularizeWord ( String word, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/singularize-word"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (word == null) {
            throw new RuntimeException("missing required params word")
        }

        if (word != null) {
            queryParams.put("word", word)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20025.class )

    }

    def textStemming ( String text, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/stem-text"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (text == null) {
            throw new RuntimeException("missing required params text")
        }

        if (text != null) {
            queryParams.put("text", text)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    InlineResponse20024.class )

    }

}
