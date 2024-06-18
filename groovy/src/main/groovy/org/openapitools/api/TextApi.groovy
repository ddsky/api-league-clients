package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CorrectSpelling200Response
import org.openapitools.model.DetectGenderByName200Response
import org.openapitools.model.DetectLanguage200ResponseInner
import org.openapitools.model.DetectSentiment200Response
import org.openapitools.model.ExtractDates200Response
import org.openapitools.model.ExtractEntities200Response
import org.openapitools.model.ListWordSynonyms200Response
import org.openapitools.model.PluralizeWord200Response
import org.openapitools.model.ScoreReadability200Response
import org.openapitools.model.ScoreText200Response
import org.openapitools.model.SingularizeWord200Response
import org.openapitools.model.StemText200Response
import org.openapitools.model.TagPartOfSpeech200Response

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
                    CorrectSpelling200Response.class )

    }

    def detectGenderByName ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/detect-gender"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (name != null) {
            queryParams.put("name", name)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    DetectGenderByName200Response.class )

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
                    DetectLanguage200ResponseInner.class )

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
                    DetectSentiment200Response.class )

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
                    ExtractDates200Response.class )

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
                    ExtractEntities200Response.class )

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
                    ListWordSynonyms200Response.class )

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
                    PluralizeWord200Response.class )

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
                    ScoreReadability200Response.class )

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
                    ScoreText200Response.class )

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
                    SingularizeWord200Response.class )

    }

    def stemText ( String text, Closure onSuccess, Closure onFailure)  {
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
                    StemText200Response.class )

    }

    def tagPartOfSpeech ( String text, Closure onSuccess, Closure onFailure)  {
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
                    TagPartOfSpeech200Response.class )

    }

}
