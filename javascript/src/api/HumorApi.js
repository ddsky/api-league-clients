/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import GenerateNonsenseWord200Response from '../model/GenerateNonsenseWord200Response';
import RandomMeme200Response from '../model/RandomMeme200Response';
import SearchGifs200Response from '../model/SearchGifs200Response';
import SearchJokes200Response from '../model/SearchJokes200Response';
import SearchJokes200ResponseJokesInner from '../model/SearchJokes200ResponseJokesInner';
import SearchMemes200Response from '../model/SearchMemes200Response';

/**
* Humor service.
* @module api/HumorApi
* @version 1.5.0
*/
export default class HumorApi {

    /**
    * Constructs a new HumorApi. 
    * @alias module:api/HumorApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the generateNonsenseWord operation.
     * @callback module:api/HumorApi~generateNonsenseWordCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GenerateNonsenseWord200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Generate Nonsense Word
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * @param {module:api/HumorApi~generateNonsenseWordCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GenerateNonsenseWord200Response}
     */
    generateNonsenseWord(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GenerateNonsenseWord200Response;
      return this.apiClient.callApi(
        '/generate-nonsense-word', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the randomJoke operation.
     * @callback module:api/HumorApi~randomJokeCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchJokes200ResponseJokesInner} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Random Joke
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * @param {Object} opts Optional parameters
     * @param {String} [includeTags] A comma-separated list of tags the jokes should have.
     * @param {String} [excludeTags] A comma-separated list of tags the jokes must not have.
     * @param {Number} [minRating] The minimum rating in range [0.0,1.0] of the jokes.
     * @param {Number} [maxLength] The maximum length of the joke in letters.
     * @param {module:api/HumorApi~randomJokeCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchJokes200ResponseJokesInner}
     */
    randomJoke(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'include-tags': opts['includeTags'],
        'exclude-tags': opts['excludeTags'],
        'min-rating': opts['minRating'],
        'max-length': opts['maxLength']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchJokes200ResponseJokesInner;
      return this.apiClient.callApi(
        '/retrieve-random-joke', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the randomMeme operation.
     * @callback module:api/HumorApi~randomMemeCallback
     * @param {String} error Error message, if any.
     * @param {module:model/RandomMeme200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Random Meme
     * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * @param {Object} opts Optional parameters
     * @param {String} [keywords] A comma-separated list of words that must occur in the meme.
     * @param {Boolean} [keywordsInImage] Whether the keywords must occur in the image.
     * @param {String} [mediaType] The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
     * @param {Number} [minRating] The minimum rating in range [0.0,1.0] of the meme.
     * @param {Number} [maxAgeDays] The maximum age of the meme in days.
     * @param {module:api/HumorApi~randomMemeCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/RandomMeme200Response}
     */
    randomMeme(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'keywords': opts['keywords'],
        'keywords-in-image': opts['keywordsInImage'],
        'media-type': opts['mediaType'],
        'min-rating': opts['minRating'],
        'max-age-days': opts['maxAgeDays']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = RandomMeme200Response;
      return this.apiClient.callApi(
        '/retrieve-random-meme', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchGifs operation.
     * @callback module:api/HumorApi~searchGifsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchGifs200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Gifs
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * @param {String} query The search query.
     * @param {Object} opts Optional parameters
     * @param {Number} [number] The number of gifs to return in range [1,10]
     * @param {module:api/HumorApi~searchGifsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchGifs200Response}
     */
    searchGifs(query, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling searchGifs");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchGifs200Response;
      return this.apiClient.callApi(
        '/search-gifs', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchJokes operation.
     * @callback module:api/HumorApi~searchJokesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchJokes200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Jokes
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * @param {Object} opts Optional parameters
     * @param {String} [keywords] A comma-separated list of words that must occur in the joke.
     * @param {String} [includeTags] A comma-separated list of tags the jokes should have.
     * @param {String} [excludeTags] A comma-separated list of tags the jokes must not have.
     * @param {Number} [minRating] The minimum rating in range [0.0,1.0] of the jokes.
     * @param {Number} [maxLength] The maximum length of the joke in letters.
     * @param {Number} [offset] The number of jokes to skip, between 0 and 1000.
     * @param {Number} [number] The number of jokes, between 1 and 10.
     * @param {module:api/HumorApi~searchJokesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchJokes200Response}
     */
    searchJokes(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'keywords': opts['keywords'],
        'include-tags': opts['includeTags'],
        'exclude-tags': opts['excludeTags'],
        'min-rating': opts['minRating'],
        'max-length': opts['maxLength'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchJokes200Response;
      return this.apiClient.callApi(
        '/search-jokes', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchMemes operation.
     * @callback module:api/HumorApi~searchMemesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchMemes200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Memes
     * With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
     * @param {Object} opts Optional parameters
     * @param {String} [keywords] A comma-separated list of words that must occur in the meme.
     * @param {Boolean} [keywordsInImage] Whether the keywords must occur in the image.
     * @param {String} [mediaType] The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
     * @param {Number} [minRating] The minimum rating in range [0.0,1.0] of the meme.
     * @param {Number} [maxAgeDays] The maximum age of the meme in days.
     * @param {Number} [offset] The number of memes to skip, between 0 and 1000.
     * @param {Number} [number] The number of memes, between 1 and 10.
     * @param {module:api/HumorApi~searchMemesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchMemes200Response}
     */
    searchMemes(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'keywords': opts['keywords'],
        'keywords-in-image': opts['keywordsInImage'],
        'media-type': opts['mediaType'],
        'min-rating': opts['minRating'],
        'max-age-days': opts['maxAgeDays'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchMemes200Response;
      return this.apiClient.callApi(
        '/search-memes', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
