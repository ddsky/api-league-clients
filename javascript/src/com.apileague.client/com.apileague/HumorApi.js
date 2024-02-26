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
import InlineResponse2004 from '../com.apileague.client.model/InlineResponse2004';
import InlineResponse2004Jokes from '../com.apileague.client.model/InlineResponse2004Jokes';
import InlineResponse2005 from '../com.apileague.client.model/InlineResponse2005';
import InlineResponse2006 from '../com.apileague.client.model/InlineResponse2006';
import InlineResponse2007 from '../com.apileague.client.model/InlineResponse2007';
import InlineResponse2008 from '../com.apileague.client.model/InlineResponse2008';

/**
* Humor service.
* @module com.apileague.client/com.apileague/HumorApi
* @version 1.0
*/
export default class HumorApi {

    /**
    * Constructs a new HumorApi. 
    * @alias module:com.apileague.client/com.apileague/HumorApi
    * @class
    * @param {module:com.apileague.client/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:com.apileague.client/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the generateNonsenseWord operation.
     * @callback module:com.apileague.client/com.apileague/HumorApi~generateNonsenseWordCallback
     * @param {String} error Error message, if any.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2008} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Generate Nonsense Word
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * @param {module:com.apileague.client/com.apileague/HumorApi~generateNonsenseWordCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.apileague.client/com.apileague.client.model/InlineResponse2008}
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
      let returnType = InlineResponse2008;
      return this.apiClient.callApi(
        '/generate-nonsense-word', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the randomJoke operation.
     * @callback module:com.apileague.client/com.apileague/HumorApi~randomJokeCallback
     * @param {String} error Error message, if any.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2004Jokes} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Random Joke
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * @param {Object} opts Optional parameters
     * @param {String} opts.includeTags A comma-separated list of tags the jokes should have.
     * @param {String} opts.excludeTags A comma-separated list of tags the jokes must not have.
     * @param {Number} opts.minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param {Number} opts.maxLength The maximum length of the joke in letters.
     * @param {module:com.apileague.client/com.apileague/HumorApi~randomJokeCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.apileague.client/com.apileague.client.model/InlineResponse2004Jokes}
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
      let returnType = InlineResponse2004Jokes;
      return this.apiClient.callApi(
        '/retrieve-random-joke', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the randomMeme operation.
     * @callback module:com.apileague.client/com.apileague/HumorApi~randomMemeCallback
     * @param {String} error Error message, if any.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2006} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Random Meme
     * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * @param {Object} opts Optional parameters
     * @param {String} opts.keywords A comma-separated list of words that must occur in the meme.
     * @param {Boolean} opts.keywordsInImage Whether the keywords must occur in the image.
     * @param {String} opts.mediaType The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
     * @param {Number} opts.minRating The minimum rating in range [0.0-1.0] of the meme.
     * @param {Number} opts.maxAgeDays The maximum age of the meme in days.
     * @param {module:com.apileague.client/com.apileague/HumorApi~randomMemeCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.apileague.client/com.apileague.client.model/InlineResponse2006}
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
      let returnType = InlineResponse2006;
      return this.apiClient.callApi(
        '/retrieve-random-meme', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchGifs operation.
     * @callback module:com.apileague.client/com.apileague/HumorApi~searchGifsCallback
     * @param {String} error Error message, if any.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2007} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Gifs
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * @param {String} query The search query.
     * @param {Object} opts Optional parameters
     * @param {Number} opts.number The number of gifs to return in range [1,10]
     * @param {module:com.apileague.client/com.apileague/HumorApi~searchGifsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.apileague.client/com.apileague.client.model/InlineResponse2007}
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
      let returnType = InlineResponse2007;
      return this.apiClient.callApi(
        '/search-gifs', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchJokes operation.
     * @callback module:com.apileague.client/com.apileague/HumorApi~searchJokesCallback
     * @param {String} error Error message, if any.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2004} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Jokes
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * @param {Object} opts Optional parameters
     * @param {String} opts.keywords A comma-separated list of words that must occur in the joke.
     * @param {String} opts.includeTags A comma-separated list of tags the jokes should have.
     * @param {String} opts.excludeTags A comma-separated list of tags the jokes must not have.
     * @param {Number} opts.minRating The minimum rating (0-10) of the jokes.
     * @param {Number} opts.maxLength The maximum length of the joke in letters.
     * @param {Number} opts.offset The number of jokes to skip, between 0 and 1000.
     * @param {Number} opts.number The number of jokes, between 1 and 10.
     * @param {module:com.apileague.client/com.apileague/HumorApi~searchJokesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.apileague.client/com.apileague.client.model/InlineResponse2004}
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
      let returnType = InlineResponse2004;
      return this.apiClient.callApi(
        '/search-jokes', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchMemes operation.
     * @callback module:com.apileague.client/com.apileague/HumorApi~searchMemesCallback
     * @param {String} error Error message, if any.
     * @param {module:com.apileague.client/com.apileague.client.model/InlineResponse2005} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Memes
     * With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
     * @param {Object} opts Optional parameters
     * @param {String} opts.keywords A comma-separated list of words that must occur in the meme.
     * @param {Boolean} opts.keywordsInImage Whether the keywords must occur in the image.
     * @param {String} opts.mediaType The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
     * @param {Number} opts.minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param {Number} opts.maxAgeDays The maximum age of the meme in days.
     * @param {Number} opts.offset The number of memes to skip, between 0 and 1000.
     * @param {Number} opts.number The number of memes, between 0 and 10.
     * @param {module:com.apileague.client/com.apileague/HumorApi~searchMemesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.apileague.client/com.apileague.client.model/InlineResponse2005}
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
      let returnType = InlineResponse2005;
      return this.apiClient.callApi(
        '/search-memes', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
