/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import CorrectSpelling200Response from '../model/CorrectSpelling200Response';
import DetectLanguage200ResponseInner from '../model/DetectLanguage200ResponseInner';
import DetectSentiment200Response from '../model/DetectSentiment200Response';
import ExtractDates200Response from '../model/ExtractDates200Response';
import ExtractEntities200Response from '../model/ExtractEntities200Response';
import ListWordSynonyms200Response from '../model/ListWordSynonyms200Response';
import PartOfSpeechTagging200Response from '../model/PartOfSpeechTagging200Response';
import PluralizeWord200Response from '../model/PluralizeWord200Response';
import ScoreReadability200Response from '../model/ScoreReadability200Response';
import ScoreText200Response from '../model/ScoreText200Response';
import SingularizeWord200Response from '../model/SingularizeWord200Response';
import TextStemming200Response from '../model/TextStemming200Response';

/**
* Text service.
* @module api/TextApi
* @version 1.0
*/
export default class TextApi {

    /**
    * Constructs a new TextApi. 
    * @alias module:api/TextApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the correctSpelling operation.
     * @callback module:api/TextApi~correctSpellingCallback
     * @param {String} error Error message, if any.
     * @param {module:model/CorrectSpelling200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Correct Spelling
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     * @param {String} text The text to be corrected.
     * @param {String} language The language of the text, one of en, de, es, fr, or it.
     * @param {module:api/TextApi~correctSpellingCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/CorrectSpelling200Response}
     */
    correctSpelling(text, language, callback) {
      let postBody = null;
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling correctSpelling");
      }
      // verify the required parameter 'language' is set
      if (language === undefined || language === null) {
        throw new Error("Missing the required parameter 'language' when calling correctSpelling");
      }

      let pathParams = {
      };
      let queryParams = {
        'text': text,
        'language': language
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = CorrectSpelling200Response;
      return this.apiClient.callApi(
        '/correct-spelling', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the detectLanguage operation.
     * @callback module:api/TextApi~detectLanguageCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/DetectLanguage200ResponseInner>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Detect Language
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * @param {String} text The text for which the language should be detected.
     * @param {module:api/TextApi~detectLanguageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/DetectLanguage200ResponseInner>}
     */
    detectLanguage(text, callback) {
      let postBody = null;
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling detectLanguage");
      }

      let pathParams = {
      };
      let queryParams = {
        'text': text
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = [DetectLanguage200ResponseInner];
      return this.apiClient.callApi(
        '/detect-language', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the detectSentiment operation.
     * @callback module:api/TextApi~detectSentimentCallback
     * @param {String} error Error message, if any.
     * @param {module:model/DetectSentiment200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Detect Sentiment
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * @param {String} text The text for which the sentiment should be detected.
     * @param {module:api/TextApi~detectSentimentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/DetectSentiment200Response}
     */
    detectSentiment(text, callback) {
      let postBody = null;
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling detectSentiment");
      }

      let pathParams = {
      };
      let queryParams = {
        'text': text
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = DetectSentiment200Response;
      return this.apiClient.callApi(
        '/detect-sentiment', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the extractDates operation.
     * @callback module:api/TextApi~extractDatesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractDates200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract Dates
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * @param {String} text The text from which dates should be extracted.
     * @param {module:api/TextApi~extractDatesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractDates200Response}
     */
    extractDates(text, callback) {
      let postBody = null;
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling extractDates");
      }

      let pathParams = {
      };
      let queryParams = {
        'text': text
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ExtractDates200Response;
      return this.apiClient.callApi(
        '/extract-dates', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the extractEntities operation.
     * @callback module:api/TextApi~extractEntitiesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractEntities200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract Entities
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * @param {String} text The text from which entities should be extracted.
     * @param {module:api/TextApi~extractEntitiesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractEntities200Response}
     */
    extractEntities(text, callback) {
      let postBody = null;
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling extractEntities");
      }

      let pathParams = {
      };
      let queryParams = {
        'text': text
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ExtractEntities200Response;
      return this.apiClient.callApi(
        '/extract-entities', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the listWordSynonyms operation.
     * @callback module:api/TextApi~listWordSynonymsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ListWordSynonyms200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * List Word Synonyms
     * Return synonyms of a word.
     * @param {String} word The (noun) word for which a list of synonyms should be returned.
     * @param {module:api/TextApi~listWordSynonymsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ListWordSynonyms200Response}
     */
    listWordSynonyms(word, callback) {
      let postBody = null;
      // verify the required parameter 'word' is set
      if (word === undefined || word === null) {
        throw new Error("Missing the required parameter 'word' when calling listWordSynonyms");
      }

      let pathParams = {
      };
      let queryParams = {
        'word': word
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ListWordSynonyms200Response;
      return this.apiClient.callApi(
        '/list-synonyms', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the partOfSpeechTagging operation.
     * @callback module:api/TextApi~partOfSpeechTaggingCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PartOfSpeechTagging200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Part of Speech Tagging
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * @param {String} text The text to tag the part of speech.
     * @param {module:api/TextApi~partOfSpeechTaggingCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PartOfSpeechTagging200Response}
     */
    partOfSpeechTagging(text, callback) {
      let postBody = null;
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling partOfSpeechTagging");
      }

      let pathParams = {
      };
      let queryParams = {
        'text': text
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = PartOfSpeechTagging200Response;
      return this.apiClient.callApi(
        '/tag-pos', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the pluralizeWord operation.
     * @callback module:api/TextApi~pluralizeWordCallback
     * @param {String} error Error message, if any.
     * @param {module:model/PluralizeWord200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Pluralize Word
     * Find the plural form of a word.
     * @param {String} word The (noun) word for which the plural form should be found.
     * @param {module:api/TextApi~pluralizeWordCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/PluralizeWord200Response}
     */
    pluralizeWord(word, callback) {
      let postBody = null;
      // verify the required parameter 'word' is set
      if (word === undefined || word === null) {
        throw new Error("Missing the required parameter 'word' when calling pluralizeWord");
      }

      let pathParams = {
      };
      let queryParams = {
        'word': word
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = PluralizeWord200Response;
      return this.apiClient.callApi(
        '/pluralize-word', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the scoreReadability operation.
     * @callback module:api/TextApi~scoreReadabilityCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ScoreReadability200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Score Readability
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * @param {String} text The text to score for readability.
     * @param {module:api/TextApi~scoreReadabilityCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ScoreReadability200Response}
     */
    scoreReadability(text, callback) {
      let postBody = null;
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling scoreReadability");
      }

      let pathParams = {
      };
      let queryParams = {
        'text': text
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ScoreReadability200Response;
      return this.apiClient.callApi(
        '/score-readability', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the scoreText operation.
     * @callback module:api/TextApi~scoreTextCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ScoreText200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Score Text
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * @param {String} title The title of the text to score.
     * @param {String} text The text to score for multiple metrics.
     * @param {module:api/TextApi~scoreTextCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ScoreText200Response}
     */
    scoreText(title, text, callback) {
      let postBody = null;
      // verify the required parameter 'title' is set
      if (title === undefined || title === null) {
        throw new Error("Missing the required parameter 'title' when calling scoreText");
      }
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling scoreText");
      }

      let pathParams = {
      };
      let queryParams = {
        'title': title,
        'text': text
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ScoreText200Response;
      return this.apiClient.callApi(
        '/score-text', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the singularizeWord operation.
     * @callback module:api/TextApi~singularizeWordCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SingularizeWord200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Singularize Word
     * Find the singular form of a word.
     * @param {String} word The (noun) word for which the singular form should be found.
     * @param {module:api/TextApi~singularizeWordCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SingularizeWord200Response}
     */
    singularizeWord(word, callback) {
      let postBody = null;
      // verify the required parameter 'word' is set
      if (word === undefined || word === null) {
        throw new Error("Missing the required parameter 'word' when calling singularizeWord");
      }

      let pathParams = {
      };
      let queryParams = {
        'word': word
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SingularizeWord200Response;
      return this.apiClient.callApi(
        '/singularize-word', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the textStemming operation.
     * @callback module:api/TextApi~textStemmingCallback
     * @param {String} error Error message, if any.
     * @param {module:model/TextStemming200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Text Stemming
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * @param {String} text The text to be stemmed.
     * @param {module:api/TextApi~textStemmingCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/TextStemming200Response}
     */
    textStemming(text, callback) {
      let postBody = null;
      // verify the required parameter 'text' is set
      if (text === undefined || text === null) {
        throw new Error("Missing the required parameter 'text' when calling textStemming");
      }

      let pathParams = {
      };
      let queryParams = {
        'text': text
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = TextStemming200Response;
      return this.apiClient.callApi(
        '/stem-text', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
